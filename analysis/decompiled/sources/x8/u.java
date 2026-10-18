package x8;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f18010b;

    public u() {
        super(250L);
        this.f18010b = 250L;
    }

    @Override // x8.b0
    public final long a() {
        return this.f18010b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && this.f18010b == ((u) obj).f18010b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f18010b);
    }

    public final String toString() {
        return "IncrementalLacingControllerAction(animationDuration=" + this.f18010b + ")";
    }

    public u(long j10, int i10, rd.h hVar) {
        super(250L);
        this.f18010b = 250L;
    }
}
