# Nike Adapt Max Revive again — experimental v0.4.0

> Why nike discontinued this?...

Download for Android: https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v0.4.0.apk

- New interactive **Ajuste** tab: choose both shoes or one side, preview a relative change of 1–5 points, view confirmed positions, tighten/loosen and stop.
- Below **15%**, show which shoe is blocked and prevent lace movement. Battery and temperature readings must be recent; firmware protections remain active.
- **Fix:** choosing a color or applying light options sends an actual preview command to both connected shoes, even with continuous mode off. Light tests do not trigger the lace motor.
- Show per-shoe light delivery status, including missing connection, firmware rejection, timeout and accepted start. A transient connection failure no longer becomes a persistent battery/thermal lock.
- **Connect** immediately checks and reconnects a saved pair within OpenAdapt. First-time physical pairing returns after both shoes authenticate and the original controller is foreground.
- Preserve package, signing identity, pairing data and preferences when installing over the existing app.

Validated with JVM tests, signed APK verification and an Android emulator. Physical LED, motor, first pairing and reconnection behavior still require testing with real Auto Max shoes. An accepted command is not proof of visible illumination.

Full firmware backup/cloning and activation of shoe foot-strike streaming remain unavailable. The illuminated Swoosh in project artwork is conceptual.

Support: [Donate via PayPal](https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6).
