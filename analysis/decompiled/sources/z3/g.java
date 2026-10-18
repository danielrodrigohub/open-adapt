package z3;

import m5.g0;
import s3.u;
import s3.v;

/* JADX INFO: compiled from: XingSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f19286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f19290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f19291f;

    public g(long j10, int i10, long j11, long j12, long[] jArr) {
        this.f19286a = j10;
        this.f19287b = i10;
        this.f19288c = j11;
        this.f19291f = jArr;
        this.f19289d = j12;
        this.f19290e = j12 != -1 ? j10 + j12 : -1L;
    }

    @Override // z3.e
    public final long c(long j10) {
        long j11 = j10 - this.f19286a;
        if (!f() || j11 <= this.f19287b) {
            return 0L;
        }
        long[] jArr = this.f19291f;
        m5.a.f(jArr);
        double d10 = (j11 * 256.0d) / this.f19289d;
        int iF = g0.f(jArr, (long) d10, true);
        long j12 = this.f19288c;
        long j13 = (((long) iF) * j12) / 100;
        long j14 = jArr[iF];
        int i10 = iF + 1;
        long j15 = (j12 * ((long) i10)) / 100;
        long j16 = iF == 99 ? 256L : jArr[i10];
        return Math.round((j14 == j16 ? 0.0d : (d10 - j14) / (j16 - j14)) * (j15 - j13)) + j13;
    }

    @Override // z3.e
    public final long d() {
        return this.f19290e;
    }

    @Override // s3.u
    public final boolean f() {
        return this.f19291f != null;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        if (!f()) {
            v vVar = new v(0L, this.f19286a + ((long) this.f19287b));
            return new u.a(vVar, vVar);
        }
        long j11 = g0.j(j10, 0L, this.f19288c);
        double d10 = (j11 * 100.0d) / this.f19288c;
        double d11 = 0.0d;
        if (d10 > 0.0d) {
            if (d10 >= 100.0d) {
                d11 = 256.0d;
            } else {
                int i10 = (int) d10;
                long[] jArr = this.f19291f;
                m5.a.f(jArr);
                long[] jArr2 = jArr;
                double d12 = jArr2[i10];
                d11 = d12 + (((i10 == 99 ? 256.0d : jArr2[i10 + 1]) - d12) * (d10 - ((double) i10)));
            }
        }
        v vVar2 = new v(j11, this.f19286a + g0.j(Math.round((d11 / 256.0d) * this.f19289d), this.f19287b, this.f19289d - 1));
        return new u.a(vVar2, vVar2);
    }

    @Override // s3.u
    public final long i() {
        return this.f19288c;
    }
}
