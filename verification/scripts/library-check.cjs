const {Midi}=require('@tonejs/midi');
const fs=require('node:fs'),path=require('node:path'),assert=require('node:assert/strict');
const ROOT=path.resolve(__dirname,'../..'),library=JSON.parse(fs.readFileSync(path.join(ROOT,'source/assets/library.json')));
const order=(a,b)=>Math.round(a[0])-Math.round(b[0])||a[1]-b[1]||Math.round(a[2])-Math.round(b[2])||a[3]-b[3];
let noteCount=0,cueCount=0,maxOnsetErrorMs=0,maxDurationErrorMs=0;
const warnings=[];
for(const score of library.works){
 const midi=new Midi(fs.readFileSync(path.join(ROOT,'source',score.midiFile)));
 const expected=midi.tracks.flatMap(t=>t.notes.map(n=>[n.time*1000,n.midi,n.duration*1000,Math.round(n.velocity*127),n.ticks/midi.header.ppq,n.durationTicks/midi.header.ppq])).sort(order);
 const actual=score.notes.map((n,i)=>[...n,i]).sort(order);
 assert.equal(actual.length,expected.length,score.id+' note count');
 const independent=new Map();
 for(let i=0;i<actual.length;i++){
  const a=actual[i],e=expected[i];assert.equal(a[1],e[1],score.id);assert.equal(a[3],e[3],score.id);
  const dt=Math.abs(a[0]-e[0]),dd=Math.abs(a[2]-e[2]);
  assert.ok(dt<=0.501,`${score.id} onset ${dt}`);assert.ok(dd<=0.501,`${score.id} duration ${dd}`);
  maxOnsetErrorMs=Math.max(maxOnsetErrorMs,dt);maxDurationErrorMs=Math.max(maxDurationErrorMs,dd);independent.set(a[5],e);
 }
 assert.ok(Math.abs(score.duration-midi.duration*1000)<=1.001,score.id+' duration');
 for(const cue of score.cues){
  const src=cue.reference.map(i=>independent.get(i)),target=cue.ids.map(i=>independent.get(i));
  assert.equal(src.length,8);assert.equal(target.length,8);
  for(let i=0;i<8;i++){
   assert.equal(target[i][1],cue.sign*src[i][1]+cue.pitchConstant,score.id+' cue pitch');
   assert.ok(Math.abs(target[i][4]-(cue.scale*src[i][4]+cue.deltaBeat))<0.000002,score.id+' cue beat');
   assert.ok(Math.abs(target[i][5]-cue.scale*src[i][5])<=0.025001,score.id+' cue duration');
  }
  assert.equal(cue.at,score.notes[cue.ids[0]][0]);assert.ok(cue.end<=score.duration);
  cueCount++;
 }
 noteCount+=actual.length;
 if(score.midiWarnings.length)warnings.push({id:score.id,warnings:score.midiWarnings});
}
assert.deepEqual(library.counts,{wtc1:48,wtc2:50,art:22,goldberg:32,original:1});
const result={status:'pass',tracks:library.works.length,noteCount,cueCount,independentParser:'@tonejs/midi',maxOnsetErrorMs,maxDurationErrorMs,timingToleranceMs:0.501,cueBeatTolerance:0.000002,cueDurationToleranceBeats:0.025001,warnings,checks:['all pitches and velocities','every onset and duration','all detected cue transformations independently checked in beat coordinates','all cue indices and boundaries','collection coverage including variants and mirror pairs']};
fs.writeFileSync(path.join(ROOT,'verification/library-report.json'),JSON.stringify(result,null,2)+'\n');console.log(JSON.stringify(result,null,2));
