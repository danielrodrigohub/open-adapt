package x8;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17929b;

    public l0() {
        super(200L);
        this.f17929b = 200L;
    }

    @Override // x8.b0
    public final long a() {
        return this.f17929b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l0) && this.f17929b == ((l0) obj).f17929b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f17929b);
    }

    public final String toString() {
        return "RatchetLacingControllerAction(animationDuration=" + this.f17929b + ")";
    }

    public l0(long j10, int i10, rd.h hVar) {
        super(200L);
        this.f17929b = 200L;
    }
}
