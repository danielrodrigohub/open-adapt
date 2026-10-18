package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "1.5.0")
public final class z0 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ba.a f16945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<p, fd.o> f16947d;

    /* JADX WARN: Multi-variable type inference failed */
    public z0(ba.a aVar, qd.l<? super j, fd.o> lVar, qd.l<? super p, fd.o> lVar2) {
        p4.h.j(aVar, "animation");
        p4.h.j(lVar2, "minimumFirmwareRequirementNotMet");
        this.f16945b = aVar;
        this.f16946c = lVar;
        this.f16947d = lVar2;
    }

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16947d;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16946c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        return p4.h.c(this.f16945b, z0Var.f16945b) && p4.h.c(this.f16946c, z0Var.f16946c) && p4.h.c(this.f16947d, z0Var.f16947d);
    }

    public final int hashCode() {
        int iHashCode = this.f16945b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16946c;
        return this.f16947d.hashCode() + ((iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31);
    }

    public final String toString() {
        return "AnimationStartRequest(animation=" + this.f16945b + ", notConnected=" + this.f16946c + ", minimumFirmwareRequirementNotMet=" + this.f16947d + ")";
    }
}
