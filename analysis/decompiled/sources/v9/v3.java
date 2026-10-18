package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v3 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16878b;

    public v3() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v3(qd.l<? super j, fd.o> lVar) {
        this.f16878b = lVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16878b;
    }

    @Override // v9.k
    public final String c() {
        return "LEDGetRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v3) && p4.h.c(this.f16878b, ((v3) obj).f16878b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16878b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "LEDGetRequest(notConnected=" + this.f16878b + ")";
    }

    public v3(qd.l lVar, int i10, rd.h hVar) {
        this.f16878b = null;
    }
}
