"""Find the existing JDK and Android SDK without machine-specific source paths."""
from pathlib import Path
import os
import shutil
import subprocess
import sys


def java_home():
    configured = os.environ.get('JAVA_HOME')
    if configured:
        root = Path(configured).expanduser()
    elif sys.platform == 'darwin':
        root = Path(subprocess.check_output(['/usr/libexec/java_home'], text=True).strip())
    else:
        javac = shutil.which('javac')
        if not javac:
            raise SystemExit('Install a JDK and set JAVA_HOME before building.')
        root = Path(javac).resolve().parent.parent
    executable = 'javac.exe' if os.name == 'nt' else 'javac'
    if not (root / 'bin' / executable).is_file():
        raise SystemExit('JAVA_HOME must point to a JDK containing javac.')
    return root


def android_sdk():
    configured = os.environ.get('ANDROID_SDK_ROOT') or os.environ.get('ANDROID_HOME')
    if configured:
        return Path(configured).expanduser()
    default = Path.home() / ('Library/Android/sdk' if sys.platform == 'darwin' else 'Android/Sdk')
    if not default.is_dir():
        raise SystemExit('Set ANDROID_SDK_ROOT to your installed Android SDK directory.')
    return default
