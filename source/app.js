'use strict';

const $ = id => document.getElementById(id);
let score = JSON.parse($('score').textContent);
const audio = new PianoAudio(JSON.parse($('piano-samples').textContent));
const transport = new PianoTransport(audio, score);
const held = new Map();
const pointerNotes = new Map();
const keyOffsets = {KeyA: 0, KeyW: 1, KeyS: 2, KeyE: 3, KeyD: 4, KeyF: 5, KeyT: 6, KeyG: 7, KeyY: 8, KeyH: 9, KeyU: 10, KeyJ: 11, KeyK: 12};
const names = ['C', 'C♯', 'D', 'D♯', 'E', 'F', 'F♯', 'G', 'G♯', 'A', 'A♯', 'B'];
const noteName = n => names[n % 12] + (Math.floor(n / 12) - 1);
const formatTime = t => `${Math.floor(Math.max(0, t) / 60)}:${String(Math.floor(Math.max(0, t) % 60)).padStart(2, '0')}`;
let register = 60;
let sustainLatch = false, spaceHeld = false;
let scene = null;
let seeking = false;
let lastActive = '';
let hiddenAt = false;
let study = null;

function report(error) {
  $('error').textContent = error.message || String(error);
  $('error').hidden = false;
  $('instrument-status').textContent = 'Sound needs attention';
}
function clearError() { $('error').hidden = true; }

try {
  scene = new PianoScene($('piano-canvas'));
  $('piano-canvas').addEventListener('webglcontextlost', event => {
    event.preventDefault();
    releaseAll(); transport.pause();
    if (scene && !scene.renderer.isSoftware) {
      scene.resizeObserver.disconnect();
      scene.renderer.dispose();
      scene = new PianoScene($('piano-canvas'), true);
      scene.setRegister(register);
    }
  });
} catch (error) {
  try { scene = new PianoScene($('piano-canvas'), true); }
  catch (fallbackError) {
    $('piano-canvas').hidden = true;
    $('scene-message').hidden = false;
    $('scene-message').textContent = 'The 3D view is unavailable here. Play the keys below, or listen to Bach.';
    $('stage').style.height = '65px';
    $('accessible-panel').open = true;
  }
}

async function press(id, note) {
  if (held.has(id)) return;
  const token = {note, voice: null};
  held.set(id, token);
  try {
    await audio.unlock();
    if (held.get(id) !== token) return;
    token.voice = audio.noteOn(note);
    clearError();
  } catch (error) { held.delete(id); report(error); }
}
function release(id) {
  const token = held.get(id);
  if (token) { audio.noteOff(token.voice); held.delete(id); }
}
function releaseAll() {
  for (const id of [...held.keys()]) release(id);
  pointerNotes.clear();
  spaceHeld = false;
  updateSustain();
  // A lost focus must release every manual voice, even a latched pedal voice.
  audio.stopGroup('manual');
  audio.stopGroup('lab');
}
function updateSustain() {
  const enabled = sustainLatch || spaceHeld;
  audio.setSustain(enabled);
  $('sustain').setAttribute('aria-pressed', String(enabled));
}
function buildKeys() {
  const container = $('accessible-keys');
  container.replaceChildren();
  let whites = 0;
  for (let n = register; n <= register + 24; n++) if (![1,3,6,8,10].includes(n % 12)) whites++;
  let index = 0;
  for (let note = register; note <= register + 24; note++) {
    const black = [1,3,6,8,10].includes(note % 12);
    const button = document.createElement('button');
    let keyboardClick = false;
    button.className = 'note-key' + (black ? ' black' : '');
    button.dataset.note = note;
    button.setAttribute('aria-label', noteName(note));
    button.setAttribute('aria-pressed', 'false');
    button.style.left = `${(black ? index - 0.31 : index) / whites * 100}%`;
    button.style.width = `${(black ? 0.62 : 0.99) / whites * 100}%`;
    const label = document.createElement('span'); label.textContent = noteName(note);
    button.append(label);
    const shortcut = Object.keys(keyOffsets).find(key => register + keyOffsets[key] === note);
    if (shortcut) { const small = document.createElement('small'); small.textContent = shortcut.slice(3); button.append(small); }
    if (!black) index++;
    button.addEventListener('pointerdown', event => {
      if (event.pointerType === 'mouse' && event.button !== 0) return;
      event.preventDefault(); button.focus({preventScroll: true});
      button.setPointerCapture(event.pointerId);
      press('accessible-' + event.pointerId, note);
    });
    for (const type of ['pointerup', 'pointercancel', 'lostpointercapture']) button.addEventListener(type, event => release('accessible-' + event.pointerId));
    button.addEventListener('keydown', event => {
      if (event.code === 'Enter' || event.code === 'Space') {
        event.preventDefault(); event.stopPropagation();
        keyboardClick = true;
        if (!event.repeat) press('focus-' + note, note);
      }
    });
    button.addEventListener('keyup', event => {
      if (event.code === 'Enter' || event.code === 'Space') {
        event.preventDefault(); event.stopPropagation(); release('focus-' + note);
        setTimeout(() => { keyboardClick = false; }, 0);
      }
    });
    button.addEventListener('blur', () => release('focus-' + note));
    // Screen readers may activate a button via a synthesized click.
    button.addEventListener('click', event => {
      if (event.detail === 0 && !keyboardClick && !held.has('focus-' + note)) {
        const id = 'screenreader-' + note;
        press(id, note); setTimeout(() => release(id), 300);
      }
    });
    container.append(button);
  }
  lastActive = '';
}
function changeRegister(step) {
  register = Math.max(24, Math.min(84, register + step * 12));
  releaseAll();
  $('octave-label').textContent = 'REGISTER ' + noteName(register);
  $('octave-down').disabled = register <= 24;
  $('octave-up').disabled = register >= 84;
  if (scene) scene.setRegister(register);
  buildKeys();
}

const canvas = $('piano-canvas');
canvas.addEventListener('pointerdown', event => {
  if (!scene || event.pointerType === 'mouse' && event.button !== 0) return;
  event.preventDefault();
  canvas.setPointerCapture(event.pointerId);
  const note = scene.hit(event.clientX, event.clientY);
  pointerNotes.set(event.pointerId, note);
  if (note !== null) press('pointer-' + event.pointerId, note);
});
canvas.addEventListener('pointermove', event => {
  if (!scene) return;
  const note = scene.hit(event.clientX, event.clientY);
  canvas.style.cursor = note === null ? 'default' : 'pointer';
  if (!pointerNotes.has(event.pointerId)) return;
  if (pointerNotes.get(event.pointerId) !== note) {
    release('pointer-' + event.pointerId);
    pointerNotes.set(event.pointerId, note);
    if (note !== null) press('pointer-' + event.pointerId, note);
  }
});
for (const type of ['pointerup', 'pointercancel', 'lostpointercapture']) canvas.addEventListener(type, event => {
  release('pointer-' + event.pointerId); pointerNotes.delete(event.pointerId);
});
canvas.addEventListener('contextmenu', event => event.preventDefault());
document.addEventListener('keydown', event => {
  if (event.altKey || event.ctrlKey || event.metaKey || $('about').open || document.querySelector('#support-dialog')?.open) return;
  const tag = event.target.tagName;
  if (['INPUT','SELECT','TEXTAREA'].includes(tag)) return;
  if (event.code === 'Space' && ['BUTTON','SUMMARY','A'].includes(tag)) return;
  if (event.code in keyOffsets) {
    event.preventDefault();
    if (!event.repeat) press(event.code, register + keyOffsets[event.code]);
  } else if (event.code === 'Space') {
    event.preventDefault(); spaceHeld = true; updateSustain();
  } else if (!event.repeat && (event.code === 'KeyZ' || event.code === 'KeyX')) {
    event.preventDefault(); changeRegister(event.code === 'KeyZ' ? -1 : 1);
  }
});
document.addEventListener('keyup', event => {
  if (event.code in keyOffsets) release(event.code);
  if (event.code === 'Space') { spaceHeld = false; updateSustain(); }
});
window.addEventListener('blur', releaseAll);
document.addEventListener('visibilitychange', () => {
  if (document.hidden) { hiddenAt = transport.playing; transport.pause(); releaseAll(); }
  else if (hiddenAt) { $('instrument-status').textContent = 'Paused while away · tap Play to resume'; hiddenAt = false; }
});
$('octave-down').addEventListener('click', () => changeRegister(-1));
$('octave-up').addEventListener('click', () => changeRegister(1));
$('sustain').addEventListener('click', () => { sustainLatch = !sustainLatch; updateSustain(); });
$('volume').addEventListener('input', event => {
  audio.setVolume(Number(event.target.value) / 100);
  $('volume-value').value = event.target.value + '%';
});
$('play').addEventListener('click', async () => {
  clearError();
  if (transport.playing || transport.pending) transport.pause();
  else { try { await transport.play(); } catch (error) { report(error); } }
});
$('reset').addEventListener('click', async () => {
  try { await transport.seek(0); } catch (error) { report(error); }
});
$('speed').addEventListener('change', async event => {
  try { await transport.setRate(Number(event.target.value)); } catch (error) { report(error); }
});
$('seek').addEventListener('input', () => {
  seeking = true;
  const value = Number($('seek').value) / 1000;
  $('seek').style.setProperty('--progress', value * 100 + '%');
  $('elapsed').textContent = formatTime(value * transport.duration / transport.rate);
});
$('seek').addEventListener('change', async () => {
  try { await transport.seek(Number($('seek').value) / 1000 * transport.duration); }
  catch (error) { report(error); }
  finally { seeking = false; }
});
transport.onchange = () => {
  $('play').setAttribute('aria-label', (transport.playing ? 'Pause' : 'Play') + ' ' + score.catalogue);
  $('play').querySelector('use').setAttribute('href', transport.playing ? '#i-pause' : '#i-play');
  $('ready-dot').classList.toggle('playing', transport.playing);
  $('instrument-status').textContent = transport.playing ? 'Bach is at the piano' : transport.offset >= transport.duration ? 'Finished · play again whenever you like' : transport.offset > 0 ? 'A moment of quiet · paused' : 'Ready when you are';
  $('duration').textContent = formatTime(transport.duration / transport.rate);
};
transport.onerror = report;
$('about-button').addEventListener('click', () => { transport.pause(); releaseAll(); $('about').showModal(); });
$('close-about').addEventListener('click', () => $('about').close());
$('about').addEventListener('click', event => { if (event.target === $('about')) { const rect = $('about').getBoundingClientRect(); if (event.clientX < rect.left || event.clientX > rect.right || event.clientY < rect.top || event.clientY > rect.bottom) $('about').close(); } });
function viewportHint() {
  $('keyboard-hint').textContent = window.innerWidth < 700 ? 'Touch the keys to play' : 'Use A–K to play · W E T Y U for black keys';
}
window.addEventListener('resize', viewportHint);
viewportHint(); buildKeys(); transport.onchange();
let lastFrame = 0, lastUi = 0, idleFrames = 0;
function frame(time) {
  requestAnimationFrame(frame);
  if (document.hidden) return;
  const delta = Math.min(0.05, (time - lastFrame) / 1000 || 0.016);
  lastFrame = time;
  const active = new Set([...held.values()].map(x => x.note));
  for (const note of transport.activeNotes()) active.add(note);
  const signature = [...active].sort((a,b) => a-b).join(',');
  const changed = signature !== lastActive;
  if (changed) {
    idleFrames = 0;
    for (const button of $('accessible-keys').children) {
      const pressed = active.has(Number(button.dataset.note));
      button.classList.toggle('active', pressed);
      button.setAttribute('aria-pressed', String(pressed));
    }
    $('note-readout').textContent = active.size ? [...active].sort((a,b) => a-b).map(noteName).join(' · ') : '88 KEYS · A0—C8';
    lastActive = signature;
  }
  // Stop redrawing the GPU once the last key has settled.
  if (scene && (changed || scene.dirty || idleFrames < 30)) {
    if (scene.dirty) idleFrames = 0;
    scene.render(active, delta); scene.dirty = false; idleFrames++;
  }
  if (time - lastUi > 80) {
    lastUi = time;
    if (study) study.tick(Math.max(0, transport.position()), time);
    if (!seeking) {
      const position = Math.max(0, transport.position());
      $('elapsed').textContent = formatTime(position / transport.rate);
      $('seek').value = Math.round(position / transport.duration * 1000);
      $('seek').style.setProperty('--progress', position / transport.duration * 100 + '%');
      $('seek').setAttribute('aria-valuetext', `${formatTime(position / transport.rate)} of ${formatTime(transport.duration / transport.rate)}`);
    }
  }
}
requestAnimationFrame(frame);
