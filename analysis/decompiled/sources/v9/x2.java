package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x2 extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16908c;

    /* JADX WARN: Multi-variable type inference failed */
    public x2(qd.l<? super j, fd.o> lVar, qd.l<? super j, fd.o> lVar2) {
        p4.h.j(lVar, "leftNotConnected");
        p4.h.j(lVar2, "rightNotConnected");
        this.f16907b = lVar;
        this.f16908c = lVar2;
    }

    @Override // v9.k
    public final String c() {
        return "FitCalibrateStartRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x2)) {
            return false;
        }
        x2 x2Var = (x2) obj;
        return p4.h.c(this.f16907b, x2Var.f16907b) && p4.h.c(this.f16908c, x2Var.f16908c);
    }

    public final int hashCode() {
        return this.f16908c.hashCode() + (this.f16907b.hashCode() * 31);
    }

    public final String toString() {
        return "FitCalibrateStartRequest(leftNotConnected=" + this.f16907b + ", rightNotConnected=" + this.f16908c + ")";
    }
}
