package z3;

import m5.g0;
import s3.u;
import s3.v;

/* JADX INFO: compiled from: VbriSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f19282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f19283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19285d;

    public f(long[] jArr, long[] jArr2, long j10, long j11) {
        this.f19282a = jArr;
        this.f19283b = jArr2;
        this.f19284c = j10;
        this.f19285d = j11;
    }

    @Override // z3.e
    public final long c(long j10) {
        return this.f19282a[g0.f(this.f19283b, j10, true)];
    }

    @Override // z3.e
    public final long d() {
        return this.f19285d;
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        int iF = g0.f(this.f19282a, j10, true);
        long[] jArr = this.f19282a;
        long j11 = jArr[iF];
        long[] jArr2 = this.f19283b;
        v vVar = new v(j11, jArr2[iF]);
        if (j11 >= j10 || iF == jArr.length - 1) {
            return new u.a(vVar, vVar);
        }
        int i10 = iF + 1;
        return new u.a(vVar, new v(jArr[i10], jArr2[i10]));
    }

    @Override // s3.u
    public final long i() {
        return this.f19284c;
    }
}
