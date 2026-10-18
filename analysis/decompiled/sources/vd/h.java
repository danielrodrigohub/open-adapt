package vd;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends f implements b<Long> {
    static {
        new h(1L, 0L);
    }

    public h(long j10, long j11) {
        super(j10, j11);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            if (!isEmpty() || !((h) obj).isEmpty()) {
                h hVar = (h) obj;
                if (this.f17030h != hVar.f17030h || this.f17031i != hVar.f17031i) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j10 = this.f17030h;
        long j11 = ((long) 31) * (j10 ^ (j10 >>> 32));
        long j12 = this.f17031i;
        return (int) (j11 + (j12 ^ (j12 >>> 32)));
    }

    public final boolean isEmpty() {
        return this.f17030h > this.f17031i;
    }

    @Override // vd.b
    public final Comparable k() {
        return Long.valueOf(this.f17030h);
    }

    @Override // vd.b
    public final Comparable l() {
        return Long.valueOf(this.f17031i);
    }

    public final boolean n(long j10) {
        return this.f17030h <= j10 && j10 <= this.f17031i;
    }

    public final String toString() {
        return this.f17030h + ".." + this.f17031i;
    }
}
