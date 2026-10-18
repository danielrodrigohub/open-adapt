package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j2 extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<b, fd.o> f16652b;

    /* JADX WARN: Multi-variable type inference failed */
    public j2(qd.l<? super b, fd.o> lVar) {
        p4.h.j(lVar, "connectedThroughOtherApp");
        this.f16652b = lVar;
    }

    @Override // v9.k
    public final String c() {
        return "DeleteShoesRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j2) && p4.h.c(this.f16652b, ((j2) obj).f16652b);
    }

    public final int hashCode() {
        return this.f16652b.hashCode();
    }

    public final String toString() {
        return "DeleteShoesRequest(connectedThroughOtherApp=" + this.f16652b + ")";
    }
}
