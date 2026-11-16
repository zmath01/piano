"""Validate the public distribution without requiring credentials or packages."""
from pathlib import Path
from collections import Counter
import hashlib
import json
import re

ROOT=Path(__file__).resolve().parents[1]
TEXT={'.md','.txt','.py','.js','.cjs','.json','.html','.css','.yml','.yaml','.rdf','.ly','.ily','.csv','.conf'}
SENSITIVE=re.compile(r'(?i)(?:^|/)(?:\.env(?:\..*)?|[^/]*\.(?:pem|key|p12|pfx|kdbx)|(?:credentials?|secrets?|tokens?)(?:[._-][^/]*)?)(?:$|/)')
SECRET=re.compile(rb'(?:gh[pousr]_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}|sk-[A-Za-z0-9_\-]{20,}|-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----)')
files=[]
for p in sorted(ROOT.rglob('*')):
 if not p.is_file() or any(x in p.relative_to(ROOT).parts for x in ['.git','node_modules','__pycache__','_site','_import']):continue
 if p.is_relative_to(ROOT/'source/dist'):continue
 rel=str(p.relative_to(ROOT));assert not p.is_symlink(),rel
 assert not SENSITIVE.search(rel), f'Credential-like filename: {rel}'
 data=p.read_bytes();assert not SECRET.search(data),f'Credential-like data: {rel}'
 if p.suffix in TEXT:
  # Assemble the prohibited host-specific prefixes so the checker does not
  # flag its own pattern definitions as leaked host paths.
  for prefix in [b'/home'+b'/dev',b'/storage/emulated'+b'/0',b'/data/data/com.'+b'termux']:
   assert prefix not in data,f'Device-specific path: {rel}'
 files.append(p)
library=json.loads((ROOT/'source/assets/library.json').read_text())
assert len(library['works'])==153
assert sum(len(w['notes']) for w in library['works'])==163943
assert sum(len(w['cues']) for w in library['works'])==429
assert library['counts']=={'wtc1':48,'wtc2':50,'art':22,'goldberg':32,'original':1}
for name,record in json.loads((ROOT/'source/assets/support/sources.json').read_text()).items():
 assert hashlib.sha256((ROOT/'source/assets/support'/name).read_bytes()).hexdigest()==record['sha256']
assert 'support-button' in (ROOT/'index.html').read_text()
assert '/*__SUPPORT_' not in (ROOT/'index.html').read_text()
print(json.dumps({'status':'pass','files':len(files),'tracks':153,'notes':163943,'timedCues':429,'credentialFindings':0,'devicePathFindings':0,'paymentQrHashes':'verified'}))
