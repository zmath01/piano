"""Rebuild from vendored sources and publish only the self-contained page."""
from pathlib import Path
import shutil
import subprocess
import sys

ROOT=Path(__file__).resolve().parents[1]
subprocess.run([sys.executable,str(ROOT/'source/build.py')],check=True,cwd=ROOT)
site=ROOT/'_site';site.mkdir(exist_ok=True)
shutil.copyfile(ROOT/'source/dist/index.html',site/'index.html')
if '--update-root' in sys.argv:
 shutil.copyfile(site/'index.html',ROOT/'index.html')
 shutil.copyfile(ROOT/'source/dist/build-info.json',ROOT/'build-info.json')
subprocess.run([sys.executable,str(ROOT/'scripts/verify_public.py')],check=True,cwd=ROOT)
print('Pages artifact ready: _site/index.html')
