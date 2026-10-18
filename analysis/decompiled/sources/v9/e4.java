package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e4 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16534b;

    public e4() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e4(qd.l<? super j, fd.o> lVar) {
        this.f16534b = lVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16534b;
    }

    @Override // v9.k
    public final String c() {
        return "LaceGetPercentRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e4) && p4.h.c(this.f16534b, ((e4) obj).f16534b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16534b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "LaceGetPercentRequest(notConnected=" + this.f16534b + ")";
    }

    public e4(qd.l lVar, int i10, rd.h hVar) {
        this.f16534b = null;
    }
}
