package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9074a;

    public v(String str) {
        p4.h.j(str, "deviceId");
        this.f9074a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9074a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && p4.h.c(this.f9074a, ((v) obj).f9074a);
    }

    public final int hashCode() {
        return this.f9074a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("UserDeviceSeveredConnectionCoreRFConnectionState(deviceId="), this.f9074a, ')');
    }
}
