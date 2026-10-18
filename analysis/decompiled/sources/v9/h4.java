package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h4 extends k implements e2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<j, fd.o> f16587b;

    public h4() {
        this(null, 1, null);
    }

    public h4(qd.l lVar, int i10, rd.h hVar) {
        this.f16587b = null;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16587b;
    }

    @Override // v9.k
    public final String c() {
        return "LaceGetPresetRequest";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h4) && p4.h.c(this.f16587b, ((h4) obj).f16587b);
    }

    public final int hashCode() {
        qd.l<j, fd.o> lVar = this.f16587b;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "LaceGetPresetRequest(notConnected=" + this.f16587b + ")";
    }
}
