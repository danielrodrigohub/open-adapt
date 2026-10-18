package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import g6.n;
import g6.s;
import j0.a0;
import j0.g0;
import j0.l0;
import j0.q;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f5360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f5361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f5362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n6.f f5363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5364e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5370k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AccessibilityManager f5371l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f5358o = {R.attr.snackbarStyle};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f5359p = BaseTransientBottomBar.class.getSimpleName();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Handler f5357n = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b f5365f = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public e f5372m = new e();

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final f f5373i = new f(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            f fVar = this.f5373i;
            Objects.requireNonNull(fVar);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    com.google.android.material.snackbar.g.b().f(fVar.f5378a);
                }
            } else if (coordinatorLayout.q(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                com.google.android.material.snackbar.g.b().e(fVar.f5378a);
            }
            return super.g(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean s(View view) {
            Objects.requireNonNull(this.f5373i);
            return view instanceof g;
        }
    }

    public class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    return false;
                }
                BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                int i11 = message.arg1;
                if (!baseTransientBottomBar.g() || baseTransientBottomBar.f5362c.getVisibility() != 0) {
                    baseTransientBottomBar.e();
                } else if (baseTransientBottomBar.f5362c.getAnimationMode() == 1) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                    valueAnimatorOfFloat.setInterpolator(p5.a.f13252a);
                    valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.snackbar.a(baseTransientBottomBar));
                    valueAnimatorOfFloat.setDuration(75L);
                    valueAnimatorOfFloat.addListener(new n6.a(baseTransientBottomBar, i11));
                    valueAnimatorOfFloat.start();
                } else {
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(0, baseTransientBottomBar.c());
                    valueAnimator.setInterpolator(p5.a.f13253b);
                    valueAnimator.setDuration(250L);
                    valueAnimator.addListener(new n6.c(baseTransientBottomBar, i11));
                    valueAnimator.addUpdateListener(new com.google.android.material.snackbar.d(baseTransientBottomBar));
                    valueAnimator.start();
                }
                return true;
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            if (baseTransientBottomBar2.f5362c.getParent() == null) {
                ViewGroup.LayoutParams layoutParams = baseTransientBottomBar2.f5362c.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f) {
                    CoordinatorLayout.f fVar = (CoordinatorLayout.f) layoutParams;
                    Behavior behavior = new Behavior();
                    f fVar2 = behavior.f5373i;
                    Objects.requireNonNull(fVar2);
                    fVar2.f5378a = baseTransientBottomBar2.f5372m;
                    behavior.f5008b = new com.google.android.material.snackbar.e(baseTransientBottomBar2);
                    fVar.b(behavior);
                    fVar.f1750g = 80;
                }
                g gVar = baseTransientBottomBar2.f5362c;
                ViewGroup viewGroup = baseTransientBottomBar2.f5360a;
                gVar.f5389q = true;
                viewGroup.addView(gVar);
                gVar.f5389q = false;
                baseTransientBottomBar2.i();
                baseTransientBottomBar2.f5362c.setVisibility(4);
            }
            g gVar2 = baseTransientBottomBar2.f5362c;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.g.c(gVar2)) {
                baseTransientBottomBar2.h();
            } else {
                baseTransientBottomBar2.f5370k = true;
            }
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f5362c == null || (context = baseTransientBottomBar.f5361b) == null) {
                return;
            }
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            int i10 = displayMetrics.heightPixels;
            BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
            int[] iArr = new int[2];
            baseTransientBottomBar2.f5362c.getLocationOnScreen(iArr);
            int height = (i10 - (baseTransientBottomBar2.f5362c.getHeight() + iArr[1])) + ((int) BaseTransientBottomBar.this.f5362c.getTranslationY());
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            if (height >= baseTransientBottomBar3.f5369j) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = baseTransientBottomBar3.f5362c.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Handler handler = BaseTransientBottomBar.f5357n;
                Log.w(BaseTransientBottomBar.f5359p, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i11 = marginLayoutParams.bottomMargin;
            BaseTransientBottomBar baseTransientBottomBar4 = BaseTransientBottomBar.this;
            marginLayoutParams.bottomMargin = (baseTransientBottomBar4.f5369j - height) + i11;
            baseTransientBottomBar4.f5362c.requestLayout();
        }
    }

    public class c implements q {
        public c() {
        }

        @Override // j0.q
        public final l0 a(View view, l0 l0Var) {
            BaseTransientBottomBar.this.f5366g = l0Var.c();
            BaseTransientBottomBar.this.f5367h = l0Var.d();
            BaseTransientBottomBar.this.f5368i = l0Var.e();
            BaseTransientBottomBar.this.i();
            return l0Var;
        }
    }

    public class d extends j0.a {
        public d() {
        }

        @Override // j0.a
        public final void d(View view, k0.f fVar) {
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            fVar.a(1048576);
            fVar.f9552a.setDismissable(true);
        }

        @Override // j0.a
        public final boolean g(View view, int i10, Bundle bundle) {
            if (i10 != 1048576) {
                return super.g(view, i10, bundle);
            }
            BaseTransientBottomBar.this.a();
            return true;
        }
    }

    public class e implements com.google.android.material.snackbar.g.b {
        public e() {
        }

        @Override // com.google.android.material.snackbar.g.b
        public final void a() {
            Handler handler = BaseTransientBottomBar.f5357n;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.g.b
        public final void b(int i10) {
            Handler handler = BaseTransientBottomBar.f5357n;
            handler.sendMessage(handler.obtainMessage(1, i10, 0, BaseTransientBottomBar.this));
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e f5378a;

        public f(SwipeDismissBehavior<?> swipeDismissBehavior) {
            Objects.requireNonNull(swipeDismissBehavior);
            swipeDismissBehavior.f5012f = SwipeDismissBehavior.t(0.1f);
            swipeDismissBehavior.f5013g = SwipeDismissBehavior.t(0.6f);
            swipeDismissBehavior.f5010d = 0;
        }
    }

    public static class g extends FrameLayout {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final a f5379r = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public BaseTransientBottomBar<?> f5380h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f5381i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float f5382j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float f5383k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f5384l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f5385m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public ColorStateList f5386n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public PorterDuff.Mode f5387o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public Rect f5388p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f5389q;

        public class a implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public g(Context context, AttributeSet attributeSet) {
            super(r6.a.a(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            int i10 = R.styleable.SnackbarLayout_elevation;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(i10, 0);
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.i.s(this, dimensionPixelSize);
            }
            this.f5381i = typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
            this.f5382j = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(j6.c.a(context2, typedArrayObtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(s.c(typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f5383k = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f5384l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.f5385m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(f5379r);
            setFocusable(true);
            if (getBackground() == null) {
                float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(a6.a.d(a6.a.b(this, R.attr.colorSurface), a6.a.b(this, R.attr.colorOnSurface), getBackgroundOverlayColorAlpha()));
                ColorStateList colorStateList = this.f5386n;
                if (colorStateList != null) {
                    b0.a.b.h(gradientDrawable, colorStateList);
                }
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                a0.d.q(this, gradientDrawable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f5380h = baseTransientBottomBar;
        }

        public float getActionTextColorAlpha() {
            return this.f5383k;
        }

        public int getAnimationMode() {
            return this.f5381i;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.f5382j;
        }

        public int getMaxInlineActionWidth() {
            return this.f5385m;
        }

        public int getMaxWidth() {
            return this.f5384l;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f5380h;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.d();
            }
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.h.c(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onDetachedFromWindow() {
            boolean z10;
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f5380h;
            if (baseTransientBottomBar != null) {
                com.google.android.material.snackbar.g gVarB = com.google.android.material.snackbar.g.b();
                e eVar = baseTransientBottomBar.f5372m;
                synchronized (gVarB.f5402a) {
                    z10 = gVarB.c(eVar) || gVarB.d(eVar);
                }
                if (z10) {
                    BaseTransientBottomBar.f5357n.post(new n6.d(baseTransientBottomBar));
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f5380h;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.f5370k) {
                return;
            }
            baseTransientBottomBar.h();
            baseTransientBottomBar.f5370k = false;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (this.f5384l > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = this.f5384l;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        public void setAnimationMode(int i10) {
            this.f5381i = i10;
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.f5386n != null) {
                drawable = drawable.mutate();
                b0.a.b.h(drawable, this.f5386n);
                b0.a.b.i(drawable, this.f5387o);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.f5386n = colorStateList;
            if (getBackground() != null) {
                Drawable drawableMutate = getBackground().mutate();
                b0.a.b.h(drawableMutate, colorStateList);
                b0.a.b.i(drawableMutate, this.f5387o);
                if (drawableMutate != getBackground()) {
                    super.setBackgroundDrawable(drawableMutate);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.f5387o = mode;
            if (getBackground() != null) {
                Drawable drawableMutate = getBackground().mutate();
                b0.a.b.i(drawableMutate, mode);
                if (drawableMutate != getBackground()) {
                    super.setBackgroundDrawable(drawableMutate);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f5389q || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.f5388p = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f5380h;
            if (baseTransientBottomBar != null) {
                Handler handler = BaseTransientBottomBar.f5357n;
                baseTransientBottomBar.i();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f5379r);
            super.setOnClickListener(onClickListener);
        }
    }

    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, n6.f fVar) {
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (fVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f5360a = viewGroup;
        this.f5363d = fVar;
        this.f5361b = context;
        n.c(context, n.f7772a, "Theme.AppCompat");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f5358o);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        g gVar = (g) layoutInflaterFrom.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
        this.f5362c = gVar;
        gVar.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            float actionTextColorAlpha = gVar.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout.f5393i.setTextColor(a6.a.d(a6.a.b(snackbarContentLayout, R.attr.colorSurface), snackbarContentLayout.f5393i.getCurrentTextColor(), actionTextColorAlpha));
            }
            snackbarContentLayout.setMaxInlineActionWidth(gVar.getMaxInlineActionWidth());
        }
        gVar.addView(view);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.g.f(gVar, 1);
        a0.d.s(gVar, 1);
        gVar.setFitsSystemWindows(true);
        a0.i.u(gVar, new c());
        a0.p(gVar, new d());
        this.f5371l = (AccessibilityManager) context.getSystemService("accessibility");
    }

    public void a() {
        b(3);
    }

    public final void b(int i10) {
        com.google.android.material.snackbar.g gVarB = com.google.android.material.snackbar.g.b();
        e eVar = this.f5372m;
        synchronized (gVarB.f5402a) {
            if (gVarB.c(eVar)) {
                gVarB.a(gVarB.f5404c, i10);
            } else if (gVarB.d(eVar)) {
                gVarB.a(gVarB.f5405d, i10);
            }
        }
    }

    public final int c() {
        int height = this.f5362c.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f5362c.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    public final void d() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.f5362c.getRootWindowInsets()) == null) {
            return;
        }
        this.f5369j = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        i();
    }

    public final void e() {
        com.google.android.material.snackbar.g gVarB = com.google.android.material.snackbar.g.b();
        e eVar = this.f5372m;
        synchronized (gVarB.f5402a) {
            if (gVarB.c(eVar)) {
                gVarB.f5404c = null;
                if (gVarB.f5405d != null) {
                    gVarB.h();
                }
            }
        }
        ViewParent parent = this.f5362c.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f5362c);
        }
    }

    public final void f() {
        com.google.android.material.snackbar.g gVarB = com.google.android.material.snackbar.g.b();
        e eVar = this.f5372m;
        synchronized (gVarB.f5402a) {
            if (gVarB.c(eVar)) {
                gVarB.g(gVarB.f5404c);
            }
        }
    }

    public final boolean g() {
        AccessibilityManager accessibilityManager = this.f5371l;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public final void h() {
        if (g()) {
            this.f5362c.post(new com.google.android.material.snackbar.f(this));
            return;
        }
        if (this.f5362c.getParent() != null) {
            this.f5362c.setVisibility(0);
        }
        f();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    public final void i() {
        boolean z10;
        ViewGroup.LayoutParams layoutParams = this.f5362c.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            g gVar = this.f5362c;
            if (gVar.f5388p != null) {
                if (gVar.getParent() == null) {
                    return;
                }
                int i10 = this.f5366g;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                g gVar2 = this.f5362c;
                Rect rect = gVar2.f5388p;
                marginLayoutParams.bottomMargin = rect.bottom + i10;
                marginLayoutParams.leftMargin = rect.left + this.f5367h;
                marginLayoutParams.rightMargin = rect.right + this.f5368i;
                marginLayoutParams.topMargin = rect.top;
                gVar2.requestLayout();
                if (Build.VERSION.SDK_INT >= 29) {
                    if (this.f5369j > 0) {
                        ViewGroup.LayoutParams layoutParams2 = this.f5362c.getLayoutParams();
                        z10 = (layoutParams2 instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) layoutParams2).f1744a instanceof SwipeDismissBehavior);
                    }
                    if (z10) {
                        this.f5362c.removeCallbacks(this.f5365f);
                        this.f5362c.post(this.f5365f);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        Log.w(f5359p, "Unable to update margins because layout params are not MarginLayoutParams");
    }
}
