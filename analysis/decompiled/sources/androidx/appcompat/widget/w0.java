package androidx.appcompat.widget;

/* JADX INFO: compiled from: RtlSpacingHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1472a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1473b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1474c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1475d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1476e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1477f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1478g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1479h = false;

    public final void a(int i10, int i11) {
        this.f1474c = i10;
        this.f1475d = i11;
        this.f1479h = true;
        if (this.f1478g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f1472a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f1473b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f1472a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1473b = i11;
        }
    }
}
