'use strict';

// One audio clock drives both sound and transport. Buffers are synthesized lazily
// from damped, slightly inharmonic strings; no samples or network are needed.
class PianoAudio {
  constructor() {
    this.ctx = null;
    this.buffers = new Map();
    this.voices = new Set();
    this.volume = 0.65;
    this.sustain = false;
    this.pedalled = new Set();
  }
  async unlock() {
    if (!this.ctx) {
      const Context = window.AudioContext || window.webkitAudioContext;
      if (!Context) throw new Error('Web Audio is unavailable. Open this file in a recent Chrome, Firefox, or Safari browser.');
      this.ctx = new Context({latencyHint: 'interactive'});
      this.master = this.ctx.createGain();
      this.master.gain.value = this.volume * 0.7;
      const compressor = this.ctx.createDynamicsCompressor();
      compressor.threshold.value = -16;
      compressor.knee.value = 18;
      compressor.ratio.value = 4;
      compressor.attack.value = 0.003;
      compressor.release.value = 0.2;
      this.master.connect(compressor);
      compressor.connect(this.ctx.destination);
      const reverb = this.ctx.createConvolver();
      const length = Math.floor(this.ctx.sampleRate * 1.4);
      const impulse = this.ctx.createBuffer(2, length, this.ctx.sampleRate);
      let seed = 617;
      for (let channel = 0; channel < 2; channel++) {
        const data = impulse.getChannelData(channel);
        for (let i = 0; i < length; i++) {
          seed = (1664525 * seed + 1013904223) >>> 0;
          data[i] = (seed / 2147483648 - 1) * Math.pow(1 - i / length, 3.5);
        }
      }
      reverb.buffer = impulse;
      const wet = this.ctx.createGain();
      wet.gain.value = 0.10;
      this.master.connect(reverb);
      reverb.connect(wet);
      wet.connect(compressor);
    }
    if (this.ctx.state !== 'running') await this.ctx.resume();
    if (this.ctx.state !== 'running') throw new Error('Audio is paused by your browser. Tap Play again to enable sound.');
    return this.ctx;
  }
  setVolume(value) {
    this.volume = Math.max(0, Math.min(1, value));
    if (this.master) this.master.gain.setTargetAtTime(this.volume * 0.7, this.ctx.currentTime, 0.02);
  }
  bufferFor(note) {
    if (this.buffers.has(note)) return this.buffers.get(note);
    const rate = 22050;
    const frequency = 440 * Math.pow(2, (note - 69) / 12);
    const decay = Math.max(0.65, 3.8 * Math.pow(2, (48 - note) / 30));
    const duration = Math.min(12, Math.max(3, decay * 3));
    const buffer = this.ctx.createBuffer(1, Math.ceil(duration * rate), rate);
    const data = buffer.getChannelData(0);
    const harmonics = [1, 0.48, 0.23, 0.13, 0.075, 0.04, 0.025, 0.012];
    for (let h = 1; h <= harmonics.length; h++) {
      const f = frequency * h * Math.sqrt(1 + 0.00008 * h * h);
      if (f > rate * 0.46) break;
      const angle = 2 * Math.PI * f / rate;
      const cosine = Math.cos(angle), sine = Math.sin(angle);
      const damping = Math.exp(-1 / (rate * decay / (1 + (h - 1) * 0.38)));
      let real = 0, imaginary = harmonics[h - 1] * 0.43;
      for (let i = 0; i < data.length; i++) {
        data[i] += real;
        const next = (real * cosine + imaginary * sine) * damping;
        imaginary = (imaginary * cosine - real * sine) * damping;
        real = next;
      }
    }
    let seed = note * 617;
    for (let i = 0; i < data.length; i++) {
      const time = i / rate;
      const attack = Math.min(1, time / 0.003);
      const tail = Math.min(1, (data.length - 1 - i) / (rate * 0.03));
      if (time < 0.018) {
        seed = (1664525 * seed + 1013904223) >>> 0;
        data[i] += (seed / 2147483648 - 1) * 0.018 * Math.exp(-time * 250);
      }
      data[i] *= attack * tail;
    }
    this.buffers.set(note, buffer);
    return buffer;
  }
  noteOn(note, velocity = 88, when = null, duration = null, group = 'manual') {
    const ctx = this.ctx;
    if (!ctx || ctx.state !== 'running') return null;
    const at = Math.max(when ?? ctx.currentTime, ctx.currentTime);
    const source = ctx.createBufferSource();
    source.buffer = this.bufferFor(note);
    const gain = ctx.createGain();
    const pan = ctx.createStereoPanner ? ctx.createStereoPanner() : ctx.createGain();
    if (pan.pan) pan.pan.value = Math.max(-0.6, Math.min(0.6, (note - 60) / 65));
    gain.gain.value = Math.pow(velocity / 127, 1.4) * 0.55;
    source.connect(gain); gain.connect(pan); pan.connect(this.master);
    const voice = {note, source, gain, pan, at, group, released: false, end: Infinity};
    this.voices.add(voice);
    source.onended = () => {
      this.voices.delete(voice); this.pedalled.delete(voice);
      source.disconnect(); gain.disconnect(); pan.disconnect();
    };
    source.start(at);
    if (duration !== null) this.damp(voice, at + Math.max(0.02, duration));
    return voice;
  }
  damp(voice, at = this.ctx.currentTime, immediate = false) {
    if (!voice || !this.voices.has(voice)) return;
    voice.released = true;
    const time = Math.max(this.ctx.currentTime, at);
    const release = immediate ? 0.025 : 0.16;
    voice.gain.gain.cancelScheduledValues(time);
    voice.gain.gain.setTargetAtTime(0, time, release / 4);
    voice.source.stop(time + release);
    voice.end = time;
  }
  noteOff(voice) {
    if (!voice || voice.released) return;
    if (this.sustain) this.pedalled.add(voice);
    else this.damp(voice);
  }
  setSustain(enabled) {
    this.sustain = enabled;
    if (!enabled) {
      for (const voice of this.pedalled) this.damp(voice);
      this.pedalled.clear();
    }
  }
  stopGroup(group) {
    if (!this.ctx) return;
    for (const voice of this.voices) if (voice.group === group) this.damp(voice, this.ctx.currentTime, true);
  }
}

class PianoTransport {
  constructor(audio, score) {
    this.audio = audio;
    this.score = score;
    this.playing = false;
    this.offset = 0;
    this.rate = 1;
    this.index = 0;
    this.timer = null;
    this.pending = false;
    this.generation = 0;
    this.muted = new Set();
    this.loopRange = null;
    this.scheduled = [];
    this.onchange = () => {};
    this.onerror = () => {};
  }
  get duration() { return this.score.duration / 1000; }
  position() {
    return Math.min(this.duration, this.playing ? this.offset + (this.audio.ctx.currentTime - this.started) * this.rate : this.offset);
  }
  async play() {
    if (this.playing || this.pending) return;
    this.pending = true;
    const generation = ++this.generation;
    try {
      await this.audio.unlock();
      // A pause, seek, or page change during resume cancels the pending start.
      if (!this.pending || generation !== this.generation) return;
      if (this.offset >= this.duration - 0.01) this.offset = 0;
      this.playing = true;
      this.started = this.audio.ctx.currentTime + 0.035;
      this.index = this.score.notes.findIndex(n => n[0] / 1000 >= this.offset);
      if (this.index < 0) this.index = this.score.notes.length;
      // Restore any held notes across a seek, using their remaining durations.
      for (const note of this.score.notes) {
        const start = note[0] / 1000, end = (note[0] + note[2]) / 1000;
        if (start < this.offset && end > this.offset) this.schedule(note, this.offset, end - this.offset);
      }
      this.tick();
      this.timer = setInterval(() => this.tick(), 25);
      this.onchange();
    } finally { if (generation === this.generation) this.pending = false; }
  }
  schedule(note, start = note[0] / 1000, duration = note[2] / 1000) {
    if (this.muted.has(note[4])) return;
    const at = this.started + (start - this.offset) / this.rate;
    const voice = this.audio.noteOn(note[1], note[3], at, duration / this.rate, 'sample');
    this.scheduled.push({note: note[1], part: note[4], at, until: at + duration / this.rate, voice});
  }
  tick() {
    if (!this.playing) return;
    if (this.audio.ctx.state !== 'running') {
      this.pause();
      this.onerror(new Error('Audio was interrupted. Tap Play to resume.'));
      return;
    }
    const now = this.audio.ctx.currentTime;
    if (this.loopRange && this.position() >= this.loopRange[1]) {
      this.seek(this.loopRange[0]).catch(this.onerror);
      return;
    }
    const horizon = this.position() + 0.18 * this.rate;
    while (this.index < this.score.notes.length && this.score.notes[this.index][0] / 1000 <= horizon) {
      this.schedule(this.score.notes[this.index++]);
    }
    this.scheduled = this.scheduled.filter(n => n.until > now - 0.05);
    if (this.position() >= this.duration) {
      this.pause();
      this.offset = this.duration;
      this.onchange();
    }
  }
  pause() {
    this.generation++;
    if (this.playing) this.offset = this.position();
    this.pending = false;
    this.playing = false;
    clearInterval(this.timer);
    this.timer = null;
    this.audio.stopGroup('sample');
    this.scheduled = [];
    this.onchange();
  }
  async seek(seconds) {
    const resume = this.playing;
    this.pause();
    this.offset = Math.max(0, Math.min(this.duration, seconds));
    this.onchange();
    if (resume) await this.play();
  }
  async setRate(rate) {
    const resume = this.playing;
    this.pause();
    this.rate = rate;
    if (resume) await this.play();
    this.onchange();
  }
  activeNotes() {
    if (!this.playing) return [];
    const now = this.audio.ctx.currentTime;
    return this.scheduled.filter(n => n.at <= now && n.until > now).map(n => n.note);
  }
}
