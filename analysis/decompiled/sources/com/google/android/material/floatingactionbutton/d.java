package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.widget.o;
import g6.j;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import m6.l;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public static final t0.a D = p5.a.f13254c;
    public static final int[] E = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] F = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    public static final int[] G = {R.attr.state_focused, R.attr.state_enabled};
    public static final int[] H = {R.attr.state_hovered, R.attr.state_enabled};
    public static final int[] I = {R.attr.state_enabled};
    public static final int[] J = new int[0];
    public f6.c C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m6.i f5307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public m6.f f5308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Drawable f5309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f6.a f5310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LayerDrawable f5311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5312f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5316j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5317k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final j f5318l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Animator f5319m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p5.g f5320n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public p5.g f5321o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f5322p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5324r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ArrayList<Animator.AnimatorListener> f5326t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList<Animator.AnimatorListener> f5327u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ArrayList<f> f5328v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final FloatingActionButton f5329w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final l6.b f5330x;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5313g = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f5323q = 1.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5325s = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Rect f5331y = new Rect();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final RectF f5332z = new RectF();
    public final RectF A = new RectF();
    public final Matrix B = new Matrix();

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public class a extends p5.f {
        public a() {
        }

        @Override // android.animation.TypeEvaluator
        public final Matrix evaluate(float f10, Matrix matrix, Matrix matrix2) {
            d.this.f5323q = f10;
            matrix.getValues(this.f13261a);
            matrix2.getValues(this.f13262b);
            for (int i10 = 0; i10 < 9; i10++) {
                float[] fArr = this.f13262b;
                float f11 = fArr[i10];
                float[] fArr2 = this.f13261a;
                fArr[i10] = ((f11 - fArr2[i10]) * f10) + fArr2[i10];
            }
            this.f13263c.setValues(this.f13262b);
            return this.f13263c;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f5334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ float f5335b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ float f5336c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ float f5337d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ float f5338e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ float f5339f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ float f5340g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Matrix f5341h;

        public b(float f10, float f11, float f12, float f13, float f14, float f15, float f16, Matrix matrix) {
            this.f5334a = f10;
            this.f5335b = f11;
            this.f5336c = f12;
            this.f5337d = f13;
            this.f5338e = f14;
            this.f5339f = f15;
            this.f5340g = f16;
            this.f5341h = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.f5329w.setAlpha(p5.a.a(this.f5334a, this.f5335b, 0.0f, 0.2f, fFloatValue));
            FloatingActionButton floatingActionButton = d.this.f5329w;
            float f10 = this.f5336c;
            floatingActionButton.setScaleX(((this.f5337d - f10) * fFloatValue) + f10);
            FloatingActionButton floatingActionButton2 = d.this.f5329w;
            float f11 = this.f5338e;
            floatingActionButton2.setScaleY(((this.f5337d - f11) * fFloatValue) + f11);
            d dVar = d.this;
            float f12 = this.f5339f;
            float f13 = this.f5340g;
            dVar.f5323q = o.c(f13, f12, fFloatValue, f12);
            dVar.a(o.c(f13, f12, fFloatValue, f12), this.f5341h);
            d.this.f5329w.setImageMatrix(this.f5341h);
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public class c extends i {
        public c(d dVar) {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.i
        public final float a() {
            return 0.0f;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public class C0089d extends i {
        public C0089d() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.i
        public final float a() {
            d dVar = d.this;
            return dVar.f5314h + dVar.f5315i;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public class e extends i {
        public e() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.i
        public final float a() {
            d dVar = d.this;
            return dVar.f5314h + dVar.f5316j;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public interface f {
        void a();

        void b();
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public interface g {
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public class h extends i {
        public h() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.i
        public final float a() {
            return d.this.f5314h;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    public abstract class i extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f5346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f5347b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f5348c;

        public i() {
        }

        public abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            d.this.w((int) this.f5348c);
            this.f5346a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f5346a) {
                m6.f fVar = d.this.f5308b;
                this.f5347b = fVar == null ? 0.0f : fVar.f10495h.f10528n;
                this.f5348c = a();
                this.f5346a = true;
            }
            d dVar = d.this;
            float f10 = this.f5347b;
            dVar.w((int) ((valueAnimator.getAnimatedFraction() * (this.f5348c - f10)) + f10));
        }
    }

    public d(FloatingActionButton floatingActionButton, l6.b bVar) {
        this.f5329w = floatingActionButton;
        this.f5330x = bVar;
        j jVar = new j();
        this.f5318l = jVar;
        jVar.a(E, d(new e()));
        jVar.a(F, d(new C0089d()));
        jVar.a(G, d(new C0089d()));
        jVar.a(H, d(new C0089d()));
        jVar.a(I, d(new h()));
        jVar.a(J, d(new c(this)));
        this.f5322p = floatingActionButton.getRotation();
    }

    public final void a(float f10, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f5329w.getDrawable();
        if (drawable == null || this.f5324r == 0) {
            return;
        }
        RectF rectF = this.f5332z;
        RectF rectF2 = this.A;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i10 = this.f5324r;
        rectF2.set(0.0f, 0.0f, i10, i10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i11 = this.f5324r;
        matrix.postScale(f10, f10, i11 / 2.0f, i11 / 2.0f);
    }

    public final AnimatorSet b(p5.g gVar, float f10, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f5329w, (Property<FloatingActionButton, Float>) View.ALPHA, f10);
        gVar.d("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f5329w, (Property<FloatingActionButton, Float>) View.SCALE_X, f11);
        gVar.d("scale").a(objectAnimatorOfFloat2);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 26) {
            objectAnimatorOfFloat2.setEvaluator(new f6.b());
        }
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f5329w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f11);
        gVar.d("scale").a(objectAnimatorOfFloat3);
        if (i10 == 26) {
            objectAnimatorOfFloat3.setEvaluator(new f6.b());
        }
        arrayList.add(objectAnimatorOfFloat3);
        a(f12, this.B);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f5329w, new p5.e(), new a(), new Matrix(this.B));
        gVar.d("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        g7.c.f(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet c(float f10, float f11, float f12) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new b(this.f5329w.getAlpha(), f10, this.f5329w.getScaleX(), f11, this.f5329w.getScaleY(), this.f5323q, f12, new Matrix(this.B)));
        arrayList.add(valueAnimatorOfFloat);
        g7.c.f(animatorSet, arrayList);
        Context context = this.f5329w.getContext();
        int i10 = com.google.android.material.R.attr.motionDurationLong1;
        int integer = this.f5329w.getContext().getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1);
        TypedValue typedValueA = j6.b.a(context, i10);
        if (typedValueA != null && typedValueA.type == 16) {
            integer = typedValueA.data;
        }
        animatorSet.setDuration(integer);
        Context context2 = this.f5329w.getContext();
        int i11 = com.google.android.material.R.attr.motionEasingStandard;
        TimeInterpolator timeInterpolatorC = p5.a.f13253b;
        TypedValue typedValue = new TypedValue();
        if (context2.getTheme().resolveAttribute(i11, typedValue, true)) {
            if (typedValue.type != 3) {
                throw new IllegalArgumentException("Motion easing theme attribute must be a string");
            }
            String strValueOf = String.valueOf(typedValue.string);
            if (h6.a.b(strValueOf, "cubic-bezier")) {
                String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
                if (strArrSplit.length != 4) {
                    StringBuilder sbC = a0.b.c("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
                    sbC.append(strArrSplit.length);
                    throw new IllegalArgumentException(sbC.toString());
                }
                timeInterpolatorC = l0.a.b(h6.a.a(strArrSplit, 0), h6.a.a(strArrSplit, 1), h6.a.a(strArrSplit, 2), h6.a.a(strArrSplit, 3));
            } else {
                if (!h6.a.b(strValueOf, "path")) {
                    throw new IllegalArgumentException(androidx.recyclerview.widget.d.c("Invalid motion easing type: ", strValueOf));
                }
                timeInterpolatorC = l0.a.c(a0.e.c(strValueOf.substring(5, strValueOf.length() - 1)));
            }
        }
        animatorSet.setInterpolator(timeInterpolatorC);
        return animatorSet;
    }

    public final ValueAnimator d(i iVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(iVar);
        valueAnimator.addUpdateListener(iVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public float e() {
        throw null;
    }

    public void f(Rect rect) {
        int sizeDimension = this.f5312f ? (this.f5317k - this.f5329w.getSizeDimension()) / 2 : 0;
        float fE = this.f5313g ? e() + this.f5316j : 0.0f;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(fE));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(fE * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    public void g(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        throw null;
    }

    public final boolean h() {
        if (this.f5329w.getVisibility() == 0) {
            return this.f5325s == 1;
        }
        return this.f5325s != 2;
    }

    public final boolean i() {
        if (this.f5329w.getVisibility() != 0) {
            return this.f5325s == 2;
        }
        return this.f5325s != 1;
    }

    public void j() {
        throw null;
    }

    public void k() {
        throw null;
    }

    public void l(int[] iArr) {
        throw null;
    }

    public void m(float f10, float f11, float f12) {
        throw null;
    }

    public final void n() {
        ArrayList<f> arrayList = this.f5328v;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    public final void o() {
        ArrayList<f> arrayList = this.f5328v;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public final void p(float f10) {
        this.f5323q = f10;
        Matrix matrix = this.B;
        a(f10, matrix);
        this.f5329w.setImageMatrix(matrix);
    }

    public void q(ColorStateList colorStateList) {
        throw null;
    }

    public final void r(m6.i iVar) {
        this.f5307a = iVar;
        m6.f fVar = this.f5308b;
        if (fVar != null) {
            fVar.setShapeAppearanceModel(iVar);
        }
        Object obj = this.f5309c;
        if (obj instanceof l) {
            ((l) obj).setShapeAppearanceModel(iVar);
        }
        f6.a aVar = this.f5310d;
        if (aVar != null) {
            aVar.f7082o = iVar;
            aVar.invalidateSelf();
        }
    }

    public boolean s() {
        throw null;
    }

    public final boolean t() {
        FloatingActionButton floatingActionButton = this.f5329w;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        return a0.g.c(floatingActionButton) && !this.f5329w.isInEditMode();
    }

    public void u() {
        throw null;
    }

    public final void v() {
        Rect rect = this.f5331y;
        f(rect);
        c3.d.h(this.f5311e, "Didn't initialize content background");
        if (s()) {
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) this.f5311e, rect.left, rect.top, rect.right, rect.bottom);
            FloatingActionButton.b bVar = (FloatingActionButton.b) this.f5330x;
            Objects.requireNonNull(bVar);
            super/*android.view.View*/.setBackgroundDrawable(insetDrawable);
        } else {
            l6.b bVar2 = this.f5330x;
            LayerDrawable layerDrawable = this.f5311e;
            FloatingActionButton.b bVar3 = (FloatingActionButton.b) bVar2;
            Objects.requireNonNull(bVar3);
            if (layerDrawable != null) {
                super/*android.view.View*/.setBackgroundDrawable(layerDrawable);
            }
        }
        l6.b bVar4 = this.f5330x;
        int i10 = rect.left;
        int i11 = rect.top;
        int i12 = rect.right;
        int i13 = rect.bottom;
        FloatingActionButton.b bVar5 = (FloatingActionButton.b) bVar4;
        FloatingActionButton.this.f5288t.set(i10, i11, i12, i13);
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        int i14 = floatingActionButton.f5285q;
        floatingActionButton.setPadding(i10 + i14, i11 + i14, i12 + i14, i13 + i14);
    }

    public final void w(float f10) {
        m6.f fVar = this.f5308b;
        if (fVar != null) {
            fVar.n(f10);
        }
    }
}
