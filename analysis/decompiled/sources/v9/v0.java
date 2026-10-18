package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "1.5.0")
public final class v0 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<p, fd.o> f16873c;

    /* JADX WARN: Multi-variable type inference failed */
    public v0(qd.l<? super j, fd.o> lVar, qd.l<? super p, fd.o> lVar2) {
        p4.h.j(lVar2, "minimumFirmwareRequirementNotMet");
        this.f16872b = lVar;
        this.f16873c = lVar2;
    }

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16873c;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16872b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v0)) {
            return false;
        }
        v0 v0Var = (v0) obj;
        return p4.h.c(this.f16872b, v0Var.f16872b) && p4.h.c(this.f16873c, v0Var.f16873c);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16872b;
        return this.f16873c.hashCode() + ((lVar == null ? 0 : lVar.hashCode()) * 31);
    }

    public final String toString() {
        return "AnimationGetRequest(notConnected=" + this.f16872b + ", minimumFirmwareRequirementNotMet=" + this.f16873c + ")";
    }
}
