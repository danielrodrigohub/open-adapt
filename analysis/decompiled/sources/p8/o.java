package p8;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ea.m f13340a = null;

    public o() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && p4.h.c(this.f13340a, ((o) obj).f13340a);
    }

    public final int hashCode() {
        ea.m mVar = this.f13340a;
        if (mVar == null) {
            return 0;
        }
        return mVar.hashCode();
    }

    public final String toString() {
        return "DeleteDevicesRequest(device=" + this.f13340a + ")";
    }

    public o(ea.m mVar, int i10, rd.h hVar) {
    }
}
