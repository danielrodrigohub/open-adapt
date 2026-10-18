package kc;

import p4.h;

/* JADX INFO: compiled from: FunctionDeprecatedInDeviceFirmware.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9794h;

    /* JADX WARN: Illegal instructions before constructor call */
    public d(mc.e eVar, mc.e eVar2) {
        String str = "Function call deprecated in firmware version of: " + eVar + " is too low. The supported firmware version is: " + eVar2;
        h.j(eVar, "currentFirmwareVersion");
        h.j(eVar2, "requiredFirmwareVersion");
        h.j(str, "message");
        super(str);
        this.f9794h = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f9794h;
    }
}
