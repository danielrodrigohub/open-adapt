package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9076a;

    public x(String str) {
        p4.h.j(str, "deviceId");
        this.f9076a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9076a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && p4.h.c(this.f9076a, ((x) obj).f9076a);
    }

    public final int hashCode() {
        return this.f9076a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("UserNeedsToManuallyBondConnectionState(deviceId="), this.f9076a, ')');
    }
}
