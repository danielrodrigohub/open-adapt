package p8;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ea.e f13341a;

    public p(ea.e eVar) {
        this.f13341a = eVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && p4.h.c(this.f13341a, ((p) obj).f13341a);
    }

    public final int hashCode() {
        return this.f13341a.hashCode();
    }

    public final String toString() {
        return "DeleteModeRequest(mode=" + this.f13341a + ")";
    }
}
