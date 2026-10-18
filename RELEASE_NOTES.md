# Nike Adapt Max Revive again — experimental v0.2.0

> Why nike discontinued this?...

Experimental local-control build based on Nike Adapt 1.29.3 for investigating Nike Adapt Auto Max shoes.

- Separate left/right battery percentages on the main panel, using existing shoe battery queries approximately every 20 seconds. Missing, disconnected or stale readings are clearly labelled.
- Local panel without Nike registration; real first-time Bluetooth pairing is still required.
- Reconnection to locally paired shoes and removal of the mandatory remote update check from the local control path.
- Continuous lighting, phone-turn detection with the screen locked, and a background service with a stop action.
- Optional small lace-motor movements, off by default and limited by confirmation, battery/temperature checks and rate limits.
- Exportable firmware diagnostics. No full firmware backup or independently verified integrity check.

Battery display logic passed 11 assertions, including 0%, 100%, disconnection and stale readings. Updating the installed app and displaying both disconnected battery labels passed on Android 17/API 37 in the emulator, without AndroidRuntime exceptions. Real shoe percentages still need physical validation.

In the previous build, installation, local onboarding, simulated screen-off turns and stopping the service were checked in an Android emulator. **Physical Bluetooth, shoe lighting and motor behavior are not yet validated. Foot-strike streaming activation is not implemented.**

The modified app uses `com.openadapt.experimental` and can coexist with the original app. It uses a different signing key. Start with motor movement off; follow the installation guide in the repository before attempting hardware tests.

Assets include the experimental APK, the original base APK used for the investigation, and their SHA-256 checksums. Existing third-party rights and notices remain applicable.

Support the project: [Donate via PayPal](https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6).
