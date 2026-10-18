package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x1 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16906b;

    public x1() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x1(qd.l<? super j, fd.o> lVar) {
        this.f16906b = lVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16906b;
    }

    @Override // v9.k
    public final String c() {
        return "BatteryGetRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x1) && p4.h.c(this.f16906b, ((x1) obj).f16906b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16906b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "BatteryGetRequest(notConnected=" + this.f16906b + ")";
    }

    public x1(qd.l lVar, int i10, rd.h hVar) {
        this.f16906b = null;
    }
}
