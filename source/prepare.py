"""Download pinned source assets; no runtime network dependencies."""
from pathlib import Path
from urllib.request import urlopen
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json

ROOT = Path(__file__).resolve().parent
ASSETS = {
    'bwv617.mid': 'https://www.mutopiaproject.org/ftp/BachJS/BWV617/bwv617/bwv617.mid',
    'bwv617.ly': 'https://www.mutopiaproject.org/ftp/BachJS/BWV617/bwv617/bwv617.ly',
    'three.min.js': 'https://cdn.jsdelivr.net/npm/three@0.160.1/build/three.min.js',
    'THREE-LICENSE.txt': 'https://cdn.jsdelivr.net/npm/three@0.160.1/LICENSE',
}

def download(item):
    name, url = item
    dest = ROOT / 'assets' / name
    dest.parent.mkdir(parents=True, exist_ok=True)
    if not dest.exists():
        with urlopen(url, timeout=60) as response:
            data = response.read()
        assert data, name
        if name.endswith('.mid'):
            assert data.startswith(b'MThd'), 'Not a MIDI file'
        dest.write_bytes(data)
    data = dest.read_bytes()
    return name, {'url': url, 'bytes': len(data), 'sha256': hashlib.sha256(data).hexdigest()}

if __name__ == '__main__':
    with ThreadPoolExecutor(max_workers=4) as pool:
        manifest = dict(pool.map(download, ASSETS.items()))
    (ROOT / 'assets' / 'sources.json').write_text(json.dumps(manifest, indent=2) + '\n')
    print(json.dumps(manifest, indent=2))
