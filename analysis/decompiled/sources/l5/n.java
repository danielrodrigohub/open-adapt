package l5;

import java.util.Arrays;

/* JADX INFO: compiled from: DefaultAllocator.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10084d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f10081a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10082b = 65536;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10085e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a[] f10086f = new a[100];

    public final synchronized void a() {
        int i10 = this.f10083c;
        int i11 = this.f10082b;
        int i12 = m5.g0.f10384a;
        int iMax = Math.max(0, (((i10 + i11) - 1) / i11) - this.f10084d);
        int i13 = this.f10085e;
        if (iMax >= i13) {
            return;
        }
        Arrays.fill(this.f10086f, iMax, i13, (Object) null);
        this.f10085e = iMax;
    }
}
