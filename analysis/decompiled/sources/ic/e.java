package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9014a;

    public e(String str) {
        p4.h.j(str, "deviceId");
        this.f9014a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9014a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && p4.h.c(this.f9014a, ((e) obj).f9014a);
    }

    public final int hashCode() {
        return this.f9014a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("ConnectedAndStartingAuthenticationFlowCoreRFConnectionState(deviceId="), this.f9014a, ')');
    }
}
