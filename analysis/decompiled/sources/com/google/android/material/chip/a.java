package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import g6.l;
import g6.s;
import j6.d;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import m6.f;
import m6.j;
import p5.g;

/* JADX INFO: compiled from: ChipDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f implements Drawable.Callback, l.b {
    public static final int[] P0 = {R.attr.state_enabled};
    public static final ShapeDrawable Q0 = new ShapeDrawable(new OvalShape());
    public boolean A0;
    public int B0;
    public int C0;
    public ColorFilter D0;
    public PorterDuffColorFilter E0;
    public ColorStateList F0;
    public ColorStateList G;
    public PorterDuff.Mode G0;
    public ColorStateList H;
    public int[] H0;
    public float I;
    public boolean I0;
    public float J;
    public ColorStateList J0;
    public ColorStateList K;
    public WeakReference<InterfaceC0087a> K0;
    public float L;
    public TextUtils.TruncateAt L0;
    public ColorStateList M;
    public boolean M0;
    public CharSequence N;
    public int N0;
    public boolean O;
    public boolean O0;
    public Drawable P;
    public ColorStateList Q;
    public float R;
    public boolean S;
    public boolean T;
    public Drawable U;
    public RippleDrawable V;
    public ColorStateList W;
    public float X;
    public SpannableStringBuilder Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f5144a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Drawable f5145b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public ColorStateList f5146c0;
    public g d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public g f5147e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f5148f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public float f5149g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public float f5150h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float f5151i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float f5152j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public float f5153k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public float f5154l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public float f5155m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final Context f5156n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final Paint f5157o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final Paint.FontMetrics f5158p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final RectF f5159q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final PointF f5160r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final Path f5161s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final l f5162t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f5163u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f5164v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f5165w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f5166x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f5167y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f5168z0;

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChipDrawable.java */
    public interface InterfaceC0087a {
        void a();
    }

    public a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, Chip.E);
        this.J = -1.0f;
        this.f5157o0 = new Paint(1);
        this.f5158p0 = new Paint.FontMetrics();
        this.f5159q0 = new RectF();
        this.f5160r0 = new PointF();
        this.f5161s0 = new Path();
        this.C0 = 255;
        this.G0 = PorterDuff.Mode.SRC_IN;
        this.K0 = new WeakReference<>(null);
        m(context);
        this.f5156n0 = context;
        l lVar = new l(this);
        this.f5162t0 = lVar;
        this.N = "";
        lVar.f7765a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = P0;
        setState(iArr);
        d0(iArr);
        this.M0 = true;
        int[] iArr2 = k6.a.f9725a;
        Q0.setTint(-1);
    }

    public static boolean G(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean H(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void A(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (q0()) {
            float f10 = this.f5155m0 + this.f5154l0;
            if (b0.a.c.a(this) == 0) {
                float f11 = rect.right - f10;
                rectF.right = f11;
                rectF.left = f11 - this.X;
            } else {
                float f12 = rect.left + f10;
                rectF.left = f12;
                rectF.right = f12 + this.X;
            }
            float fExactCenterY = rect.exactCenterY();
            float f13 = this.X;
            float f14 = fExactCenterY - (f13 / 2.0f);
            rectF.top = f14;
            rectF.bottom = f14 + f13;
        }
    }

    public final void B(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (q0()) {
            float f10 = this.f5155m0 + this.f5154l0 + this.X + this.f5153k0 + this.f5152j0;
            if (b0.a.c.a(this) == 0) {
                float f11 = rect.right;
                rectF.right = f11;
                rectF.left = f11 - f10;
            } else {
                int i10 = rect.left;
                rectF.left = i10;
                rectF.right = i10 + f10;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    public final float C() {
        if (q0()) {
            return this.f5153k0 + this.X + this.f5154l0;
        }
        return 0.0f;
    }

    public final float D() {
        return this.O0 ? k() : this.J;
    }

    public final Drawable E() {
        Drawable drawable = this.U;
        if (drawable != null) {
            return b0.a.a(drawable);
        }
        return null;
    }

    public final float F() {
        Drawable drawable = this.A0 ? this.f5145b0 : this.P;
        float f10 = this.R;
        return (f10 > 0.0f || drawable == null) ? f10 : drawable.getIntrinsicWidth();
    }

    public final void I() {
        InterfaceC0087a interfaceC0087a = this.K0.get();
        if (interfaceC0087a != null) {
            interfaceC0087a.a();
        }
    }

    public final boolean J(int[] iArr, int[] iArr2) {
        boolean z10;
        boolean z11;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.G;
        int iD = d(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f5163u0) : 0);
        boolean state = true;
        if (this.f5163u0 != iD) {
            this.f5163u0 = iD;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.H;
        int iD2 = d(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f5164v0) : 0);
        if (this.f5164v0 != iD2) {
            this.f5164v0 = iD2;
            zOnStateChange = true;
        }
        int iB = a0.a.b(iD2, iD);
        if ((this.f5165w0 != iB) | (this.f10495h.f10517c == null)) {
            this.f5165w0 = iB;
            o(ColorStateList.valueOf(iB));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.K;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f5166x0) : 0;
        if (this.f5166x0 != colorForState) {
            this.f5166x0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.J0 == null || !k6.a.c(iArr)) ? 0 : this.J0.getColorForState(iArr, this.f5167y0);
        if (this.f5167y0 != colorForState2) {
            this.f5167y0 = colorForState2;
            if (this.I0) {
                zOnStateChange = true;
            }
        }
        d dVar = this.f5162t0.f7770f;
        int colorForState3 = (dVar == null || (colorStateList = dVar.f9454j) == null) ? 0 : colorStateList.getColorForState(iArr, this.f5168z0);
        if (this.f5168z0 != colorForState3) {
            this.f5168z0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 != null) {
            int length = state2.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = false;
                    break;
                }
                if (state2[i10] == 16842912) {
                    z10 = true;
                    break;
                }
                i10++;
            }
        } else {
            z10 = false;
            break;
        }
        boolean z12 = z10 && this.Z;
        if (this.A0 == z12 || this.f5145b0 == null) {
            z11 = false;
        } else {
            float fZ = z();
            this.A0 = z12;
            if (fZ != z()) {
                zOnStateChange = true;
                z11 = true;
            } else {
                z11 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.F0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.B0) : 0;
        if (this.B0 != colorForState4) {
            this.B0 = colorForState4;
            this.E0 = c6.a.a(this, this.F0, this.G0);
        } else {
            state = zOnStateChange;
        }
        if (H(this.P)) {
            state |= this.P.setState(iArr);
        }
        if (H(this.f5145b0)) {
            state |= this.f5145b0.setState(iArr);
        }
        if (H(this.U)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.U.setState(iArr3);
        }
        int[] iArr4 = k6.a.f9725a;
        if (H(this.V)) {
            state |= this.V.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z11) {
            I();
        }
        return state;
    }

    public final void K(boolean z10) {
        if (this.Z != z10) {
            this.Z = z10;
            float fZ = z();
            if (!z10 && this.A0) {
                this.A0 = false;
            }
            float fZ2 = z();
            invalidateSelf();
            if (fZ != fZ2) {
                I();
            }
        }
    }

    public final void L(Drawable drawable) {
        if (this.f5145b0 != drawable) {
            float fZ = z();
            this.f5145b0 = drawable;
            float fZ2 = z();
            r0(this.f5145b0);
            x(this.f5145b0);
            invalidateSelf();
            if (fZ != fZ2) {
                I();
            }
        }
    }

    public final void M(ColorStateList colorStateList) {
        if (this.f5146c0 != colorStateList) {
            this.f5146c0 = colorStateList;
            if (this.f5144a0 && this.f5145b0 != null && this.Z) {
                b0.a.b.h(this.f5145b0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void N(boolean z10) {
        if (this.f5144a0 != z10) {
            boolean zO0 = o0();
            this.f5144a0 = z10;
            boolean zO1 = o0();
            if (zO0 != zO1) {
                if (zO1) {
                    x(this.f5145b0);
                } else {
                    r0(this.f5145b0);
                }
                invalidateSelf();
                I();
            }
        }
    }

    public final void O(ColorStateList colorStateList) {
        if (this.H != colorStateList) {
            this.H = colorStateList;
            onStateChange(getState());
        }
    }

    @Deprecated
    public final void P(float f10) {
        if (this.J != f10) {
            this.J = f10;
            setShapeAppearanceModel(this.f10495h.f10515a.f(f10));
        }
    }

    public final void Q(float f10) {
        if (this.f5155m0 != f10) {
            this.f5155m0 = f10;
            invalidateSelf();
            I();
        }
    }

    public final void R(Drawable drawable) {
        Drawable drawable2 = this.P;
        Drawable drawableA = drawable2 != null ? b0.a.a(drawable2) : null;
        if (drawableA != drawable) {
            float fZ = z();
            this.P = drawable != null ? drawable.mutate() : null;
            float fZ2 = z();
            r0(drawableA);
            if (p0()) {
                x(this.P);
            }
            invalidateSelf();
            if (fZ != fZ2) {
                I();
            }
        }
    }

    public final void S(float f10) {
        if (this.R != f10) {
            float fZ = z();
            this.R = f10;
            float fZ2 = z();
            invalidateSelf();
            if (fZ != fZ2) {
                I();
            }
        }
    }

    public final void T(ColorStateList colorStateList) {
        this.S = true;
        if (this.Q != colorStateList) {
            this.Q = colorStateList;
            if (p0()) {
                b0.a.b.h(this.P, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void U(boolean z10) {
        if (this.O != z10) {
            boolean zP0 = p0();
            this.O = z10;
            boolean zP1 = p0();
            if (zP0 != zP1) {
                if (zP1) {
                    x(this.P);
                } else {
                    r0(this.P);
                }
                invalidateSelf();
                I();
            }
        }
    }

    public final void V(float f10) {
        if (this.I != f10) {
            this.I = f10;
            invalidateSelf();
            I();
        }
    }

    public final void W(float f10) {
        if (this.f5148f0 != f10) {
            this.f5148f0 = f10;
            invalidateSelf();
            I();
        }
    }

    public final void X(ColorStateList colorStateList) {
        if (this.K != colorStateList) {
            this.K = colorStateList;
            if (this.O0) {
                s(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void Y(float f10) {
        if (this.L != f10) {
            this.L = f10;
            this.f5157o0.setStrokeWidth(f10);
            if (this.O0) {
                t(f10);
            }
            invalidateSelf();
        }
    }

    public final void Z(Drawable drawable) {
        Drawable drawableE = E();
        if (drawableE != drawable) {
            float fC = C();
            this.U = drawable != null ? drawable.mutate() : null;
            int[] iArr = k6.a.f9725a;
            this.V = new RippleDrawable(k6.a.b(this.M), this.U, Q0);
            float fC2 = C();
            r0(drawableE);
            if (q0()) {
                x(this.U);
            }
            invalidateSelf();
            if (fC != fC2) {
                I();
            }
        }
    }

    @Override // g6.l.b
    public final void a() {
        I();
        invalidateSelf();
    }

    public final void a0(float f10) {
        if (this.f5154l0 != f10) {
            this.f5154l0 = f10;
            invalidateSelf();
            if (q0()) {
                I();
            }
        }
    }

    public final void b0(float f10) {
        if (this.X != f10) {
            this.X = f10;
            invalidateSelf();
            if (q0()) {
                I();
            }
        }
    }

    public final void c0(float f10) {
        if (this.f5153k0 != f10) {
            this.f5153k0 = f10;
            invalidateSelf();
            if (q0()) {
                I();
            }
        }
    }

    public final boolean d0(int[] iArr) {
        if (Arrays.equals(this.H0, iArr)) {
            return false;
        }
        this.H0 = iArr;
        if (q0()) {
            return J(getState(), iArr);
        }
        return false;
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iSave;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i10 = this.C0) == 0) {
            return;
        }
        int iSaveLayerAlpha = i10 < 255 ? canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i10) : 0;
        if (!this.O0) {
            this.f5157o0.setColor(this.f5163u0);
            this.f5157o0.setStyle(Paint.Style.FILL);
            this.f5159q0.set(bounds);
            canvas.drawRoundRect(this.f5159q0, D(), D(), this.f5157o0);
        }
        if (!this.O0) {
            this.f5157o0.setColor(this.f5164v0);
            this.f5157o0.setStyle(Paint.Style.FILL);
            Paint paint = this.f5157o0;
            ColorFilter colorFilter = this.D0;
            if (colorFilter == null) {
                colorFilter = this.E0;
            }
            paint.setColorFilter(colorFilter);
            this.f5159q0.set(bounds);
            canvas.drawRoundRect(this.f5159q0, D(), D(), this.f5157o0);
        }
        if (this.O0) {
            super.draw(canvas);
        }
        if (this.L > 0.0f && !this.O0) {
            this.f5157o0.setColor(this.f5166x0);
            this.f5157o0.setStyle(Paint.Style.STROKE);
            if (!this.O0) {
                Paint paint2 = this.f5157o0;
                ColorFilter colorFilter2 = this.D0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.E0;
                }
                paint2.setColorFilter(colorFilter2);
            }
            RectF rectF = this.f5159q0;
            float f10 = bounds.left;
            float f11 = this.L / 2.0f;
            rectF.set(f10 + f11, bounds.top + f11, bounds.right - f11, bounds.bottom - f11);
            float f12 = this.J - (this.L / 2.0f);
            canvas.drawRoundRect(this.f5159q0, f12, f12, this.f5157o0);
        }
        this.f5157o0.setColor(this.f5167y0);
        this.f5157o0.setStyle(Paint.Style.FILL);
        this.f5159q0.set(bounds);
        if (this.O0) {
            RectF rectF2 = new RectF(bounds);
            Path path = this.f5161s0;
            j jVar = this.f10512y;
            f.b bVar = this.f10495h;
            jVar.a(bVar.f10515a, bVar.f10524j, rectF2, this.f10511x, path);
            f(canvas, this.f5157o0, this.f5161s0, this.f10495h.f10515a, h());
        } else {
            canvas.drawRoundRect(this.f5159q0, D(), D(), this.f5157o0);
        }
        if (p0()) {
            y(bounds, this.f5159q0);
            RectF rectF3 = this.f5159q0;
            float f13 = rectF3.left;
            float f14 = rectF3.top;
            canvas.translate(f13, f14);
            this.P.setBounds(0, 0, (int) this.f5159q0.width(), (int) this.f5159q0.height());
            this.P.draw(canvas);
            canvas.translate(-f13, -f14);
        }
        if (o0()) {
            y(bounds, this.f5159q0);
            RectF rectF4 = this.f5159q0;
            float f15 = rectF4.left;
            float f16 = rectF4.top;
            canvas.translate(f15, f16);
            this.f5145b0.setBounds(0, 0, (int) this.f5159q0.width(), (int) this.f5159q0.height());
            this.f5145b0.draw(canvas);
            canvas.translate(-f15, -f16);
        }
        if (!this.M0 || this.N == null) {
            i11 = iSaveLayerAlpha;
            i12 = 0;
            i13 = 255;
        } else {
            PointF pointF = this.f5160r0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            if (this.N != null) {
                float fZ = z() + this.f5148f0 + this.f5151i0;
                if (b0.a.c.a(this) == 0) {
                    pointF.x = bounds.left + fZ;
                    align = Paint.Align.LEFT;
                } else {
                    pointF.x = bounds.right - fZ;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                this.f5162t0.f7765a.getFontMetrics(this.f5158p0);
                Paint.FontMetrics fontMetrics = this.f5158p0;
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            RectF rectF5 = this.f5159q0;
            rectF5.setEmpty();
            if (this.N != null) {
                float fZ2 = z() + this.f5148f0 + this.f5151i0;
                float fC = C() + this.f5155m0 + this.f5152j0;
                if (b0.a.c.a(this) == 0) {
                    rectF5.left = bounds.left + fZ2;
                    rectF5.right = bounds.right - fC;
                } else {
                    rectF5.left = bounds.left + fC;
                    rectF5.right = bounds.right - fZ2;
                }
                rectF5.top = bounds.top;
                rectF5.bottom = bounds.bottom;
            }
            l lVar = this.f5162t0;
            if (lVar.f7770f != null) {
                lVar.f7765a.drawableState = getState();
                l lVar2 = this.f5162t0;
                lVar2.f7770f.e(this.f5156n0, lVar2.f7765a, lVar2.f7766b);
            }
            this.f5162t0.f7765a.setTextAlign(align);
            boolean z10 = Math.round(this.f5162t0.a(this.N.toString())) > Math.round(this.f5159q0.width());
            if (z10) {
                iSave = canvas.save();
                canvas.clipRect(this.f5159q0);
            } else {
                iSave = 0;
            }
            CharSequence charSequenceEllipsize = this.N;
            if (z10 && this.L0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f5162t0.f7765a, this.f5159q0.width(), this.L0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF2 = this.f5160r0;
            i11 = iSaveLayerAlpha;
            i12 = 0;
            i13 = 255;
            canvas.drawText(charSequence, 0, length, pointF2.x, pointF2.y, this.f5162t0.f7765a);
            if (z10) {
                canvas.restoreToCount(iSave);
            }
        }
        if (q0()) {
            A(bounds, this.f5159q0);
            RectF rectF6 = this.f5159q0;
            float f17 = rectF6.left;
            float f18 = rectF6.top;
            canvas.translate(f17, f18);
            this.U.setBounds(i12, i12, (int) this.f5159q0.width(), (int) this.f5159q0.height());
            int[] iArr = k6.a.f9725a;
            this.V.setBounds(this.U.getBounds());
            this.V.jumpToCurrentState();
            this.V.draw(canvas);
            canvas.translate(-f17, -f18);
        }
        if (this.C0 < i13) {
            canvas.restoreToCount(i11);
        }
    }

    public final void e0(ColorStateList colorStateList) {
        if (this.W != colorStateList) {
            this.W = colorStateList;
            if (q0()) {
                b0.a.b.h(this.U, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void f0(boolean z10) {
        if (this.T != z10) {
            boolean zQ0 = q0();
            this.T = z10;
            boolean zQ1 = q0();
            if (zQ0 != zQ1) {
                if (zQ1) {
                    x(this.U);
                } else {
                    r0(this.U);
                }
                invalidateSelf();
                I();
            }
        }
    }

    public final void g0(float f10) {
        if (this.f5150h0 != f10) {
            float fZ = z();
            this.f5150h0 = f10;
            float fZ2 = z();
            invalidateSelf();
            if (fZ != fZ2) {
                I();
            }
        }
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.C0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.D0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.I;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(C() + this.f5162t0.a(this.N.toString()) + z() + this.f5148f0 + this.f5151i0 + this.f5152j0 + this.f5155m0), this.N0);
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    @TargetApi(21)
    public final void getOutline(Outline outline) {
        if (this.O0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.I, this.J);
        } else {
            outline.setRoundRect(bounds, this.J);
        }
        outline.setAlpha(this.C0 / 255.0f);
    }

    public final void h0(float f10) {
        if (this.f5149g0 != f10) {
            float fZ = z();
            this.f5149g0 = f10;
            float fZ2 = z();
            invalidateSelf();
            if (fZ != fZ2) {
                I();
            }
        }
    }

    public final void i0(ColorStateList colorStateList) {
        if (this.M != colorStateList) {
            this.M = colorStateList;
            this.J0 = this.I0 ? k6.a.b(colorStateList) : null;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (!G(this.G) && !G(this.H) && !G(this.K) && (!this.I0 || !G(this.J0))) {
            d dVar = this.f5162t0.f7770f;
            if (!((dVar == null || (colorStateList = dVar.f9454j) == null || !colorStateList.isStateful()) ? false : true)) {
                if (!(this.f5144a0 && this.f5145b0 != null && this.Z) && !H(this.P) && !H(this.f5145b0) && !G(this.F0)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void j0(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.N, charSequence)) {
            return;
        }
        this.N = charSequence;
        this.f5162t0.f7768d = true;
        invalidateSelf();
        I();
    }

    public final void k0(d dVar) {
        this.f5162t0.b(dVar, this.f5156n0);
    }

    public final void l0(float f10) {
        if (this.f5152j0 != f10) {
            this.f5152j0 = f10;
            invalidateSelf();
            I();
        }
    }

    public final void m0(float f10) {
        if (this.f5151i0 != f10) {
            this.f5151i0 = f10;
            invalidateSelf();
            I();
        }
    }

    public final void n0() {
        if (this.I0) {
            this.I0 = false;
            this.J0 = null;
            onStateChange(getState());
        }
    }

    public final boolean o0() {
        return this.f5144a0 && this.f5145b0 != null && this.A0;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (p0()) {
            zOnLayoutDirectionChanged |= b0.a.c.b(this.P, i10);
        }
        if (o0()) {
            zOnLayoutDirectionChanged |= b0.a.c.b(this.f5145b0, i10);
        }
        if (q0()) {
            zOnLayoutDirectionChanged |= b0.a.c.b(this.U, i10);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (p0()) {
            zOnLevelChange |= this.P.setLevel(i10);
        }
        if (o0()) {
            zOnLevelChange |= this.f5145b0.setLevel(i10);
        }
        if (q0()) {
            zOnLevelChange |= this.U.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // m6.f, android.graphics.drawable.Drawable, g6.l.b
    public final boolean onStateChange(int[] iArr) {
        if (this.O0) {
            super.onStateChange(iArr);
        }
        return J(iArr, this.H0);
    }

    public final boolean p0() {
        return this.O && this.P != null;
    }

    public final boolean q0() {
        return this.T && this.U != null;
    }

    public final void r0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.C0 != i10) {
            this.C0 = i10;
            invalidateSelf();
        }
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.D0 != colorFilter) {
            this.D0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.F0 != colorStateList) {
            this.F0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // m6.f, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.G0 != mode) {
            this.G0 = mode;
            this.E0 = c6.a.a(this, this.F0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        if (p0()) {
            visible |= this.P.setVisible(z10, z11);
        }
        if (o0()) {
            visible |= this.f5145b0.setVisible(z10, z11);
        }
        if (q0()) {
            visible |= this.U.setVisible(z10, z11);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void x(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        b0.a.c.b(drawable, b0.a.c.a(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.U) {
            if (drawable.isStateful()) {
                drawable.setState(this.H0);
            }
            b0.a.b.h(drawable, this.W);
            return;
        }
        Drawable drawable2 = this.P;
        if (drawable == drawable2 && this.S) {
            b0.a.b.h(drawable2, this.Q);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0060 A[PHI: r1
      0x0060: PHI (r1v3 float) = (r1v2 float), (r1v2 float), (r1v10 float) binds: [B:15:0x003f, B:16:0x0041, B:18:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    public final void y(Rect rect, RectF rectF) {
        float intrinsicHeight;
        rectF.setEmpty();
        if (p0() || o0()) {
            float f10 = this.f5148f0 + this.f5149g0;
            float F = F();
            if (b0.a.c.a(this) == 0) {
                float f11 = rect.left + f10;
                rectF.left = f11;
                rectF.right = f11 + F;
            } else {
                float f12 = rect.right - f10;
                rectF.right = f12;
                rectF.left = f12 - F;
            }
            Drawable drawable = this.A0 ? this.f5145b0 : this.P;
            float fCeil = this.R;
            if (fCeil > 0.0f || drawable == null) {
                intrinsicHeight = fCeil;
            } else {
                fCeil = (float) Math.ceil(s.a(this.f5156n0, 24));
                if (drawable.getIntrinsicHeight() <= fCeil) {
                    intrinsicHeight = drawable.getIntrinsicHeight();
                } else {
                    intrinsicHeight = fCeil;
                }
            }
            float fExactCenterY = rect.exactCenterY() - (intrinsicHeight / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + intrinsicHeight;
        }
    }

    public final float z() {
        if (!p0() && !o0()) {
            return 0.0f;
        }
        return F() + this.f5149g0 + this.f5150h0;
    }
}
