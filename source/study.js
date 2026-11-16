'use strict';

const bachLibrary = JSON.parse($('bach-library').textContent);
const PART_COLORS = ['#496f77','#a46140','#68764b','#806185','#a36a76','#487d67','#7d6f45','#586e9c'];
const CUE_NAMES = {opening:'Opening motif · 开头动机',transposition:'Transposed imitation · 移调模仿',repetition:'Repeated motif · 动机重现',inversion:'Exact inversion · 精确倒影',augmentation:'Augmentation · 增值',diminution:'Diminution · 减值'};
const COLLECTIONS = {wtc1:['WTC I','48 movements · 24 prelude–fugue pairs.'],wtc2:['WTC II','48 movements + 2 alternate preludes. The a / b versions follow Altnikol and autograph readings.'],art:['Art of Fugue','22 tracks: 11 fugues, 4 canons, both forms of 2 mirror fugues, 2 two-keyboard versions, and the unfinished final fugue. This edition’s numbering is retained.'],goldberg:['Goldberg','Aria + 30 variations + Aria da capo. The returning Aria reuses the same source sequence.'],original:['BWV 617','The original organ chorale prelude, rendered for piano.']};

class BachStudy {
  constructor(library) {
    this.library=library;this.cueIndex=-1;this.lastTime=-1;this.collection='original';
    $('library-count').textContent=library.works.length+' embedded tracks · offline';
    for(const [id,[label]] of Object.entries(COLLECTIONS)) {
      const button=document.createElement('button');button.textContent=label;button.dataset.collection=id;
      button.addEventListener('click',()=>this.setCollection(id));$('collection-tabs').append(button);
    }
    for(const ref of library.references) {
      const a=document.createElement('a');a.href=ref.url;a.textContent=ref.title+' ↗';a.target='_blank';a.rel='noopener';$('reference-links').append(a);
    }
    $('movement').addEventListener('change',()=>this.load($('movement').value));
    $('previous-work').addEventListener('click',()=>this.step(-1));
    $('next-work').addEventListener('click',()=>this.step(1));
    $('compare-pair').addEventListener('click',()=>{
      const partner=this.library.works.find(w=>w.pair===score.pair&&w.id!==score.id);
      if(partner)this.load(partner.id);
    });
    $('all-parts').addEventListener('click',()=>this.changeParts(new Set()));
    $('cue-select').addEventListener('change',()=>{ $('follow-cues').checked=false;this.chooseCue(Number($('cue-select').value)); });
    $('jump-cue').addEventListener('click',()=>this.jumpCue());
    $('loop-cue').addEventListener('click',async()=>{
      const cue=score.cues[this.cueIndex];if(!cue)return;
      if(transport.loopRange) {transport.loopRange=null;$('loop-cue').setAttribute('aria-pressed','false');return;}
      transport.loopRange=[cue.at/1000,cue.end/1000];$('loop-cue').setAttribute('aria-pressed','true');
      $('follow-cues').checked=false;
      try{await transport.seek(cue.at/1000);await transport.play();}catch(e){report(e);}
    });
    this.roll=$('piano-roll');this.lab=$('lab-plot');
    this.roll.addEventListener('pointerdown',async event=>{
      if(!this.rollWindow)return;
      const rect=this.roll.getBoundingClientRect();
      const seconds=this.rollWindow[0]+(event.clientX-rect.left)/rect.width*(this.rollWindow[1]-this.rollWindow[0]);
      transport.loopRange=null;$('loop-cue').setAttribute('aria-pressed','false');
      try{await transport.seek(seconds);}catch(e){report(e);}
    });
    $('lab-mode').addEventListener('change',()=>{
      const mode=$('lab-mode').value;
      $('lab-scale').value=mode==='augment'?'2':mode==='diminish'?'0.5':'1';this.drawLab();
    });
    for(const id of ['lab-shift','lab-scale'])$(id).addEventListener('input',()=>this.drawLab());
    $('play-reference').addEventListener('click',()=>this.audition(false));
    $('play-transform').addEventListener('click',()=>this.audition(true));
    $('stop-lab').addEventListener('click',()=>{audio.stopGroup('lab');$('lab-status').textContent='Stopped';});
    window.addEventListener('resize',()=>{this.lastTime=-1;this.drawLab();});
    this.setCollection('original','bwv617');
  }
  setCollection(collection,id=null) {
    this.collection=collection;this.works=this.library.works.filter(w=>w.collection===collection);
    $('movement').replaceChildren();
    for(const w of this.works) {const o=document.createElement('option');o.value=w.id;o.textContent=w.title+' · '+w.catalogue;$('movement').append(o);}
    for(const button of $('collection-tabs').children)button.setAttribute('aria-pressed',String(button.dataset.collection===collection));
    $('collection-note').textContent=COLLECTIONS[collection][1];
    this.load(id||this.works[0].id);
  }
  step(direction) {
    const index=this.works.findIndex(w=>w.id===score.id);
    if(index+direction>=0&&index+direction<this.works.length)this.load(this.works[index+direction].id);
  }
  load(id) {
    const next=this.library.works.find(w=>w.id===id);if(!next)return;
    transport.pause();releaseAll();transport.loopRange=null;transport.muted.clear();
    score=next;transport.score=score;transport.offset=0;transport.index=0;this.cueIndex=-1;this.lastTime=-1;
    $('movement').value=id;clearError();$('loop-cue').setAttribute('aria-pressed','false');
    document.querySelector('.piece-info h2').textContent=score.title;
    document.querySelector('.piece-info .eyebrow').textContent=COLLECTIONS[score.collection][0].toUpperCase()+' / J. S. BACH';
    document.querySelector('.piece-caption').textContent=score.catalogue+' · '+score.form+' · Synthesized piano';
    document.querySelector('.piece-number').textContent=String(this.works.findIndex(w=>w.id===id)+1).padStart(2,'0');
    $('previous-work').disabled=this.works[0].id===id;$('next-work').disabled=this.works.at(-1).id===id;
    $('context-title').textContent=score.context.title;$('context-body').textContent=score.context.body;$('context-math').textContent=score.context.math;
    const ref=this.library.references.find(r=>r.id===score.context.ref);$('context-source').href=ref.url;
    $('compare-pair').hidden=!score.pair||!this.library.works.some(w=>w.pair===score.pair&&w.id!==score.id);
    $('track-credit').textContent=score.credit+' · '+score.license+' · '+score.source+'. '+(score.midiWarnings?.length?'Source MIDI contains '+score.midiWarnings.length+' unpaired note-off event(s); no sounding note-on was removed.':'');
    const source=document.createElement('a');source.href=score.sourceUrl;source.target='_blank';source.rel='noopener';source.textContent=' Original edition ↗';$('track-credit').append(source);
    this.buildParts();this.buildCues();this.buildVariationMap();transport.onchange();
    this.drawRoll(0);this.drawLab();
  }
  buildParts() {
    $('part-controls').replaceChildren();
    score.tracks.forEach((part,index)=>{
      const row=document.createElement('div');row.className='part-item';
      const button=document.createElement('button');button.textContent=(index+1)+'. '+(part.name||'Part '+(index+1));button.dataset.part=part.track;button.style.setProperty('--part-color',PART_COLORS[index%PART_COLORS.length]);button.setAttribute('aria-pressed',String(!transport.muted.has(part.track)));button.setAttribute('aria-label','Hear part '+(index+1));
      button.addEventListener('click',()=>{const muted=new Set(transport.muted);muted.has(part.track)?muted.delete(part.track):muted.add(part.track);this.changeParts(muted);});
      const solo=document.createElement('button');solo.className='solo-button';solo.textContent='Solo';solo.setAttribute('aria-label','Solo part '+(index+1));solo.addEventListener('click',()=>this.changeParts(new Set(score.tracks.filter(p=>p.track!==part.track).map(p=>p.track))));
      row.append(button,solo);$('part-controls').append(row);
    });
  }
  async changeParts(muted) {
    transport.muted=muted;this.buildParts();
    try{await transport.seek(transport.position());}catch(e){report(e);}
  }
  buildCues() {
    $('cue-select').replaceChildren();
    score.cues.forEach((cue,index)=>{
      const option=document.createElement('option');option.value=index;
      option.textContent=formatTime(cue.at/1000)+' · '+CUE_NAMES[cue.kind]+(cue.overlap?' · overlap':'');$('cue-select').append(option);
    });
    const empty=!score.cues.length;
    for(const id of ['cue-select','jump-cue','loop-cue'])$(id).disabled=empty;
    if(empty){const o=document.createElement('option');o.textContent='No safe exact prefix detection in this MIDI';$('cue-select').append(o);}
    $('follow-cues').checked=true;this.chooseCue(empty?-1:0);
  }
  chooseCue(index) {
    this.cueIndex=index;const cue=score.cues[index];
    if(!cue){$('cue-title').textContent='Listen to the texture';$('cue-body').textContent='No eight-note monophonic opening prefix could be safely matched in this encoding. Read the score context above; this does not mean the music has no imitation.';$('cue-math').textContent='No transformation asserted.';return;}
    $('cue-select').value=index;
    $('cue-title').textContent=CUE_NAMES[cue.kind]+(cue.overlap?' · overlapping entries':'');
    const part=score.tracks.findIndex(p=>p.track===cue.part)+1;
    $('cue-body').textContent=`At ${formatTime(cue.at/1000)}, part ${part}: the eight-note prefix has ${cue.sign<0?'reversed':'preserved'} directed semitone intervals and ${cue.scale}× note values, starting ${cue.shift>=0?'+':''}${cue.shift} semitones from the reference.`+(cue.overlap?' Its prefix overlaps an entry in another part: a local stretto-like overlap, not a complete subject analysis.':'')+' Equality is checked in beat coordinates before millisecond rounding.';
    $('cue-math').textContent=`q′ = ${cue.scale}q + ${cue.deltaBeat}; p′ = ${cue.sign}p + ${cue.pitchConstant}`;
    this.lastTime=-1;
  }
  async jumpCue() {
    const cue=score.cues[this.cueIndex];if(!cue)return;
    transport.loopRange=null;$('loop-cue').setAttribute('aria-pressed','false');
    try{await transport.seek(cue.at/1000);}catch(e){report(e);}
  }
  buildVariationMap() {
    $('variation-map').hidden=score.collection!=='goldberg';$('variation-buttons').replaceChildren();
    if(score.collection!=='goldberg')return;
    for(const w of this.works) {
      const b=document.createElement('button');b.textContent=w.variation===0?'Aria':w.variation===31?'Da capo':w.variation;
      b.setAttribute('aria-label',w.title);b.setAttribute('aria-current',String(w.id===score.id));
      if(w.form==='Canon')b.className='canon';if(w.variation===30)b.className='quodlibet';
      b.title=w.form;b.addEventListener('click',()=>this.load(w.id));$('variation-buttons').append(b);
    }
  }
  setupCanvas(canvas,height) {
    const width=canvas.clientWidth||600,ratio=Math.min(devicePixelRatio||1,1.5);
    if(canvas.width!==Math.round(width*ratio)||canvas.height!==Math.round(height*ratio)){canvas.width=Math.round(width*ratio);canvas.height=Math.round(height*ratio);}
    const ctx=canvas.getContext('2d');ctx.setTransform(ratio,0,0,ratio,0,0);ctx.clearRect(0,0,width,height);return {ctx,width,height};
  }
  drawRoll(position) {
    const {ctx,width,height}=this.setupCanvas(this.roll,220);
    const start=Math.max(0,position-2.5),end=start+14;this.rollWindow=[start,end];
    const low=Math.max(21,score.range[0]-2),high=Math.min(108,score.range[1]+2),dy=(height-30)/(high-low+1);
    const x=t=>(t-start)/(end-start)*width,y=p=>height-20-(p-low+1)*dy;
    ctx.fillStyle='#efeee7';ctx.fillRect(0,0,width,height);ctx.font='9px Arial';
    for(let t=Math.ceil(start/2)*2;t<end;t+=2){ctx.strokeStyle='#d9ddd0';ctx.beginPath();ctx.moveTo(x(t),0);ctx.lineTo(x(t),height-18);ctx.stroke();ctx.fillStyle='#606c5b';ctx.fillText(formatTime(t),x(t)+4,height-5);}
    for(let p=low;p<=high;p++)if(p%12===0){ctx.strokeStyle='#dfe1d6';ctx.beginPath();ctx.moveTo(0,y(p));ctx.lineTo(width,y(p));ctx.stroke();}
    const cue=score.cues[this.cueIndex],selected=new Set(cue?.ids||[]),partIndex=new Map(score.tracks.map((p,i)=>[p.track,i]));
    for(let i=0;i<score.notes.length;i++){
      const n=score.notes[i],at=n[0]/1000,until=(n[0]+n[2])/1000;if(at>end)break;if(until<start)continue;
      ctx.globalAlpha=transport.muted.has(n[4])?0.18:until>=position&&at<=position?1:0.65;
      ctx.fillStyle=PART_COLORS[(partIndex.get(n[4])||0)%PART_COLORS.length];
      const left=x(at),top=y(n[1]),w=Math.max(1.5,x(until)-left-0.5),h=Math.max(2,dy-0.8);ctx.fillRect(left,top,w,h);
      if(selected.has(i)){ctx.globalAlpha=1;ctx.strokeStyle='#ae7833';ctx.lineWidth=2;ctx.strokeRect(left-1,top-1,w+2,h+2);}
    }
    ctx.globalAlpha=1;ctx.strokeStyle='#ae7833';ctx.lineWidth=1.5;ctx.beginPath();ctx.moveTo(x(position),0);ctx.lineTo(x(position),height-18);ctx.stroke();
  }
  labData(transformed) {
    const motif=score.motif.length?score.motif:[[0,60,1],[1,64,0.5],[1.5,62,0.5],[2,67,1],[3,65,1]];
    const mode=$('lab-mode').value,shift=Number($('lab-shift').value),scale=Number($('lab-scale').value),base=motif[0][1],length=Math.max(...motif.map(n=>n[0]+n[2]));
    return motif.map(([q,p,d])=>transformed?[(mode==='retrograde'?length-q-d:q)*scale,(mode==='invert'?2*base-p:p)+shift,d*scale]:[q,p,d]).sort((a,b)=>a[0]-b[0]);
  }
  drawLab() {
    if(!score.context)return;
    const ref=this.labData(false),transformed=this.labData(true),mode=$('lab-mode').value,shift=Number($('lab-shift').value),scale=Number($('lab-scale').value),base=ref[0][1];
    $('lab-shift-value').value=(shift>=0?'+':'')+shift+' st';
    $('lab-note').textContent=score.motif.length?'Uses the same opening eight-note prefix as the detector. Blue: reference. Amber: your transform.':'This encoding has no safe extracted prefix. The lab uses a clearly separate, generated five-note teaching motif.';
    const L=Math.max(...ref.map(n=>n[0]+n[2]));
    $('lab-formula').textContent=(mode==='retrograde'?`q′ = ${scale}(L − q − d), d′ = ${scale}d; L = ${L}`:`q′ = ${scale}q, d′ = ${scale}d`)+`; p′ = ${mode==='invert'?`−p + ${2*base+shift}  (axis a = ${(2*base+shift)/2})`:`p + ${shift}`}`;
    const {ctx,width,height}=this.setupCanvas(this.lab,170),all=ref.concat(transformed),low=Math.min(...all.map(n=>n[1]))-2,high=Math.max(...all.map(n=>n[1]))+2,length=Math.max(...all.map(n=>n[0]+n[2]));
    const x=q=>25+q/length*(width-50),y=p=>height-25-(p-low)/(high-low)*(height-45);
    ctx.fillStyle='#f4f2eb';ctx.fillRect(0,0,width,height);ctx.strokeStyle='#d9ddd0';ctx.beginPath();ctx.moveTo(25,10);ctx.lineTo(25,height-20);ctx.lineTo(width-15,height-20);ctx.stroke();
    ctx.font='9px Arial';ctx.fillStyle='#5b6555';ctx.fillText('p / MIDI',30,12);ctx.fillText('q / beats',width-65,height-5);
    for(const [sequence,color] of [[ref,'#496f77'],[transformed,'#a46140']]){
      ctx.strokeStyle=color;ctx.lineWidth=1.5;ctx.beginPath();sequence.forEach(([q,p],i)=>i?ctx.lineTo(x(q),y(p)):ctx.moveTo(x(q),y(p)));ctx.stroke();
      for(const [q,p,d] of sequence){ctx.fillStyle=color;ctx.globalAlpha=0.7;ctx.fillRect(x(q),y(p)-3,Math.max(3,x(q+d)-x(q)-2),6);}ctx.globalAlpha=1;
    }
    const outside=transformed.some(n=>n[1]<21||n[1]>108);$('play-transform').disabled=outside;
    $('lab-status').textContent=outside?'Outside the 88-key range; reduce the pitch shift.':'';
  }
  async audition(transformed) {
    transport.pause();audio.stopGroup('lab');
    try{
      await audio.unlock();const notes=this.labData(transformed);if(notes.some(n=>n[1]<21||n[1]>108))return;
      // Warm buffers before choosing the common start time, to avoid staggered entries.
      for(const n of notes)audio.bufferFor(n[1]);
      const at=audio.ctx.currentTime+0.04;
      for(const [q,p,d] of notes)audio.noteOn(p,90,at+q*0.5,d*0.5,'lab');
      $('lab-status').textContent=(transformed?'Transformed motif':'Reference motif')+' · demonstration at ♩ = 120';clearError();
    }catch(e){report(e);}
  }
  tick(position,time) {
    if($('follow-cues').checked&&score.cues.length){let index=0;for(let i=0;i<score.cues.length;i++){if(score.cues[i].at/1000>position)break;index=i;}if(index!==this.cueIndex)this.chooseCue(index);}
    if(time-this.lastTime>120||this.lastTime<0){this.drawRoll(position);this.lastTime=time;}
  }
}
study=new BachStudy(bachLibrary);
