package g6;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.animation.LinearInterpolator;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: CollapsingTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public CharSequence A;
    public CharSequence B;
    public boolean C;
    public Bitmap D;
    public float E;
    public float F;
    public float G;
    public float H;
    public float I;
    public int[] J;
    public boolean K;
    public final TextPaint L;
    public final TextPaint M;
    public TimeInterpolator N;
    public TimeInterpolator O;
    public float P;
    public float Q;
    public float R;
    public ColorStateList S;
    public float T;
    public float U;
    public float V;
    public StaticLayout W;
    public float X;
    public CharSequence Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f7710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f7711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f7712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f7713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f7714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f7715f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7716g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7717h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f7718i = 15.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f7719j = 15.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f7720k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f7721l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f7722m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f7723n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f7724o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f7725p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f7726q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f7727r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Typeface f7728s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Typeface f7729t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Typeface f7730u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Typeface f7731v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Typeface f7732w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Typeface f7733x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Typeface f7734y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public j6.a f7735z;

    public e(View view) {
        this.f7710a = view;
        TextPaint textPaint = new TextPaint(129);
        this.L = textPaint;
        this.M = new TextPaint(textPaint);
        this.f7714e = new Rect();
        this.f7713d = new Rect();
        this.f7715f = new RectF();
        i(view.getContext().getResources().getConfiguration());
    }

    public static int a(int i10, int i11, float f10) {
        float f11 = 1.0f - f10;
        return Color.argb(Math.round((Color.alpha(i11) * f10) + (Color.alpha(i10) * f11)), Math.round((Color.red(i11) * f10) + (Color.red(i10) * f11)), Math.round((Color.green(i11) * f10) + (Color.green(i10) * f11)), Math.round((Color.blue(i11) * f10) + (Color.blue(i10) * f11)));
    }

    public static float h(float f10, float f11, float f12, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        LinearInterpolator linearInterpolator = p5.a.f13252a;
        return androidx.appcompat.widget.o.c(f11, f10, f12, f10);
    }

    public final boolean b(CharSequence charSequence) {
        View view = this.f7710a;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        return (a0.e.d(view) == 1 ? h0.d.f8102d : h0.d.f8101c).b(charSequence, charSequence.length());
    }

    public final void c(float f10) {
        this.f7715f.left = h(this.f7713d.left, this.f7714e.left, f10, this.N);
        this.f7715f.top = h(this.f7722m, this.f7723n, f10, this.N);
        this.f7715f.right = h(this.f7713d.right, this.f7714e.right, f10, this.N);
        this.f7715f.bottom = h(this.f7713d.bottom, this.f7714e.bottom, f10, this.N);
        this.f7726q = h(this.f7724o, this.f7725p, f10, this.N);
        this.f7727r = h(this.f7722m, this.f7723n, f10, this.N);
        p(f10);
        t0.b bVar = p5.a.f13253b;
        h(0.0f, 1.0f, 1.0f - f10, bVar);
        View view = this.f7710a;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.k(view);
        h(1.0f, 0.0f, f10, bVar);
        a0.d.k(this.f7710a);
        ColorStateList colorStateList = this.f7721l;
        ColorStateList colorStateList2 = this.f7720k;
        if (colorStateList != colorStateList2) {
            this.L.setColor(a(g(colorStateList2), f(), f10));
        } else {
            this.L.setColor(f());
        }
        float f11 = this.T;
        float f12 = this.U;
        if (f11 != f12) {
            this.L.setLetterSpacing(h(f12, f11, f10, bVar));
        } else {
            this.L.setLetterSpacing(f11);
        }
        this.G = h(0.0f, this.P, f10, null);
        this.H = h(0.0f, this.Q, f10, null);
        this.I = h(0.0f, this.R, f10, null);
        this.L.setShadowLayer(this.G, this.H, this.I, a(g(null), g(this.S), f10));
        a0.d.k(this.f7710a);
    }

    public final void d(float f10, boolean z10) {
        boolean z11;
        float f11;
        float f12;
        StaticLayout staticLayoutA;
        if (this.A == null) {
            return;
        }
        float fWidth = this.f7714e.width();
        float fWidth2 = this.f7713d.width();
        if (Math.abs(f10 - 1.0f) < 1.0E-5f) {
            f11 = this.f7719j;
            f12 = this.T;
            this.E = 1.0f;
            Typeface typeface = this.f7734y;
            Typeface typeface2 = this.f7728s;
            if (typeface != typeface2) {
                this.f7734y = typeface2;
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            float f13 = this.f7718i;
            float f14 = this.U;
            Typeface typeface3 = this.f7734y;
            Typeface typeface4 = this.f7731v;
            if (typeface3 != typeface4) {
                this.f7734y = typeface4;
                z11 = true;
            } else {
                z11 = false;
            }
            if (Math.abs(f10 - 0.0f) < 1.0E-5f) {
                this.E = 1.0f;
            } else {
                this.E = h(this.f7718i, this.f7719j, f10, this.O) / this.f7718i;
            }
            float f15 = this.f7719j / this.f7718i;
            fWidth = (!z10 && fWidth2 * f15 > fWidth) ? Math.min(fWidth / f15, fWidth2) : fWidth2;
            f11 = f13;
            f12 = f14;
        }
        if (fWidth > 0.0f) {
            z11 = ((this.F > f11 ? 1 : (this.F == f11 ? 0 : -1)) != 0) || ((this.V > f12 ? 1 : (this.V == f12 ? 0 : -1)) != 0) || this.K || z11;
            this.F = f11;
            this.V = f12;
            this.K = false;
        }
        if (this.B == null || z11) {
            this.L.setTextSize(this.F);
            this.L.setTypeface(this.f7734y);
            this.L.setLetterSpacing(this.V);
            this.L.setLinearText(this.E != 1.0f);
            boolean zB = b(this.A);
            this.C = zB;
            try {
                Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                k kVar = new k(this.A, this.L, (int) fWidth);
                kVar.f7764l = TextUtils.TruncateAt.END;
                kVar.f7763k = zB;
                kVar.f7757e = alignment;
                kVar.f7762j = false;
                kVar.f7758f = 1;
                kVar.f7759g = 0.0f;
                kVar.f7760h = 1.0f;
                kVar.f7761i = 1;
                staticLayoutA = kVar.a();
            } catch (k.a e10) {
                Log.e("CollapsingTextHelper", e10.getCause().getMessage(), e10);
                staticLayoutA = null;
            }
            Objects.requireNonNull(staticLayoutA);
            this.W = staticLayoutA;
            this.B = staticLayoutA.getText();
        }
    }

    public final float e() {
        TextPaint textPaint = this.M;
        textPaint.setTextSize(this.f7719j);
        textPaint.setTypeface(this.f7728s);
        textPaint.setLetterSpacing(this.T);
        return -this.M.ascent();
    }

    public final int f() {
        return g(this.f7721l);
    }

    public final int g(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.J;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void i(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f7730u;
            if (typeface != null) {
                this.f7729t = j6.g.a(configuration, typeface);
            }
            Typeface typeface2 = this.f7733x;
            if (typeface2 != null) {
                this.f7732w = j6.g.a(configuration, typeface2);
            }
            Typeface typeface3 = this.f7729t;
            if (typeface3 == null) {
                typeface3 = this.f7730u;
            }
            this.f7728s = typeface3;
            Typeface typeface4 = this.f7732w;
            if (typeface4 == null) {
                typeface4 = this.f7733x;
            }
            this.f7731v = typeface4;
            k(true);
        }
    }

    public final void j() {
        this.f7711b = this.f7714e.width() > 0 && this.f7714e.height() > 0 && this.f7713d.width() > 0 && this.f7713d.height() > 0;
    }

    public final void k(boolean z10) {
        StaticLayout staticLayout;
        if ((this.f7710a.getHeight() <= 0 || this.f7710a.getWidth() <= 0) && !z10) {
            return;
        }
        d(1.0f, z10);
        CharSequence charSequence = this.B;
        if (charSequence != null && (staticLayout = this.W) != null) {
            this.Y = TextUtils.ellipsize(charSequence, this.L, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.Y;
        if (charSequence2 != null) {
            this.X = this.L.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.X = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f7717h, this.C ? 1 : 0);
        int i10 = absoluteGravity & 112;
        if (i10 == 48) {
            this.f7723n = this.f7714e.top;
        } else if (i10 != 80) {
            this.f7723n = this.f7714e.centerY() - ((this.L.descent() - this.L.ascent()) / 2.0f);
        } else {
            this.f7723n = this.L.ascent() + this.f7714e.bottom;
        }
        int i11 = absoluteGravity & 8388615;
        if (i11 == 1) {
            this.f7725p = this.f7714e.centerX() - (this.X / 2.0f);
        } else if (i11 != 5) {
            this.f7725p = this.f7714e.left;
        } else {
            this.f7725p = this.f7714e.right - this.X;
        }
        d(0.0f, z10);
        StaticLayout staticLayout2 = this.W;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.W;
        CharSequence charSequence3 = this.B;
        float fMeasureText = charSequence3 != null ? this.L.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout4 = this.W;
        if (staticLayout4 != null) {
            staticLayout4.getLineCount();
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f7716g, this.C ? 1 : 0);
        int i12 = absoluteGravity2 & 112;
        if (i12 == 48) {
            this.f7722m = this.f7713d.top;
        } else if (i12 != 80) {
            this.f7722m = this.f7713d.centerY() - (height / 2.0f);
        } else {
            this.f7722m = this.L.descent() + (this.f7713d.bottom - height);
        }
        int i13 = absoluteGravity2 & 8388615;
        if (i13 == 1) {
            this.f7724o = this.f7713d.centerX() - (fMeasureText / 2.0f);
        } else if (i13 != 5) {
            this.f7724o = this.f7713d.left;
        } else {
            this.f7724o = this.f7713d.right - fMeasureText;
        }
        Bitmap bitmap = this.D;
        if (bitmap != null) {
            bitmap.recycle();
            this.D = null;
        }
        p(this.f7712c);
        c(this.f7712c);
    }

    public final void l(ColorStateList colorStateList) {
        if (this.f7721l != colorStateList) {
            this.f7721l = colorStateList;
            k(false);
        }
    }

    public final void m(int i10) {
        if (this.f7717h != i10) {
            this.f7717h = i10;
            k(false);
        }
    }

    public final boolean n(Typeface typeface) {
        j6.a aVar = this.f7735z;
        if (aVar != null) {
            aVar.f9444c = true;
        }
        if (this.f7730u == typeface) {
            return false;
        }
        this.f7730u = typeface;
        Typeface typefaceA = j6.g.a(this.f7710a.getContext().getResources().getConfiguration(), typeface);
        this.f7729t = typefaceA;
        if (typefaceA == null) {
            typefaceA = this.f7730u;
        }
        this.f7728s = typefaceA;
        return true;
    }

    public final void o(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        if (f10 != this.f7712c) {
            this.f7712c = f10;
            c(f10);
        }
    }

    public final void p(float f10) {
        d(f10, false);
        View view = this.f7710a;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.k(view);
    }

    public final void q(Typeface typeface) {
        boolean z10;
        boolean zN = n(typeface);
        if (this.f7733x != typeface) {
            this.f7733x = typeface;
            Typeface typefaceA = j6.g.a(this.f7710a.getContext().getResources().getConfiguration(), typeface);
            this.f7732w = typefaceA;
            if (typefaceA == null) {
                typefaceA = this.f7733x;
            }
            this.f7731v = typefaceA;
            z10 = true;
        } else {
            z10 = false;
        }
        if (zN || z10) {
            k(false);
        }
    }
}
