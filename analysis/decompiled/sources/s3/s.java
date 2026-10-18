package s3;

import m5.g0;

/* JADX INFO: compiled from: IndexSeekMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class s implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f15072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f15073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f15075d;

    public s(long[] jArr, long[] jArr2, long j10) {
        m5.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z10 = length > 0;
        this.f15075d = z10;
        if (!z10 || jArr2[0] <= 0) {
            this.f15072a = jArr;
            this.f15073b = jArr2;
        } else {
            int i10 = length + 1;
            long[] jArr3 = new long[i10];
            this.f15072a = jArr3;
            long[] jArr4 = new long[i10];
            this.f15073b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f15074c = j10;
    }

    @Override // s3.u
    public final boolean f() {
        return this.f15075d;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        if (!this.f15075d) {
            v vVar = v.f15081c;
            return new u.a(vVar, vVar);
        }
        int iF = g0.f(this.f15073b, j10, true);
        long[] jArr = this.f15073b;
        long j11 = jArr[iF];
        long[] jArr2 = this.f15072a;
        v vVar2 = new v(j11, jArr2[iF]);
        if (j11 == j10 || iF == jArr.length - 1) {
            return new u.a(vVar2, vVar2);
        }
        int i10 = iF + 1;
        return new u.a(vVar2, new v(jArr[i10], jArr2[i10]));
    }

    @Override // s3.u
    public final long i() {
        return this.f15074c;
    }
}
