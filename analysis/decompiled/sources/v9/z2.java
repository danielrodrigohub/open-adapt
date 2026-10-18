package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z2 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16951b;

    public z2() {
        this(null, 1, null);
    }

    public z2(qd.l lVar, int i10, rd.h hVar) {
        this.f16951b = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16951b;
    }

    @Override // v9.k
    public final String c() {
        return "FootPresenceSensorDisableRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof z2) && p4.h.c(this.f16951b, ((z2) obj).f16951b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16951b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "FootPresenceSensorDisableRequest(notConnected=" + this.f16951b + ")";
    }
}
