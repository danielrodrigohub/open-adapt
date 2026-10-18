package ic;

/* JADX INFO: compiled from: CoreRFConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f9010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f9011d;

    public b(String str, String str2, String str3, String str4) {
        p4.h.j(str, "deviceId");
        p4.h.j(str3, "currentFirmwareVersion");
        this.f9008a = str;
        this.f9009b = str2;
        this.f9010c = str3;
        this.f9011d = str4;
    }

    @Override // f8.b
    public final String d() {
        return this.f9008a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return p4.h.c(this.f9008a, bVar.f9008a) && p4.h.c(this.f9009b, bVar.f9009b) && p4.h.c(this.f9010c, bVar.f9010c) && p4.h.c(this.f9011d, bVar.f9011d);
    }

    public final int hashCode() {
        return this.f9011d.hashCode() + a1.f.c(this.f9010c, a1.f.c(this.f9009b, this.f9008a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ConnectedAndAuthenticatedCoreRFConnectionState(deviceId=");
        sbC.append(this.f9008a);
        sbC.append(", address=");
        sbC.append(this.f9009b);
        sbC.append(", currentFirmwareVersion=");
        sbC.append(this.f9010c);
        sbC.append(", key=");
        return a0.d.d(sbC, this.f9011d, ')');
    }
}
