"""Retrieve original Mutopia MIDI, LilyPond and RDF credits with bounded IO."""
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
from urllib.request import urlopen, Request
from urllib.error import HTTPError
from urllib.parse import urljoin
import hashlib
import json
import re
import time

ROOT = Path(__file__).resolve().parent
BASE = 'https://www.mutopiaproject.org/ftp/BachJS/'
CACHE = ROOT / 'research' / 'indexes'
OUT = ROOT / 'assets' / 'library'

def get(url, dest=None):
    if dest and dest.exists():
        return dest.read_bytes()
    for attempt in range(3):
        try:
            with urlopen(Request(url, headers={'User-Agent': 'Piano-score-research/1.0'}), timeout=35) as response:
                data = response.read()
            if dest:
                dest.parent.mkdir(parents=True, exist_ok=True)
                dest.write_bytes(data)
            return data
        except HTTPError as error:
            if error.code == 404:
                return None
            if attempt == 2:
                raise
        except OSError:
            if attempt == 2:
                raise
        time.sleep(attempt + 1)

def links(url):
    name = hashlib.sha256(url.encode()).hexdigest()[:20] + '.html'
    data = get(url, CACHE / name)
    if not data:
        return []
    return [urljoin(url, x) for x in re.findall(r'href="([^"?#]+)"', data.decode('utf-8', 'replace'))
            if not x.startswith(('/', '..'))]

def directory(url):
    children = links(url)
    records = []
    for midi in children:
        if not midi.endswith('.mid'):
            continue
        stem = midi.rsplit('/', 1)[-1][:-4]
        folder = OUT / url.split('/BachJS/')[1].strip('/')
        assets = {}
        for suffix in ['.mid', '.ly', '.rdf']:
            source = url + stem + suffix
            target = folder / (stem + suffix)
            data = get(source, target)
            if data:
                if suffix == '.mid':
                    assert data.startswith(b'MThd'), source
                assets[suffix] = {'file': str(target.relative_to(ROOT)), 'url': source,
                                   'bytes': len(data), 'sha256': hashlib.sha256(data).hexdigest()}
        records.append({'directory': url, 'stem': stem, 'assets': assets})
    return records

if __name__ == '__main__':
    roots = [BASE + f'BWV{n}/' for n in range(846, 894)] + [BASE + 'BWV1080/', BASE + 'BWV988/']
    directories, gaps = [], []
    with ThreadPoolExecutor(max_workers=5) as pool:
        futures = {pool.submit(links, url): url for url in roots}
        for future in as_completed(futures):
            url = futures[future]
            found = [x for x in future.result() if x.endswith('/') and 'guitar' not in x.lower()]
            directories.extend(found)
            if not found:
                gaps.append(url)
    records, failures = [], []
    with ThreadPoolExecutor(max_workers=5) as pool:
        futures = {pool.submit(directory, url): url for url in sorted(set(directories))}
        for future in as_completed(futures):
            url = futures[future]
            try:
                items = future.result()
                records.extend(items)
                print(f'{url.split("/BachJS/")[1]}: {len(items)} MIDI', flush=True)
            except Exception as error:
                failures.append({'url': url, 'error': str(error)})
    manifest = {'records': sorted(records, key=lambda x: x['directory'] + x['stem']),
                'missingRoots': sorted(gaps), 'failures': failures}
    (ROOT / 'research').mkdir(exist_ok=True)
    (ROOT / 'research' / 'mutopia-library.json').write_text(json.dumps(manifest, indent=2) + '\n')
    print(json.dumps({'midiFiles': len(records), 'missingRoots': sorted(gaps), 'failures': failures}, indent=2))
