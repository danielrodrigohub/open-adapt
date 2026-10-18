package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b5 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.e f16480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<y, fd.o> f16482d;

    public b5(ea.e eVar, qd.l lVar) {
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(lVar, "modeDoesNotExist");
        this.f16480b = eVar;
        this.f16481c = null;
        this.f16482d = lVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16481c;
    }

    @Override // v9.k
    public final String c() {
        return a0.d.c("ModeSelectRequest[mode: ", this.f16480b.b(), "]");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b5)) {
            return false;
        }
        b5 b5Var = (b5) obj;
        return p4.h.c(this.f16480b, b5Var.f16480b) && p4.h.c(this.f16481c, b5Var.f16481c) && p4.h.c(this.f16482d, b5Var.f16482d);
    }

    public final int hashCode() {
        int iHashCode = this.f16480b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16481c;
        return this.f16482d.hashCode() + ((iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31);
    }

    public final String toString() {
        return "ModeSelectRequest(adaptKitDeviceMode=" + this.f16480b + ", notConnected=" + this.f16481c + ", modeDoesNotExist=" + this.f16482d + ")";
    }
}
