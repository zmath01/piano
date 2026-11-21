"""Build a standalone offline HTML document plus editable source and credits."""
from pathlib import Path
import hashlib
import json
import shutil
import base64
from finalize_v2 import finalize

ROOT = Path(__file__).resolve().parent
DIST = ROOT / 'dist'
SOURCES = ['index.template.html', 'style.css', 'study.css', 'audio.js', 'scene.js', 'app.js', 'study.js', 'support.js',
           'build.py', 'convert_midi.py', 'prepare.py', 'DESIGN.md',
           'README.md', 'LICENSE.txt', 'CREDITS.md', 'make_library.py',
           'collect_library.py', 'collect_wtc.py', 'collect_art_pairs.py',
           'finalize_v2.py', 'ANALYSIS.md', 'TRACKS.md']

def build():
    finalize()
    DIST.mkdir(exist_ok=True)
    template = (ROOT / 'index.template.html').read_text()
    samples = {
        int(path.stem): base64.b64encode(path.read_bytes()).decode('ascii')
        for path in sorted((ROOT / 'assets' / 'piano').glob('*.mp3'))
    }
    if any(not any(abs(root - note) <= 3 for root in samples) for note in range(21, 109)):
        raise ValueError('The embedded recordings must cover all 88 keys within three semitones.')
    replacements = {
        'CSS': (ROOT / 'style.css').read_text() + '\n' + (ROOT / 'study.css').read_text(),
        'THREE': (ROOT / 'assets' / 'three.min.js').read_text(),
        'SCORE': (ROOT / 'assets' / 'score.json').read_text(),
        'LIBRARY': (ROOT / 'assets' / 'library.json').read_text(),
        'PIANO_SAMPLES': json.dumps(samples, separators=(',', ':')),
        'SUPPORT_WECHAT': base64.b64encode((ROOT / 'assets/support/wechat.png').read_bytes()).decode(),
        'SUPPORT_ALIPAY': base64.b64encode((ROOT / 'assets/support/alipay.jpg').read_bytes()).decode(),
        'APP': '\n'.join((ROOT / name).read_text() for name in ['audio.js', 'scene.js', 'app.js', 'study.js', 'support.js']),
    }
    for key, value in replacements.items():
        if key in ('THREE', 'APP'):
            value = value.replace('</script', '<\\/script')
        template = template.replace('/*__' + key + '__*/', value)
    assert '/*__' not in template
    (DIST / 'index.html').write_text(template)
    source = DIST / 'source'
    source.mkdir(exist_ok=True)
    for name in SOURCES:
        shutil.copyfile(ROOT / name, source / name)
    shutil.copytree(ROOT / 'assets', source / 'assets', dirs_exist_ok=True)
    (source / 'research').mkdir(exist_ok=True)
    for name in ['wtc-library.json', 'mutopia-library.json', 'art-pairs.json', 'library-summary.json']:
        shutil.copyfile(ROOT / 'research' / name, source / 'research' / name)
    for name in ['README.md', 'LICENSE.txt', 'CREDITS.md', 'ANALYSIS.md', 'TRACKS.md']:
        shutil.copyfile(ROOT / name, DIST / name)
    result = {'entry': 'index.html', 'bytes': len(template.encode()),
              'sha256': hashlib.sha256(template.encode()).hexdigest(),
              'runtimeNetworkRequests': 0, 'build': 'python3 source/build.py'}
    (DIST / 'build-info.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))

if __name__ == '__main__':
    build()
