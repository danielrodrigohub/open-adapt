package s4;

import m5.g0;
import t4.i;

/* JADX INFO: compiled from: DashWrappingSegmentIndex.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s3.c f15117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15118b;

    public f(s3.c cVar, long j10) {
        this.f15117a = cVar;
        this.f15118b = j10;
    }

    @Override // s4.d
    public final long c(long j10) {
        return this.f15117a.f15028e[(int) j10] - this.f15118b;
    }

    @Override // s4.d
    public final long d(long j10, long j11) {
        return g0.f(this.f15117a.f15028e, j10 + this.f15118b, true);
    }

    @Override // s4.d
    public final long e(long j10, long j11) {
        return this.f15117a.f15027d[(int) j10];
    }

    @Override // s4.d
    public final long f(long j10, long j11) {
        return 0L;
    }

    @Override // s4.d
    public final long g(long j10, long j11) {
        return -9223372036854775807L;
    }

    @Override // s4.d
    public final i h(long j10) {
        s3.c cVar = this.f15117a;
        int i10 = (int) j10;
        return new i(null, cVar.f15026c[i10], cVar.f15025b[i10]);
    }

    @Override // s4.d
    public final boolean i() {
        return true;
    }

    @Override // s4.d
    public final long j() {
        return 0L;
    }

    @Override // s4.d
    public final long k(long j10) {
        return this.f15117a.f15024a;
    }

    @Override // s4.d
    public final long l(long j10, long j11) {
        return this.f15117a.f15024a;
    }
}
