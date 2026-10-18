package r4;

import n3.s0;

/* JADX INFO: compiled from: BaseMediaChunk.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f14531k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f14532l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c f14533m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f14534n;

    public a(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, long j10, long j11, long j12, long j13, long j14) {
        super(jVar, mVar, s0Var, i10, obj, j10, j11, j14);
        this.f14531k = j12;
        this.f14532l = j13;
    }

    public final int e(int i10) {
        int[] iArr = this.f14534n;
        m5.a.f(iArr);
        return iArr[i10];
    }
}
