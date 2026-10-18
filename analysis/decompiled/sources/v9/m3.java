package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "2.4.0")
public final class m3 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<p, fd.o> f16717c;

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16717c;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16716b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m3)) {
            return false;
        }
        m3 m3Var = (m3) obj;
        return p4.h.c(this.f16716b, m3Var.f16716b) && p4.h.c(this.f16717c, m3Var.f16717c);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16716b;
        return this.f16717c.hashCode() + ((lVar == null ? 0 : lVar.hashCode()) * 31);
    }

    public final String toString() {
        return "GestureStatisticsGetRequest(notConnected=" + this.f16716b + ", minimumFirmwareRequirementNotMet=" + this.f16717c + ")";
    }
}
