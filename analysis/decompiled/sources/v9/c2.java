package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c2 extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<h, fd.o> f16491b;

    public c2() {
        this.f16491b = null;
    }

    @Override // v9.k
    public final String c() {
        return "ConnectRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c2) && p4.h.c(this.f16491b, ((c2) obj).f16491b);
    }

    public final int hashCode() {
        qd.l<h, fd.o> lVar = this.f16491b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "ConnectRequest(alreadyConnected=" + this.f16491b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c2(qd.l<? super h, fd.o> lVar) {
        this.f16491b = lVar;
    }

    public c2(qd.l lVar, int i10, rd.h hVar) {
        this.f16491b = null;
    }
}
