# LED investigation: v0.4.0 → v0.4.1

## Scope and identity

Target: the supplied Nike Adapt 1.29.3 APK, base SHA-256 `86366a781de87cae2b672a15ee48d163335e101975e33be0ef8d69da7e688172`, and OpenAdapt v0.4.0 (`315dbfbb9d7976f1d042c9988780b46a5979269aab126aa9d7627f9ad950a7f0`). User confirms installed v0.4.0 and reports no visible LEDs. No physical phone/shoes are connected to the analysis host.

REA is unavailable in the active session. The read-only v6.7.0 doctor reports Codex registration drift and no configured JADX MCP provider. Existing local JADX/Smali evidence was reused without repairing client configuration. The following local references are ordinary static evidence, not REA Evidence IDs or observed shoe execution.

## Findings ledger

| Question | Finding | Evidence and limits |
| --- | --- | --- |
| Does color selection send a command? | v0.4.0 explicitly requests preview through SETTINGS. | `openadapt/src/com/openadapt/ControlActivity.java`, `MotionService.java`; does not prove GATT delivery. |
| Can successive requests interfere? | Confirmed in software: v0.4.0 permitted another request after 1s while pending; ADK cancels current createAnimation and removes queued createAnimation when a new one arrives. | `decompiled/sources/ya/d.java:4862`, `decoded/smali/ya/d.smali` Y. User motion/color timing remains unknown. |
| Is command generation stripped? | No: custom upload and start exist, and Smali queue consumer loops. | x0 → w9.x.G → w9.a0 → ya.d.K → ya.j → ya.j.x → ya.z → hc.l.d; `smali_classes2/y0/t.smali:193`. JADX loop rendering is misleading. |
| Is repeatCount zero wrong? | No; zero means one play. | `Bigfoot.proto:664`. |
| Are RGB components lost? | No demonstrated failure: ba.b scales to16bit and ya.j reduces each channel to byte. | `smali/ba/b.smali`, `smali/ya/j.smali`. |
| Are transfer errors observable in v0.4.0? | Incomplete: initial callbacks cover early gates; custom upload/start errors go to v9.p0, which Bridge did not subscribe to. | `ya.j.s`, `ya.z.s`, `v9.y0`. v0.4.1 registers a listener and matches request UUID. |
| What is the minimum firmware? | Metadata disagrees: x0 annotation1.5.0; controller annotations2.1.7; executable CoreRF guard uses mc.e.n=2.1.3. | `v9/x0.java`, `hc/l.java` A/d, `mc/e.java:53`. All actual original gates remain; the patch does not bypass version compatibility. |
| Does Stop prevent late queued starts? | v0.4.1 marks owned UUIDs and checks queue insertion, execution and CoreRF upload/start entry. | `Bridge.skipCancelledAnimation/requireActiveAnimation`, reproducible `patch_motion.py`. A running transfer may finish in a narrow timing window; its subsequent start is guarded. No full cancellation guarantee is claimed. |
| Did the fix illuminate the physical pair? | Unresolved. | Requires current per-side status, authenticated battery/firmware readings or actual phone traffic. Emulators cannot answer this. |

## Verification

`LightDispatchTest` exercises overlap, coalescing, independent feet, timeout, stop, stale callbacks and blocked states. `check_lighting_runtime.py` uses only an explicitly guarded owned emulator and fake identifiers to exercise the actual packaged ADK classes, cancellation hooks, listener cleanup and nested firmware-error extraction. It never requests a Bluetooth shoe connection. The APK output metadata, runtime report and release validation identify the exact tested binary.

Confirmed result: 79 JVM dispatch assertions and 14 owned-emulator checks against the packaged classes passed. The instrumentation target’s initialization must complete before its fixtures are created (`waitForIdleSync`); this was corrected in the test harness. No production initialization bypass was added.
