# Nike Adapt Max Revive again — experimental v0.4.1

> Why nike discontinued this?...

Android download: https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v0.4.1.apk

This patch addresses overlapping custom-light uploads: the original ADK cancels an existing upload when another begins, so repeated motion or color changes could prevent the animation from reaching its start command.

- Keep one upload active per shoe. While uploading, retain only the latest distinct color instead of cancelling the in-flight upload.
- Register the original controller’s result listener with a unique request identifier, exposing transfer and firmware failures that the initial request callbacks did not report.
- Put per-shoe light status at the top of the Lights screen. A transmitted command is never presented as visible illumination.
- Stop/timeout marks the animation identifier cancelled; queued commands and later starts check that identifier. Cancel the active owned upload when its handle is available.
- Do not replay queued colors after failure, stop or timeout. Keep firmware, battery, thermal and real authentication checks.
- Preserve the same package and signing identity for an in-place update.

The software conditions and cancellation guards have automated and owned-emulator checks. The cause of the reported physical-shoe failure is not yet confirmed: this patch fixes a demonstrated software interference condition but still needs a real-shoe test. Complete interruption of an already-running transfer is not guaranteed in every timing window; cancelled animation starts are guarded separately.

Support: [Donate via PayPal](https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6).
