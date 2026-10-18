package p8;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ea.e f13324a;

    public e0(ea.e eVar) {
        p4.h.j(eVar, "mode");
        this.f13324a = eVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e0) && p4.h.c(this.f13324a, ((e0) obj).f13324a);
    }

    public final int hashCode() {
        return this.f13324a.hashCode();
    }

    public final String toString() {
        return "SelectModeRequest(mode=" + this.f13324a + ")";
    }
}
