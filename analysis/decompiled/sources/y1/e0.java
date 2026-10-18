package y1;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: LottieDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends Drawable implements Drawable.Callback, Animatable {
    public boolean A;
    public m0 B;
    public boolean C;
    public final Matrix D;
    public Bitmap E;
    public Canvas F;
    public Rect G;
    public RectF H;
    public z1.a I;
    public Rect J;
    public Rect K;
    public RectF L;
    public RectF M;
    public Matrix N;
    public Matrix O;
    public boolean P;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public i f18305h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k2.d f18306i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18307j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f18308k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f18309l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f18310m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList<b> f18311n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final a f18312o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public c2.b f18313p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f18314q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public y1.b f18315r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public c2.a f18316s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f18317t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f18318u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f18319v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public g2.c f18320w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18321x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f18322y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18323z;

    /* JADX INFO: compiled from: LottieDrawable.java */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            e0 e0Var = e0.this;
            g2.c cVar = e0Var.f18320w;
            if (cVar != null) {
                cVar.v(e0Var.f18306i.e());
            }
        }
    }

    /* JADX INFO: compiled from: LottieDrawable.java */
    public interface b {
        void run();
    }

    public e0() {
        k2.d dVar = new k2.d();
        this.f18306i = dVar;
        this.f18307j = true;
        this.f18308k = false;
        this.f18309l = false;
        this.f18310m = 1;
        this.f18311n = new ArrayList<>();
        a aVar = new a();
        this.f18312o = aVar;
        this.f18318u = false;
        this.f18319v = true;
        this.f18321x = 255;
        this.B = m0.AUTOMATIC;
        this.C = false;
        this.D = new Matrix();
        this.P = false;
        dVar.addUpdateListener(aVar);
    }

    public final <T> void a(final d2.e eVar, final T t10, final l2.c<T> cVar) {
        List listEmptyList;
        g2.c cVar2 = this.f18320w;
        if (cVar2 == null) {
            this.f18311n.add(new b() { // from class: y1.d0
                @Override // y1.e0.b
                public final void run() {
                    this.f18299a.a(eVar, t10, cVar);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (eVar == d2.e.f5982c) {
            cVar2.g(t10, cVar);
        } else {
            d2.f fVar = eVar.f5984b;
            if (fVar != null) {
                fVar.g(t10, cVar);
            } else {
                if (cVar2 == null) {
                    k2.c.b("Cannot resolve KeyPath. Composition is not set yet.");
                    listEmptyList = Collections.emptyList();
                } else {
                    ArrayList arrayList = new ArrayList();
                    this.f18320w.i(eVar, 0, arrayList, new d2.e(new String[0]));
                    listEmptyList = arrayList;
                }
                for (int i10 = 0; i10 < listEmptyList.size(); i10++) {
                    ((d2.e) listEmptyList.get(i10)).f5984b.g(t10, cVar);
                }
                zIsEmpty = true ^ listEmptyList.isEmpty();
            }
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (t10 == i0.E) {
                z(j());
            }
        }
    }

    public final boolean b() {
        return this.f18307j || this.f18308k;
    }

    public final void c() {
        i iVar = this.f18305h;
        if (iVar == null) {
            return;
        }
        j2.c.a aVar = i2.v.f8718a;
        Rect rect = iVar.f18341j;
        g2.c cVar = new g2.c(this, new g2.f(Collections.emptyList(), iVar, "__container", -1L, 1, -1L, null, Collections.emptyList(), new e2.k(), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, Collections.emptyList(), 1, null, false, null, null), iVar.f18340i, iVar);
        this.f18320w = cVar;
        if (this.f18323z) {
            cVar.u(true);
        }
        this.f18320w.I = this.f18319v;
    }

    public final void d() {
        k2.d dVar = this.f18306i;
        if (dVar.f9635r) {
            dVar.cancel();
            if (!isVisible()) {
                this.f18310m = 1;
            }
        }
        this.f18305h = null;
        this.f18320w = null;
        this.f18313p = null;
        k2.d dVar2 = this.f18306i;
        dVar2.f9634q = null;
        dVar2.f9632o = -2.1474836E9f;
        dVar2.f9633p = 2.1474836E9f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f18309l) {
            try {
                if (this.C) {
                    o(canvas, this.f18320w);
                } else {
                    g(canvas);
                }
            } catch (Throwable unused) {
                Objects.requireNonNull(k2.c.f9626a);
            }
        } else if (this.C) {
            o(canvas, this.f18320w);
        } else {
            g(canvas);
        }
        this.P = false;
        p4.h.p();
    }

    public final void e() {
        i iVar = this.f18305h;
        if (iVar == null) {
            return;
        }
        m0 m0Var = this.B;
        int i10 = Build.VERSION.SDK_INT;
        boolean z10 = iVar.f18345n;
        int i11 = iVar.f18346o;
        int iOrdinal = m0Var.ordinal();
        boolean z11 = false;
        if (iOrdinal != 1 && (iOrdinal == 2 || ((z10 && i10 < 28) || i11 > 4 || i10 <= 25))) {
            z11 = true;
        }
        this.C = z11;
    }

    public final void f(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public final void g(Canvas canvas) {
        g2.c cVar = this.f18320w;
        i iVar = this.f18305h;
        if (cVar == null || iVar == null) {
            return;
        }
        this.D.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.D.preScale(bounds.width() / iVar.f18341j.width(), bounds.height() / iVar.f18341j.height());
        }
        cVar.h(canvas, this.D, this.f18321x);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f18321x;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        i iVar = this.f18305h;
        if (iVar == null) {
            return -1;
        }
        return iVar.f18341j.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        i iVar = this.f18305h;
        if (iVar == null) {
            return -1;
        }
        return iVar.f18341j.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final float h() {
        return this.f18306i.f();
    }

    public final float i() {
        return this.f18306i.g();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.P) {
            return;
        }
        this.P = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return l();
    }

    public final float j() {
        return this.f18306i.e();
    }

    public final int k() {
        return this.f18306i.getRepeatCount();
    }

    public final boolean l() {
        k2.d dVar = this.f18306i;
        if (dVar == null) {
            return false;
        }
        return dVar.f9635r;
    }

    public final void m() {
        this.f18311n.clear();
        this.f18306i.j();
        if (isVisible()) {
            return;
        }
        this.f18310m = 1;
    }

    public final void n() {
        if (this.f18320w == null) {
            this.f18311n.add(new b() { // from class: y1.r
                @Override // y1.e0.b
                public final void run() {
                    this.f18407a.n();
                }
            });
            return;
        }
        e();
        if (b() || k() == 0) {
            if (isVisible()) {
                k2.d dVar = this.f18306i;
                dVar.f9635r = true;
                dVar.b(dVar.h());
                dVar.k((int) (dVar.h() ? dVar.f() : dVar.g()));
                dVar.f9629l = 0L;
                dVar.f9631n = 0;
                dVar.i();
                this.f18310m = 1;
            } else {
                this.f18310m = 2;
            }
        }
        if (b()) {
            return;
        }
        q((int) (this.f18306i.f9627j < 0.0f ? i() : h()));
        this.f18306i.d();
        if (isVisible()) {
            return;
        }
        this.f18310m = 1;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00e8  */
    public final void o(Canvas canvas, g2.c cVar) {
        boolean z10;
        if (this.f18305h == null || cVar == null) {
            return;
        }
        if (this.F == null) {
            this.F = new Canvas();
            this.M = new RectF();
            this.N = new Matrix();
            this.O = new Matrix();
            this.G = new Rect();
            this.H = new RectF();
            this.I = new z1.a();
            this.J = new Rect();
            this.K = new Rect();
            this.L = new RectF();
        }
        canvas.getMatrix(this.N);
        canvas.getClipBounds(this.G);
        Rect rect = this.G;
        this.H.set(rect.left, rect.top, rect.right, rect.bottom);
        this.N.mapRect(this.H);
        f(this.H, this.G);
        if (this.f18319v) {
            this.M.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            cVar.b(this.M, null, false);
        }
        this.N.mapRect(this.M);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        RectF rectF = this.M;
        rectF.set(rectF.left * fWidth, rectF.top * fHeight, rectF.right * fWidth, rectF.bottom * fHeight);
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ViewParent parent = ((View) callback).getParent();
            if (parent instanceof ViewGroup) {
                z10 = !((ViewGroup) parent).getClipChildren();
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (!z10) {
            RectF rectF2 = this.M;
            Rect rect2 = this.G;
            rectF2.intersect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        int iCeil = (int) Math.ceil(this.M.width());
        int iCeil2 = (int) Math.ceil(this.M.height());
        if (iCeil == 0 || iCeil2 == 0) {
            return;
        }
        Bitmap bitmap = this.E;
        if (bitmap == null || bitmap.getWidth() < iCeil || this.E.getHeight() < iCeil2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iCeil, iCeil2, Bitmap.Config.ARGB_8888);
            this.E = bitmapCreateBitmap;
            this.F.setBitmap(bitmapCreateBitmap);
            this.P = true;
        } else if (this.E.getWidth() > iCeil || this.E.getHeight() > iCeil2) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.E, 0, 0, iCeil, iCeil2);
            this.E = bitmapCreateBitmap2;
            this.F.setBitmap(bitmapCreateBitmap2);
            this.P = true;
        }
        if (this.P) {
            this.D.set(this.N);
            this.D.preScale(fWidth, fHeight);
            Matrix matrix = this.D;
            RectF rectF3 = this.M;
            matrix.postTranslate(-rectF3.left, -rectF3.top);
            this.E.eraseColor(0);
            cVar.h(this.F, this.D, this.f18321x);
            this.N.invert(this.O);
            this.O.mapRect(this.L, this.M);
            f(this.L, this.K);
        }
        this.J.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.E, this.J, this.K, this.I);
    }

    public final void p() {
        if (this.f18320w == null) {
            this.f18311n.add(new b() { // from class: y1.v
                @Override // y1.e0.b
                public final void run() {
                    this.f18414a.p();
                }
            });
            return;
        }
        e();
        if (b() || k() == 0) {
            if (isVisible()) {
                k2.d dVar = this.f18306i;
                dVar.f9635r = true;
                dVar.i();
                dVar.f9629l = 0L;
                if (dVar.h() && dVar.f9630m == dVar.g()) {
                    dVar.f9630m = dVar.f();
                } else if (!dVar.h() && dVar.f9630m == dVar.f()) {
                    dVar.f9630m = dVar.g();
                }
                this.f18310m = 1;
            } else {
                this.f18310m = 3;
            }
        }
        if (b()) {
            return;
        }
        q((int) (this.f18306i.f9627j < 0.0f ? i() : h()));
        this.f18306i.d();
        if (isVisible()) {
            return;
        }
        this.f18310m = 1;
    }

    public final void q(final int i10) {
        if (this.f18305h == null) {
            this.f18311n.add(new b() { // from class: y1.b0
                @Override // y1.e0.b
                public final void run() {
                    this.f18291a.q(i10);
                }
            });
        } else {
            this.f18306i.k(i10);
        }
    }

    public final void r(final int i10) {
        if (this.f18305h == null) {
            this.f18311n.add(new b() { // from class: y1.a0
                @Override // y1.e0.b
                public final void run() {
                    this.f18289a.r(i10);
                }
            });
            return;
        }
        k2.d dVar = this.f18306i;
        dVar.l(dVar.f9632o, i10 + 0.99f);
    }

    public final void s(final String str) {
        i iVar = this.f18305h;
        if (iVar == null) {
            this.f18311n.add(new b() { // from class: y1.t
                @Override // y1.e0.b
                public final void run() {
                    this.f18410a.s(str);
                }
            });
            return;
        }
        d2.h hVarC = iVar.c(str);
        if (hVarC == null) {
            throw new IllegalArgumentException(a0.d.c("Cannot find marker with name ", str, "."));
        }
        r((int) (hVarC.f5988b + hVarC.f5989c));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        this.f18321x = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        k2.c.b("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z10, boolean z11) {
        boolean z12 = !isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            int i10 = this.f18310m;
            if (i10 == 2) {
                n();
            } else if (i10 == 3) {
                p();
            }
        } else if (this.f18306i.f9635r) {
            m();
            this.f18310m = 3;
        } else if (!z12) {
            this.f18310m = 1;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        n();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f18311n.clear();
        this.f18306i.d();
        if (isVisible()) {
            return;
        }
        this.f18310m = 1;
    }

    public final void t(final float f10) {
        i iVar = this.f18305h;
        if (iVar == null) {
            this.f18311n.add(new b() { // from class: y1.x
                @Override // y1.e0.b
                public final void run() {
                    this.f18417a.t(f10);
                }
            });
            return;
        }
        k2.d dVar = this.f18306i;
        float f11 = iVar.f18342k;
        float f12 = iVar.f18343l;
        PointF pointF = k2.f.f9637a;
        dVar.l(dVar.f9632o, androidx.appcompat.widget.o.c(f12, f11, f10, f11));
    }

    public final void u(final int i10, final int i11) {
        if (this.f18305h == null) {
            this.f18311n.add(new b() { // from class: y1.c0
                @Override // y1.e0.b
                public final void run() {
                    this.f18294a.u(i10, i11);
                }
            });
        } else {
            this.f18306i.l(i10, i11 + 0.99f);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public final void v(final String str) {
        i iVar = this.f18305h;
        if (iVar == null) {
            this.f18311n.add(new b() { // from class: y1.u
                @Override // y1.e0.b
                public final void run() {
                    this.f18412a.v(str);
                }
            });
            return;
        }
        d2.h hVarC = iVar.c(str);
        if (hVarC == null) {
            throw new IllegalArgumentException(a0.d.c("Cannot find marker with name ", str, "."));
        }
        int i10 = (int) hVarC.f5988b;
        u(i10, ((int) hVarC.f5989c) + i10);
    }

    public final void w(final int i10) {
        if (this.f18305h == null) {
            this.f18311n.add(new b() { // from class: y1.z
                @Override // y1.e0.b
                public final void run() {
                    this.f18421a.w(i10);
                }
            });
        } else {
            k2.d dVar = this.f18306i;
            dVar.l(i10, (int) dVar.f9633p);
        }
    }

    public final void x(final String str) {
        i iVar = this.f18305h;
        if (iVar == null) {
            this.f18311n.add(new b() { // from class: y1.s
                @Override // y1.e0.b
                public final void run() {
                    this.f18408a.x(str);
                }
            });
            return;
        }
        d2.h hVarC = iVar.c(str);
        if (hVarC == null) {
            throw new IllegalArgumentException(a0.d.c("Cannot find marker with name ", str, "."));
        }
        w((int) hVarC.f5988b);
    }

    public final void y(final float f10) {
        i iVar = this.f18305h;
        if (iVar == null) {
            this.f18311n.add(new b() { // from class: y1.w
                @Override // y1.e0.b
                public final void run() {
                    this.f18415a.y(f10);
                }
            });
            return;
        }
        float f11 = iVar.f18342k;
        float f12 = iVar.f18343l;
        PointF pointF = k2.f.f9637a;
        w((int) androidx.appcompat.widget.o.c(f12, f11, f10, f11));
    }

    public final void z(final float f10) {
        i iVar = this.f18305h;
        if (iVar == null) {
            this.f18311n.add(new b() { // from class: y1.y
                @Override // y1.e0.b
                public final void run() {
                    this.f18419a.z(f10);
                }
            });
            return;
        }
        k2.d dVar = this.f18306i;
        float f11 = iVar.f18342k;
        float f12 = iVar.f18343l;
        PointF pointF = k2.f.f9637a;
        dVar.k(((f12 - f11) * f10) + f11);
        p4.h.p();
    }
}
