package s3;

import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: ChunkIndex.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f15025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f15026c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f15027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f15028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15029f;

    public c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f15025b = iArr;
        this.f15026c = jArr;
        this.f15027d = jArr2;
        this.f15028e = jArr3;
        int length = iArr.length;
        this.f15024a = length;
        if (length > 0) {
            this.f15029f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f15029f = 0L;
        }
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        int iF = g0.f(this.f15028e, j10, true);
        long[] jArr = this.f15028e;
        long j11 = jArr[iF];
        long[] jArr2 = this.f15026c;
        v vVar = new v(j11, jArr2[iF]);
        if (j11 >= j10 || iF == this.f15024a - 1) {
            return new u.a(vVar, vVar);
        }
        int i10 = iF + 1;
        return new u.a(vVar, new v(jArr[i10], jArr2[i10]));
    }

    @Override // s3.u
    public final long i() {
        return this.f15029f;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ChunkIndex(length=");
        sbC.append(this.f15024a);
        sbC.append(", sizes=");
        sbC.append(Arrays.toString(this.f15025b));
        sbC.append(", offsets=");
        sbC.append(Arrays.toString(this.f15026c));
        sbC.append(", timeUs=");
        sbC.append(Arrays.toString(this.f15028e));
        sbC.append(", durationsUs=");
        sbC.append(Arrays.toString(this.f15027d));
        sbC.append(")");
        return sbC.toString();
    }
}
