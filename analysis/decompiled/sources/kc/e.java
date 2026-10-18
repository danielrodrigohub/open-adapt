package kc;

import p4.h;

/* JADX INFO: compiled from: InvalidFirmwareStatusInSlot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9795h;

    public e() {
        super("Found a MCU|BLE|CS firmware slot that was invalid.");
        this.f9795h = "Found a MCU|BLE|CS firmware slot that was invalid.";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && h.c(this.f9795h, ((e) obj).f9795h);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f9795h;
    }

    public final int hashCode() {
        return this.f9795h.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return a0.d.d(a0.b.c("InvalidFirmwareStatusInSlot(message="), this.f9795h, ')');
    }

    public e(String str, int i10, rd.h hVar) {
        super("Found a MCU|BLE|CS firmware slot that was invalid.");
        this.f9795h = "Found a MCU|BLE|CS firmware slot that was invalid.";
    }
}
