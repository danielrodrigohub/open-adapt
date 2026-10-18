package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9062a;

    public n(String str) {
        p4.h.j(str, "deviceId");
        this.f9062a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9062a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n) && p4.h.c(this.f9062a, ((n) obj).f9062a);
    }

    public final int hashCode() {
        return this.f9062a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("ConnectionStartingCoreRFConnectionState(deviceId="), this.f9062a, ')');
    }
}
