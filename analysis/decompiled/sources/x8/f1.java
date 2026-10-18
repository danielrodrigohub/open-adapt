package x8;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f1 extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17901b;

    public f1() {
        this(0L, 1, null);
    }

    public f1(long j10, int i10, rd.h hVar) {
        super(0L);
        this.f17901b = 0L;
    }

    @Override // x8.b0
    public final long a() {
        return this.f17901b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f1) && this.f17901b == ((f1) obj).f17901b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f17901b);
    }

    public final String toString() {
        return "StartLacingControllerAction(animationDuration=" + this.f17901b + ")";
    }
}
