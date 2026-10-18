package kc;

import rd.h;

/* JADX INFO: compiled from: DeviceNotReadyForCommands.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9785h;

    public b() {
        this(null, 1, null);
    }

    public b(String str, int i10, h hVar) {
        super("Not connected to and authenticated to a device. Why are you calling CoreRF Functions?");
        this.f9785h = "Not connected to and authenticated to a device. Why are you calling CoreRF Functions?";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && p4.h.c(this.f9785h, ((b) obj).f9785h);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f9785h;
    }

    public final int hashCode() {
        return this.f9785h.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return a0.d.d(a0.b.c("DeviceNotReadyForCommands(message="), this.f9785h, ')');
    }
}
