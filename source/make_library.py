"""Build sourced Bach tracks with conservative eight-note motif detections."""
from collections import defaultdict
from copy import deepcopy
from pathlib import Path
import hashlib
import html
import json
import re
import xml.etree.ElementTree as ET
from convert_midi import read_midi

ROOT=Path(__file__).resolve().parent
NS={'mp':'http://www.mutopiaproject.org/piece-data/0.1/'}
KEYS=['C major','C minor','C♯ major','C♯ minor','D major','D minor','E♭ major','D♯ minor','E major','E minor','F major','F minor','F♯ major','F♯ minor','G major','G minor','A♭ major','G♯ minor','A major','A minor','B♭ major','B♭ minor','B major','B minor']
ROMANS=['I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX']
REFERENCES=[
 {'id':'aof','title':'Netherlands Bach Society · The Art of Fugue','url':'https://www.bachvereniging.nl/en/bwv/bwv-1080'},
 {'id':'goldberg','title':'Netherlands Bach Society · Goldberg Variations','url':'https://www.bachvereniging.nl/en/bwv/bwv-988'},
 {'id':'techniques','title':'Ithaca College · Contrapuntal Techniques','url':'https://musictech.ithaca.edu/MusicTech/Form/Handouts/AOF.html'},
 {'id':'wtc1','title':'Knute Snortum · WTC I edition','url':'https://github.com/ksnortum/bach-well-tempered-1'},
 {'id':'wtc2','title':'Knute Snortum · WTC II edition','url':'https://github.com/ksnortum/bach-well-tempered-2'}]

def rdf(record):
 root=ET.parse(ROOT/record['assets']['.rdf']['file']).getroot()
 def field(n):return html.unescape(root.findtext('.//mp:'+n,'',NS))
 return {'title':field('title'),'credit':field('maintainer'),'license':field('licence'),'source':field('id'),'catalogue':field('opus'),'sourceUrl':record['directory'],'editionSource':field('source')}

def context(s):
 c=s['collection'];n=s.get('editionNumber',0)
 if c.startswith('wtc'):
  if s['form']=='Prelude':
   return {'title':'Prelude · 前奏曲','body':'A prelude is not automatically a fugue. Follow the texture and repeated figures. The computed cues describe local motifs only.','math':'Each book covers 12 pitch classes in major and minor: 12 × 2 = 24 prelude–fugue pairs. This does not make every piece a transposition of one template.','ref':c}
  return {'title':'Fugal imitation · 赋格模仿','body':'A fugue introduces a subject in successive parts and develops it in counterpoint. Highlighted detections certify eight-note opening prefixes, not full subject boundaries or a complete formal analysis.','math':'Compare entry delay, pitch translation, reflection and rhythmic scale. A tonal answer can alter intervals and then falls outside the exact semitone detector.','ref':'techniques'}
 if c=='art':
  if n in (16,17,18):
   return {'title':'Mirror counterpoint · 镜像对位','body':'Rectus and inversus are separately playable tracks. This edition numbers the mirror fugues XVI/XVII, commonly called XII/XIII elsewhere; XVIII contains their two-keyboard arrangements. Use Compare pair to switch versions.','math':'Inversion reverses interval directions; full contrapuntal inversion also exchanges positions. Tonal adjustments mean a musical mirror need not be one constant semitone reflection.','ref':'aof'}
  if n==19:
   return {'title':'Fuga a 3 Soggetti · 未完成的终曲','body':'This edition calls the unfinished final fugue XIX, often called Contrapunctus XIV. Playback stops at the surviving fragment; no completion is invented. The later B–A–C–H subject spells B♭–A–C–B♮.','math':'The signature has pitch classes (10, 9, 0, 11), with directed semitone steps (−1, +3, −1). This is musical spelling, not proof of numerical symbolism.','ref':'aof'}
  titles={3:'Inverted subject · 倒影主题',4:'Inverted subject · 倒影主题',5:'Counter-fugue and overlap · 反向模仿',6:'French style and diminution · 减值',7:'Augmentation and diminution · 增值与减值',8:'Multiple subjects · 多主题赋格',9:'Counterpoint at the twelfth · 十二度对位',10:'Counterpoint at the tenth · 十度对位',11:'Multiple subjects and inversion · 多主题与倒影',12:'Canon alla Ottava · 八度卡农',13:'Canon alla Duodecima · 十二度卡农',14:'Canon alla Decima · 十度卡农',15:'Augmented contrary-motion canon · 反向增值卡农'}
  return {'title':titles.get(n,'Subject and answer · 主题与答题'),'body':('Contrapunctus VII is titled per augmentationem et diminutionem. Listen for the subject family at different rhythmic scales, including inverted forms.' if n==7 else 'The Art of Fugue explores a related subject family across different contrapuntal settings. The edition title identifies the device; the timed badges certify narrower, computed motif matches.'),'math':'Translations change pitch or entry time; reflections reverse pitch intervals; dilations scale note values. Motif augmentation changes one line relative to others. The Tempo control instead speeds the entire performance.','ref':'techniques'}
 if c=='goldberg':
  n=s['variation']
  if n in range(3,28,3):
   interval=['unison','second','third','fourth','fifth','sixth','seventh','octave','ninth'][n//3-1]
   return {'title':f'Canon at the {interval} · 卡农','body':f'Variation {n} belongs to the canons at rising intervals: 3, 6, …, 27, from the unison to the ninth.'+(' This canon uses contrary motion.' if n in (12,15) else '')+' A free bass is separate from the imitating lines (variation 27 has only the two canon parts).','math':f'Canon number {n//3} = {n}/3. The named interval is diatonic: its ordinal does not directly specify a semitone count. The timed detector recognizes only exact chromatic prefix matches.','ref':'goldberg'}
  if n==10:return {'title':'Fughetta · 小赋格','body':'Variation 10 is a fughetta. Listen for imitative entrances; a short matching motif is not a full subject segmentation.','math':'Compare local time–pitch translations against the variation cycle’s bass and harmonic plan. The entire Aria melody is not an invariant.','ref':'goldberg'}
  if n==30:return {'title':'Quodlibet · 混成曲','body':'Variation 30 combines tunes instead of supplying the next canon. It should not be labelled a canon at the tenth.','math':'The rising canon-interval sequence ends at variation 27. Its expected continuation at 30 is deliberately replaced.','ref':'goldberg'}
  return {'title':'Variation architecture · 变奏结构','body':'The cycle develops the bass and harmonic scheme rather than simply decorating the Aria melody. The returning Aria closes the cycle. Not every variation is a fugue.','math':'Variation 16 begins the second half. A canon appears every third variation through 27; 30 is a quodlibet. Formal organization is different from exact geometric symmetry of every note.','ref':'goldberg'}
 return {'title':'Chorale prelude · 众赞歌前奏曲','body':'The original BWV 617 sample is retained, including its MIDI organ-register octave doublings, rendered with synthesized piano.','math':'Pitch classes identify octave equivalents modulo 12; different registers remain acoustically distinct.','ref':'techniques'}

def annotate(s):
 beats,notes=s['beatNotes'],s['notes'];groups=defaultdict(list)
 assert len(beats)==len(notes)
 for i,(b,n) in enumerate(zip(beats,notes)):
  assert (b[1],b[3],b[4])==(n[1],n[3],n[4]),s['id']
  groups[b[4]].append(i)
 def valid(ids):
  v=[beats[i] for i in ids]
  return len(v)>=8 and len({x[1] for x in v})>=3 and all(v[i+1][0]>v[i][0] and v[i][0]+v[i][2]<=v[i+1][0]+0.025 for i in range(len(v)-1))
 choices=[ids[:8] for ids in groups.values() if valid(ids[:8])]
 if not choices:s.update(motif=[],motifIds=[],cues=[]);return
 choices.sort(key=lambda ids:(beats[ids[0]][0],-sum(beats[i][1] for i in ids)))
 ref=choices[0];src=[beats[i] for i in ref];start=src[0][0];base=src[0][1]
 s['motif']=[[x[0]-start,x[1],x[2]] for x in src];s['motifIds']=ref;cues=[]
 for part,indices in groups.items():
  for pos in range(len(indices)-7):
   ids=indices[pos:pos+8]
   if not valid(ids):continue
   v=[beats[i] for i in ids];ratio=(v[1][0]-v[0][0])/(src[1][0]-start)
   scale=min([0.25,0.5,1,2,4],key=lambda x:abs(x-ratio))
   if abs(ratio-scale)>1e-5:continue
   if any(abs((b[0]-v[0][0])-scale*(a[0]-start))>1e-5 or abs(b[2]-scale*a[2])>0.025 for a,b in zip(src,v)):continue
   sign=next((k for k in [1,-1] if all(b[1]-v[0][1]==k*(a[1]-base) for a,b in zip(src,v))),None)
   if sign is None:continue
   shift=v[0][1]-base
   kind='opening' if ids==ref else 'inversion' if sign==-1 else 'augmentation' if scale>1 else 'diminution' if scale<1 else 'transposition' if shift else 'repetition'
   cues.append({'at':notes[ids[0]][0],'end':max(notes[i][0]+notes[i][2] for i in ids),'kind':kind,'part':part,'ids':ids,'reference':ref,'sign':sign,'scale':scale,'shift':shift,'beat':round(v[0][0],6),'deltaBeat':round(v[0][0]-scale*start,6),'pitchConstant':v[0][1]-sign*base})
 cues.sort(key=lambda c:(c['at'],c['part']))
 for i,cue in enumerate(cues):
  if any(p['part']!=cue['part'] and p['at']<cue['at']<p['end'] for p in cues[:i]):cue['overlap']=True
 s['cues']=cues

def add(works,file,meta):
 s=read_midi(ROOT/file,meta);s['midiFile']=file;s['midiSha256']=hashlib.sha256((ROOT/file).read_bytes()).hexdigest();s['context']=context(s);annotate(s);s.pop('beatNotes');s.pop('tempoMap');works.append(s)

def main():
 works=[];records=json.loads((ROOT/'research/wtc-library.json').read_text())
 # Correct source attribution from the edition's own README, including cached records.
 for r in records:r['credit']='Knute Snortum'
 (ROOT/'research/wtc-library.json').write_text(json.dumps(records,indent=2)+'\n')
 for r in sorted(records,key=lambda r:(r['book'],int(re.search(r'-(\d+)',r['name'])[1]),r['name'].startswith('fugue'),r['name'])):
  form,num,variant,bwv=re.match(r'(fugue|prelude)-(\d+)([ab]?)-bwv-(\d+)',r['name']).groups();num=int(num);book=r['book'];form=form.title()
  version=(' · Altnikol version' if variant=='a' else ' · autograph version') if variant else ''
  add(works,r['file'],{'id':f'wtc{book}-{form.lower()}-{num}{variant}','title':f'{form} {num} · {KEYS[num-1]}{version}','collection':f'wtc{book}','form':form,'number':num,'catalogue':f'BWV {bwv}','source':f'Knute Snortum · WTC {book} release','credit':'Knute Snortum','license':'CC BY-SA 4.0','sourceUrl':r['source']})
 mut=json.loads((ROOT/'research/mutopia-library.json').read_text())['records'];pairs=json.loads((ROOT/'research/art-pairs.json').read_text())
 art=[r for r in mut if '/BWV1080/contrapunctus' in r['directory']]+pairs
 for r in sorted(art,key=lambda r:(ROMANS.index(re.search(r'/contrapunctus([IVX]+)/',r['directory'])[1]),r['stem']=='inversus')):
  roman=re.search(r'/contrapunctus([IVX]+)/',r['directory'])[1];n=ROMANS.index(roman)+1;m=rdf(r);suffix=' · '+r['stem'].title() if n in (16,17,18) else ''
  m.update(id=f'art-{n}-{r["stem"]}',collection='art',editionNumber=n,form='Canon' if n in (12,13,14,15) else 'Fugue',title=m['title'].replace('Die Kunst der Fuge, ','')+suffix,pair=f'art-{n}')
  add(works,r['assets']['.mid']['file'],m)
 gold=[r for r in mut if '/BWV988/' in r['directory']];gold.sort(key=lambda r:0 if 'aria' in r['stem'] else int(re.search(r'v(\d+)',r['stem'])[1]))
 for r in gold:
  m=rdf(r);n=0 if 'aria' in r['stem'] else int(re.search(r'v(\d+)',r['stem'])[1]);m.update(id=f'goldberg-{n}',collection='goldberg',variation=n,title='Aria' if not n else f'Variation {n}',form='Canon' if n in range(3,28,3) else 'Fughetta' if n==10 else 'Quodlibet' if n==30 else 'Variation');add(works,r['assets']['.mid']['file'],m)
 aria=deepcopy(next(s for s in works if s['id']=='goldberg-0'));aria.update(id='goldberg-da-capo',title='Aria da capo',variation=31);aria['context']=context(aria);works.append(aria)
 add(works,'assets/bwv617.mid',{'id':'bwv617','collection':'original','form':'Chorale prelude','sourceUrl':'https://www.mutopiaproject.org/cgibin/piece-info.cgi?id=1100'})
 counts={c:sum(s['collection']==c for s in works) for c in ['wtc1','wtc2','art','goldberg','original']}
 assert counts=={'wtc1':48,'wtc2':50,'art':22,'goldberg':32,'original':1},counts
 library={'version':2,'references':REFERENCES,'counts':counts,'works':works}
 (ROOT/'assets/library.json').write_text(json.dumps(library,ensure_ascii=False,separators=(',',':'))+'\n')
 summary={'counts':counts,'totalTracks':len(works),'totalNotes':sum(len(s['notes']) for s in works),'cueKinds':{k:sum(c['kind']==k for s in works for c in s['cues']) for k in ['opening','transposition','inversion','augmentation','diminution','repetition']},'perWork':[{'id':s['id'],'notes':len(s['notes']),'parts':len(s['tracks']),'cues':len(s['cues'])} for s in works]}
 (ROOT/'research/library-summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({k:v for k,v in summary.items() if k!='perWork'},indent=2))

if __name__=='__main__':main()
