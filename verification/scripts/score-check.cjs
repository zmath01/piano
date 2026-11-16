const {Midi} = require('@tonejs/midi');
const fs=require('node:fs');
const path=require('node:path');
const assert=require('node:assert/strict');
const root=path.resolve(__dirname,'../..');
const midi=new Midi(fs.readFileSync(path.join(root,'assets/bwv617.mid')));
const score=JSON.parse(fs.readFileSync(path.join(root,'assets/score.json'),'utf8'));
const expected=midi.tracks.flatMap(track=>track.notes.map(n=>[
  n.time*1000, n.midi, n.duration*1000, Math.round(n.velocity*127)
])).sort((a,b)=>a[0]-b[0]||a[1]-b[1]||a[2]-b[2]||a[3]-b[3]);
const actual=score.notes.map(n=>n.slice(0,4)).sort((a,b)=>a[0]-b[0]||a[1]-b[1]||a[2]-b[2]||a[3]-b[3]);
assert.equal(actual.length,expected.length);
let maxOnsetErrorMs=0,maxDurationErrorMs=0;
for(let i=0;i<expected.length;i++){
  assert.equal(actual[i][1],expected[i][1]);
  assert.equal(actual[i][3],expected[i][3]);
  const onsetError=Math.abs(actual[i][0]-expected[i][0]);
  const durationError=Math.abs(actual[i][2]-expected[i][2]);
  assert.ok(onsetError<=0.501,`Onset ${i}: ${onsetError} ms`);
  assert.ok(durationError<=0.501,`Duration ${i}: ${durationError} ms`);
  maxOnsetErrorMs=Math.max(maxOnsetErrorMs,onsetError);
  maxDurationErrorMs=Math.max(maxDurationErrorMs,durationError);
}
assert.equal(score.duration,Math.round(midi.duration*1000));
const report={status:'pass',independentParser:'@tonejs/midi',
  notes:expected.length,durationMs:score.duration,maxOnsetErrorMs,maxDurationErrorMs,
  timingToleranceMs:0.501,reason:'Half-millisecond rounding plus floating-point tolerance',
  matched:['every onset','every pitch','every duration','every velocity','tempo map integration'],
  tempos:midi.header.tempos};
fs.mkdirSync(path.join(root,'verification'),{recursive:true});
fs.writeFileSync(path.join(root,'verification/score-report.json'),JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify(report,null,2));
