package z4;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: Cue.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements n3.h {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final a f19292y = new a("", null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final n3.h.a<a> f19293z = y0.e.f18184f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f19294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Layout.Alignment f19295i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Layout.Alignment f19296j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Bitmap f19297k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float f19298l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f19299m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f19300n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f19301o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f19302p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final float f19303q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final float f19304r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f19305s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f19306t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f19307u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final float f19308v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f19309w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final float f19310x;

    public a(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z10, int i14, int i15, float f15) {
        if (charSequence == null) {
            Objects.requireNonNull(bitmap);
        } else {
            m5.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f19294h = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f19294h = charSequence.toString();
        } else {
            this.f19294h = null;
        }
        this.f19295i = alignment;
        this.f19296j = alignment2;
        this.f19297k = bitmap;
        this.f19298l = f10;
        this.f19299m = i10;
        this.f19300n = i11;
        this.f19301o = f11;
        this.f19302p = i12;
        this.f19303q = f13;
        this.f19304r = f14;
        this.f19305s = z10;
        this.f19306t = i14;
        this.f19307u = i13;
        this.f19308v = f12;
        this.f19309w = i15;
        this.f19310x = f15;
    }

    public static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(c(0), this.f19294h);
        bundle.putSerializable(c(1), this.f19295i);
        bundle.putSerializable(c(2), this.f19296j);
        bundle.putParcelable(c(3), this.f19297k);
        bundle.putFloat(c(4), this.f19298l);
        bundle.putInt(c(5), this.f19299m);
        bundle.putInt(c(6), this.f19300n);
        bundle.putFloat(c(7), this.f19301o);
        bundle.putInt(c(8), this.f19302p);
        bundle.putInt(c(9), this.f19307u);
        bundle.putFloat(c(10), this.f19308v);
        bundle.putFloat(c(11), this.f19303q);
        bundle.putFloat(c(12), this.f19304r);
        bundle.putBoolean(c(14), this.f19305s);
        bundle.putInt(c(13), this.f19306t);
        bundle.putInt(c(15), this.f19309w);
        bundle.putFloat(c(16), this.f19310x);
        return bundle;
    }

    public final C0332a b() {
        return new C0332a(this);
    }

    public final boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return TextUtils.equals(this.f19294h, aVar.f19294h) && this.f19295i == aVar.f19295i && this.f19296j == aVar.f19296j && ((bitmap = this.f19297k) != null ? !((bitmap2 = aVar.f19297k) == null || !bitmap.sameAs(bitmap2)) : aVar.f19297k == null) && this.f19298l == aVar.f19298l && this.f19299m == aVar.f19299m && this.f19300n == aVar.f19300n && this.f19301o == aVar.f19301o && this.f19302p == aVar.f19302p && this.f19303q == aVar.f19303q && this.f19304r == aVar.f19304r && this.f19305s == aVar.f19305s && this.f19306t == aVar.f19306t && this.f19307u == aVar.f19307u && this.f19308v == aVar.f19308v && this.f19309w == aVar.f19309w && this.f19310x == aVar.f19310x;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19294h, this.f19295i, this.f19296j, this.f19297k, Float.valueOf(this.f19298l), Integer.valueOf(this.f19299m), Integer.valueOf(this.f19300n), Float.valueOf(this.f19301o), Integer.valueOf(this.f19302p), Float.valueOf(this.f19303q), Float.valueOf(this.f19304r), Boolean.valueOf(this.f19305s), Integer.valueOf(this.f19306t), Integer.valueOf(this.f19307u), Float.valueOf(this.f19308v), Integer.valueOf(this.f19309w), Float.valueOf(this.f19310x)});
    }

    /* JADX INFO: renamed from: z4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Cue.java */
    public static final class C0332a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CharSequence f19311a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Bitmap f19312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Layout.Alignment f19313c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Layout.Alignment f19314d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f19315e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19316f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f19317g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f19318h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f19319i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f19320j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f19321k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f19322l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f19323m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f19324n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f19325o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f19326p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public float f19327q;

        public C0332a() {
            this.f19311a = null;
            this.f19312b = null;
            this.f19313c = null;
            this.f19314d = null;
            this.f19315e = -3.4028235E38f;
            this.f19316f = Integer.MIN_VALUE;
            this.f19317g = Integer.MIN_VALUE;
            this.f19318h = -3.4028235E38f;
            this.f19319i = Integer.MIN_VALUE;
            this.f19320j = Integer.MIN_VALUE;
            this.f19321k = -3.4028235E38f;
            this.f19322l = -3.4028235E38f;
            this.f19323m = -3.4028235E38f;
            this.f19324n = false;
            this.f19325o = -16777216;
            this.f19326p = Integer.MIN_VALUE;
        }

        public final a a() {
            return new a(this.f19311a, this.f19313c, this.f19314d, this.f19312b, this.f19315e, this.f19316f, this.f19317g, this.f19318h, this.f19319i, this.f19320j, this.f19321k, this.f19322l, this.f19323m, this.f19324n, this.f19325o, this.f19326p, this.f19327q);
        }

        public C0332a(a aVar) {
            this.f19311a = aVar.f19294h;
            this.f19312b = aVar.f19297k;
            this.f19313c = aVar.f19295i;
            this.f19314d = aVar.f19296j;
            this.f19315e = aVar.f19298l;
            this.f19316f = aVar.f19299m;
            this.f19317g = aVar.f19300n;
            this.f19318h = aVar.f19301o;
            this.f19319i = aVar.f19302p;
            this.f19320j = aVar.f19307u;
            this.f19321k = aVar.f19308v;
            this.f19322l = aVar.f19303q;
            this.f19323m = aVar.f19304r;
            this.f19324n = aVar.f19305s;
            this.f19325o = aVar.f19306t;
            this.f19326p = aVar.f19309w;
            this.f19327q = aVar.f19310x;
        }
    }
}
