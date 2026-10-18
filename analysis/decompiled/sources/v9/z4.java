package v9;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z4 extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.e f16955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<r, fd.o> f16956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<y, fd.o> f16957d;

    /* JADX WARN: Multi-variable type inference failed */
    public z4(ea.e eVar, qd.l<? super r, fd.o> lVar, qd.l<? super y, fd.o> lVar2) {
        p4.h.j(lVar, "invalidInput");
        p4.h.j(lVar2, "modeAlreadyExists");
        this.f16955b = eVar;
        this.f16956c = lVar;
        this.f16957d = lVar2;
    }

    @Override // v9.k
    public final String c() {
        return a0.d.c("ModeAddRequest[mode: ", this.f16955b.b(), "]");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z4)) {
            return false;
        }
        z4 z4Var = (z4) obj;
        return p4.h.c(this.f16955b, z4Var.f16955b) && p4.h.c(this.f16956c, z4Var.f16956c) && p4.h.c(this.f16957d, z4Var.f16957d);
    }

    public final int hashCode() {
        return this.f16957d.hashCode() + ((this.f16956c.hashCode() + (this.f16955b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ModeAddRequest(adaptKitDeviceMode=" + this.f16955b + ", invalidInput=" + this.f16956c + ", modeAlreadyExists=" + this.f16957d + ")";
    }
}
