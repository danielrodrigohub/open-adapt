"""Download the pinned build dependency from its upstream GitHub release."""
from pathlib import Path
import hashlib
import urllib.request

root = Path(__file__).resolve().parents[1]
target = root / 'analysis/tools/apktool_3.0.3.jar'
target.parent.mkdir(parents=True, exist_ok=True)
url = 'https://github.com/iBotPeaches/Apktool/releases/download/v3.0.3/apktool_3.0.3.jar'
expected = 'dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423'
if not target.exists():
    request = urllib.request.Request(url, headers={'User-Agent': 'open-adapt-build'})
    with urllib.request.urlopen(request, timeout=120) as response:
        content = response.read()
    if hashlib.sha256(content).hexdigest() != expected:
        raise SystemExit('Apktool checksum mismatch; downloaded file was not saved.')
    target.write_bytes(content)
if hashlib.sha256(target.read_bytes()).hexdigest() != expected:
    raise SystemExit('Existing Apktool file does not match the pinned checksum.')
print('Pinned Apktool 3.0.3 is ready.')
