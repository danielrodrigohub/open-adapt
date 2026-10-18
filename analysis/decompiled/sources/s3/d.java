package s3;

/* JADX INFO: compiled from: ConstantBitrateSeekMap.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f15033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15035f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f15036g;

    public d(long j10, long j11, int i10, int i11, boolean z10) {
        this.f15030a = j10;
        this.f15031b = j11;
        this.f15032c = i11 == -1 ? 1 : i11;
        this.f15034e = i10;
        this.f15036g = z10;
        if (j10 == -1) {
            this.f15033d = -1L;
            this.f15035f = -9223372036854775807L;
        } else {
            long j12 = j10 - j11;
            this.f15033d = j12;
            this.f15035f = ((Math.max(0L, j12) * 8) * 1000000) / ((long) i10);
        }
    }

    public final long a(long j10) {
        return ((Math.max(0L, j10 - this.f15031b) * 8) * 1000000) / ((long) this.f15034e);
    }

    @Override // s3.u
    public final boolean f() {
        return this.f15033d != -1 || this.f15036g;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        long j11 = this.f15033d;
        if (j11 == -1 && !this.f15036g) {
            v vVar = new v(0L, this.f15031b);
            return new u.a(vVar, vVar);
        }
        long j12 = (((long) this.f15034e) * j10) / 8000000;
        long j13 = this.f15032c;
        long jMin = (j12 / j13) * j13;
        if (j11 != -1) {
            jMin = Math.min(jMin, j11 - j13);
        }
        long jMax = this.f15031b + Math.max(jMin, 0L);
        long jA = a(jMax);
        v vVar2 = new v(jA, jMax);
        if (this.f15033d != -1 && jA < j10) {
            int i10 = this.f15032c;
            if (((long) i10) + jMax < this.f15030a) {
                long j14 = jMax + ((long) i10);
                return new u.a(vVar2, new v(a(j14), j14));
            }
        }
        return new u.a(vVar2, vVar2);
    }

    @Override // s3.u
    public final long i() {
        return this.f15035f;
    }
}
