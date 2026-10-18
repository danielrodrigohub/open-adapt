package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c3 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16492b;

    public c3() {
        this(null, 1, null);
    }

    public c3(qd.l lVar, int i10, rd.h hVar) {
        this.f16492b = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16492b;
    }

    @Override // v9.k
    public final String c() {
        return "FootPresenceSensorEnableRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c3) && p4.h.c(this.f16492b, ((c3) obj).f16492b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16492b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "FootPresenceSensorEnableRequest(notConnected=" + this.f16492b + ")";
    }
}
