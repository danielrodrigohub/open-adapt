package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s3 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16820b;

    public s3() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s3(qd.l<? super j, fd.o> lVar) {
        this.f16820b = lVar;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16820b;
    }

    @Override // v9.k
    public final String c() {
        return "LEDBlinkRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s3) && p4.h.c(this.f16820b, ((s3) obj).f16820b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16820b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "LEDBlinkRequest(notConnected=" + this.f16820b + ")";
    }

    public s3(qd.l lVar, int i10, rd.h hVar) {
        this.f16820b = null;
    }
}
