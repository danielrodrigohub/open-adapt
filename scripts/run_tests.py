"""Compile and run the meaningful JVM checks without Android hardware."""
from pathlib import Path
import os
import subprocess
from runtime import java_home

root = Path(__file__).resolve().parents[1]
project = root / 'analysis/openadapt'
build = project / 'build/test-classes'
build.mkdir(parents=True, exist_ok=True)
home = java_home()
extension = '.exe' if os.name == 'nt' else ''
source = project / 'src/com/openadapt'
sources = [source / name for name in ['FirmwareCheck.java', 'MotorCycle.java', 'TurnDetector.java', 'BatteryStatus.java']]
tests = sorted((project / 'tests').rglob('*.java'))
subprocess.run([str(home / ('bin/javac' + extension)), '--release', '8', '-d', str(build),
                *map(str, sources + tests)], check=True)
for name in ['FirmwareCheckTest', 'MotorCycleTest', 'TurnDetectorTest', 'BatteryStatusTest']:
    subprocess.run([str(home / ('bin/java' + extension)), '-cp', str(build), 'com.openadapt.' + name], check=True)
