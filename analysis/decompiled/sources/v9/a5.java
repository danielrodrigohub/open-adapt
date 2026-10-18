package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a5 extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.e f16459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<y, fd.o> f16460c;

    /* JADX WARN: Multi-variable type inference failed */
    public a5(ea.e eVar, qd.l<? super y, fd.o> lVar) {
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(lVar, "modeDoesNotExist");
        this.f16459b = eVar;
        this.f16460c = lVar;
    }

    @Override // v9.k
    public final String c() {
        return a0.d.c("ModeDeleteRequest[mode: ", this.f16459b.b(), "]");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a5)) {
            return false;
        }
        a5 a5Var = (a5) obj;
        return p4.h.c(this.f16459b, a5Var.f16459b) && p4.h.c(this.f16460c, a5Var.f16460c);
    }

    public final int hashCode() {
        return this.f16460c.hashCode() + (this.f16459b.hashCode() * 31);
    }

    public final String toString() {
        return "ModeDeleteRequest(adaptKitDeviceMode=" + this.f16459b + ", modeDoesNotExist=" + this.f16460c + ")";
    }
}
