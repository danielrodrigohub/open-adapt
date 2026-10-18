package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9013a;

    public d(String str) {
        p4.h.j(str, "deviceId");
        this.f9013a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9013a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && p4.h.c(this.f9013a, ((d) obj).f9013a);
    }

    public final int hashCode() {
        return this.f9013a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("ConnectedAndRequiresAuthenticationCoreRFConnectionState(deviceId="), this.f9013a, ')');
    }
}
