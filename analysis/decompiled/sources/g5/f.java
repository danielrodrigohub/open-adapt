package g5;

import android.text.Layout;

/* JADX INFO: compiled from: TtmlStyle.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f7678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f7680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7682e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f7688k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f7689l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Layout.Alignment f7692o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Layout.Alignment f7693p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public b f7695r;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7683f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7684g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7685h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7686i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7687j = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7690m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7691n = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f7694q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f7696s = Float.MAX_VALUE;

    public final f a(f fVar) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (fVar != null) {
            if (!this.f7680c && fVar.f7680c) {
                this.f7679b = fVar.f7679b;
                this.f7680c = true;
            }
            if (this.f7685h == -1) {
                this.f7685h = fVar.f7685h;
            }
            if (this.f7686i == -1) {
                this.f7686i = fVar.f7686i;
            }
            if (this.f7678a == null && (str = fVar.f7678a) != null) {
                this.f7678a = str;
            }
            if (this.f7683f == -1) {
                this.f7683f = fVar.f7683f;
            }
            if (this.f7684g == -1) {
                this.f7684g = fVar.f7684g;
            }
            if (this.f7691n == -1) {
                this.f7691n = fVar.f7691n;
            }
            if (this.f7692o == null && (alignment2 = fVar.f7692o) != null) {
                this.f7692o = alignment2;
            }
            if (this.f7693p == null && (alignment = fVar.f7693p) != null) {
                this.f7693p = alignment;
            }
            if (this.f7694q == -1) {
                this.f7694q = fVar.f7694q;
            }
            if (this.f7687j == -1) {
                this.f7687j = fVar.f7687j;
                this.f7688k = fVar.f7688k;
            }
            if (this.f7695r == null) {
                this.f7695r = fVar.f7695r;
            }
            if (this.f7696s == Float.MAX_VALUE) {
                this.f7696s = fVar.f7696s;
            }
            if (!this.f7682e && fVar.f7682e) {
                this.f7681d = fVar.f7681d;
                this.f7682e = true;
            }
            if (this.f7690m == -1 && (i10 = fVar.f7690m) != -1) {
                this.f7690m = i10;
            }
        }
        return this;
    }

    public final int b() {
        int i10 = this.f7685h;
        if (i10 == -1 && this.f7686i == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.f7686i == 1 ? 2 : 0);
    }
}
