package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r2 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16795b = null;

    public r2() {
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16795b;
    }

    @Override // v9.k
    public final String c() {
        return "FirmwareCancelPushRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r2) && p4.h.c(this.f16795b, ((r2) obj).f16795b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16795b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "FirmwareCancelPushRequest(notConnected=" + this.f16795b + ")";
    }

    public r2(qd.l lVar, int i10, rd.h hVar) {
    }
}
