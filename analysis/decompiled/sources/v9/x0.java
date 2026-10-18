package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "1.5.0")
public final class x0 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ba.h f16903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<p, fd.o> f16905d;

    /* JADX WARN: Multi-variable type inference failed */
    public x0(ba.h hVar, qd.l<? super j, fd.o> lVar, qd.l<? super p, fd.o> lVar2) {
        p4.h.j(hVar, "animation");
        p4.h.j(lVar2, "minimumFirmwareRequirementNotMet");
        this.f16903b = hVar;
        this.f16904c = lVar;
        this.f16905d = lVar2;
    }

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16905d;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16904c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x0)) {
            return false;
        }
        x0 x0Var = (x0) obj;
        return p4.h.c(this.f16903b, x0Var.f16903b) && p4.h.c(this.f16904c, x0Var.f16904c) && p4.h.c(this.f16905d, x0Var.f16905d);
    }

    public final int hashCode() {
        int iHashCode = this.f16903b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16904c;
        return this.f16905d.hashCode() + ((iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31);
    }

    public final String toString() {
        return "AnimationStartCustomRequest(animation=" + this.f16903b + ", notConnected=" + this.f16904c + ", minimumFirmwareRequirementNotMet=" + this.f16905d + ")";
    }
}
