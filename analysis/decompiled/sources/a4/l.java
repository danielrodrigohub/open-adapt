package a4;

import n3.s0;

/* JADX INFO: compiled from: Track.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final s0 f337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long[] f339h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f340i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f341j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final m[] f342k;

    public l(int i10, int i11, long j10, long j11, long j12, s0 s0Var, int i12, m[] mVarArr, int i13, long[] jArr, long[] jArr2) {
        this.f332a = i10;
        this.f333b = i11;
        this.f334c = j10;
        this.f335d = j11;
        this.f336e = j12;
        this.f337f = s0Var;
        this.f338g = i12;
        this.f342k = mVarArr;
        this.f341j = i13;
        this.f339h = jArr;
        this.f340i = jArr2;
    }

    public final m a(int i10) {
        m[] mVarArr = this.f342k;
        if (mVarArr == null) {
            return null;
        }
        return mVarArr[i10];
    }
}
