"""Download Knute Snortum's CC BY-SA 4.0 WTC release MIDI and source."""
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
from urllib.request import Request, urlopen
import hashlib
import io
import json
import zipfile

ROOT = Path(__file__).resolve().parent

def fetch(url, target):
    if not target.exists():
        with urlopen(Request(url, headers={'User-Agent': 'Offline-Bach-Piano'}), timeout=60) as r:
            data = r.read()
        assert data
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
    return target.read_bytes()

def book(number):
    repo = f'ksnortum/bach-well-tempered-{number}'
    folder = ROOT / 'assets/library' / f'wtc{number}'
    meta = json.loads(fetch(f'https://api.github.com/repos/{repo}/releases/latest', folder / 'release.json'))
    readme = fetch(f'https://raw.githubusercontent.com/{repo}/{meta["tag_name"]}/README.md', folder / 'README.md')
    assert b'CC BY-SA 4.0' in readme
    archive = fetch(meta['zipball_url'], folder / 'edition-source.zip')
    # Retain the exact LilyPond edition for inspection; extract only text sources.
    with zipfile.ZipFile(io.BytesIO(archive)) as z:
        for item in z.infolist():
            parts = Path(item.filename).parts[1:]
            if not parts or '..' in parts or item.is_dir():
                continue
            if not item.filename.endswith(('.ly', '.ily', '.md', '.txt')):
                continue
            dest = folder / 'edition' / Path(*parts)
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(z.read(item))
    assets = [a for a in meta['assets'] if a['name'].endswith(('.mid', '.midi'))]
    def midi(asset):
        target = folder / asset['name']
        data = fetch(asset['browser_download_url'], target)
        assert data.startswith(b'MThd')
        return {'book': number, 'file': str(target.relative_to(ROOT)), 'name': asset['name'],
                'url': asset['browser_download_url'], 'source': meta['html_url'],
                'license': 'CC BY-SA 4.0', 'credit': 'Knute Snortum',
                'sha256': hashlib.sha256(data).hexdigest()}
    with ThreadPoolExecutor(max_workers=5) as pool:
        records = list(pool.map(midi, assets))
    print(f'WTC book {number}: {len(records)} MIDI files from {meta["tag_name"]}', flush=True)
    return records

if __name__ == '__main__':
    with ThreadPoolExecutor(max_workers=2) as pool:
        records = sum(list(pool.map(book, [1, 2])), [])
    dest = ROOT / 'research/wtc-library.json'
    dest.parent.mkdir(exist_ok=True)
    dest.write_text(json.dumps(records, indent=2) + '\n')
    print(json.dumps({'files': len(records), 'names': [r['name'] for r in records]}, indent=2))
