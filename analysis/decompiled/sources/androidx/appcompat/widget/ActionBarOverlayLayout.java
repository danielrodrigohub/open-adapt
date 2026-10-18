package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements j0, j0.n, j0.o {
    public static final int[] I = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public j0.l0 A;
    public d B;
    public OverScroller C;
    public ViewPropertyAnimator D;
    public final a E;
    public final b F;
    public final c G;
    public final j0.p H;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f988h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f989i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ContentFrameLayout f990j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ActionBarContainer f991k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public k0 f992l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f993m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f994n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f995o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f996p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f997q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f998r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f999s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1000t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Rect f1001u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Rect f1002v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Rect f1003w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public j0.l0 f1004x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public j0.l0 f1005y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public j0.l0 f1006z;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = null;
            actionBarOverlayLayout.f998r = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = null;
            actionBarOverlayLayout.f998r = false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout.this.q();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = actionBarOverlayLayout.f991k.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.E);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout.this.q();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.D = actionBarOverlayLayout.f991k.animate().translationY(-ActionBarOverlayLayout.this.f991k.getHeight()).setListener(ActionBarOverlayLayout.this.E);
        }
    }

    public interface d {
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e() {
            super(-1, -1);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f989i = 0;
        this.f1001u = new Rect();
        this.f1002v = new Rect();
        this.f1003w = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        j0.l0 l0Var = j0.l0.f9194b;
        this.f1004x = l0Var;
        this.f1005y = l0Var;
        this.f1006z = l0Var;
        this.A = l0Var;
        this.E = new a();
        this.F = new b();
        this.G = new c();
        r(context);
        this.H = new j0.p();
    }

    @Override // androidx.appcompat.widget.j0
    public final void a(Menu menu, androidx.appcompat.view.menu.i.a aVar) {
        s();
        this.f992l.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.j0
    public final boolean b() {
        s();
        return this.f992l.b();
    }

    @Override // androidx.appcompat.widget.j0
    public final void c() {
        s();
        this.f992l.c();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.j0
    public final boolean d() {
        s();
        return this.f992l.d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f993m == null || this.f994n) {
            return;
        }
        if (this.f991k.getVisibility() == 0) {
            translationY = (int) (this.f991k.getTranslationY() + this.f991k.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f993m.setBounds(0, translationY, getWidth(), this.f993m.getIntrinsicHeight() + translationY);
        this.f993m.draw(canvas);
    }

    @Override // androidx.appcompat.widget.j0
    public final boolean e() {
        s();
        return this.f992l.e();
    }

    @Override // androidx.appcompat.widget.j0
    public final boolean f() {
        s();
        return this.f992l.f();
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.j0
    public final boolean g() {
        s();
        return this.f992l.g();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f991k;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        j0.p pVar = this.H;
        return pVar.f9232b | pVar.f9231a;
    }

    public CharSequence getTitle() {
        s();
        return this.f992l.getTitle();
    }

    @Override // j0.n
    public final void h(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // j0.n
    public final void i(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // j0.n
    public final void j(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override // androidx.appcompat.widget.j0
    public final void k(int i10) {
        s();
        if (i10 == 2) {
            this.f992l.r();
        } else if (i10 == 5) {
            this.f992l.s();
        } else {
            if (i10 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.j0
    public final void l() {
        s();
        this.f992l.h();
    }

    @Override // j0.o
    public final void m(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // j0.n
    public final void n(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // j0.n
    public final boolean o(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        s();
        j0.l0 l0VarL = j0.l0.l(windowInsets, this);
        boolean zP = p(this.f991k, new Rect(l0VarL.d(), l0VarL.f(), l0VarL.e(), l0VarL.c()), false);
        Rect rect = this.f1001u;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.i.b(this, l0VarL, rect);
        Rect rect2 = this.f1001u;
        j0.l0 l0VarL2 = l0VarL.f9195a.l(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f1004x = l0VarL2;
        boolean z10 = true;
        if (!this.f1005y.equals(l0VarL2)) {
            this.f1005y = this.f1004x;
            zP = true;
        }
        if (this.f1002v.equals(this.f1001u)) {
            z10 = zP;
        } else {
            this.f1002v.set(this.f1001u);
        }
        if (z10) {
            requestLayout();
        }
        return l0VarL.f9195a.a().f9195a.c().f9195a.b().k();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        r(getContext());
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.h.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int measuredHeight;
        j0.l0.e cVar;
        s();
        measureChildWithMargins(this.f991k, i10, 0, i11, 0);
        e eVar = (e) this.f991k.getLayoutParams();
        int iMax = Math.max(0, this.f991k.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.f991k.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f991k.getMeasuredState());
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        boolean z10 = (j0.a0.d.g(this) & 256) != 0;
        if (z10) {
            measuredHeight = this.f988h;
            if (this.f996p && this.f991k.getTabContainer() != null) {
                measuredHeight += this.f988h;
            }
        } else {
            measuredHeight = this.f991k.getVisibility() != 8 ? this.f991k.getMeasuredHeight() : 0;
        }
        this.f1003w.set(this.f1001u);
        j0.l0 l0Var = this.f1004x;
        this.f1006z = l0Var;
        if (this.f995o || z10) {
            a0.c cVarB = a0.c.b(l0Var.d(), this.f1006z.f() + measuredHeight, this.f1006z.e(), this.f1006z.c() + 0);
            j0.l0 l0Var2 = this.f1006z;
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 30) {
                cVar = new j0.l0.d(l0Var2);
            } else {
                cVar = i12 >= 29 ? new j0.l0.c(l0Var2) : new j0.l0.b(l0Var2);
            }
            cVar.d(cVarB);
            this.f1006z = cVar.b();
        } else {
            Rect rect = this.f1003w;
            rect.top += measuredHeight;
            rect.bottom += 0;
            this.f1006z = l0Var.f9195a.l(0, measuredHeight, 0, 0);
        }
        p(this.f990j, this.f1003w, true);
        if (!this.A.equals(this.f1006z)) {
            j0.l0 l0Var3 = this.f1006z;
            this.A = l0Var3;
            j0.a0.c(this.f990j, l0Var3);
        }
        measureChildWithMargins(this.f990j, i10, 0, i11, 0);
        e eVar2 = (e) this.f990j.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f990j.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f990j.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f990j.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i10, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (!this.f997q || !z10) {
            return false;
        }
        this.C.fling(0, 0, 0, (int) f11, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.C.getFinalY() > this.f991k.getHeight()) {
            q();
            this.G.run();
        } else {
            q();
            this.F.run();
        }
        this.f998r = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.f999s + i11;
        this.f999s = i14;
        setActionBarHideOffset(i14);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i10) {
        f.u uVar;
        j.g gVar;
        this.H.a(i10, 0);
        this.f999s = getActionBarHideOffset();
        q();
        d dVar = this.B;
        if (dVar == null || (gVar = (uVar = (f.u) dVar).f6942t) == null) {
            return;
        }
        gVar.a();
        uVar.f6942t = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f991k.getVisibility() != 0) {
            return false;
        }
        return this.f997q;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f997q || this.f998r) {
            return;
        }
        if (this.f999s <= this.f991k.getHeight()) {
            q();
            postDelayed(this.F, 600L);
        } else {
            q();
            postDelayed(this.G, 600L);
        }
    }

    @Override // android.view.View
    @Deprecated
    public final void onWindowSystemUiVisibilityChanged(int i10) {
        super.onWindowSystemUiVisibilityChanged(i10);
        s();
        int i11 = this.f1000t ^ i10;
        this.f1000t = i10;
        boolean z10 = (i10 & 4) == 0;
        boolean z11 = (i10 & 256) != 0;
        d dVar = this.B;
        if (dVar != null) {
            ((f.u) dVar).f6938p = !z11;
            if (z10 || !z11) {
                f.u uVar = (f.u) dVar;
                if (uVar.f6939q) {
                    uVar.f6939q = false;
                    uVar.u(true);
                }
            } else {
                f.u uVar2 = (f.u) dVar;
                if (!uVar2.f6939q) {
                    uVar2.f6939q = true;
                    uVar2.u(true);
                }
            }
        }
        if ((i11 & 256) == 0 || this.B == null) {
            return;
        }
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.h.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f989i = i10;
        d dVar = this.B;
        if (dVar != null) {
            ((f.u) dVar).f6937o = i10;
        }
    }

    public final boolean p(View view, Rect rect, boolean z10) {
        boolean z11;
        e eVar = (e) view.getLayoutParams();
        int i10 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
        int i11 = rect.left;
        if (i10 != i11) {
            ((ViewGroup.MarginLayoutParams) eVar).leftMargin = i11;
            z11 = true;
        } else {
            z11 = false;
        }
        int i12 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        int i13 = rect.top;
        if (i12 != i13) {
            ((ViewGroup.MarginLayoutParams) eVar).topMargin = i13;
            z11 = true;
        }
        int i14 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
        int i15 = rect.right;
        if (i14 != i15) {
            ((ViewGroup.MarginLayoutParams) eVar).rightMargin = i15;
            z11 = true;
        }
        if (z10) {
            int i16 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            int i17 = rect.bottom;
            if (i16 != i17) {
                ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = i17;
                return true;
            }
        }
        return z11;
    }

    public final void q() {
        removeCallbacks(this.F);
        removeCallbacks(this.G);
        ViewPropertyAnimator viewPropertyAnimator = this.D;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void r(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(I);
        this.f988h = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f993m = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f994n = context.getApplicationInfo().targetSdkVersion < 19;
        this.C = new OverScroller(context);
    }

    public final void s() {
        k0 wrapper;
        if (this.f990j == null) {
            this.f990j = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f991k = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof k0) {
                wrapper = (k0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    StringBuilder sbC = a0.b.c("Can't make a decor toolbar out of ");
                    sbC.append(callbackFindViewById.getClass().getSimpleName());
                    throw new IllegalStateException(sbC.toString());
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f992l = wrapper;
        }
    }

    public void setActionBarHideOffset(int i10) {
        q();
        this.f991k.setTranslationY(-Math.max(0, Math.min(i10, this.f991k.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.B = dVar;
        if (getWindowToken() != null) {
            ((f.u) this.B).f6937o = this.f989i;
            int i10 = this.f1000t;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                j0.a0.h.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f996p = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f997q) {
            this.f997q = z10;
            if (z10) {
                return;
            }
            q();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i10) {
        s();
        this.f992l.setIcon(i10);
    }

    public void setLogo(int i10) {
        s();
        this.f992l.o(i10);
    }

    public void setOverlayMode(boolean z10) {
        this.f995o = z10;
        this.f994n = z10 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i10) {
    }

    @Override // androidx.appcompat.widget.j0
    public void setWindowCallback(Window.Callback callback) {
        s();
        this.f992l.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.j0
    public void setWindowTitle(CharSequence charSequence) {
        s();
        this.f992l.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        s();
        this.f992l.setIcon(drawable);
    }
}
