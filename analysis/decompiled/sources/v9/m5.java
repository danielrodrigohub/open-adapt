package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m5 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16721b;

    public m5() {
        this(null, 1, null);
    }

    public m5(qd.l lVar, int i10, rd.h hVar) {
        this.f16721b = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16721b;
    }

    @Override // v9.k
    public final String c() {
        return "SerialNumberRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m5) && p4.h.c(this.f16721b, ((m5) obj).f16721b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16721b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "SerialNumberRequest(notConnected=" + this.f16721b + ")";
    }
}
