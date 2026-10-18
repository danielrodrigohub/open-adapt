package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "1.5.0")
public final class d1 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<p, fd.o> f16505c;

    /* JADX WARN: Multi-variable type inference failed */
    public d1(qd.l<? super j, fd.o> lVar, qd.l<? super p, fd.o> lVar2) {
        p4.h.j(lVar2, "minimumFirmwareRequirementNotMet");
        this.f16504b = lVar;
        this.f16505c = lVar2;
    }

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16505c;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16504b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        return p4.h.c(this.f16504b, d1Var.f16504b) && p4.h.c(this.f16505c, d1Var.f16505c);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16504b;
        return this.f16505c.hashCode() + ((lVar == null ? 0 : lVar.hashCode()) * 31);
    }

    public final String toString() {
        return "AnimationStopRequest(notConnected=" + this.f16504b + ", minimumFirmwareRequirementNotMet=" + this.f16505c + ")";
    }
}
