package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.appcompat.app.AlertController;
import androidx.recyclerview.widget.s;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import j0.a0;
import j0.g0;
import j0.l;
import j0.m;
import j0.o;
import j0.p;
import java.util.ArrayList;
import java.util.WeakHashMap;
import k0.f;
import k0.h;
import n0.e;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements o, l {
    public static final a H = new a();
    public static final int[] I = {R.attr.fillViewport};
    public int A;
    public int B;
    public d C;
    public final p D;
    public final m E;
    public float F;
    public c G;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f1780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f1781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public OverScroller f1782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public EdgeEffect f1783k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public EdgeEffect f1784l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1785m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1786n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1787o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f1788p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1789q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public VelocityTracker f1790r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1791s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1792t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1793u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1794v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1795w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1796x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f1797y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int[] f1798z;

    public static class a extends j0.a {
        @Override // j0.a
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            h.c(accessibilityEvent, nestedScrollView.getScrollX());
            h.d(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // j0.a
        public final void d(View view, f fVar) {
            int scrollRange;
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            fVar.n(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            fVar.w(true);
            if (nestedScrollView.getScrollY() > 0) {
                fVar.b(f.a.f9557g);
                fVar.b(f.a.f9561k);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                fVar.b(f.a.f9556f);
                fVar.b(f.a.f9562l);
            }
        }

        @Override // j0.a
        public final boolean g(View view, int i10, Bundle bundle) {
            if (super.g(view, i10, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            int height = nestedScrollView.getHeight();
            Rect rect = new Rect();
            if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                height = rect.height();
            }
            if (i10 != 4096) {
                if (i10 == 8192 || i10 == 16908344) {
                    int iMax = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (iMax == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.z(0 - nestedScrollView.getScrollX(), iMax - nestedScrollView.getScrollY(), true);
                    return true;
                }
                if (i10 != 16908346) {
                    return false;
                }
            }
            int iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (iMin == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.z(0 - nestedScrollView.getScrollX(), iMin - nestedScrollView.getScrollY(), true);
            return true;
        }
    }

    public static class b {
        public static boolean a(ViewGroup viewGroup) {
            return viewGroup.getClipToPadding();
        }
    }

    public interface c {
    }

    public static class d extends View.BaseSavedState {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1799h;

        public class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("HorizontalScrollView.SavedState{");
            sbC.append(Integer.toHexString(System.identityHashCode(this)));
            sbC.append(" scrollPosition=");
            return s.a(sbC, this.f1799h, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f1799h);
        }

        public d(Parcel parcel) {
            super(parcel);
            this.f1799h = parcel.readInt();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NestedScrollView(Context context, AttributeSet attributeSet) {
        int i10 = androidx.core.R.attr.nestedScrollViewStyle;
        super(context, attributeSet, i10);
        this.f1781i = new Rect();
        this.f1786n = true;
        this.f1787o = false;
        this.f1788p = null;
        this.f1789q = false;
        this.f1792t = true;
        this.f1796x = -1;
        this.f1797y = new int[2];
        this.f1798z = new int[2];
        int i11 = Build.VERSION.SDK_INT;
        this.f1783k = i11 >= 31 ? e.b.a(context, attributeSet) : new EdgeEffect(context);
        this.f1784l = i11 >= 31 ? e.b.a(context, attributeSet) : new EdgeEffect(context);
        this.f1782j = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1793u = viewConfiguration.getScaledTouchSlop();
        this.f1794v = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1795w = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I, i10, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.D = new p();
        this.E = new m(this);
        setNestedScrollingEnabled(true);
        a0.p(this, H);
    }

    public static int c(int i10, int i11, int i12) {
        if (i11 >= i12 || i10 < 0) {
            return 0;
        }
        return i11 + i10 > i12 ? i12 - i11 : i10;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.F == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.F = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.F;
    }

    public static boolean q(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && q((View) parent, view2);
    }

    public final boolean A(int i10, int i11) {
        return this.E.h(i10, i11);
    }

    public final boolean B(MotionEvent motionEvent) {
        boolean z10;
        if (e.a(this.f1783k) != 0.0f) {
            e.b(this.f1783k, 0.0f, motionEvent.getX() / getWidth());
            z10 = true;
        } else {
            z10 = false;
        }
        if (e.a(this.f1784l) == 0.0f) {
            return z10;
        }
        e.b(this.f1784l, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void C(int i10) {
        this.E.i(i10);
    }

    public final void a() {
        this.f1782j.abortAnimation();
        C(1);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public final boolean b(int i10) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !r(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i10 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i10 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i10 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            f(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.f1781i);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.f1781i);
            f(d(this.f1781i));
            viewFindNextFocus.requestFocus(i10);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && (!r(viewFindFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public final void computeScroll() {
        if (this.f1782j.isFinished()) {
            return;
        }
        this.f1782j.computeScrollOffset();
        int currY = this.f1782j.getCurrY();
        int i10 = currY - this.B;
        this.B = currY;
        int[] iArr = this.f1798z;
        boolean z10 = false;
        iArr[1] = 0;
        e(0, i10, iArr, null, 1);
        int i11 = i10 - this.f1798z[1];
        int scrollRange = getScrollRange();
        if (i11 != 0) {
            int scrollY = getScrollY();
            u(i11, getScrollX(), scrollY, scrollRange);
            int scrollY2 = getScrollY() - scrollY;
            int i12 = i11 - scrollY2;
            int[] iArr2 = this.f1798z;
            iArr2[1] = 0;
            this.E.e(0, scrollY2, 0, i12, this.f1797y, 1, iArr2);
            i11 = i12 - this.f1798z[1];
        }
        if (i11 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z10 = true;
            }
            if (z10) {
                if (i11 < 0) {
                    if (this.f1783k.isFinished()) {
                        this.f1783k.onAbsorb((int) this.f1782j.getCurrVelocity());
                    }
                } else if (this.f1784l.isFinished()) {
                    this.f1784l.onAbsorb((int) this.f1782j.getCurrVelocity());
                }
            }
            a();
        }
        if (this.f1782j.isFinished()) {
            C(1);
        } else {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.k(this);
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    public final int d(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i10 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i11 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i10 - verticalFadingEdgeLength : i10;
        int i12 = rect.bottom;
        if (i12 > i11 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i11) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i10);
        }
        if (rect.top >= scrollY || i12 >= i11) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i11 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || g(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.E.a(f10, f11, z10);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f10, float f11) {
        return this.E.b(f10, f11);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return e(i10, i11, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.E.e(i10, i11, i12, i13, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        int paddingLeft2 = 0;
        if (!this.f1783k.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (b.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft() + 0;
            } else {
                paddingLeft = 0;
            }
            if (b.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            this.f1783k.setSize(width, height);
            if (this.f1783k.draw(canvas)) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.k(this);
            }
            canvas.restoreToCount(iSave);
        }
        if (this.f1784l.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (b.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = 0 + getPaddingLeft();
        }
        if (b.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        this.f1784l.setSize(width2, height2);
        if (this.f1784l.draw(canvas)) {
            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
            a0.d.k(this);
        }
        canvas.restoreToCount(iSave2);
    }

    public final boolean e(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return this.E.c(i10, i11, iArr, iArr2, i12);
    }

    public final void f(int i10) {
        if (i10 != 0) {
            if (this.f1792t) {
                z(0, i10, false);
            } else {
                scrollBy(0, i10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0033  */
    public final boolean g(KeyEvent keyEvent) {
        boolean z10;
        this.f1781i.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (!z10) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            return !keyEvent.isAltPressed() ? b(33) : l(33);
        }
        if (keyCode == 20) {
            return !keyEvent.isAltPressed() ? b(130) : l(130);
        }
        if (keyCode != 62) {
            return false;
        }
        int i10 = keyEvent.isShiftPressed() ? 33 : 130;
        boolean z11 = i10 == 130;
        int height = getHeight();
        if (z11) {
            this.f1781i.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt2 = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt2.getBottom() + ((FrameLayout.LayoutParams) childAt2.getLayoutParams()).bottomMargin;
                Rect rect = this.f1781i;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            this.f1781i.top = getScrollY() - height;
            Rect rect2 = this.f1781i;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f1781i;
        int i11 = rect3.top;
        int i12 = height + i11;
        rect3.bottom = i12;
        x(i10, i11, i12);
        return false;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        p pVar = this.D;
        return pVar.f9232b | pVar.f9231a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // j0.n
    public final void h(View view, View view2, int i10, int i11) {
        this.D.a(i10, i11);
        A(2, i11);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return p(0);
    }

    @Override // j0.n
    public final void i(View view, int i10) {
        p pVar = this.D;
        if (i10 == 1) {
            pVar.f9232b = 0;
        } else {
            pVar.f9231a = 0;
        }
        C(i10);
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.E.f9228d;
    }

    @Override // j0.n
    public final void j(View view, int i10, int i11, int[] iArr, int i12) {
        e(i10, i11, iArr, null, i12);
    }

    public final void k(int i10) {
        if (getChildCount() > 0) {
            this.f1782j.fling(getScrollX(), getScrollY(), 0, i10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            w(true);
        }
    }

    public final boolean l(int i10) {
        int childCount;
        boolean z10 = i10 == 130;
        int height = getHeight();
        Rect rect = this.f1781i;
        rect.top = 0;
        rect.bottom = height;
        if (z10 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1781i.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            Rect rect2 = this.f1781i;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f1781i;
        return x(i10, rect3.top, rect3.bottom);
    }

    @Override // j0.o
    public final void m(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        s(i13, i14, iArr);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // j0.n
    public final void n(View view, int i10, int i11, int i12, int i13, int i14) {
        s(i13, i14, null);
    }

    @Override // j0.n
    public final boolean o(View view, View view2, int i10, int i11) {
        return (i10 & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1787o = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        boolean z10;
        int i10 = 0;
        if (motionEvent.getAction() == 8 && !this.f1789q) {
            if (androidx.lifecycle.o.u(motionEvent, 2)) {
                axisValue = motionEvent.getAxisValue(9);
            } else {
                axisValue = androidx.lifecycle.o.u(motionEvent, 4194304) ? motionEvent.getAxisValue(26) : 0.0f;
            }
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i11 = scrollY - verticalScrollFactorCompat;
                if (i11 < 0) {
                    int overScrollMode = getOverScrollMode();
                    if ((overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !androidx.lifecycle.o.u(motionEvent, 8194)) {
                        e.b(this.f1783k, (-i11) / getHeight(), 0.5f);
                        this.f1783k.onRelease();
                        invalidate();
                        z10 = 1;
                    } else {
                        z10 = 0;
                    }
                } else if (i11 > scrollRange) {
                    int overScrollMode2 = getOverScrollMode();
                    if ((overScrollMode2 == 0 || (overScrollMode2 == 1 && getScrollRange() > 0)) && !androidx.lifecycle.o.u(motionEvent, 8194)) {
                        e.b(this.f1784l, (i11 - scrollRange) / getHeight(), 0.5f);
                        this.f1784l.onRelease();
                        invalidate();
                        i10 = 1;
                    }
                    z10 = i10;
                    i10 = scrollRange;
                } else {
                    z10 = 0;
                    i10 = i11;
                }
                if (i10 == scrollY) {
                    return z10;
                }
                super.scrollTo(getScrollX(), i10);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0085  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e1  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        int action = motionEvent.getAction();
        boolean z11 = true;
        if (action == 2 && this.f1789q) {
            return true;
        }
        int i10 = action & 255;
        if (i10 == 0) {
            int y7 = (int) motionEvent.getY();
            int x10 = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y7 < childAt.getTop() - scrollY || y7 >= childAt.getBottom() - scrollY || x10 < childAt.getLeft() || x10 >= childAt.getRight()) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            } else {
                z10 = false;
            }
            if (z10) {
                this.f1785m = y7;
                this.f1796x = motionEvent.getPointerId(0);
                VelocityTracker velocityTracker = this.f1790r;
                if (velocityTracker == null) {
                    this.f1790r = VelocityTracker.obtain();
                } else {
                    velocityTracker.clear();
                }
                this.f1790r.addMovement(motionEvent);
                this.f1782j.computeScrollOffset();
                if (!B(motionEvent) && this.f1782j.isFinished()) {
                    z11 = false;
                }
                this.f1789q = z11;
                A(2, 0);
            } else {
                if (!B(motionEvent) && this.f1782j.isFinished()) {
                    z11 = false;
                }
                this.f1789q = z11;
                v();
            }
        } else if (i10 == 1) {
            this.f1789q = false;
            this.f1796x = -1;
            v();
            if (this.f1782j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.k(this);
            }
            C(0);
        } else if (i10 == 2) {
            int i11 = this.f1796x;
            if (i11 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i11);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + i11 + " in onInterceptTouchEvent");
                } else {
                    int y10 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y10 - this.f1785m) > this.f1793u && (2 & getNestedScrollAxes()) == 0) {
                        this.f1789q = true;
                        this.f1785m = y10;
                        if (this.f1790r == null) {
                            this.f1790r = VelocityTracker.obtain();
                        }
                        this.f1790r.addMovement(motionEvent);
                        this.A = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i10 == 3) {
            this.f1789q = false;
            this.f1796x = -1;
            v();
            if (this.f1782j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                a0.d.k(this);
            }
            C(0);
        } else if (i10 == 6) {
            t(motionEvent);
        }
        return this.f1789q;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        int measuredHeight = 0;
        this.f1786n = false;
        View view = this.f1788p;
        if (view != null && q(view, this)) {
            y(this.f1788p);
        }
        this.f1788p = null;
        if (!this.f1787o) {
            if (this.C != null) {
                scrollTo(getScrollX(), this.C.f1799h);
                this.C = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iC = c(scrollY, paddingTop, measuredHeight);
            if (iC != scrollY) {
                scrollTo(getScrollX(), iC);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1787o = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1791s && View.MeasureSpec.getMode(i11) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (z10) {
            return false;
        }
        dispatchNestedFling(0.0f, f11, true);
        k((int) f11);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        return dispatchNestedPreFling(f10, f11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        e(i10, i11, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        s(i13, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i10) {
        this.D.a(i10, 0);
        A(2, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        super.scrollTo(i10, i11);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (i10 == 2) {
            i10 = 130;
        } else if (i10 == 1) {
            i10 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i10) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i10);
        if (viewFindNextFocus == null || (true ^ r(viewFindNextFocus, 0, getHeight()))) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i10, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        this.C = dVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f1799h = getScrollY();
        return dVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        c cVar = this.G;
        if (cVar != null) {
            f.b bVar = (f.b) cVar;
            AlertController.c(this, bVar.f6801a, bVar.f6802b);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !r(viewFindFocus, 0, i13)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.f1781i);
        offsetDescendantRectToMyCoords(viewFindFocus, this.f1781i);
        f(d(this.f1781i));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i10) {
        return (i10 & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        this.D.f9231a = 0;
        C(0);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x027d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0285  */
    /* JADX WARN: Code duplicated, block: B:46:0x0127  */
    /* JADX WARN: Code duplicated, block: B:53:0x013d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0144  */
    /* JADX WARN: Code duplicated, block: B:57:0x0148  */
    /* JADX WARN: Code duplicated, block: B:60:0x0150  */
    /* JADX WARN: Code duplicated, block: B:62:0x015f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0189  */
    /* JADX WARN: Code duplicated, block: B:75:0x019c  */
    /* JADX WARN: Code duplicated, block: B:78:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:80:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:86:0x021a  */
    /* JADX WARN: Code duplicated, block: B:92:0x0235  */
    /* JADX WARN: Code duplicated, block: B:94:0x0238  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z10;
        int i10;
        float f10;
        float fB;
        int iRound;
        int i11;
        int i12;
        int scrollY;
        int scrollRange;
        int overScrollMode;
        boolean z11;
        boolean z12;
        int i13;
        int i14;
        ViewParent parent2;
        if (this.f1790r == null) {
            this.f1790r = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z13 = false;
        if (actionMasked == 0) {
            this.A = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f11 = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.A);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1790r;
                velocityTracker.computeCurrentVelocity(1000, this.f1795w);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1796x);
                if (Math.abs(yVelocity) >= this.f1794v) {
                    if (e.a(this.f1783k) != 0.0f) {
                        this.f1783k.onAbsorb(yVelocity);
                    } else {
                        if (e.a(this.f1784l) != 0.0f) {
                            this.f1784l.onAbsorb(-yVelocity);
                        } else {
                            z10 = false;
                        }
                        if (!z10) {
                            i10 = -yVelocity;
                            f10 = i10;
                            if (!dispatchNestedPreFling(0.0f, f10)) {
                                dispatchNestedFling(0.0f, f10, true);
                                k(i10);
                            }
                        }
                    }
                    z10 = true;
                    if (!z10) {
                        i10 = -yVelocity;
                        f10 = i10;
                        if (!dispatchNestedPreFling(0.0f, f10)) {
                            dispatchNestedFling(0.0f, f10, true);
                            k(i10);
                        }
                    }
                } else if (this.f1782j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    a0.d.k(this);
                }
                this.f1796x = -1;
                this.f1789q = false;
                v();
                C(0);
                this.f1783k.onRelease();
                this.f1784l.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f1796x);
                if (iFindPointerIndex == -1) {
                    StringBuilder sbC = a0.b.c("Invalid pointerId=");
                    sbC.append(this.f1796x);
                    sbC.append(" in onTouchEvent");
                    Log.e("NestedScrollView", sbC.toString());
                } else {
                    int y7 = (int) motionEvent.getY(iFindPointerIndex);
                    int i15 = this.f1785m - y7;
                    float x10 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i15 / getHeight();
                    if (e.a(this.f1783k) != 0.0f) {
                        fB = -e.b(this.f1783k, -height, x10);
                        if (e.a(this.f1783k) == 0.0f) {
                            this.f1783k.onRelease();
                        }
                    } else if (e.a(this.f1784l) != 0.0f) {
                        fB = e.b(this.f1784l, height, 1.0f - x10);
                        if (e.a(this.f1784l) == 0.0f) {
                            this.f1784l.onRelease();
                        }
                    } else {
                        iRound = Math.round(f11 * getHeight());
                        if (iRound != 0) {
                            invalidate();
                        }
                        i11 = i15 - iRound;
                        if (!this.f1789q && Math.abs(i11) > this.f1793u) {
                            parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f1789q = true;
                            if (i11 > 0) {
                                i11 -= this.f1793u;
                            } else {
                                i11 += this.f1793u;
                            }
                        }
                        i12 = i11;
                        if (this.f1789q) {
                            if (e(0, i12, this.f1798z, this.f1797y, 0)) {
                                i12 -= this.f1798z[1];
                                this.A += this.f1797y[1];
                            }
                            this.f1785m = y7 - this.f1797y[1];
                            scrollY = getScrollY();
                            scrollRange = getScrollRange();
                            overScrollMode = getOverScrollMode();
                            if (overScrollMode != 0 || (overScrollMode == 1 && scrollRange > 0)) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (u(i12, 0, getScrollY(), scrollRange) || p(0)) {
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            int scrollY2 = getScrollY() - scrollY;
                            int[] iArr = this.f1798z;
                            iArr[1] = 0;
                            this.E.e(0, scrollY2, 0, i12 - scrollY2, this.f1797y, 0, iArr);
                            int i16 = this.f1785m;
                            int[] iArr2 = this.f1797y;
                            this.f1785m = i16 - iArr2[1];
                            this.A += iArr2[1];
                            if (z11) {
                                i13 = i12 - this.f1798z[1];
                                i14 = scrollY + i13;
                                if (i14 < 0) {
                                    e.b(this.f1783k, (-i13) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                    if (!this.f1784l.isFinished()) {
                                        this.f1784l.onRelease();
                                    }
                                } else if (i14 > scrollRange) {
                                    e.b(this.f1784l, i13 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                    if (!this.f1783k.isFinished()) {
                                        this.f1783k.onRelease();
                                    }
                                }
                                if (this.f1783k.isFinished() || !this.f1784l.isFinished()) {
                                    WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                                    a0.d.k(this);
                                } else {
                                    z13 = z12;
                                }
                            } else {
                                z13 = z12;
                            }
                            if (z13) {
                                this.f1790r.clear();
                            }
                        }
                    }
                    f11 = fB;
                    iRound = Math.round(f11 * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    i11 = i15 - iRound;
                    if (!this.f1789q) {
                        parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1789q = true;
                        if (i11 > 0) {
                            i11 -= this.f1793u;
                        } else {
                            i11 += this.f1793u;
                        }
                    }
                    i12 = i11;
                    if (this.f1789q) {
                        if (e(0, i12, this.f1798z, this.f1797y, 0)) {
                            i12 -= this.f1798z[1];
                            this.A += this.f1797y[1];
                        }
                        this.f1785m = y7 - this.f1797y[1];
                        scrollY = getScrollY();
                        scrollRange = getScrollRange();
                        overScrollMode = getOverScrollMode();
                        if (overScrollMode != 0) {
                            z11 = true;
                        } else {
                            z11 = true;
                        }
                        if (u(i12, 0, getScrollY(), scrollRange)) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        int scrollY3 = getScrollY() - scrollY;
                        int[] iArr3 = this.f1798z;
                        iArr3[1] = 0;
                        this.E.e(0, scrollY3, 0, i12 - scrollY3, this.f1797y, 0, iArr3);
                        int i17 = this.f1785m;
                        int[] iArr4 = this.f1797y;
                        this.f1785m = i17 - iArr4[1];
                        this.A += iArr4[1];
                        if (z11) {
                            z13 = z12;
                        } else {
                            i13 = i12 - this.f1798z[1];
                            i14 = scrollY + i13;
                            if (i14 < 0) {
                                e.b(this.f1783k, (-i13) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                if (!this.f1784l.isFinished()) {
                                    this.f1784l.onRelease();
                                }
                            } else if (i14 > scrollRange) {
                                e.b(this.f1784l, i13 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                if (!this.f1783k.isFinished()) {
                                    this.f1783k.onRelease();
                                }
                            }
                            if (this.f1783k.isFinished()) {
                            }
                            WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                            a0.d.k(this);
                        }
                        if (z13) {
                            this.f1790r.clear();
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1789q && getChildCount() > 0 && this.f1782j.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap<View, g0> weakHashMap4 = a0.f9147a;
                    a0.d.k(this);
                }
                this.f1796x = -1;
                this.f1789q = false;
                v();
                C(0);
                this.f1783k.onRelease();
                this.f1784l.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1785m = (int) motionEvent.getY(actionIndex);
                this.f1796x = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                t(motionEvent);
                this.f1785m = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1796x));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f1789q && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1782j.isFinished()) {
                a();
            }
            this.f1785m = (int) motionEvent.getY();
            this.f1796x = motionEvent.getPointerId(0);
            A(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f1790r;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final boolean p(int i10) {
        return this.E.g(i10);
    }

    public final boolean r(View view, int i10, int i11) {
        view.getDrawingRect(this.f1781i);
        offsetDescendantRectToMyCoords(view, this.f1781i);
        return this.f1781i.bottom + i10 >= getScrollY() && this.f1781i.top - i10 <= getScrollY() + i11;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f1786n) {
            this.f1788p = view2;
        } else {
            y(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iD = d(rect);
        boolean z11 = iD != 0;
        if (z11) {
            if (z10) {
                scrollBy(0, iD);
            } else {
                z(0, iD, false);
            }
        }
        return z11;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z10) {
        if (z10) {
            v();
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f1786n = true;
        super.requestLayout();
    }

    public final void s(int i10, int i11, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i10);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.E.d(scrollY2, i10 - scrollY2, i11, iArr);
    }

    @Override // android.view.View
    public final void scrollTo(int i10, int i11) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int iC = c(i10, width, width2);
            int iC2 = c(i11, height, height2);
            if (iC == getScrollX() && iC2 == getScrollY()) {
                return;
            }
            super.scrollTo(iC, iC2);
        }
    }

    public void setFillViewport(boolean z10) {
        if (z10 != this.f1791s) {
            this.f1791s = z10;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        m mVar = this.E;
        if (mVar.f9228d) {
            View view = mVar.f9227c;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.i.z(view);
        }
        mVar.f9228d = z10;
    }

    public void setOnScrollChangeListener(c cVar) {
        this.G = cVar;
    }

    public void setSmoothScrollingEnabled(boolean z10) {
        this.f1792t = z10;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i10) {
        return A(i10, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        C(0);
    }

    public final void t(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1796x) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.f1785m = (int) motionEvent.getY(i10);
            this.f1796x = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.f1790r;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean u(int i10, int i11, int i12, int i13) {
        boolean z10;
        boolean z11;
        getOverScrollMode();
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i14 = i11 + 0;
        int i15 = i12 + i10;
        int i16 = i13 + 0;
        if (i14 <= 0 && i14 >= 0) {
            z10 = false;
        } else {
            i14 = 0;
            z10 = true;
        }
        if (i15 <= i16) {
            if (i15 < 0) {
                i15 = 0;
            } else {
                z11 = false;
            }
            if (z11 && !p(1)) {
                this.f1782j.springBack(i14, i15, 0, 0, 0, getScrollRange());
            }
            onOverScrolled(i14, i15, z10, z11);
            return z10 || z11;
        }
        i15 = i16;
        z11 = true;
        if (z11) {
            this.f1782j.springBack(i14, i15, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i14, i15, z10, z11);
        if (z10) {
            return true;
        }
    }

    public final void v() {
        VelocityTracker velocityTracker = this.f1790r;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1790r = null;
        }
    }

    public final void w(boolean z10) {
        if (z10) {
            A(2, 1);
        } else {
            C(1);
        }
        this.B = getScrollY();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.k(this);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0068  */
    public final boolean x(int i10, int i11, int i12) {
        boolean z10;
        int height = getHeight();
        int scrollY = getScrollY();
        int i13 = height + scrollY;
        boolean z11 = i10 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z12 = false;
        for (int i14 = 0; i14 < size; i14++) {
            View view2 = focusables.get(i14);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i11 < bottom && top < i12) {
                boolean z13 = i11 < top && bottom < i12;
                if (view == null) {
                    view = view2;
                    z12 = z13;
                } else {
                    boolean z14 = (z11 && top < view.getTop()) || (!z11 && bottom > view.getBottom());
                    if (z12) {
                        if (z13 && z14) {
                            view = view2;
                        }
                    } else if (z13) {
                        view = view2;
                        z12 = true;
                    } else if (z14) {
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i11 < scrollY || i12 > i13) {
            f(z11 ? i11 - scrollY : i12 - i13);
            z10 = true;
        } else {
            z10 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i10);
        }
        return z10;
    }

    public final void y(View view) {
        view.getDrawingRect(this.f1781i);
        offsetDescendantRectToMyCoords(view, this.f1781i);
        int iD = d(this.f1781i);
        if (iD != 0) {
            scrollBy(0, iD);
        }
    }

    public final void z(int i10, int i11, boolean z10) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1780h > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1782j.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i11 + scrollY, Math.max(0, height - height2))) - scrollY, AnalyticsEvent.EVENT_TYPE_LIMIT);
            w(z10);
        } else {
            if (!this.f1782j.isFinished()) {
                a();
            }
            scrollBy(i10, i11);
        }
        this.f1780h = AnimationUtils.currentAnimationTimeMillis();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10) {
        if (getChildCount() <= 0) {
            super.addView(view, i10);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
