package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.appcompat.widget.k;
import androidx.appcompat.widget.r;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import g6.n;
import g6.s;
import g6.t;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import m6.f;
import m6.l;
import p5.g;
import p5.i;

/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton extends t implements e6.a, l, CoordinatorLayout.b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f5276y = R.style.Widget_Design_FloatingActionButton;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorStateList f5277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PorterDuff.Mode f5278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f5279k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PorterDuff.Mode f5280l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ColorStateList f5281m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5282n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5283o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5284p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5285q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5286r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5287s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Rect f5288t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Rect f5289u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final r f5290v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final e6.b f5291w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public f6.d f5292x;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b() {
        }
    }

    public class b implements l6.b {
        public b() {
        }
    }

    public class c<T extends FloatingActionButton> implements d.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final i<T> f5296a = null;

        /* JADX WARN: Incorrect types in method signature: (Lp5/i<TT;>;)V */
        public c() {
        }

        @Override // com.google.android.material.floatingactionbutton.d.f
        public final void a() {
            this.f5296a.a();
        }

        @Override // com.google.android.material.floatingactionbutton.d.f
        public final void b() {
            this.f5296a.b();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof c) && ((c) obj).f5296a.equals(this.f5296a);
        }

        public final int hashCode() {
            return this.f5296a.hashCode();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.floatingActionButtonStyle;
        int i11 = f5276y;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        this.f5288t = new Rect();
        this.f5289u = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = n.d(context2, attributeSet, R.styleable.FloatingActionButton, i10, i11, new int[0]);
        this.f5277i = j6.c.a(context2, typedArrayD, R.styleable.FloatingActionButton_backgroundTint);
        this.f5278j = s.c(typedArrayD.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f5281m = j6.c.a(context2, typedArrayD, R.styleable.FloatingActionButton_rippleColor);
        this.f5283o = typedArrayD.getInt(R.styleable.FloatingActionButton_fabSize, -1);
        this.f5284p = typedArrayD.getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
        this.f5282n = typedArrayD.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayD.getDimension(R.styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayD.getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayD.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f5287s = typedArrayD.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayD.getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0));
        g gVarA = g.a(context2, typedArrayD, R.styleable.FloatingActionButton_showMotionSpec);
        g gVarA2 = g.a(context2, typedArrayD, R.styleable.FloatingActionButton_hideMotionSpec);
        m6.i iVar = new m6.i(m6.i.c(context2, attributeSet, i10, i11, m6.i.f10537m));
        boolean z10 = typedArrayD.getBoolean(R.styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayD.getBoolean(R.styleable.FloatingActionButton_android_enabled, true));
        typedArrayD.recycle();
        r rVar = new r(this);
        this.f5290v = rVar;
        rVar.b(attributeSet, i10);
        this.f5291w = new e6.b(this);
        getImpl().r(iVar);
        getImpl().g(this.f5277i, this.f5278j, this.f5281m, this.f5282n);
        getImpl().f5317k = dimensionPixelSize;
        d impl = getImpl();
        if (impl.f5314h != dimension) {
            impl.f5314h = dimension;
            impl.m(dimension, impl.f5315i, impl.f5316j);
        }
        d impl2 = getImpl();
        if (impl2.f5315i != dimension2) {
            impl2.f5315i = dimension2;
            impl2.m(impl2.f5314h, dimension2, impl2.f5316j);
        }
        d impl3 = getImpl();
        if (impl3.f5316j != dimension3) {
            impl3.f5316j = dimension3;
            impl3.m(impl3.f5314h, impl3.f5315i, dimension3);
        }
        getImpl().f5320n = gVarA;
        getImpl().f5321o = gVarA2;
        getImpl().f5312f = z10;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private d getImpl() {
        if (this.f5292x == null) {
            this.f5292x = new f6.d(this, new b());
        }
        return this.f5292x;
    }

    public static int n(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i10, size);
        }
        if (mode == 0) {
            return i10;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    @Override // e6.a
    public final boolean a() {
        return this.f5291w.f6512b;
    }

    public final void d() {
        d impl = getImpl();
        if (impl.f5327u == null) {
            impl.f5327u = new ArrayList<>();
        }
        impl.f5327u.add(null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().l(getDrawableState());
    }

    public final void e(Animator.AnimatorListener animatorListener) {
        d impl = getImpl();
        if (impl.f5326t == null) {
            impl.f5326t = new ArrayList<>();
        }
        impl.f5326t.add(animatorListener);
    }

    public final void f() {
        d impl = getImpl();
        c cVar = new c();
        if (impl.f5328v == null) {
            impl.f5328v = new ArrayList<>();
        }
        impl.f5328v.add(cVar);
    }

    @Deprecated
    public final boolean g(Rect rect) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (!a0.g.c(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        l(rect);
        return true;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f5277i;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f5278j;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().e();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f5315i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f5316j;
    }

    public Drawable getContentBackground() {
        return getImpl().f5311e;
    }

    public int getCustomSize() {
        return this.f5284p;
    }

    public int getExpandedComponentIdHint() {
        return this.f5291w.f6513c;
    }

    public g getHideMotionSpec() {
        return getImpl().f5321o;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f5281m;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f5281m;
    }

    public m6.i getShapeAppearanceModel() {
        m6.i iVar = getImpl().f5307a;
        Objects.requireNonNull(iVar);
        return iVar;
    }

    public g getShowMotionSpec() {
        return getImpl().f5320n;
    }

    public int getSize() {
        return this.f5283o;
    }

    public int getSizeDimension() {
        return h(this.f5283o);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.f5279k;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f5280l;
    }

    public boolean getUseCompatPadding() {
        return this.f5287s;
    }

    public final int h(int i10) {
        int i11 = this.f5284p;
        if (i11 != 0) {
            return i11;
        }
        Resources resources = getResources();
        if (i10 != -1) {
            return i10 != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? h(1) : h(0);
    }

    public final void i(a aVar, boolean z10) {
        d impl = getImpl();
        com.google.android.material.floatingactionbutton.a aVar2 = aVar == null ? null : new com.google.android.material.floatingactionbutton.a(this, aVar);
        if (impl.h()) {
            return;
        }
        Animator animator = impl.f5319m;
        if (animator != null) {
            animator.cancel();
        }
        if (!impl.t()) {
            impl.f5329w.b(z10 ? 8 : 4, z10);
            if (aVar2 != null) {
                aVar2.f5298a.a(aVar2.f5299b);
                return;
            }
            return;
        }
        g gVar = impl.f5321o;
        AnimatorSet animatorSetB = gVar != null ? impl.b(gVar, 0.0f, 0.0f, 0.0f) : impl.c(0.0f, 0.4f, 0.4f);
        animatorSetB.addListener(new com.google.android.material.floatingactionbutton.b(impl, z10, aVar2));
        ArrayList<Animator.AnimatorListener> arrayList = impl.f5327u;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener(it.next());
            }
        }
        animatorSetB.start();
    }

    public final boolean j() {
        return getImpl().h();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().j();
    }

    public final boolean k() {
        return getImpl().i();
    }

    public final void l(Rect rect) {
        int i10 = rect.left;
        Rect rect2 = this.f5288t;
        rect.left = i10 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    public final void m() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f5279k;
        if (colorStateList == null) {
            drawable.clearColorFilter();
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f5280l;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(k.c(colorForState, mode));
    }

    public final void o(a aVar, boolean z10) {
        d impl = getImpl();
        com.google.android.material.floatingactionbutton.a aVar2 = aVar == null ? null : new com.google.android.material.floatingactionbutton.a(this, aVar);
        if (impl.i()) {
            return;
        }
        Animator animator = impl.f5319m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z11 = impl.f5320n == null;
        if (!impl.t()) {
            impl.f5329w.b(0, z10);
            impl.f5329w.setAlpha(1.0f);
            impl.f5329w.setScaleY(1.0f);
            impl.f5329w.setScaleX(1.0f);
            impl.p(1.0f);
            if (aVar2 != null) {
                aVar2.f5298a.b();
                return;
            }
            return;
        }
        if (impl.f5329w.getVisibility() != 0) {
            impl.f5329w.setAlpha(0.0f);
            impl.f5329w.setScaleY(z11 ? 0.4f : 0.0f);
            impl.f5329w.setScaleX(z11 ? 0.4f : 0.0f);
            impl.p(z11 ? 0.4f : 0.0f);
        }
        g gVar = impl.f5320n;
        AnimatorSet animatorSetB = gVar != null ? impl.b(gVar, 1.0f, 1.0f, 1.0f) : impl.c(1.0f, 1.0f, 1.0f);
        animatorSetB.addListener(new com.google.android.material.floatingactionbutton.c(impl, z10, aVar2));
        ArrayList<Animator.AnimatorListener> arrayList = impl.f5326t;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener(it.next());
            }
        }
        animatorSetB.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d impl = getImpl();
        f fVar = impl.f5308b;
        if (fVar != null) {
            o.K(impl.f5329w, fVar);
        }
        if (!(impl instanceof f6.d)) {
            ViewTreeObserver viewTreeObserver = impl.f5329w.getViewTreeObserver();
            if (impl.C == null) {
                impl.C = new f6.c(impl);
            }
            viewTreeObserver.addOnPreDrawListener(impl.C);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d impl = getImpl();
        ViewTreeObserver viewTreeObserver = impl.f5329w.getViewTreeObserver();
        f6.c cVar = impl.C;
        if (cVar != null) {
            viewTreeObserver.removeOnPreDrawListener(cVar);
            impl.C = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int sizeDimension = getSizeDimension();
        this.f5285q = (sizeDimension - this.f5286r) / 2;
        getImpl().v();
        int iMin = Math.min(n(sizeDimension, i10), n(sizeDimension, i11));
        Rect rect = this.f5288t;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof o6.a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o6.a aVar = (o6.a) parcelable;
        super.onRestoreInstanceState(aVar.f12620h);
        e6.b bVar = this.f5291w;
        Bundle orDefault = aVar.f12352j.getOrDefault("expandableWidgetHelper", null);
        Objects.requireNonNull(orDefault);
        Bundle bundle = orDefault;
        Objects.requireNonNull(bVar);
        bVar.f6512b = bundle.getBoolean("expanded", false);
        bVar.f6513c = bundle.getInt("expandedComponentIdHint", 0);
        if (bVar.f6512b) {
            ViewParent parent = bVar.f6511a.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).c(bVar.f6511a);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        o6.a aVar = new o6.a(parcelableOnSaveInstanceState);
        p.g<String, Bundle> gVar = aVar.f12352j;
        e6.b bVar = this.f5291w;
        Objects.requireNonNull(bVar);
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", bVar.f6512b);
        bundle.putInt("expandedComponentIdHint", bVar.f6513c);
        gVar.put("expandableWidgetHelper", bundle);
        return aVar;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && g(this.f5289u) && !this.f5289u.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f5277i != colorStateList) {
            this.f5277i = colorStateList;
            d impl = getImpl();
            f fVar = impl.f5308b;
            if (fVar != null) {
                fVar.setTintList(colorStateList);
            }
            f6.a aVar = impl.f5310d;
            if (aVar != null) {
                aVar.b(colorStateList);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f5278j != mode) {
            this.f5278j = mode;
            f fVar = getImpl().f5308b;
            if (fVar != null) {
                fVar.setTintMode(mode);
            }
        }
    }

    public void setCompatElevation(float f10) {
        d impl = getImpl();
        if (impl.f5314h != f10) {
            impl.f5314h = f10;
            impl.m(f10, impl.f5315i, impl.f5316j);
        }
    }

    public void setCompatElevationResource(int i10) {
        setCompatElevation(getResources().getDimension(i10));
    }

    public void setCompatHoveredFocusedTranslationZ(float f10) {
        d impl = getImpl();
        if (impl.f5315i != f10) {
            impl.f5315i = f10;
            impl.m(impl.f5314h, f10, impl.f5316j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i10) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i10));
    }

    public void setCompatPressedTranslationZ(float f10) {
        d impl = getImpl();
        if (impl.f5316j != f10) {
            impl.f5316j = f10;
            impl.m(impl.f5314h, impl.f5315i, f10);
        }
    }

    public void setCompatPressedTranslationZResource(int i10) {
        setCompatPressedTranslationZ(getResources().getDimension(i10));
    }

    public void setCustomSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i10 != this.f5284p) {
            this.f5284p = i10;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        getImpl().w(f10);
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        if (z10 != getImpl().f5312f) {
            getImpl().f5312f = z10;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i10) {
        this.f5291w.f6513c = i10;
    }

    public void setHideMotionSpec(g gVar) {
        getImpl().f5321o = gVar;
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(g.b(getContext(), i10));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            d impl = getImpl();
            impl.p(impl.f5323q);
            if (this.f5279k != null) {
                m();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        this.f5290v.c(i10);
        m();
    }

    public void setMaxImageSize(int i10) {
        this.f5286r = i10;
        d impl = getImpl();
        if (impl.f5324r != i10) {
            impl.f5324r = i10;
            impl.p(impl.f5323q);
        }
    }

    public void setRippleColor(int i10) {
        setRippleColor(ColorStateList.valueOf(i10));
    }

    @Override // android.view.View
    public void setScaleX(float f10) {
        super.setScaleX(f10);
        getImpl().n();
    }

    @Override // android.view.View
    public void setScaleY(float f10) {
        super.setScaleY(f10);
        getImpl().n();
    }

    public void setShadowPaddingEnabled(boolean z10) {
        d impl = getImpl();
        impl.f5313g = z10;
        impl.v();
    }

    @Override // m6.l
    public void setShapeAppearanceModel(m6.i iVar) {
        getImpl().r(iVar);
    }

    public void setShowMotionSpec(g gVar) {
        getImpl().f5320n = gVar;
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(g.b(getContext(), i10));
    }

    public void setSize(int i10) {
        this.f5284p = 0;
        if (i10 != this.f5283o) {
            this.f5283o = i10;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f5279k != colorStateList) {
            this.f5279k = colorStateList;
            m();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f5280l != mode) {
            this.f5280l = mode;
            m();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f10) {
        super.setTranslationX(f10);
        getImpl().o();
    }

    @Override // android.view.View
    public void setTranslationY(float f10) {
        super.setTranslationY(f10);
        getImpl().o();
    }

    @Override // android.view.View
    public void setTranslationZ(float f10) {
        super.setTranslationZ(f10);
        getImpl().o();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f5287s != z10) {
            this.f5287s = z10;
            getImpl().k();
        }
    }

    @Override // g6.t, android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Rect f5293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f5294b;

        public BaseBehavior() {
            this.f5294b = true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean a(View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            Rect rect2 = floatingActionButton.f5288t;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final void c(CoordinatorLayout.f fVar) {
            if (fVar.f1751h == 0) {
                fVar.f1751h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                t(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).f1744a instanceof BottomSheetBehavior : false) {
                    u(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            ArrayList arrayList = (ArrayList) coordinatorLayout.e(floatingActionButton);
            int size = arrayList.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                View view2 = (View) arrayList.get(i12);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).f1744a instanceof BottomSheetBehavior : false) && u(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (t(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.s(floatingActionButton, i10);
            Rect rect = floatingActionButton.f5288t;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            int i13 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) fVar).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) fVar).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) {
                i11 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) fVar).topMargin) {
                i11 = -rect.top;
            }
            if (i11 != 0) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                floatingActionButton.offsetTopAndBottom(i11);
            }
            if (i13 == 0) {
                return true;
            }
            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
            floatingActionButton.offsetLeftAndRight(i13);
            return true;
        }

        public final boolean s(View view, FloatingActionButton floatingActionButton) {
            return this.f5294b && ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).f1749f == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        public final boolean t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!s(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f5293a == null) {
                this.f5293a = new Rect();
            }
            Rect rect = this.f5293a;
            g6.f.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.i(null, false);
                return true;
            }
            floatingActionButton.o(null, false);
            return true;
        }

        public final boolean u(View view, FloatingActionButton floatingActionButton) {
            if (!s(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.i(null, false);
                return true;
            }
            floatingActionButton.o(null, false);
            return true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.f5294b = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f5281m != colorStateList) {
            this.f5281m = colorStateList;
            getImpl().q(this.f5281m);
        }
    }
}
