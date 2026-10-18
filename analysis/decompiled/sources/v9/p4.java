package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p4 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.h f16764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<r, fd.o> f16766d;

    public p4(ea.h hVar, qd.l lVar) {
        p4.h.j(lVar, "invalidInput");
        this.f16764b = hVar;
        this.f16765c = null;
        this.f16766d = lVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16765c;
    }

    @Override // v9.k
    public final String c() {
        return a0.d.b("LaceSetPresetRequest[percent: ", this.f16764b.a(), "]");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p4)) {
            return false;
        }
        p4 p4Var = (p4) obj;
        return p4.h.c(this.f16764b, p4Var.f16764b) && p4.h.c(this.f16765c, p4Var.f16765c) && p4.h.c(this.f16766d, p4Var.f16766d);
    }

    public final int hashCode() {
        int iHashCode = this.f16764b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16765c;
        return this.f16766d.hashCode() + ((iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31);
    }

    public final String toString() {
        return "LaceSetPresetRequest(laceTightness=" + this.f16764b + ", notConnected=" + this.f16765c + ", invalidInput=" + this.f16766d + ")";
    }
}
