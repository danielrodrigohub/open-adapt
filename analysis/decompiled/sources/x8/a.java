package x8;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17858b;

    public a() {
        super(50L);
        this.f17858b = 50L;
    }

    @Override // x8.b0
    public final long a() {
        return this.f17858b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f17858b == ((a) obj).f17858b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f17858b);
    }

    public final String toString() {
        return "AbortLacingControllerAction(animationDuration=" + this.f17858b + ")";
    }

    public a(long j10, int i10, rd.h hVar) {
        super(50L);
        this.f17858b = 50L;
    }
}
