"""Retrieve paired mirror fugues and two-keyboard versions from Mutopia ZIPs."""
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import hashlib
import io
import json
import zipfile
from collect_library import get, ROOT, BASE

def collect(roman):
    stem = 'contrapunctus' + roman
    base = BASE + 'BWV1080/' + stem + '/'
    folder = ROOT / 'assets/library/BWV1080' / stem
    assets = {}
    for name in [stem + '-mids.zip', stem + '-lys.zip', stem + '.rdf']:
        data = get(base + name, folder / name)
        assert data, name
        assets[name] = {'url': base + name, 'sha256': hashlib.sha256(data).hexdigest()}
        if name.endswith('.zip'):
            with zipfile.ZipFile(io.BytesIO(data)) as z:
                for item in z.infolist():
                    if item.is_dir() or '..' in Path(item.filename).parts:
                        continue
                    if not item.filename.endswith(('.mid', '.midi', '.ly', '.ily')):
                        continue
                    dest = folder / Path(item.filename).name
                    dest.write_bytes(z.read(item))
    records = [{'directory': base, 'stem': p.stem,
                'assets': {'.mid': {'file': str(p.relative_to(ROOT)), 'url': base + stem + '-mids.zip',
                                    'sha256': hashlib.sha256(p.read_bytes()).hexdigest()},
                           '.rdf': {'file': str((folder / (stem + '.rdf')).relative_to(ROOT)), 'url': base + stem + '.rdf'}}}
               for p in sorted(folder.glob('*.mid*')) if p.suffix in ('.mid', '.midi')]
    print(json.dumps({'edition': roman, 'files': [r['stem'] for r in records]}), flush=True)
    return records

if __name__ == '__main__':
    with ThreadPoolExecutor(max_workers=3) as pool:
        records = sum(list(pool.map(collect, ['XVI', 'XVII', 'XVIII'])), [])
    (ROOT / 'research/art-pairs.json').write_text(json.dumps(records, indent=2) + '\n')
