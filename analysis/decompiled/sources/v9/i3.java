package v9;

import java.util.List;

/* JADX INFO: compiled from: AdaptKitDeviceRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@n(minimumFirmwareVersion = "2.4.0")
public final class i3 extends k implements e2, t2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<ga.a> f16637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<j, fd.o> f16638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<p, fd.o> f16639d;

    /* JADX WARN: Multi-variable type inference failed */
    public i3(List<? extends ga.a> list, qd.l<? super j, fd.o> lVar, qd.l<? super p, fd.o> lVar2) {
        p4.h.j(list, "gestureConfigurations");
        p4.h.j(lVar2, "minimumFirmwareRequirementNotMet");
        this.f16637b = list;
        this.f16638c = lVar;
        this.f16639d = lVar2;
    }

    @Override // v9.t2
    public final qd.l<p, fd.o> a() {
        return this.f16639d;
    }

    @Override // v9.e2
    public final qd.l<j, fd.o> b() {
        return this.f16638c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i3)) {
            return false;
        }
        i3 i3Var = (i3) obj;
        return p4.h.c(this.f16637b, i3Var.f16637b) && p4.h.c(this.f16638c, i3Var.f16638c) && p4.h.c(this.f16639d, i3Var.f16639d);
    }

    public final int hashCode() {
        int iHashCode = this.f16637b.hashCode() * 31;
        qd.l<j, fd.o> lVar = this.f16638c;
        return this.f16639d.hashCode() + ((iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31);
    }

    public final String toString() {
        return "GestureConfigurationSetRequest(gestureConfigurations=" + this.f16637b + ", notConnected=" + this.f16638c + ", minimumFirmwareRequirementNotMet=" + this.f16639d + ")";
    }
}
