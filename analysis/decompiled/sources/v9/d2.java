package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d2 extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<h, fd.o> f16506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<l0, fd.o> f16507c;

    /* JADX WARN: Multi-variable type inference failed */
    public d2(qd.l<? super h, fd.o> lVar, qd.l<? super l0, fd.o> lVar2) {
        this.f16506b = lVar;
        this.f16507c = lVar2;
    }

    @Override // v9.k
    public final String c() {
        return "ConnectRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d2)) {
            return false;
        }
        d2 d2Var = (d2) obj;
        return p4.h.c(this.f16506b, d2Var.f16506b) && p4.h.c(this.f16507c, d2Var.f16507c);
    }

    public final int hashCode() {
        qd.l<h, fd.o> lVar = this.f16506b;
        return this.f16507c.hashCode() + ((lVar == null ? 0 : lVar.hashCode()) * 31);
    }

    public final String toString() {
        return "ConnectRequestV2(alreadyConnected=" + this.f16506b + ", permissionNotGranted=" + this.f16507c + ")";
    }
}
