package p8;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13327a;

    public f0(boolean z10) {
        this.f13327a = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f0) && this.f13327a == ((f0) obj).f13327a;
    }

    public final int hashCode() {
        boolean z10 = this.f13327a;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final String toString() {
        return "SetFootPresenceSensorRequest(turnOn=" + this.f13327a + ")";
    }
}
