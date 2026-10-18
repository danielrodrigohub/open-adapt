package x8;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g1 extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17903b;

    public g1() {
        super(0L);
        this.f17903b = 0L;
    }

    @Override // x8.b0
    public final long a() {
        return this.f17903b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g1) && this.f17903b == ((g1) obj).f17903b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f17903b);
    }

    public final String toString() {
        return "SwipingLacingControllerAction(animationDuration=" + this.f17903b + ")";
    }

    public g1(long j10, int i10, rd.h hVar) {
        super(0L);
        this.f17903b = 0L;
    }
}
