# Nike Adapt Max Revive again

> Why nike discontinued this?...

**Open Adapt** is an independent, experimental Android project exploring local control of Nike Adapt Auto Max shoes. It includes the modification sources, reverse-engineering findings, decoded application resources, build scripts, tests and an experimental APK.

[Download the experimental APK](https://github.com/danielrodrigohub/open-adapt/releases/tag/v0.2.0-experimental) · [Guía de instalación en español](output/LEEME.md) · [Validation report](output/VALIDACION.md)

## Support the project

Help support the work on Open Adapt:

**[Donate via PayPal](https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6)**

## Current status

This is an experimental build. Installation, local onboarding, screen-off motion detection and stopping the background service have been checked in an Android emulator. **Bluetooth pairing, lighting and motor behavior still need validation on physical Auto Max shoes.**

| Feature | Implementation and limits |
| --- | --- |
| Local access | The new control panel works without Nike registration or login. Some legacy profile screens and Nike links may still depend on Nike services. |
| Automatic reconnection | Reuses genuinely paired devices and their locally stored keys. A first physical pairing and Android permissions are still required. |
| Update checks | The remote mandatory update check is removed from the local control path. Actual command compatibility checks remain. |
| Shoe battery | Displays separate left/right percentages from authenticated shoe readings, refreshed about every 20 seconds. Shows connection, waiting and stale-reading states instead of a guessed percentage. |
| Continuous lighting | Renews a 60-second solid-color animation every 45 seconds while connected. Custom animations require compatible shoe firmware; the declared minimum is 2.1.7. Hardware battery and thermal cutoffs remain active. |
| Screen-off turns | A foreground service detects turns using the phone's gyroscope. A phone turn does not identify which foot is striking the ground. |
| Foot-strike events | Receivers exist, but the distributed APK's streaming activation code was stripped. This mode only responds if the shoes are already emitting those events. Activation is not implemented. |
| Small lace-motor movements | Experimental and off by default. Loosens 1% and returns to the initial position only after confirmation. Limited to five cycles per minute and at least ten seconds between cycles. Physical behavior and audible sound are unverified. |
| Firmware diagnostics | Reads versions, image states and device-reported checksums, with JSON export. It does not extract a full firmware backup or independently prove firmware integrity. |

## Install and try it

1. Download `OpenAdapt-1.29.3-experimental.apk` from [Releases](https://github.com/danielrodrigohub/open-adapt/releases/tag/v0.2.0-experimental).
2. Install it on Android 7.0 or newer. Its package is `com.openadapt.experimental`, so it can coexist with the original Nike Adapt app.
3. Grant Nearby Devices permissions. On older Android versions, location permission and an enabled location service may also be required.
4. Open **Controles Adapt / emparejar una vez** and complete real physical pairing. The new app cannot read the original app's private pairing keys.
5. Return through the Open Adapt icon or notification. Start with the motor option off and test each light before trying movement effects.
6. For phone turns, keep the phone fixed and upright, with its screen facing forward. Start the service before locking the screen.
7. **Detener todo** and the notification's stop action end the session.

See the [full Spanish guide](output/LEEME.md) for limitations and the initial motor test procedure. Restart the service after switching to another pair of shoes.

## Repository contents

| Path | Contents |
| --- | --- |
| `analysis/openadapt/src/com/openadapt/` | New control panel, background service, local storage, protocol bridge and diagnostic parser. |
| `analysis/openadapt/tests/com/openadapt/` | JVM tests for diagnostics, motor conditions/rate limits and turn detection. |
| `analysis/decoded/` | Apktool-decoded base, including modified smali and resources. |
| `analysis/decompiled/` | JADX inspection output. Decompiled text is not the original application source and may contain incomplete methods. |
| `analysis/offline-originals/`, `analysis/motion-originals/` | Original versions of modified files. |
| `analysis/patch_offline.py`, `analysis/patch_motion.py` | Reproducible modification scripts. |
| `analysis/build_openadapt.py` | Local build, alignment, signing and verification. |
| `analysis/*.proto`, `analysis/*findings*.md` | Packaged protocol definitions and investigation findings. |
| `output/` | Installation guide, validation report, screenshots and published artifact identity. |

APKs are distributed as release assets. Downloaded third-party tools, private signing keys, passwords, emulator dumps and temporary build outputs are excluded from Git.

## Build locally

Requirements: Python 3, a JDK supporting Java 8 compilation, Android SDK Platform 36 and Build Tools 36.0.0. Set `JAVA_HOME` and `ANDROID_SDK_ROOT` (or `ANDROID_HOME`) if they are not in their usual locations.

Download the pinned Apktool dependency:

```sh
python3 scripts/setup_tools.py
```

For a full reconstruction, download the original Nike Adapt 1.29.3 APK from the release assets and place it in the repository root using its original filename. The checked-in decoded tree already contains the modification inputs.

```sh
python3 analysis/build_openadapt.py
```

The build generates its own private signing key under `analysis/openadapt/build/`. Keep that key and password private and retain them for your own subsequent updates. A newly generated key differs from the key used for the published APK.

Run the JVM tests:

```sh
python3 scripts/run_tests.py
```

## Validation and next steps

- 11 battery-display assertions cover 0–100%, missing readings, disconnected shoes and stale data.
- 43 diagnostic-parser assertions and 32 motor-condition/rate-limit assertions passed, alongside turn-detection scenarios.
- Emulator checks covered coexistence with Nike Adapt, the local pairing welcome screen, a simulated turn with the screen locked, and service/wake-lock cleanup after stopping.
- Physical Bluetooth, LEDs, motor response, phone-specific background restrictions and shoe sensor streaming remain to be validated.
- A full, restorable firmware backup is not implemented.

The [validation report](output/VALIDACION.md) records the scope and limits. The motor test code has not been validated on worn shoes; begin with stationary shoes off your feet.

## Project identity and third-party material

This project is independent and is not affiliated with or endorsed by Nike. Nike trademarks and the original application belong to their respective owners. Decoded and decompiled third-party material retains its original notices and terms; this repository does not relicense that material.

**[Support Open Adapt with a PayPal donation](https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6)**
