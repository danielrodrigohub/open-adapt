package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v4 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.h f16879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<r, fd.o> f16881d;

    /* JADX WARN: Multi-variable type inference failed */
    public v4(ea.h hVar, qd.l<? super j, fd.o> lVar, qd.l<? super r, fd.o> lVar2) {
        p4.h.j(lVar2, "invalidInput");
        this.f16879b = hVar;
        this.f16880c = lVar;
        this.f16881d = lVar2;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16880c;
    }

    @Override // v9.k
    public final String c() {
        return a0.d.b("LaceToPercentRequest[percent: ", this.f16879b.a(), "]");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v4)) {
            return false;
        }
        v4 v4Var = (v4) obj;
        return p4.h.c(this.f16879b, v4Var.f16879b) && p4.h.c(this.f16880c, v4Var.f16880c) && p4.h.c(this.f16881d, v4Var.f16881d);
    }

    public final int hashCode() {
        int iHashCode = this.f16879b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16880c;
        return this.f16881d.hashCode() + ((iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31);
    }

    public final String toString() {
        return "LaceToPercentRequest(laceTightness=" + this.f16879b + ", notConnected=" + this.f16880c + ", invalidInput=" + this.f16881d + ")";
    }
}
