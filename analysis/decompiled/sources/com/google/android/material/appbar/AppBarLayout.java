package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.google.android.material.R;
import com.newrelic.agent.android.analytics.EventManagerImpl;
import g6.n;
import j0.a0;
import j0.g0;
import j0.l;
import j0.l0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import k0.f;

/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f4948z = R.style.Widget_Design_AppBarLayout;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4952k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4953l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4954m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public l0 f4955n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4956o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4957p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4958q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4959r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4960s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WeakReference<View> f4961t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ValueAnimator f4962u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final List<d> f4963v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int[] f4964w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f4965x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Behavior f4966y;

    public static class BaseBehavior<T extends AppBarLayout> extends q5.b<T> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f4967j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f4968k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ValueAnimator f4969l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public b f4970m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public WeakReference<View> f4971n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f4972o;

        public class a extends j0.a {
            public a() {
            }

            @Override // j0.a
            public final void d(View view, f fVar) {
                this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
                fVar.w(BaseBehavior.this.f4972o);
                fVar.n(ScrollView.class.getName());
            }
        }

        public BaseBehavior() {
        }

        public static boolean E(int i10, int i11) {
            return (i10 & i11) == i11;
        }

        @Override // q5.b
        public final int C(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
            int top;
            int topInset;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int iY = y();
            int i13 = 0;
            if (i11 == 0 || iY < i11 || iY > i12) {
                this.f4967j = 0;
            } else {
                int iG = o.g(i10, i11, i12);
                if (iY != iG) {
                    if (!appBarLayout.f4953l) {
                        top = iG;
                        break;
                    }
                    int iAbs = Math.abs(iG);
                    int childCount = appBarLayout.getChildCount();
                    int i14 = 0;
                    while (true) {
                        if (i14 < childCount) {
                            View childAt = appBarLayout.getChildAt(i14);
                            c cVar = (c) childAt.getLayoutParams();
                            Interpolator interpolator = cVar.f4983c;
                            if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                                i14++;
                            } else if (interpolator != null) {
                                int i15 = cVar.f4981a;
                                if ((i15 & 1) != 0) {
                                    topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin + 0;
                                    if ((i15 & 2) != 0) {
                                        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                                        topInset -= a0.d.d(childAt);
                                    }
                                } else {
                                    topInset = 0;
                                }
                                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                                if (a0.d.b(childAt)) {
                                    topInset -= appBarLayout.getTopInset();
                                }
                                if (topInset > 0) {
                                    float f10 = topInset;
                                    top = (childAt.getTop() + Math.round(interpolator.getInterpolation((iAbs - childAt.getTop()) / f10) * f10)) * Integer.signum(iG);
                                    break;
                                }
                            }
                        }
                        top = iG;
                        break;
                    }
                    boolean zU = u(top);
                    int i16 = iY - iG;
                    this.f4967j = iG - top;
                    if (zU) {
                        for (int i17 = 0; i17 < appBarLayout.getChildCount(); i17++) {
                            c cVar2 = (c) appBarLayout.getChildAt(i17).getLayoutParams();
                            a aVar = cVar2.f4982b;
                            if (aVar != null && (cVar2.f4981a & 1) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i17);
                                float fS = s();
                                b bVar = (b) aVar;
                                Rect rect = bVar.f4979a;
                                childAt2.getDrawingRect(rect);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect);
                                rect.offset(0, -appBarLayout.getTopInset());
                                float fAbs = bVar.f4979a.top - Math.abs(fS);
                                if (fAbs <= 0.0f) {
                                    float fAbs2 = Math.abs(fAbs / bVar.f4979a.height());
                                    float f11 = 1.0f - (fAbs2 >= 0.0f ? fAbs2 > 1.0f ? 1.0f : fAbs2 : 0.0f);
                                    float fHeight = (-fAbs) - ((bVar.f4979a.height() * 0.3f) * (1.0f - (f11 * f11)));
                                    childAt2.setTranslationY(fHeight);
                                    childAt2.getDrawingRect(bVar.f4980b);
                                    bVar.f4980b.offset(0, (int) (-fHeight));
                                    Rect rect2 = bVar.f4980b;
                                    WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                                    a0.f.c(childAt2, rect2);
                                } else {
                                    WeakHashMap<View, g0> weakHashMap4 = a0.f9147a;
                                    a0.f.c(childAt2, null);
                                    childAt2.setTranslationY(0.0f);
                                }
                            }
                        }
                    }
                    if (!zU && appBarLayout.f4953l) {
                        coordinatorLayout.c(appBarLayout);
                    }
                    appBarLayout.f4949h = s();
                    if (!appBarLayout.willNotDraw()) {
                        WeakHashMap<View, g0> weakHashMap5 = a0.f9147a;
                        a0.d.k(appBarLayout);
                    }
                    K(coordinatorLayout, appBarLayout, iG, iG < iY ? -1 : 1, false);
                    i13 = i16;
                }
            }
            J(coordinatorLayout, appBarLayout);
            return i13;
        }

        public final void D(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10) {
            int iAbs = Math.abs(y() - i10);
            float fAbs = Math.abs(0.0f);
            int iRound = fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int iY = y();
            if (iY == i10) {
                ValueAnimator valueAnimator = this.f4969l;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f4969l.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f4969l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f4969l = valueAnimator3;
                valueAnimator3.setInterpolator(p5.a.f13256e);
                this.f4969l.addUpdateListener(new com.google.android.material.appbar.b(this, coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f4969l.setDuration(Math.min(iRound, EventManagerImpl.DEFAULT_MAX_EVENT_BUFFER_TIME));
            this.f4969l.setIntValues(iY, i10);
            this.f4969l.start();
        }

        public final View F(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof l) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        public final void G(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int[] iArr) {
            int i11;
            int downNestedPreScrollRange;
            if (i10 != 0) {
                if (i10 < 0) {
                    i11 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i11;
                } else {
                    i11 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i12 = i11;
                int i13 = downNestedPreScrollRange;
                if (i12 != i13) {
                    iArr[1] = A(coordinatorLayout, appBarLayout, i10, i12, i13);
                }
            }
            if (appBarLayout.f4959r) {
                appBarLayout.d(appBarLayout.e(view));
            }
        }

        public final b H(Parcelable parcelable, T t10) {
            int iS = s();
            int childCount = t10.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = t10.getChildAt(i10);
                int bottom = childAt.getBottom() + iS;
                if (childAt.getTop() + iS <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = p0.a.f12619i;
                    }
                    b bVar = new b(parcelable);
                    boolean z10 = iS == 0;
                    bVar.f4975k = z10;
                    bVar.f4974j = !z10 && (-iS) >= t10.getTotalScrollRange();
                    bVar.f4976l = i10;
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    bVar.f4978n = bottom == t10.getTopInset() + a0.d.d(childAt);
                    bVar.f4977m = bottom / childAt.getHeight();
                    return bVar;
                }
            }
            return null;
        }

        public final void I(CoordinatorLayout coordinatorLayout, T t10) {
            int paddingTop = t10.getPaddingTop() + t10.getTopInset();
            int iY = y() - paddingTop;
            int childCount = t10.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    i10 = -1;
                    break;
                }
                View childAt = t10.getChildAt(i10);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                c cVar = (c) childAt.getLayoutParams();
                if (E(cVar.f4981a, 32)) {
                    top -= ((LinearLayout.LayoutParams) cVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) cVar).bottomMargin;
                }
                int i11 = -iY;
                if (top <= i11 && bottom >= i11) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 >= 0) {
                View childAt2 = t10.getChildAt(i10);
                c cVar2 = (c) childAt2.getLayoutParams();
                int i12 = cVar2.f4981a;
                if ((i12 & 17) == 17) {
                    int topInset = -childAt2.getTop();
                    int iD = -childAt2.getBottom();
                    if (i10 == 0) {
                        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                        if (a0.d.b(t10) && a0.d.b(childAt2)) {
                            topInset -= t10.getTopInset();
                        }
                    }
                    if (E(i12, 2)) {
                        WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                        iD += a0.d.d(childAt2);
                    } else if (E(i12, 5)) {
                        WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                        int iD2 = a0.d.d(childAt2) + iD;
                        if (iY < iD2) {
                            topInset = iD2;
                        } else {
                            iD = iD2;
                        }
                    }
                    if (E(i12, 32)) {
                        topInset += ((LinearLayout.LayoutParams) cVar2).topMargin;
                        iD -= ((LinearLayout.LayoutParams) cVar2).bottomMargin;
                    }
                    if (iY < (iD + topInset) / 2) {
                        topInset = iD;
                    }
                    D(coordinatorLayout, t10, o.g(topInset + paddingTop, -t10.getTotalScrollRange(), 0));
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:42:0x00b6  */
        public final void J(CoordinatorLayout coordinatorLayout, T t10) {
            View childAt;
            boolean z10;
            boolean z11;
            a0.m(f.a.f9556f.a(), coordinatorLayout);
            boolean z12 = false;
            a0.j(coordinatorLayout, 0);
            a0.m(f.a.f9557g.a(), coordinatorLayout);
            a0.j(coordinatorLayout, 0);
            if (t10.getTotalScrollRange() == 0) {
                return;
            }
            int childCount = coordinatorLayout.getChildCount();
            int i10 = 0;
            while (true) {
                childAt = null;
                if (i10 >= childCount) {
                    break;
                }
                childAt = coordinatorLayout.getChildAt(i10);
                if (((CoordinatorLayout.f) childAt.getLayoutParams()).f1744a instanceof ScrollingViewBehavior) {
                    break;
                } else {
                    i10++;
                }
            }
            View view = childAt;
            if (view == null) {
                return;
            }
            int childCount2 = t10.getChildCount();
            int i11 = 0;
            while (true) {
                z10 = true;
                if (i11 >= childCount2) {
                    z11 = false;
                    break;
                } else {
                    if (((c) t10.getChildAt(i11).getLayoutParams()).f4981a != 0) {
                        z11 = true;
                        break;
                    }
                    i11++;
                }
            }
            if (z11) {
                if (!(a0.f(coordinatorLayout) != null)) {
                    a0.p(coordinatorLayout, new a());
                }
                if (y() != (-t10.getTotalScrollRange())) {
                    a0.n(coordinatorLayout, f.a.f9556f, new com.google.android.material.appbar.d(t10, false));
                    z12 = true;
                }
                if (y() == 0) {
                    z10 = z12;
                } else if (view.canScrollVertically(-1)) {
                    int i12 = -t10.getDownNestedPreScrollRange();
                    if (i12 != 0) {
                        a0.n(coordinatorLayout, f.a.f9557g, new com.google.android.material.appbar.c(this, coordinatorLayout, t10, view, i12));
                    } else {
                        z10 = z12;
                    }
                } else {
                    a0.n(coordinatorLayout, f.a.f9557g, new com.google.android.material.appbar.d(t10, true));
                }
                this.f4972o = z10;
            }
        }

        /* JADX WARN: Code duplicated, block: B:22:0x004b  */
        public final void K(CoordinatorLayout coordinatorLayout, T t10, int i10, int i11, boolean z10) {
            View childAt;
            boolean zE;
            int iAbs = Math.abs(i10);
            int childCount = t10.getChildCount();
            boolean z11 = false;
            int i12 = 0;
            while (true) {
                if (i12 >= childCount) {
                    childAt = null;
                    break;
                }
                childAt = t10.getChildAt(i12);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    break;
                } else {
                    i12++;
                }
            }
            if (childAt != null) {
                int i13 = ((c) childAt.getLayoutParams()).f4981a;
                if ((i13 & 1) != 0) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    int iD = a0.d.d(childAt);
                    if (i11 <= 0 || (i13 & 12) == 0 ? (i13 & 2) == 0 || (-i10) < (childAt.getBottom() - iD) - t10.getTopInset() : (-i10) < (childAt.getBottom() - iD) - t10.getTopInset()) {
                        zE = false;
                    } else {
                        zE = true;
                    }
                } else {
                    zE = false;
                }
            } else {
                zE = false;
            }
            if (t10.f4959r) {
                zE = t10.e(F(coordinatorLayout));
            }
            boolean zD = t10.d(zE);
            if (!z10) {
                if (!zD) {
                    return;
                }
                ArrayList arrayList = (ArrayList) coordinatorLayout.f(t10);
                int size = arrayList.size();
                for (int i14 = 0; i14 < size; i14++) {
                    CoordinatorLayout.c cVar = ((CoordinatorLayout.f) ((View) arrayList.get(i14)).getLayoutParams()).f1744a;
                    if (cVar instanceof ScrollingViewBehavior) {
                        if (((ScrollingViewBehavior) cVar).f13638f == 0) {
                            break;
                        }
                        z11 = true;
                        break;
                    }
                }
                if (!z11) {
                    return;
                }
            }
            t10.jumpDrawablesToCurrentState();
        }

        @Override // q5.d, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10) {
            int iRound;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.h(coordinatorLayout, appBarLayout, i10);
            int pendingAction = appBarLayout.getPendingAction();
            b bVar = this.f4970m;
            if (bVar == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z10 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i11 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z10) {
                            D(coordinatorLayout, appBarLayout, i11);
                        } else {
                            B(coordinatorLayout, appBarLayout, i11);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z10) {
                            D(coordinatorLayout, appBarLayout, 0);
                        } else {
                            B(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (bVar.f4974j) {
                B(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (bVar.f4975k) {
                B(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(bVar.f4976l);
                int i12 = -childAt.getBottom();
                if (this.f4970m.f4978n) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    iRound = appBarLayout.getTopInset() + a0.d.d(childAt) + i12;
                } else {
                    iRound = Math.round(childAt.getHeight() * this.f4970m.f4977m) + i12;
                }
                B(coordinatorLayout, appBarLayout, iRound);
            }
            appBarLayout.f4954m = 0;
            this.f4970m = null;
            u(o.g(s(), -appBarLayout.getTotalScrollRange(), 0));
            K(coordinatorLayout, appBarLayout, s(), 0, true);
            appBarLayout.f4949h = s();
            if (!appBarLayout.willNotDraw()) {
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                a0.d.k(appBarLayout);
            }
            J(coordinatorLayout, appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.t(appBarLayout, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0));
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final /* bridge */ /* synthetic */ void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
            G(coordinatorLayout, (AppBarLayout) view, view2, i11, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final void l(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i12 < 0) {
                iArr[1] = A(coordinatorLayout, appBarLayout, i12, -appBarLayout.getDownNestedScrollRange(), 0);
            }
            if (i12 == 0) {
                J(coordinatorLayout, appBarLayout);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final void n(View view, Parcelable parcelable) {
            if (parcelable instanceof b) {
                this.f4970m = (b) parcelable;
            } else {
                this.f4970m = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final Parcelable o(View view) {
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            b bVarH = H(absSavedState, (AppBarLayout) view);
            return bVarH == null ? absSavedState : bVarH;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x002c  */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            boolean z10 = true;
            if ((i10 & 2) == 0) {
                z10 = false;
            } else if (!appBarLayout.f4959r) {
                if (!((appBarLayout.getTotalScrollRange() != 0) && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight())) {
                    z10 = false;
                }
            }
            if (z10 && (valueAnimator = this.f4969l) != null) {
                valueAnimator.cancel();
            }
            this.f4971n = null;
            this.f4968k = i11;
            return z10;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i10) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f4968k == 0 || i10 == 1) {
                I(coordinatorLayout, appBarLayout);
                if (appBarLayout.f4959r) {
                    appBarLayout.d(appBarLayout.e(view2));
                }
            }
            this.f4971n = new WeakReference<>(view2);
        }

        @Override // q5.b
        public final boolean v(View view) {
            View view2;
            WeakReference<View> weakReference = this.f4971n;
            return weakReference == null || !((view2 = weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1));
        }

        @Override // q5.b
        public final int w(View view) {
            return -((AppBarLayout) view).getDownNestedScrollRange();
        }

        @Override // q5.b
        public final int x(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // q5.b
        public final int y() {
            return s() + this.f4967j;
        }

        @Override // q5.b
        public final void z(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            I(coordinatorLayout, appBarLayout);
            if (appBarLayout.f4959r) {
                appBarLayout.d(appBarLayout.e(F(coordinatorLayout)));
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public static class b extends p0.a {
            public static final Parcelable.Creator<b> CREATOR = new a();

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f4974j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean f4975k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f4976l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public float f4977m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public boolean f4978n;

            public class a implements Parcelable.ClassLoaderCreator<b> {
                @Override // android.os.Parcelable.ClassLoaderCreator
                public final b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new b(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public final Object[] newArray(int i10) {
                    return new b[i10];
                }

                @Override // android.os.Parcelable.Creator
                public final Object createFromParcel(Parcel parcel) {
                    return new b(parcel, null);
                }
            }

            public b(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f4974j = parcel.readByte() != 0;
                this.f4975k = parcel.readByte() != 0;
                this.f4976l = parcel.readInt();
                this.f4977m = parcel.readFloat();
                this.f4978n = parcel.readByte() != 0;
            }

            @Override // p0.a, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                parcel.writeParcelable(this.f12620h, i10);
                parcel.writeByte(this.f4974j ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.f4975k ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.f4976l);
                parcel.writeFloat(this.f4977m);
                parcel.writeByte(this.f4978n ? (byte) 1 : (byte) 0);
            }

            public b(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends q5.c {
        public ScrollingViewBehavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean b(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            int iG;
            CoordinatorLayout.c cVar = ((CoordinatorLayout.f) view2.getLayoutParams()).f1744a;
            if (cVar instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) cVar).f4967j + this.f13637e;
                if (this.f13638f == 0) {
                    iG = 0;
                } else {
                    float fW = w(view2);
                    int i10 = this.f13638f;
                    iG = o.g((int) (fW * i10), 0, i10);
                }
                int i11 = bottom - iG;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                view.offsetTopAndBottom(i11);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.f4959r) {
                    appBarLayout.d(appBarLayout.e(view));
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final void e(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                a0.m(f.a.f9556f.a(), coordinatorLayout);
                a0.j(coordinatorLayout, 0);
                a0.m(f.a.f9557g.a(), coordinatorLayout);
                a0.j(coordinatorLayout, 0);
                a0.p(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            AppBarLayout appBarLayoutV = v(coordinatorLayout.e(view));
            if (appBarLayoutV != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f13635c;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutV.c(false, !z10, true);
                    return true;
                }
            }
            return false;
        }

        @Override // q5.c
        public final float w(View view) {
            int i10;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.c cVar = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).f1744a;
                int iY = cVar instanceof BaseBehavior ? ((BaseBehavior) cVar).y() : 0;
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iY > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iY / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // q5.c
        public final int x(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : view.getMeasuredHeight();
        }

        @Override // q5.c
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public final AppBarLayout v(List<View> list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            this.f13638f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static abstract class a {
    }

    public static class b extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Rect f4979a = new Rect();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f4980b = new Rect();
    }

    public interface d {
        void a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.appBarLayoutStyle;
        int i11 = f4948z;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        this.f4950i = -1;
        this.f4951j = -1;
        this.f4952k = -1;
        this.f4954m = 0;
        this.f4963v = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i12 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayD = n.d(context3, attributeSet, q5.f.f13646a, i10, i11, new int[0]);
        try {
            if (typedArrayD.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayD.getResourceId(0, 0)));
            }
            typedArrayD.recycle();
            TypedArray typedArrayD2 = n.d(context2, attributeSet, R.styleable.AppBarLayout, i10, i11, new int[0]);
            Drawable drawable = typedArrayD2.getDrawable(R.styleable.AppBarLayout_android_background);
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.q(this, drawable);
            if (getBackground() instanceof ColorDrawable) {
                ColorDrawable colorDrawable = (ColorDrawable) getBackground();
                m6.f fVar = new m6.f();
                fVar.o(ColorStateList.valueOf(colorDrawable.getColor()));
                fVar.m(context2);
                a0.d.q(this, fVar);
            }
            int i13 = R.styleable.AppBarLayout_expanded;
            if (typedArrayD2.hasValue(i13)) {
                c(typedArrayD2.getBoolean(i13, false), false, false);
            }
            int i14 = R.styleable.AppBarLayout_elevation;
            if (typedArrayD2.hasValue(i14)) {
                q5.f.a(this, typedArrayD2.getDimensionPixelSize(i14, 0));
            }
            if (i12 >= 26) {
                int i15 = R.styleable.AppBarLayout_android_keyboardNavigationCluster;
                if (typedArrayD2.hasValue(i15)) {
                    setKeyboardNavigationCluster(typedArrayD2.getBoolean(i15, false));
                }
                int i16 = R.styleable.AppBarLayout_android_touchscreenBlocksFocus;
                if (typedArrayD2.hasValue(i16)) {
                    setTouchscreenBlocksFocus(typedArrayD2.getBoolean(i16, false));
                }
            }
            this.f4959r = typedArrayD2.getBoolean(R.styleable.AppBarLayout_liftOnScroll, false);
            this.f4960s = typedArrayD2.getResourceId(R.styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
            setStatusBarForeground(typedArrayD2.getDrawable(R.styleable.AppBarLayout_statusBarForeground));
            typedArrayD2.recycle();
            a0.i.u(this, new q5.a(this));
        } catch (Throwable th) {
            typedArrayD.recycle();
            throw th;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new c((LinearLayout.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    public final void b() {
        Behavior behavior = this.f4966y;
        BaseBehavior.b bVarH = (behavior == null || this.f4950i == -1 || this.f4954m != 0) ? null : behavior.H(p0.a.f12619i, this);
        this.f4950i = -1;
        this.f4951j = -1;
        this.f4952k = -1;
        if (bVarH != null) {
            Behavior behavior2 = this.f4966y;
            if (behavior2.f4970m != null) {
                return;
            }
            behavior2.f4970m = bVarH;
        }
    }

    public final void c(boolean z10, boolean z11, boolean z12) {
        this.f4954m = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    public final boolean d(boolean z10) {
        if (!(!this.f4956o) || this.f4958q == z10) {
            return false;
        }
        this.f4958q = z10;
        refreshDrawableState();
        if (!this.f4959r || !(getBackground() instanceof m6.f)) {
            return true;
        }
        m6.f fVar = (m6.f) getBackground();
        float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
        float f10 = z10 ? 0.0f : dimension;
        if (!z10) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.f4962u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, dimension);
        this.f4962u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
        this.f4962u.setInterpolator(p5.a.f13252a);
        this.f4962u.addUpdateListener(new com.google.android.material.appbar.a(this, fVar));
        this.f4962u.start();
        return true;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f4965x != null && getTopInset() > 0) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.f4949h);
            this.f4965x.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f4965x;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final boolean e(View view) {
        int i10;
        if (this.f4961t == null && (i10 = this.f4960s) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i10) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f4960s);
            }
            if (viewFindViewById != null) {
                this.f4961t = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.f4961t;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public final boolean f() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8) {
            return false;
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        return !a0.d.b(childAt);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.f4966y = behavior;
        return behavior;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    public int getDownNestedPreScrollRange() {
        int iMin;
        int iD;
        int i10 = this.f4951j;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = cVar.f4981a;
            if ((i12 & 5) != 5) {
                if (i11 > 0) {
                    break;
                }
            } else {
                int i13 = ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
                if ((i12 & 8) != 0) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    iD = a0.d.d(childAt);
                } else {
                    if ((i12 & 2) != 0) {
                        WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                        iD = measuredHeight - a0.d.d(childAt);
                    } else {
                        iMin = i13 + measuredHeight;
                    }
                    if (childCount == 0) {
                        WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                        if (a0.d.b(childAt)) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                    }
                    i11 += iMin;
                }
                iMin = iD + i13;
                if (childCount == 0) {
                    WeakHashMap<View, g0> weakHashMap4 = a0.f9147a;
                    if (a0.d.b(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                }
                i11 += iMin;
            }
        }
        int iMax = Math.max(0, i11);
        this.f4951j = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i10 = this.f4952k;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int iD = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin + childAt.getMeasuredHeight();
            int i12 = cVar.f4981a;
            if ((i12 & 1) == 0) {
                break;
            }
            iD += measuredHeight;
            if ((i12 & 2) != 0) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                iD -= a0.d.d(childAt);
                break;
            }
        }
        int iMax = Math.max(0, iD);
        this.f4952k = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f4960s;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iD = a0.d.d(this);
        if (iD == 0) {
            int childCount = getChildCount();
            iD = childCount >= 1 ? a0.d.d(getChildAt(childCount - 1)) : 0;
            if (iD == 0) {
                return getHeight() / 3;
            }
        }
        return (iD * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f4954m;
    }

    public Drawable getStatusBarForeground() {
        return this.f4965x;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        l0 l0Var = this.f4955n;
        if (l0Var != null) {
            return l0Var.f();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.f4950i;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int iD = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = cVar.f4981a;
            if ((i12 & 1) == 0) {
                break;
            }
            int topInset = measuredHeight + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin + iD;
            if (i11 == 0) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                if (a0.d.b(childAt)) {
                    topInset -= getTopInset();
                }
            }
            iD = topInset;
            if ((i12 & 2) != 0) {
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                iD -= a0.d.d(childAt);
                break;
            }
        }
        int iMax = Math.max(0, iD);
        this.f4950i = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o.J(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        if (this.f4964w == null) {
            this.f4964w = new int[4];
        }
        int[] iArr = this.f4964w;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z10 = this.f4957p;
        int i11 = R.attr.state_liftable;
        if (!z10) {
            i11 = -i11;
        }
        iArr[0] = i11;
        iArr[1] = (z10 && this.f4958q) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i12 = R.attr.state_collapsible;
        if (!z10) {
            i12 = -i12;
        }
        iArr[2] = i12;
        iArr[3] = (z10 && this.f4958q) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference<View> weakReference = this.f4961t;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f4961t = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        super.onLayout(z10, i10, i11, i12, i13);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        boolean z12 = true;
        if (a0.d.b(this) && f()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                getChildAt(childCount).offsetTopAndBottom(topInset);
            }
        }
        b();
        this.f4953l = false;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            if (((c) getChildAt(i14).getLayoutParams()).f4983c != null) {
                this.f4953l = true;
                break;
            }
        }
        Drawable drawable = this.f4965x;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f4956o) {
            return;
        }
        if (!this.f4959r) {
            int childCount3 = getChildCount();
            int i15 = 0;
            while (true) {
                if (i15 >= childCount3) {
                    z11 = false;
                    break;
                }
                int i16 = ((c) getChildAt(i15).getLayoutParams()).f4981a;
                if ((i16 & 1) == 1 && (i16 & 10) != 0) {
                    z11 = true;
                    break;
                }
                i15++;
            }
            if (!z11) {
                z12 = false;
            }
        }
        if (this.f4957p != z12) {
            this.f4957p = z12;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.d.b(this) && f()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = o.g(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i11));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        b();
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        o.I(this, f10);
    }

    public void setExpanded(boolean z10) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        c(z10, a0.g.c(this), true);
    }

    public void setLiftOnScroll(boolean z10) {
        this.f4959r = z10;
    }

    public void setLiftOnScrollTargetViewId(int i10) {
        this.f4960s = i10;
        WeakReference<View> weakReference = this.f4961t;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f4961t = null;
    }

    public void setLiftableOverrideEnabled(boolean z10) {
        this.f4956o = z10;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.f4965x;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f4965x = drawableMutate;
            boolean z10 = false;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f4965x.setState(getDrawableState());
                }
                Drawable drawable3 = this.f4965x;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                b0.a.c.b(drawable3, a0.e.d(this));
                this.f4965x.setVisible(getVisibility() == 0, false);
                this.f4965x.setCallback(this);
            }
            if (this.f4965x != null && getTopInset() > 0) {
                z10 = true;
            }
            setWillNotDraw(true ^ z10);
            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
            a0.d.k(this);
        }
    }

    public void setStatusBarForegroundColor(int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    public void setStatusBarForegroundResource(int i10) {
        setStatusBarForeground(g.a.b(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f10) {
        q5.f.a(this, f10);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f4965x;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f4965x;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public static class c extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f4981a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public a f4982b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Interpolator f4983c;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4981a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.f4981a = typedArrayObtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            this.f4982b = typedArrayObtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0) != 1 ? null : new b();
            int i10 = R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                this.f4983c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i10, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public c() {
            super(-1, -2);
            this.f4981a = 1;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4981a = 1;
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f4981a = 1;
        }

        public c(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4981a = 1;
        }
    }
}
