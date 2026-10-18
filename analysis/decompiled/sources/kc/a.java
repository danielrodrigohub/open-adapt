package kc;

import p4.h;

/* JADX INFO: compiled from: DeviceFirmwareTooLow.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9784h;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(mc.e eVar, mc.e eVar2) {
        String str = "The current firmware version of: " + eVar + " is too low. The required firmware version is: " + eVar2;
        h.j(eVar, "currentFirmwareVersion");
        h.j(eVar2, "requiredFirmwareVersion");
        h.j(str, "message");
        super(str);
        this.f9784h = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f9784h;
    }
}
