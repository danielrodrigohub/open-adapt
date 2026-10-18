package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b4 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16479b;

    public b4() {
        this(null, 1, null);
    }

    public b4(qd.l lVar, int i10, rd.h hVar) {
        this.f16479b = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16479b;
    }

    @Override // v9.k
    public final String c() {
        return "LaceEngineStatsGetRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b4) && p4.h.c(this.f16479b, ((b4) obj).f16479b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16479b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "LaceEngineStatsGetRequest(notConnected=" + this.f16479b + ")";
    }
}
