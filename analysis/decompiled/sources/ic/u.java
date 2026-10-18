package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9073a;

    public u(String str) {
        p4.h.j(str, "deviceId");
        this.f9073a = str;
    }

    @Override // f8.b
    public final String d() {
        return this.f9073a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && p4.h.c(this.f9073a, ((u) obj).f9073a);
    }

    public final int hashCode() {
        return this.f9073a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("RetrievingFirmwareInformationCoreRFConnectionState(deviceId="), this.f9073a, ')');
    }
}
