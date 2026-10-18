package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s4 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16821b;

    public s4() {
        this(null, 1, null);
    }

    public s4(qd.l lVar, int i10, rd.h hVar) {
        this.f16821b = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16821b;
    }

    @Override // v9.k
    public final String c() {
        return "LaceTightenRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s4) && p4.h.c(this.f16821b, ((s4) obj).f16821b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16821b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "LaceTightenRequest(notConnected=" + this.f16821b + ")";
    }
}
