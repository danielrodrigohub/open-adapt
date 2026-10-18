package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9070a;

    public r(String str) {
        p4.h.j(str, "deviceId");
        this.f9070a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9070a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && p4.h.c(this.f9070a, ((r) obj).f9070a);
    }

    public final int hashCode() {
        return this.f9070a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("DisconnectedCoreRFConnectionState(deviceId="), this.f9070a, ')');
    }
}
