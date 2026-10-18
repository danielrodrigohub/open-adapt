package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9012a;

    public c(String str) {
        p4.h.j(str, "deviceId");
        this.f9012a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9012a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && p4.h.c(this.f9012a, ((c) obj).f9012a);
    }

    public final int hashCode() {
        return this.f9012a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("ConnectedAndAuthenticationFailureCoreRFConnectionState(deviceId="), this.f9012a, ')');
    }
}
