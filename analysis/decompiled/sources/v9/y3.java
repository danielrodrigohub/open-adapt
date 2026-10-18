package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y3 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.d f16932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16933c;

    public y3(ea.d dVar) {
        this.f16932b = dVar;
        this.f16933c = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16933c;
    }

    @Override // v9.k
    public final String c() {
        return a0.d.c("LEDSetRequest[color: ", this.f16932b.a(), "]");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y3)) {
            return false;
        }
        y3 y3Var = (y3) obj;
        return p4.h.c(this.f16932b, y3Var.f16932b) && p4.h.c(this.f16933c, y3Var.f16933c);
    }

    public final int hashCode() {
        int iHashCode = this.f16932b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16933c;
        return iHashCode + (lVar == null ? 0 : lVar.hashCode());
    }

    public final String toString() {
        return "LEDSetRequest(adaptKtiDeviceColor=" + this.f16932b + ", notConnected=" + this.f16933c + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public y3(ea.d dVar, qd.l<? super j, fd.o> lVar) {
        this.f16932b = dVar;
        this.f16933c = lVar;
    }
}
