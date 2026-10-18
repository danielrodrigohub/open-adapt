package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "2.4.0")
public final class p3 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<p, fd.o> f16763c;

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16763c;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16762b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p3)) {
            return false;
        }
        p3 p3Var = (p3) obj;
        return p4.h.c(this.f16762b, p3Var.f16762b) && p4.h.c(this.f16763c, p3Var.f16763c);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16762b;
        return this.f16763c.hashCode() + ((lVar == null ? 0 : lVar.hashCode()) * 31);
    }

    public final String toString() {
        return "GestureStatisticsResetRequest(notConnected=" + this.f16762b + ", minimumFirmwareRequirementNotMet=" + this.f16763c + ")";
    }
}
