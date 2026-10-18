package x8;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h1 extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17908b;

    public h1() {
        this(0L, 1, null);
    }

    public h1(long j10, int i10, rd.h hVar) {
        super(200L);
        this.f17908b = 200L;
    }

    @Override // x8.b0
    public final long a() {
        return this.f17908b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h1) && this.f17908b == ((h1) obj).f17908b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f17908b);
    }

    public final String toString() {
        return "UserCompletedLacingAction(animationDuration=" + this.f17908b + ")";
    }
}
