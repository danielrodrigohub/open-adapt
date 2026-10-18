package p8;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final qd.l<v9.p, fd.o> f13348a;

    public w() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w(qd.l<? super v9.p, fd.o> lVar) {
        this.f13348a = lVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w) && p4.h.c(this.f13348a, ((w) obj).f13348a);
    }

    public final int hashCode() {
        qd.l<v9.p, fd.o> lVar = this.f13348a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "GetAnimationRequest(firmwareRequirementNotMet=" + this.f13348a + ")";
    }

    public w(qd.l lVar, int i10, rd.h hVar) {
        this.f13348a = null;
    }
}
