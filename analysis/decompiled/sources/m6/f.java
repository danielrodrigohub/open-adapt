package m6;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;
import java.util.Objects;

/* JADX INFO: compiled from: MaterialShapeDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends Drawable implements l {
    public static final String E = f.class.getSimpleName();
    public static final Paint F;
    public PorterDuffColorFilter A;
    public int B;
    public final RectF C;
    public boolean D;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b f10495h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k.g[] f10496i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final k.g[] f10497j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BitSet f10498k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f10499l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Matrix f10500m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Path f10501n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Path f10502o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final RectF f10503p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final RectF f10504q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Region f10505r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Region f10506s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public i f10507t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Paint f10508u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Paint f10509v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final l6.a f10510w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final a f10511x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final j f10512y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public PorterDuffColorFilter f10513z;

    /* JADX INFO: compiled from: MaterialShapeDrawable.java */
    public class a implements j.b {
        public a() {
        }
    }

    static {
        Paint paint = new Paint(1);
        F = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public f() {
        this(new i());
    }

    public final void b(RectF rectF, Path path) {
        j jVar = this.f10512y;
        b bVar = this.f10495h;
        jVar.a(bVar.f10515a, bVar.f10524j, rectF, this.f10511x, path);
        if (this.f10495h.f10523i != 1.0f) {
            this.f10500m.reset();
            Matrix matrix = this.f10500m;
            float f10 = this.f10495h.f10523i;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f10500m);
        }
        path.computeBounds(this.C, true);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    public final PorterDuffColorFilter c(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z10) {
        PorterDuffColorFilter porterDuffColorFilter;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            if (z10) {
                colorForState = d(colorForState);
            }
            this.B = colorForState;
            return new PorterDuffColorFilter(colorForState, mode);
        }
        if (z10) {
            int color = paint.getColor();
            int iD = d(color);
            this.B = iD;
            if (iD != color) {
                porterDuffColorFilter = new PorterDuffColorFilter(iD, PorterDuff.Mode.SRC_IN);
            } else {
                porterDuffColorFilter = null;
            }
        } else {
            porterDuffColorFilter = null;
        }
        return porterDuffColorFilter;
    }

    public final int d(int i10) {
        int i11;
        b bVar = this.f10495h;
        float f10 = bVar.f10528n + bVar.f10529o + bVar.f10527m;
        d6.a aVar = bVar.f10516b;
        if (aVar == null || !aVar.f6047a) {
            return i10;
        }
        if (!(a0.a.e(i10, 255) == aVar.f6050d)) {
            return i10;
        }
        float f11 = aVar.f6051e;
        float fMin = (f11 <= 0.0f || f10 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f10 / f11)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i10);
        int iD = a6.a.d(a0.a.e(i10, 255), aVar.f6048b, fMin);
        if (fMin > 0.0f && (i11 = aVar.f6049c) != 0) {
            iD = a0.a.b(a0.a.e(i11, d6.a.f6046f), iD);
        }
        return a0.a.e(iD, iAlpha);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00f0  */
    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z10;
        this.f10508u.setColorFilter(this.f10513z);
        int alpha = this.f10508u.getAlpha();
        Paint paint = this.f10508u;
        int i10 = this.f10495h.f10526l;
        paint.setAlpha(((i10 + (i10 >>> 7)) * alpha) >>> 8);
        this.f10509v.setColorFilter(this.A);
        this.f10509v.setStrokeWidth(this.f10495h.f10525k);
        int alpha2 = this.f10509v.getAlpha();
        Paint paint2 = this.f10509v;
        int i11 = this.f10495h.f10526l;
        paint2.setAlpha(((i11 + (i11 >>> 7)) * alpha2) >>> 8);
        if (this.f10499l) {
            float f10 = -(l() ? this.f10509v.getStrokeWidth() / 2.0f : 0.0f);
            i iVar = this.f10495h.f10515a;
            Objects.requireNonNull(iVar);
            i.a aVar = new i.a(iVar);
            c bVar = iVar.f10542e;
            if (!(bVar instanceof g)) {
                bVar = new m6.b(f10, bVar);
            }
            aVar.f10554e = bVar;
            c bVar2 = iVar.f10543f;
            if (!(bVar2 instanceof g)) {
                bVar2 = new m6.b(f10, bVar2);
            }
            aVar.f10555f = bVar2;
            c bVar3 = iVar.f10545h;
            if (!(bVar3 instanceof g)) {
                bVar3 = new m6.b(f10, bVar3);
            }
            aVar.f10557h = bVar3;
            c bVar4 = iVar.f10544g;
            if (!(bVar4 instanceof g)) {
                bVar4 = new m6.b(f10, bVar4);
            }
            aVar.f10556g = bVar4;
            i iVarA = aVar.a();
            this.f10507t = iVarA;
            this.f10512y.a(iVarA, this.f10495h.f10524j, i(), null, this.f10502o);
            b(h(), this.f10501n);
            this.f10499l = false;
        }
        b bVar5 = this.f10495h;
        int i12 = bVar5.f10530p;
        if (i12 == 1 || bVar5.f10531q <= 0) {
            z10 = false;
        } else {
            if (i12 != 2) {
                if (!((bVar5.f10515a.e(h()) || this.f10501n.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true)) {
                    z10 = false;
                }
            }
            z10 = true;
        }
        if (z10) {
            canvas.save();
            b bVar6 = this.f10495h;
            canvas.translate((int) (Math.sin(Math.toRadians(bVar6.f10533s)) * ((double) bVar6.f10532r)), j());
            if (this.D) {
                int iWidth = (int) (this.C.width() - getBounds().width());
                int iHeight = (int) (this.C.height() - getBounds().height());
                if (iWidth < 0 || iHeight < 0) {
                    throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.f10495h.f10531q * 2) + ((int) this.C.width()) + iWidth, (this.f10495h.f10531q * 2) + ((int) this.C.height()) + iHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                float f11 = (getBounds().left - this.f10495h.f10531q) - iWidth;
                float f12 = (getBounds().top - this.f10495h.f10531q) - iHeight;
                canvas2.translate(-f11, -f12);
                e(canvas2);
                canvas.drawBitmap(bitmapCreateBitmap, f11, f12, (Paint) null);
                bitmapCreateBitmap.recycle();
                canvas.restore();
            } else {
                e(canvas);
                canvas.restore();
            }
        }
        b bVar7 = this.f10495h;
        Paint.Style style = bVar7.f10535u;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            f(canvas, this.f10508u, this.f10501n, bVar7.f10515a, h());
        }
        if (l()) {
            g(canvas);
        }
        this.f10508u.setAlpha(alpha);
        this.f10509v.setAlpha(alpha2);
    }

    public final void e(Canvas canvas) {
        if (this.f10498k.cardinality() > 0) {
            Log.w(E, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f10495h.f10532r != 0) {
            canvas.drawPath(this.f10501n, this.f10510w.f10159a);
        }
        for (int i10 = 0; i10 < 4; i10++) {
            k.g gVar = this.f10496i[i10];
            l6.a aVar = this.f10510w;
            int i11 = this.f10495h.f10531q;
            Matrix matrix = k.g.f10599a;
            gVar.a(matrix, aVar, i11, canvas);
            this.f10497j[i10].a(matrix, this.f10510w, this.f10495h.f10531q, canvas);
        }
        if (this.D) {
            b bVar = this.f10495h;
            int iSin = (int) (Math.sin(Math.toRadians(bVar.f10533s)) * ((double) bVar.f10532r));
            int iJ = j();
            canvas.translate(-iSin, -iJ);
            canvas.drawPath(this.f10501n, F);
            canvas.translate(iSin, iJ);
        }
    }

    public final void f(Canvas canvas, Paint paint, Path path, i iVar, RectF rectF) {
        if (!iVar.e(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = iVar.f10543f.a(rectF) * this.f10495h.f10524j;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    public void g(Canvas canvas) {
        f(canvas, this.f10509v, this.f10502o, this.f10507t, i());
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10495h.f10526l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f10495h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        b bVar = this.f10495h;
        if (bVar.f10530p == 2) {
            return;
        }
        if (bVar.f10515a.e(h())) {
            outline.setRoundRect(getBounds(), k() * this.f10495h.f10524j);
            return;
        }
        b(h(), this.f10501n);
        if (this.f10501n.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.f10501n);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f10495h.f10522h;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        this.f10505r.set(getBounds());
        b(h(), this.f10501n);
        this.f10506s.setPath(this.f10501n, this.f10505r);
        this.f10505r.op(this.f10506s, Region.Op.DIFFERENCE);
        return this.f10505r;
    }

    public final RectF h() {
        this.f10503p.set(getBounds());
        return this.f10503p;
    }

    public final RectF i() {
        this.f10504q.set(h());
        float strokeWidth = l() ? this.f10509v.getStrokeWidth() / 2.0f : 0.0f;
        this.f10504q.inset(strokeWidth, strokeWidth);
        return this.f10504q;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f10499l = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f10495h.f10520f) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f10495h.f10519e) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f10495h.f10518d) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f10495h.f10517c) != null && colorStateList4.isStateful())));
    }

    public final int j() {
        b bVar = this.f10495h;
        return (int) (Math.cos(Math.toRadians(bVar.f10533s)) * ((double) bVar.f10532r));
    }

    public final float k() {
        return this.f10495h.f10515a.f10542e.a(h());
    }

    public final boolean l() {
        Paint.Style style = this.f10495h.f10535u;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f10509v.getStrokeWidth() > 0.0f;
    }

    public final void m(Context context) {
        this.f10495h.f10516b = new d6.a(context);
        w();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f10495h = new b(this.f10495h);
        return this;
    }

    public final void n(float f10) {
        b bVar = this.f10495h;
        if (bVar.f10528n != f10) {
            bVar.f10528n = f10;
            w();
        }
    }

    public final void o(ColorStateList colorStateList) {
        b bVar = this.f10495h;
        if (bVar.f10517c != colorStateList) {
            bVar.f10517c = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f10499l = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, g6.l.b
    public boolean onStateChange(int[] iArr) {
        boolean z10 = u(iArr) || v();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    public final void p(float f10) {
        b bVar = this.f10495h;
        if (bVar.f10524j != f10) {
            bVar.f10524j = f10;
            this.f10499l = true;
            invalidateSelf();
        }
    }

    public final void q(float f10, int i10) {
        t(f10);
        s(ColorStateList.valueOf(i10));
    }

    public final void r(float f10, ColorStateList colorStateList) {
        t(f10);
        s(colorStateList);
    }

    public final void s(ColorStateList colorStateList) {
        b bVar = this.f10495h;
        if (bVar.f10518d != colorStateList) {
            bVar.f10518d = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        b bVar = this.f10495h;
        if (bVar.f10526l != i10) {
            bVar.f10526l = i10;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Objects.requireNonNull(this.f10495h);
        super.invalidateSelf();
    }

    @Override // m6.l
    public final void setShapeAppearanceModel(i iVar) {
        this.f10495h.f10515a = iVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f10495h.f10520f = colorStateList;
        v();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.f10495h;
        if (bVar.f10521g != mode) {
            bVar.f10521g = mode;
            v();
            super.invalidateSelf();
        }
    }

    public final void t(float f10) {
        this.f10495h.f10525k = f10;
        invalidateSelf();
    }

    public final boolean u(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f10495h.f10517c == null || color2 == (colorForState2 = this.f10495h.f10517c.getColorForState(iArr, (color2 = this.f10508u.getColor())))) {
            z10 = false;
        } else {
            this.f10508u.setColor(colorForState2);
            z10 = true;
        }
        if (this.f10495h.f10518d == null || color == (colorForState = this.f10495h.f10518d.getColorForState(iArr, (color = this.f10509v.getColor())))) {
            return z10;
        }
        this.f10509v.setColor(colorForState);
        return true;
    }

    public final boolean v() {
        PorterDuffColorFilter porterDuffColorFilter = this.f10513z;
        PorterDuffColorFilter porterDuffColorFilter2 = this.A;
        b bVar = this.f10495h;
        this.f10513z = c(bVar.f10520f, bVar.f10521g, this.f10508u, true);
        b bVar2 = this.f10495h;
        this.A = c(bVar2.f10519e, bVar2.f10521g, this.f10509v, false);
        b bVar3 = this.f10495h;
        if (bVar3.f10534t) {
            this.f10510w.a(bVar3.f10520f.getColorForState(getState(), 0));
        }
        return (i0.c.a(porterDuffColorFilter, this.f10513z) && i0.c.a(porterDuffColorFilter2, this.A)) ? false : true;
    }

    public final void w() {
        b bVar = this.f10495h;
        float f10 = bVar.f10528n + bVar.f10529o;
        bVar.f10531q = (int) Math.ceil(0.75f * f10);
        this.f10495h.f10532r = (int) Math.ceil(f10 * 0.25f);
        v();
        super.invalidateSelf();
    }

    public f(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(i.b(context, attributeSet, i10, i11).a());
    }

    public f(i iVar) {
        this(new b(iVar));
    }

    public f(b bVar) {
        j jVar;
        this.f10496i = new k.g[4];
        this.f10497j = new k.g[4];
        this.f10498k = new BitSet(8);
        this.f10500m = new Matrix();
        this.f10501n = new Path();
        this.f10502o = new Path();
        this.f10503p = new RectF();
        this.f10504q = new RectF();
        this.f10505r = new Region();
        this.f10506s = new Region();
        Paint paint = new Paint(1);
        this.f10508u = paint;
        Paint paint2 = new Paint(1);
        this.f10509v = paint2;
        this.f10510w = new l6.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            jVar = j.a.f10574a;
        } else {
            jVar = new j();
        }
        this.f10512y = jVar;
        this.C = new RectF();
        this.D = true;
        this.f10495h = bVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        v();
        u(getState());
        this.f10511x = new a();
    }

    /* JADX INFO: compiled from: MaterialShapeDrawable.java */
    public static final class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public i f10515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public d6.a f10516b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ColorStateList f10517c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ColorStateList f10518d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ColorStateList f10519e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ColorStateList f10520f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public PorterDuff.Mode f10521g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Rect f10522h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f10523i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f10524j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f10525k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f10526l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f10527m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f10528n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public float f10529o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f10530p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f10531q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f10532r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f10533s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f10534t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public Paint.Style f10535u;

        public b(i iVar) {
            this.f10517c = null;
            this.f10518d = null;
            this.f10519e = null;
            this.f10520f = null;
            this.f10521g = PorterDuff.Mode.SRC_IN;
            this.f10522h = null;
            this.f10523i = 1.0f;
            this.f10524j = 1.0f;
            this.f10526l = 255;
            this.f10527m = 0.0f;
            this.f10528n = 0.0f;
            this.f10529o = 0.0f;
            this.f10530p = 0;
            this.f10531q = 0;
            this.f10532r = 0;
            this.f10533s = 0;
            this.f10534t = false;
            this.f10535u = Paint.Style.FILL_AND_STROKE;
            this.f10515a = iVar;
            this.f10516b = null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            f fVar = new f(this);
            fVar.f10499l = true;
            return fVar;
        }

        public b(b bVar) {
            this.f10517c = null;
            this.f10518d = null;
            this.f10519e = null;
            this.f10520f = null;
            this.f10521g = PorterDuff.Mode.SRC_IN;
            this.f10522h = null;
            this.f10523i = 1.0f;
            this.f10524j = 1.0f;
            this.f10526l = 255;
            this.f10527m = 0.0f;
            this.f10528n = 0.0f;
            this.f10529o = 0.0f;
            this.f10530p = 0;
            this.f10531q = 0;
            this.f10532r = 0;
            this.f10533s = 0;
            this.f10534t = false;
            this.f10535u = Paint.Style.FILL_AND_STROKE;
            this.f10515a = bVar.f10515a;
            this.f10516b = bVar.f10516b;
            this.f10525k = bVar.f10525k;
            this.f10517c = bVar.f10517c;
            this.f10518d = bVar.f10518d;
            this.f10521g = bVar.f10521g;
            this.f10520f = bVar.f10520f;
            this.f10526l = bVar.f10526l;
            this.f10523i = bVar.f10523i;
            this.f10532r = bVar.f10532r;
            this.f10530p = bVar.f10530p;
            this.f10534t = bVar.f10534t;
            this.f10524j = bVar.f10524j;
            this.f10527m = bVar.f10527m;
            this.f10528n = bVar.f10528n;
            this.f10529o = bVar.f10529o;
            this.f10531q = bVar.f10531q;
            this.f10533s = bVar.f10533s;
            this.f10519e = bVar.f10519e;
            this.f10535u = bVar.f10535u;
            if (bVar.f10522h != null) {
                this.f10522h = new Rect(bVar.f10522h);
            }
        }
    }
}
