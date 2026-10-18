package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9007a;

    public a(String str) {
        p4.h.j(str, "deviceId");
        this.f9007a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9007a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && p4.h.c(this.f9007a, ((a) obj).f9007a);
    }

    public final int hashCode() {
        return this.f9007a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("BondingFailedCoreRFConnectionState(deviceId="), this.f9007a, ')');
    }
}
