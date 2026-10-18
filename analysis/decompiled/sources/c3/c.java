package c3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.Objects;
import p2.l;

/* JADX INFO: compiled from: GifDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends Drawable implements g.b, Animatable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f3835h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3836i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3837j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3838k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3839l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3840m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3841n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3842o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Paint f3843p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Rect f3844q;

    /* JADX INFO: compiled from: GifDrawable.java */
    public static final class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g f3845a;

        public a(g gVar) {
            this.f3845a = gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new c(this);
        }
    }

    public c(Context context, n2.a aVar, l<Bitmap> lVar, int i10, int i11, Bitmap bitmap) {
        a aVar2 = new a(new g(com.bumptech.glide.c.b(context), aVar, i10, i11, lVar, bitmap));
        this.f3839l = true;
        this.f3841n = -1;
        this.f3835h = aVar2;
    }

    @Override // c3.g.b
    public final void a() {
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        g gVar = this.f3835h.f3845a;
        g.a aVar = gVar.f3855i;
        if ((aVar != null ? aVar.f3865l : -1) == gVar.f3847a.d() - 1) {
            this.f3840m++;
        }
        int i10 = this.f3841n;
        if (i10 == -1 || this.f3840m < i10) {
            return;
        }
        stop();
    }

    public final Bitmap b() {
        return this.f3835h.f3845a.f3858l;
    }

    public final Paint c() {
        if (this.f3843p == null) {
            this.f3843p = new Paint(2);
        }
        return this.f3843p;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to c3.c for r4v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final void d() {
        /*
            r4 = this;
            boolean r0 = r4.f3838k
            r1 = 1
            r0 = r0 ^ r1
            java.lang.String r2 = "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."
            c3.d.e(r0, r2)
            c3.c$a r0 = r4.f3835h
            c3.g r0 = r0.f3845a
            n2.a r0 = r0.f3847a
            int r0 = r0.d()
            if (r0 != r1) goto L19
            r4.invalidateSelf()
            goto L5d
        L19:
            boolean r0 = r4.f3836i
            if (r0 != 0) goto L5d
            r4.f3836i = r1
            c3.c$a r0 = r4.f3835h
            c3.g r0 = r0.f3845a
            boolean r2 = r0.f3856j
            if (r2 != 0) goto L55
            java.util.List<c3.g$b> r2 = r0.f3849c
            boolean r2 = r2.contains(r4)
            if (r2 != 0) goto L4d
            java.util.List<c3.g$b> r2 = r0.f3849c
            boolean r2 = r2.isEmpty()
            java.util.List<c3.g$b> r3 = r0.f3849c
            r3.add(r4)
            if (r2 == 0) goto L49
            boolean r2 = r0.f3852f
            if (r2 == 0) goto L41
            goto L49
        L41:
            r0.f3852f = r1
            r1 = 0
            r0.f3856j = r1
            r0.a()
        L49:
            r4.invalidateSelf()
            goto L5d
        L4d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Cannot subscribe twice in a row"
            r0.<init>(r1)
            throw r0
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Cannot subscribe to a cleared frame loader"
            r0.<init>(r1)
            throw r0
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c3.c.d():void");
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f3838k) {
            return;
        }
        if (this.f3842o) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f3844q == null) {
                this.f3844q = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f3844q);
            this.f3842o = false;
        }
        g gVar = this.f3835h.f3845a;
        g.a aVar = gVar.f3855i;
        Bitmap bitmap = aVar != null ? aVar.f3867n : gVar.f3858l;
        if (this.f3844q == null) {
            this.f3844q = new Rect();
        }
        canvas.drawBitmap(bitmap, (Rect) null, this.f3844q, c());
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<c3.g$b>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<c3.g$b>] */
    public final void e() {
        this.f3836i = false;
        g gVar = this.f3835h.f3845a;
        gVar.f3849c.remove(this);
        if (gVar.f3849c.isEmpty()) {
            gVar.f3852f = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f3835h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f3835h.f3845a.f3863q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f3835h.f3845a.f3862p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f3836i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3842o = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        c().setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        c().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z10, boolean z11) {
        d.e(!this.f3838k, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f3839l = z10;
        if (!z10) {
            e();
        } else if (this.f3837j) {
            d();
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f3837j = true;
        this.f3840m = 0;
        if (this.f3839l) {
            d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f3837j = false;
        e();
    }

    public c(a aVar) {
        this.f3839l = true;
        this.f3841n = -1;
        Objects.requireNonNull(aVar, "Argument must not be null");
        this.f3835h = aVar;
    }
}
