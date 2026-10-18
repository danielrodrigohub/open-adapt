package n3;

/* JADX INFO: compiled from: SeekParameters.java */
/* JADX INFO: loaded from: classes.dex */
public final class w1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w1 f11737c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f11739b;

    static {
        w1 w1Var = new w1(0L, 0L);
        new w1(Long.MAX_VALUE, Long.MAX_VALUE);
        new w1(Long.MAX_VALUE, 0L);
        new w1(0L, Long.MAX_VALUE);
        f11737c = w1Var;
    }

    public w1(long j10, long j11) {
        m5.a.a(j10 >= 0);
        m5.a.a(j11 >= 0);
        this.f11738a = j10;
        this.f11739b = j11;
    }

    public final long a(long j10, long j11, long j12) {
        long j13 = this.f11738a;
        if (j13 == 0 && this.f11739b == 0) {
            return j10;
        }
        int i10 = m5.g0.f10384a;
        long j14 = j10 - j13;
        long j15 = ((j13 ^ j10) & (j10 ^ j14)) >= 0 ? j14 : Long.MIN_VALUE;
        long j16 = this.f11739b;
        long j17 = j10 + j16;
        long j18 = ((j16 ^ j17) & (j10 ^ j17)) >= 0 ? j17 : Long.MAX_VALUE;
        boolean z10 = j15 <= j11 && j11 <= j18;
        boolean z11 = j15 <= j12 && j12 <= j18;
        if (z10 && z11) {
            return Math.abs(j11 - j10) <= Math.abs(j12 - j10) ? j11 : j12;
        }
        if (z10) {
            return j11;
        }
        return z11 ? j12 : j15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w1.class != obj.getClass()) {
            return false;
        }
        w1 w1Var = (w1) obj;
        return this.f11738a == w1Var.f11738a && this.f11739b == w1Var.f11739b;
    }

    public final int hashCode() {
        return (((int) this.f11738a) * 31) + ((int) this.f11739b);
    }
}
