package a4;

import m5.g0;

/* JADX INFO: compiled from: TrackSampleTable.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f368d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f370f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f371g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f372h;

    public o(l lVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        m5.a.a(iArr.length == jArr2.length);
        m5.a.a(jArr.length == jArr2.length);
        m5.a.a(iArr2.length == jArr2.length);
        this.f365a = lVar;
        this.f367c = jArr;
        this.f368d = iArr;
        this.f369e = i10;
        this.f370f = jArr2;
        this.f371g = iArr2;
        this.f372h = j10;
        this.f366b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public final int a(long j10) {
        for (int iF = g0.f(this.f370f, j10, false); iF >= 0; iF--) {
            if ((this.f371g[iF] & 1) != 0) {
                return iF;
            }
        }
        return -1;
    }

    public final int b(long j10) {
        for (int iB = g0.b(this.f370f, j10, true); iB < this.f370f.length; iB++) {
            if ((this.f371g[iB] & 1) != 0) {
                return iB;
            }
        }
        return -1;
    }
}
