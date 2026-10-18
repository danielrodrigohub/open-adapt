package s3;

import m5.g0;

/* JADX INFO: compiled from: FlacSeekTableSeekMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f15052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15053b;

    public o(p pVar, long j10) {
        this.f15052a = pVar;
        this.f15053b = j10;
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        m5.a.f(this.f15052a.f15064k);
        p pVar = this.f15052a;
        p.a aVar = pVar.f15064k;
        long[] jArr = aVar.f15066a;
        long[] jArr2 = aVar.f15067b;
        int iF = g0.f(jArr, pVar.f(j10), false);
        long j11 = iF == -1 ? 0L : jArr[iF];
        long j12 = iF != -1 ? jArr2[iF] : 0L;
        long j13 = this.f15052a.f15058e;
        long j14 = (j11 * 1000000) / j13;
        long j15 = this.f15053b;
        v vVar = new v(j14, j12 + j15);
        if (j14 == j10 || iF == jArr.length - 1) {
            return new u.a(vVar, vVar);
        }
        int i10 = iF + 1;
        return new u.a(vVar, new v((jArr[i10] * 1000000) / j13, j15 + jArr2[i10]));
    }

    @Override // s3.u
    public final long i() {
        return this.f15052a.c();
    }
}
