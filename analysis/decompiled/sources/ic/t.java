package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9072a;

    public t(String str) {
        p4.h.j(str, "deviceId");
        this.f9072a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9072a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t) && p4.h.c(this.f9072a, ((t) obj).f9072a);
    }

    public final int hashCode() {
        return this.f9072a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("NotInitiatedCoreRFConnectionState(deviceId="), this.f9072a, ')');
    }
}
