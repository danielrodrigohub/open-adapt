package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v2 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final fa.j f16876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16877c = null;

    public v2(fa.j jVar) {
        this.f16876b = jVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16877c;
    }

    @Override // v9.k
    public final String c() {
        return "FirmwareUpdateStartRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v2)) {
            return false;
        }
        v2 v2Var = (v2) obj;
        return this.f16876b == v2Var.f16876b && p4.h.c(this.f16877c, v2Var.f16877c);
    }

    public final int hashCode() {
        int iHashCode = this.f16876b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16877c;
        return iHashCode + (lVar == null ? 0 : lVar.hashCode());
    }

    public final String toString() {
        return "FirmwareUpdateStartRequest(firmwareTransferSpeed=" + this.f16876b + ", notConnected=" + this.f16877c + ")";
    }
}
