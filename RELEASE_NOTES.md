# Nike Adapt Max Revive again — experimental v0.3.0

> Why nike discontinued this?...

A new native interface for Open Adapt, inspired by a clean sports-product experience with an independent visual design.

- Four tabs: Inicio, Luces, Movimiento and Sistema.
- Light background, rounded cards, clear typography and an Auto Max product image generated with AI from the user-provided gray, teal and orange reference.
- Individual left/right battery cards; missing or stale data is never presented as a live percentage.
- Visual color swatches with a preview, continuous-light controls and side-specific tests.
- Separate motion choices and a confirmation before optional experimental lace movement.
- Apply/start and stop actions stay accessible above the navigation bar.
- GitHub update checks on launch (six-hour interval) or manually, with in-app APK download and Android installation confirmation.
- Updates require a newer version, matching package, SHA-256 and the same signing certificate. Pairing preferences are never cleared.
- Control effects stop before installation; reopening reconnects using stored local keys.
- Existing local pairing and firmware diagnostic export remain available.

The Bluetooth, lighting, firmware and motor command implementations are unchanged. The added updater updates the Android app only. This release does not add foot-strike streaming activation, firmware cloning or a full firmware backup. Physical shoe behavior remains unverified.

The package is `com.openadapt.experimental`, using the same local signing key as earlier experimental releases so this APK can update that installation. It can coexist with the original Nike app. Real first-time pairing is required.

Start with motor movement off; follow the Spanish installation guide before hardware tests. Firmware diagnostics only read versions, states and checksums.

Support the project: [Donate via PayPal](https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6).
