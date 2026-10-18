package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9015a;

    public f(String str) {
        p4.h.j(str, "deviceId");
        this.f9015a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9015a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && p4.h.c(this.f9015a, ((f) obj).f9015a);
    }

    public final int hashCode() {
        return this.f9015a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("ConnectingCoreRFConnectionState(deviceId="), this.f9015a, ')');
    }
}
