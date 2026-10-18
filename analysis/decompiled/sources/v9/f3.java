package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "2.4.0")
public final class f3 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<p, fd.o> f16549c;

    /* JADX WARN: Multi-variable type inference failed */
    public f3(qd.l<? super j, fd.o> lVar, qd.l<? super p, fd.o> lVar2) {
        p4.h.j(lVar2, "minimumFirmwareRequirementNotMet");
        this.f16548b = lVar;
        this.f16549c = lVar2;
    }

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16549c;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16548b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f3)) {
            return false;
        }
        f3 f3Var = (f3) obj;
        return p4.h.c(this.f16548b, f3Var.f16548b) && p4.h.c(this.f16549c, f3Var.f16549c);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16548b;
        return this.f16549c.hashCode() + ((lVar == null ? 0 : lVar.hashCode()) * 31);
    }

    public final String toString() {
        return "GestureConfigurationGetRequest(notConnected=" + this.f16548b + ", minimumFirmwareRequirementNotMet=" + this.f16549c + ")";
    }
}
