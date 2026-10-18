package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.recyclerview.widget.s;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.EventManagerImpl;
import j0.a0;
import j0.g0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final int[] f2970g0 = {R.attr.layout_gravity};

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Comparator<e> f2971h0 = new a();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final b f2972i0 = new b();
    public boolean A;
    public boolean B;
    public boolean C;
    public int D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public int I;
    public float J;
    public float K;
    public float L;
    public float M;
    public int N;
    public VelocityTracker O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public EdgeEffect T;
    public EdgeEffect U;
    public boolean V;
    public boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f2973a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public List<i> f2974b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public i f2975c0;
    public List<h> d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final c f2976e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f2977f0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2978h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList<e> f2979i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e f2980j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Rect f2981k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public j1.a f2982l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2983m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2984n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Parcelable f2985o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ClassLoader f2986p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Scroller f2987q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2988r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public j f2989s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2990t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Drawable f2991u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2992v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2993w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2994x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f2995y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2996z;

    public static class a implements Comparator<e> {
        @Override // java.util.Comparator
        public final int compare(e eVar, e eVar2) {
            return eVar.f2999b - eVar2.f2999b;
        }
    }

    public static class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.q();
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f2998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3000c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f3001d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f3002e;
    }

    public class g extends j0.a {
        public g() {
        }

        @Override // j0.a
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            boolean z10;
            j1.a aVar;
            super.c(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            j1.a aVar2 = ViewPager.this.f2982l;
            if (aVar2 != null) {
                aVar2.c();
                z10 = true;
            } else {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            if (accessibilityEvent.getEventType() != 4096 || (aVar = ViewPager.this.f2982l) == null) {
                return;
            }
            aVar.c();
            accessibilityEvent.setItemCount(2);
            accessibilityEvent.setFromIndex(ViewPager.this.f2983m);
            accessibilityEvent.setToIndex(ViewPager.this.f2983m);
        }

        @Override // j0.a
        public final void d(View view, k0.f fVar) {
            boolean z10;
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            fVar.n(ViewPager.class.getName());
            j1.a aVar = ViewPager.this.f2982l;
            if (aVar != null) {
                aVar.c();
                z10 = true;
            } else {
                z10 = false;
            }
            fVar.w(z10);
            if (ViewPager.this.canScrollHorizontally(1)) {
                fVar.a(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                fVar.a(8192);
            }
        }

        @Override // j0.a
        public final boolean g(View view, int i10, Bundle bundle) {
            if (super.g(view, i10, bundle)) {
                return true;
            }
            if (i10 == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f2983m + 1);
                return true;
            }
            if (i10 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.f2983m - 1);
            return true;
        }
    }

    public interface h {
        void a(ViewPager viewPager, j1.a aVar);
    }

    public interface i {
        void D(int i10, float f10);

        void i(int i10);

        void n(int i10);
    }

    public class j extends DataSetObserver {
        public j() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ViewPager.this.e();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ViewPager.this.e();
        }
    }

    public static class k extends p0.a {
        public static final Parcelable.Creator<k> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f3010j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Parcelable f3011k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ClassLoader f3012l;

        public static class a implements Parcelable.ClassLoaderCreator<k> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final k createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new k(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new k[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new k(parcel, null);
            }
        }

        public k(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("FragmentPager.SavedState{");
            sbC.append(Integer.toHexString(System.identityHashCode(this)));
            sbC.append(" position=");
            return s.a(sbC, this.f3010j, "}");
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeInt(this.f3010j);
            parcel.writeParcelable(this.f3011k, i10);
        }

        public k(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? k.class.getClassLoader() : classLoader;
            this.f3010j = parcel.readInt();
            this.f3011k = parcel.readParcelable(classLoader);
            this.f3012l = classLoader;
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2979i = new ArrayList<>();
        this.f2980j = new e();
        this.f2981k = new Rect();
        this.f2984n = -1;
        this.f2985o = null;
        this.f2986p = null;
        this.f2994x = -3.4028235E38f;
        this.f2995y = Float.MAX_VALUE;
        this.D = 1;
        this.N = -1;
        this.V = true;
        this.f2976e0 = new c();
        this.f2977f0 = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f2987q = new Scroller(context2, f2972i0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f10 = context2.getResources().getDisplayMetrics().density;
        this.I = viewConfiguration.getScaledPagingTouchSlop();
        this.P = (int) (400.0f * f10);
        this.Q = viewConfiguration.getScaledMaximumFlingVelocity();
        this.T = new EdgeEffect(context2);
        this.U = new EdgeEffect(context2);
        this.R = (int) (25.0f * f10);
        this.S = (int) (2.0f * f10);
        this.G = (int) (f10 * 16.0f);
        a0.p(this, new g());
        if (a0.d.c(this) == 0) {
            a0.d.s(this, 1);
        }
        a0.i.u(this, new j1.b(this));
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.B != z10) {
            this.B = z10;
        }
    }

    public final e a(int i10, int i11) {
        e eVar = new e();
        eVar.f2999b = i10;
        eVar.f2998a = this.f2982l.d(this, i10);
        Objects.requireNonNull(this.f2982l);
        eVar.f3001d = 1.0f;
        if (i11 < 0 || i11 >= this.f2979i.size()) {
            this.f2979i.add(eVar);
        } else {
            this.f2979i.add(i11, eVar);
        }
        return eVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        e eVarH;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (eVarH = h(childAt)) != null && eVarH.f2999b == this.f2983m) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList<View> arrayList) {
        e eVarH;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (eVarH = h(childAt)) != null && eVarH.f2999b == this.f2983m) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        f fVar = (f) layoutParams;
        boolean z10 = fVar.f3003a | (view.getClass().getAnnotation(d.class) != null);
        fVar.f3003a = z10;
        if (!this.A) {
            super.addView(view, i10, layoutParams);
        } else {
            if (z10) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            fVar.f3006d = true;
            addViewInLayout(view, i10, layoutParams);
        }
    }

    public final boolean b(int i10) {
        boolean zRequestFocus;
        boolean z10;
        View viewFindFocus = findFocus();
        boolean zM = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    z10 = false;
                    break;
                }
                if (parent == this) {
                    z10 = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb2.append(" => ");
                    sb2.append(parent2.getClass().getSimpleName());
                }
                StringBuilder sbC = a0.b.c("arrowScroll tried to find focus based on non-child current focused view ");
                sbC.append(sb2.toString());
                Log.e("ViewPager", sbC.toString());
                viewFindFocus = null;
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            if (i10 == 17) {
                zRequestFocus = (viewFindFocus == null || g(this.f2981k, viewFindNextFocus).left < g(this.f2981k, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : m();
            } else if (i10 == 66) {
                zRequestFocus = (viewFindFocus == null || g(this.f2981k, viewFindNextFocus).left > g(this.f2981k, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : n();
            }
            zM = zRequestFocus;
        } else if (i10 == 17 || i10 == 1) {
            zM = m();
        } else if (i10 == 66 || i10 == 2) {
            zM = n();
        }
        if (zM) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i10));
        }
        return zM;
    }

    public final boolean c(View view, boolean z10, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && c(childAt, true, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i10);
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i10) {
        if (this.f2982l == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i10 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.f2994x));
        }
        return i10 > 0 && scrollX < ((int) (((float) clientWidth) * this.f2995y));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.f2988r = true;
        if (this.f2987q.isFinished() || !this.f2987q.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f2987q.getCurrX();
        int currY = this.f2987q.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!o(currX)) {
                this.f2987q.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.k(this);
    }

    public final void d(boolean z10) {
        boolean z11 = this.f2977f0 == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.f2987q.isFinished()) {
                this.f2987q.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f2987q.getCurrX();
                int currY = this.f2987q.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        o(currX);
                    }
                }
            }
        }
        this.C = false;
        for (int i10 = 0; i10 < this.f2979i.size(); i10++) {
            e eVar = this.f2979i.get(i10);
            if (eVar.f3000c) {
                eVar.f3000c = false;
                z11 = true;
            }
        }
        if (z11) {
            if (!z10) {
                this.f2976e0.run();
                return;
            }
            c cVar = this.f2976e0;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.m(this, cVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zM;
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (keyEvent.getAction() != 0) {
                zM = false;
            } else {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 21) {
                    zM = keyEvent.hasModifiers(2) ? m() : b(17);
                } else if (keyCode == 22) {
                    zM = keyEvent.hasModifiers(2) ? n() : b(66);
                } else if (keyCode != 61) {
                    zM = false;
                } else if (keyEvent.hasNoModifiers()) {
                    zM = b(2);
                } else if (keyEvent.hasModifiers(1)) {
                    zM = b(1);
                } else {
                    zM = false;
                }
            }
            if (!zM) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e eVarH;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (eVarH = h(childAt)) != null && eVarH.f2999b == this.f2983m && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:15:0x0069  */
    @Override // android.view.View
    public final void draw(Canvas canvas) {
        j1.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0) {
            if (!this.T.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f2994x * width);
                this.T.setSize(height, width);
                zDraw = false | this.T.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.U.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f2995y + 1.0f)) * width2);
                this.U.setSize(height2, width2);
                zDraw |= this.U.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else if (overScrollMode != 1 || (aVar = this.f2982l) == null) {
            this.T.finish();
            this.U.finish();
        } else {
            aVar.c();
            if (!this.T.isFinished()) {
                int iSave3 = canvas.save();
                int height3 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width3 = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height3), this.f2994x * width3);
                this.T.setSize(height3, width3);
                zDraw = false | this.T.draw(canvas);
                canvas.restoreToCount(iSave3);
            }
            if (!this.U.isFinished()) {
                int iSave4 = canvas.save();
                int width4 = getWidth();
                int height4 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f2995y + 1.0f)) * width4);
                this.U.setSize(height4, width4);
                zDraw |= this.U.draw(canvas);
                canvas.restoreToCount(iSave4);
            }
        }
        if (zDraw) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.k(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2991u;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e() {
        this.f2982l.c();
        this.f2978h = 2;
        boolean z10 = this.f2979i.size() < (this.D * 2) + 1 && this.f2979i.size() < 2;
        int i10 = this.f2983m;
        for (int i11 = 0; i11 < this.f2979i.size(); i11++) {
            e eVar = this.f2979i.get(i11);
            j1.a aVar = this.f2982l;
            Object obj = eVar.f2998a;
            Objects.requireNonNull(aVar);
        }
        Collections.sort(this.f2979i, f2971h0);
        if (z10) {
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                f fVar = (f) getChildAt(i12).getLayoutParams();
                if (!fVar.f3003a) {
                    fVar.f3005c = 0.0f;
                }
            }
            w(i10, false, true, 0);
            requestLayout();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    public final void f(int i10) {
        i iVar = this.f2975c0;
        if (iVar != null) {
            iVar.n(i10);
        }
        ?? r10 = this.f2974b0;
        if (r10 != 0) {
            int size = r10.size();
            for (int i11 = 0; i11 < size; i11++) {
                i iVar2 = (i) this.f2974b0.get(i11);
                if (iVar2 != null) {
                    iVar2.n(i10);
                }
            }
        }
    }

    public final Rect g(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public j1.a getAdapter() {
        return this.f2982l;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f2983m;
    }

    public int getOffscreenPageLimit() {
        return this.D;
    }

    public int getPageMargin() {
        return this.f2990t;
    }

    public final e h(View view) {
        for (int i10 = 0; i10 < this.f2979i.size(); i10++) {
            e eVar = this.f2979i.get(i10);
            if (this.f2982l.e(view, eVar.f2998a)) {
                return eVar;
            }
        }
        return null;
    }

    public final e i() {
        int i10;
        int clientWidth = getClientWidth();
        float f10 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f11 = clientWidth > 0 ? this.f2990t / clientWidth : 0.0f;
        e eVar = null;
        int i11 = 0;
        int i12 = -1;
        boolean z10 = true;
        float f12 = 0.0f;
        while (i11 < this.f2979i.size()) {
            e eVar2 = this.f2979i.get(i11);
            if (!z10 && eVar2.f2999b != (i10 = i12 + 1)) {
                eVar2 = this.f2980j;
                eVar2.f3002e = f10 + f12 + f11;
                eVar2.f2999b = i10;
                Objects.requireNonNull(this.f2982l);
                eVar2.f3001d = 1.0f;
                i11--;
            }
            f10 = eVar2.f3002e;
            float f13 = eVar2.f3001d + f10 + f11;
            if (!z10 && scrollX < f10) {
                return eVar;
            }
            if (scrollX < f13 || i11 == this.f2979i.size() - 1) {
                return eVar2;
            }
            i12 = eVar2.f2999b;
            f12 = eVar2.f3001d;
            i11++;
            z10 = false;
            eVar = eVar2;
        }
        return eVar;
    }

    public final e j(int i10) {
        for (int i11 = 0; i11 < this.f2979i.size(); i11++) {
            e eVar = this.f2979i.get(i11);
            if (eVar.f2999b == i10) {
                return eVar;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    public final void k(int i10, float f10, int i11) {
        int iMax;
        int width;
        int left;
        if (this.f2973a0 > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f3003a) {
                    int i13 = fVar.f3004b & 7;
                    if (i13 != 1) {
                        if (i13 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i13 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i14 = iMax;
                    width = paddingLeft;
                    paddingLeft = i14;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        i iVar = this.f2975c0;
        if (iVar != null) {
            iVar.D(i10, f10);
        }
        ?? r14 = this.f2974b0;
        if (r14 != 0) {
            int size = r14.size();
            for (int i15 = 0; i15 < size; i15++) {
                i iVar2 = (i) this.f2974b0.get(i15);
                if (iVar2 != null) {
                    iVar2.D(i10, f10);
                }
            }
        }
        this.W = true;
    }

    public final void l(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.N) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.J = motionEvent.getX(i10);
            this.N = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.O;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean m() {
        int i10 = this.f2983m;
        if (i10 <= 0) {
            return false;
        }
        this.C = false;
        w(i10 - 1, true, false, 0);
        return true;
    }

    public final boolean n() {
        j1.a aVar = this.f2982l;
        if (aVar != null) {
            int i10 = this.f2983m;
            aVar.c();
            if (i10 < 1) {
                int i11 = this.f2983m + 1;
                this.C = false;
                w(i11, true, false, 0);
                return true;
            }
        }
        return false;
    }

    public final boolean o(int i10) {
        if (this.f2979i.size() == 0) {
            if (this.V) {
                return false;
            }
            this.W = false;
            k(0, 0.0f, 0);
            if (this.W) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        e eVarI = i();
        int clientWidth = getClientWidth();
        int i11 = this.f2990t;
        int i12 = clientWidth + i11;
        float f10 = clientWidth;
        int i13 = eVarI.f2999b;
        float f11 = ((i10 / f10) - eVarI.f3002e) / (eVarI.f3001d + (i11 / f10));
        this.W = false;
        k(i13, f11, (int) (i12 * f11));
        if (this.W) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.V = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f2976e0);
        Scroller scroller = this.f2987q;
        if (scroller != null && !scroller.isFinished()) {
            this.f2987q.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i10;
        float f10;
        super.onDraw(canvas);
        if (this.f2990t <= 0 || this.f2991u == null || this.f2979i.size() <= 0 || this.f2982l == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f11 = width;
        float f12 = this.f2990t / f11;
        int i11 = 0;
        e eVar = this.f2979i.get(0);
        float f13 = eVar.f3002e;
        int size = this.f2979i.size();
        int i12 = eVar.f2999b;
        int i13 = this.f2979i.get(size - 1).f2999b;
        while (i12 < i13) {
            while (true) {
                i10 = eVar.f2999b;
                if (i12 <= i10 || i11 >= size) {
                    break;
                }
                i11++;
                eVar = this.f2979i.get(i11);
            }
            if (i12 == i10) {
                float f14 = eVar.f3002e;
                float f15 = eVar.f3001d;
                f10 = (f14 + f15) * f11;
                f13 = f14 + f15 + f12;
            } else {
                Objects.requireNonNull(this.f2982l);
                f10 = (f13 + 1.0f) * f11;
                f13 = 1.0f + f12 + f13;
            }
            if (this.f2990t + f10 > scrollX) {
                this.f2991u.setBounds(Math.round(f10), this.f2992v, Math.round(this.f2990t + f10), this.f2993w);
                this.f2991u.draw(canvas);
            }
            if (f10 > scrollX + width) {
                return;
            }
            i12++;
            f12 = f12;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            u();
            return false;
        }
        if (action != 0) {
            if (this.E) {
                return true;
            }
            if (this.F) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.L = x10;
            this.J = x10;
            float y7 = motionEvent.getY();
            this.M = y7;
            this.K = y7;
            this.N = motionEvent.getPointerId(0);
            this.F = false;
            this.f2988r = true;
            this.f2987q.computeScrollOffset();
            if (this.f2977f0 != 2 || Math.abs(this.f2987q.getFinalX() - this.f2987q.getCurrX()) <= this.S) {
                d(false);
                this.E = false;
            } else {
                this.f2987q.abortAnimation();
                this.C = false;
                q();
                this.E = true;
                t();
                setScrollState(1);
            }
        } else if (action == 2) {
            int i10 = this.N;
            if (i10 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i10);
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f10 = x11 - this.J;
                float fAbs = Math.abs(f10);
                float y10 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y10 - this.M);
                if (f10 != 0.0f) {
                    float f11 = this.J;
                    if (!((f11 < ((float) this.H) && f10 > 0.0f) || (f11 > ((float) (getWidth() - this.H)) && f10 < 0.0f)) && c(this, false, (int) f10, (int) x11, (int) y10)) {
                        this.J = x11;
                        this.K = y10;
                        this.F = true;
                        return false;
                    }
                }
                float f12 = this.I;
                if (fAbs > f12 && fAbs * 0.5f > fAbs2) {
                    this.E = true;
                    t();
                    setScrollState(1);
                    float f13 = this.L;
                    float f14 = this.I;
                    this.J = f10 > 0.0f ? f13 + f14 : f13 - f14;
                    this.K = y10;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f12) {
                    this.F = true;
                }
                if (this.E && p(x11)) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    a0.d.k(this);
                }
            }
        } else if (action == 6) {
            l(motionEvent);
        }
        if (this.O == null) {
            this.O = VelocityTracker.obtain();
        }
        this.O.addMovement(motionEvent);
        return this.E;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        e eVarH;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f3003a) {
                    int i18 = fVar.f3004b;
                    int i19 = i18 & 7;
                    int i20 = i18 & 112;
                    if (i19 != 1) {
                        if (i19 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i19 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i14 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i20 != 16) {
                            if (i20 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i20 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i21 = paddingLeft + scrollX;
                            childAt.layout(i21, paddingTop, childAt.getMeasuredWidth() + i21, childAt.getMeasuredHeight() + paddingTop);
                            i16++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i22 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i22;
                        int i23 = paddingLeft + scrollX;
                        childAt.layout(i23, paddingTop, childAt.getMeasuredWidth() + i23, childAt.getMeasuredHeight() + paddingTop);
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i14 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i24 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i24;
                    if (i20 != 16) {
                        if (i20 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i20 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i25 = paddingLeft + scrollX;
                        childAt.layout(i25, paddingTop, childAt.getMeasuredWidth() + i25, childAt.getMeasuredHeight() + paddingTop);
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i26 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i26;
                    int i27 = paddingLeft + scrollX;
                    childAt.layout(i27, paddingTop, childAt.getMeasuredWidth() + i27, childAt.getMeasuredHeight() + paddingTop);
                    i16++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i28 = (i14 - paddingLeft) - paddingRight;
        for (int i29 = 0; i29 < childCount; i29++) {
            View childAt2 = getChildAt(i29);
            if (childAt2.getVisibility() != 8) {
                f fVar2 = (f) childAt2.getLayoutParams();
                if (!fVar2.f3003a && (eVarH = h(childAt2)) != null) {
                    float f10 = i28;
                    int i30 = ((int) (eVarH.f3002e * f10)) + paddingLeft;
                    if (fVar2.f3006d) {
                        fVar2.f3006d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f10 * fVar2.f3005c), 1073741824), View.MeasureSpec.makeMeasureSpec((i15 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i30, paddingTop, childAt2.getMeasuredWidth() + i30, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f2992v = paddingTop;
        this.f2993w = i15 - paddingBottom;
        this.f2973a0 = i16;
        if (this.V) {
            z11 = false;
            v(this.f2983m, false, 0, false);
        } else {
            z11 = false;
        }
        this.V = z11;
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        f fVar;
        f fVar2;
        int i12;
        setMeasuredDimension(View.getDefaultSize(0, i10), View.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        this.H = Math.min(measuredWidth / 10, this.G);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i13 = 0;
        while (true) {
            boolean z10 = true;
            int i14 = 1073741824;
            if (i13 >= childCount) {
                break;
            }
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8 && (fVar2 = (f) childAt.getLayoutParams()) != null && fVar2.f3003a) {
                int i15 = fVar2.f3004b;
                int i16 = i15 & 7;
                int i17 = i15 & 112;
                boolean z11 = i17 == 48 || i17 == 80;
                if (i16 != 3 && i16 != 5) {
                    z10 = false;
                }
                int i18 = Integer.MIN_VALUE;
                if (z11) {
                    i12 = Integer.MIN_VALUE;
                    i18 = 1073741824;
                } else {
                    i12 = z10 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i19 = ((ViewGroup.LayoutParams) fVar2).width;
                if (i19 != -2) {
                    if (i19 == -1) {
                        i19 = paddingLeft;
                    }
                    i18 = 1073741824;
                } else {
                    i19 = paddingLeft;
                }
                int i20 = ((ViewGroup.LayoutParams) fVar2).height;
                if (i20 == -2) {
                    i20 = measuredHeight;
                    i14 = i12;
                } else if (i20 == -1) {
                    i20 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i19, i18), View.MeasureSpec.makeMeasureSpec(i20, i14));
                if (z11) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z10) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i13++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f2996z = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.A = true;
        q();
        this.A = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((fVar = (f) childAt2.getLayoutParams()) == null || !fVar.f3003a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * fVar.f3005c), 1073741824), this.f2996z);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        e eVarH;
        int childCount = getChildCount();
        int i13 = -1;
        if ((i10 & 2) != 0) {
            i13 = childCount;
            i11 = 0;
            i12 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
        }
        while (i11 != i13) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (eVarH = h(childAt)) != null && eVarH.f2999b == this.f2983m && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i12;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof k)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        k kVar = (k) parcelable;
        super.onRestoreInstanceState(kVar.f12620h);
        j1.a aVar = this.f2982l;
        if (aVar != null) {
            aVar.f();
            w(kVar.f3010j, false, true, 0);
        } else {
            this.f2984n = kVar.f3010j;
            this.f2985o = kVar.f3011k;
            this.f2986p = kVar.f3012l;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        k kVar = new k(super.onSaveInstanceState());
        kVar.f3010j = this.f2983m;
        j1.a aVar = this.f2982l;
        if (aVar != null) {
            aVar.g();
            kVar.f3011k = null;
        }
        return kVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.f2990t;
            s(i10, i12, i14, i14);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00d2  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        j1.a aVar;
        boolean zU = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f2982l) == null) {
            return false;
        }
        aVar.c();
        if (this.O == null) {
            this.O = VelocityTracker.obtain();
        }
        this.O.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f2987q.abortAnimation();
            this.C = false;
            q();
            float x10 = motionEvent.getX();
            this.L = x10;
            this.J = x10;
            float y7 = motionEvent.getY();
            this.M = y7;
            this.K = y7;
            this.N = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.J = motionEvent.getX(actionIndex);
                        this.N = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        l(motionEvent);
                        this.J = motionEvent.getX(motionEvent.findPointerIndex(this.N));
                    }
                } else if (this.E) {
                    v(this.f2983m, true, 0, false);
                    zU = u();
                }
            } else if (!this.E) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.N);
                if (iFindPointerIndex == -1) {
                    zU = u();
                } else {
                    float x11 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x11 - this.J);
                    float y10 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y10 - this.K);
                    if (fAbs > this.I && fAbs > fAbs2) {
                        this.E = true;
                        t();
                        float f10 = this.L;
                        this.J = x11 - f10 > 0.0f ? f10 + this.I : f10 - this.I;
                        this.K = y10;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.E) {
                        zU = false | p(motionEvent.getX(motionEvent.findPointerIndex(this.N)));
                    }
                }
            } else if (this.E) {
                zU = false | p(motionEvent.getX(motionEvent.findPointerIndex(this.N)));
            }
        } else if (this.E) {
            VelocityTracker velocityTracker = this.O;
            velocityTracker.computeCurrentVelocity(1000, this.Q);
            int xVelocity = (int) velocityTracker.getXVelocity(this.N);
            this.C = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            e eVarI = i();
            float f11 = clientWidth;
            float f12 = this.f2990t / f11;
            int iMax = eVarI.f2999b;
            float f13 = ((scrollX / f11) - eVarI.f3002e) / (eVarI.f3001d + f12);
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.N)) - this.L)) <= this.R || Math.abs(xVelocity) <= this.P) {
                iMax += (int) (f13 + (iMax >= this.f2983m ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                iMax++;
            }
            if (this.f2979i.size() > 0) {
                e eVar = this.f2979i.get(0);
                ArrayList<e> arrayList = this.f2979i;
                iMax = Math.max(eVar.f2999b, Math.min(iMax, arrayList.get(arrayList.size() - 1).f2999b));
            }
            w(iMax, true, true, xVelocity);
            zU = u();
        }
        if (zU) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.k(this);
        }
        return true;
    }

    public final boolean p(float f10) {
        boolean z10;
        boolean z11;
        float f11 = this.J - f10;
        this.J = f10;
        float scrollX = getScrollX() + f11;
        float clientWidth = getClientWidth();
        float f12 = this.f2994x * clientWidth;
        float f13 = this.f2995y * clientWidth;
        boolean z12 = false;
        e eVar = this.f2979i.get(0);
        ArrayList<e> arrayList = this.f2979i;
        e eVar2 = arrayList.get(arrayList.size() - 1);
        if (eVar.f2999b != 0) {
            f12 = eVar.f3002e * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        int i10 = eVar2.f2999b;
        this.f2982l.c();
        if (i10 != 1) {
            f13 = eVar2.f3002e * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f12) {
            if (z10) {
                this.T.onPull(Math.abs(f12 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f12;
        } else if (scrollX > f13) {
            if (z11) {
                this.U.onPull(Math.abs(scrollX - f13) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        }
        int i11 = (int) scrollX;
        this.J = (scrollX - i11) + this.J;
        scrollTo(i11, getScrollY());
        o(i11);
        return z12;
    }

    public final void q() {
        r(this.f2983m);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00e8 A[PHI: r2 r6 r12
      0x00e8: PHI (r2v18 int) = (r2v17 int), (r2v6 int), (r2v20 int) binds: [B:57:0x00dd, B:54:0x00c7, B:48:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00e8: PHI (r6v6 int) = (r6v1 int), (r6v5 int), (r6v8 int) binds: [B:57:0x00dd, B:54:0x00c7, B:48:0x00b1] A[DONT_GENERATE, DONT_INLINE]
      0x00e8: PHI (r12v5 float) = (r12v3 float), (r12v4 float), (r12v2 float) binds: [B:57:0x00dd, B:54:0x00c7, B:48:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:93:0x017d A[PHI: r1 r10
      0x017d: PHI (r1v18 float) = (r1v16 float), (r1v17 float), (r1v15 float) binds: [B:91:0x0172, B:88:0x0158, B:82:0x013c] A[DONT_GENERATE, DONT_INLINE]
      0x017d: PHI (r10v30 int) = (r10v28 int), (r10v29 int), (r10v27 int) binds: [B:91:0x0172, B:88:0x0158, B:82:0x013c] A[DONT_GENERATE, DONT_INLINE]] */
    public final void r(int i10) {
        e eVarJ;
        String hexString;
        e eVarA;
        e eVarH;
        e eVarH2;
        int i11;
        int i12;
        e eVar;
        e eVar2;
        int i13 = this.f2983m;
        if (i13 != i10) {
            eVarJ = j(i13);
            this.f2983m = i10;
        } else {
            eVarJ = null;
        }
        if (this.f2982l == null || this.C || getWindowToken() == null) {
            return;
        }
        this.f2982l.i(this);
        int i14 = this.D;
        int i15 = 0;
        int iMax = Math.max(0, this.f2983m - i14);
        this.f2982l.c();
        int iMin = Math.min(1, this.f2983m + i14);
        if (2 != this.f2978h) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            StringBuilder sbC = a0.b.c("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ");
            a1.d.e(sbC, this.f2978h, ", found: ", 2, " Pager id: ");
            sbC.append(hexString);
            sbC.append(" Pager class: ");
            sbC.append(getClass());
            sbC.append(" Problematic adapter: ");
            sbC.append(this.f2982l.getClass());
            throw new IllegalStateException(sbC.toString());
        }
        while (true) {
            if (i15 < this.f2979i.size()) {
                eVarA = this.f2979i.get(i15);
                int i16 = eVarA.f2999b;
                int i17 = this.f2983m;
                if (i16 >= i17) {
                    if (i16 != i17) {
                        break;
                    } else {
                        break;
                    }
                }
                i15++;
            }
            eVarA = null;
            break;
        }
        if (eVarA == null) {
            eVarA = a(this.f2983m, i15);
        }
        if (eVarA != null) {
            int i18 = i15 - 1;
            e eVar3 = i18 >= 0 ? this.f2979i.get(i18) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - eVarA.f3001d) + (getPaddingLeft() / clientWidth);
            float f10 = 0.0f;
            for (int i19 = this.f2983m - 1; i19 >= 0; i19--) {
                if (f10 >= paddingLeft && i19 < iMax) {
                    if (eVar3 == null) {
                        break;
                    }
                    if (i19 == eVar3.f2999b && !eVar3.f3000c) {
                        this.f2979i.remove(i18);
                        this.f2982l.a(eVar3.f2998a);
                        i18--;
                        i15--;
                        if (i18 >= 0) {
                            eVar3 = this.f2979i.get(i18);
                        } else {
                            eVar3 = null;
                        }
                    }
                } else if (eVar3 == null || i19 != eVar3.f2999b) {
                    f10 += a(i19, i18 + 1).f3001d;
                    i15++;
                    if (i18 >= 0) {
                        eVar3 = this.f2979i.get(i18);
                    } else {
                        eVar3 = null;
                    }
                } else {
                    f10 += eVar3.f3001d;
                    i18--;
                    if (i18 >= 0) {
                        eVar3 = this.f2979i.get(i18);
                    } else {
                        eVar3 = null;
                    }
                }
            }
            float f11 = eVarA.f3001d;
            int i20 = i15 + 1;
            if (f11 < 2.0f) {
                e eVar4 = i20 < this.f2979i.size() ? this.f2979i.get(i20) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i21 = i20;
                for (int i22 = this.f2983m + 1; i22 < 2; i22++) {
                    if (f11 >= paddingRight && i22 > iMin) {
                        if (eVar4 == null) {
                            break;
                        }
                        if (i22 == eVar4.f2999b && !eVar4.f3000c) {
                            this.f2979i.remove(i21);
                            this.f2982l.a(eVar4.f2998a);
                            if (i21 < this.f2979i.size()) {
                                eVar4 = this.f2979i.get(i21);
                            } else {
                                eVar4 = null;
                            }
                        }
                    } else if (eVar4 == null || i22 != eVar4.f2999b) {
                        e eVarA2 = a(i22, i21);
                        i21++;
                        f11 += eVarA2.f3001d;
                        if (i21 < this.f2979i.size()) {
                            eVar4 = this.f2979i.get(i21);
                        } else {
                            eVar4 = null;
                        }
                    } else {
                        f11 += eVar4.f3001d;
                        i21++;
                        if (i21 < this.f2979i.size()) {
                            eVar4 = this.f2979i.get(i21);
                        } else {
                            eVar4 = null;
                        }
                    }
                }
            }
            this.f2982l.c();
            int clientWidth2 = getClientWidth();
            float f12 = clientWidth2 > 0 ? this.f2990t / clientWidth2 : 0.0f;
            if (eVarJ != null) {
                int i23 = eVarJ.f2999b;
                int i24 = eVarA.f2999b;
                if (i23 < i24) {
                    float f13 = eVarJ.f3002e + eVarJ.f3001d + f12;
                    int i25 = 0;
                    while (true) {
                        i23++;
                        if (i23 > eVarA.f2999b || i25 >= this.f2979i.size()) {
                            break;
                        }
                        e eVar5 = this.f2979i.get(i25);
                        while (true) {
                            eVar2 = eVar5;
                            if (i23 <= eVar2.f2999b || i25 >= this.f2979i.size() - 1) {
                                break;
                            }
                            i25++;
                            eVar5 = this.f2979i.get(i25);
                        }
                        while (i23 < eVar2.f2999b) {
                            Objects.requireNonNull(this.f2982l);
                            f13 += 1.0f + f12;
                            i23++;
                        }
                        eVar2.f3002e = f13;
                        f13 += eVar2.f3001d + f12;
                    }
                } else if (i23 > i24) {
                    int size = this.f2979i.size() - 1;
                    float f14 = eVarJ.f3002e;
                    while (true) {
                        i23--;
                        if (i23 < eVarA.f2999b || size < 0) {
                            break;
                        }
                        e eVar6 = this.f2979i.get(size);
                        while (true) {
                            eVar = eVar6;
                            if (i23 >= eVar.f2999b || size <= 0) {
                                break;
                            }
                            size--;
                            eVar6 = this.f2979i.get(size);
                        }
                        while (i23 > eVar.f2999b) {
                            Objects.requireNonNull(this.f2982l);
                            f14 -= 1.0f + f12;
                            i23--;
                        }
                        f14 -= eVar.f3001d + f12;
                        eVar.f3002e = f14;
                    }
                }
            }
            int size2 = this.f2979i.size();
            float f15 = eVarA.f3002e;
            int i26 = eVarA.f2999b;
            int i27 = i26 - 1;
            this.f2994x = i26 == 0 ? f15 : -3.4028235E38f;
            this.f2995y = i26 == 1 ? (eVarA.f3001d + f15) - 1.0f : Float.MAX_VALUE;
            int i28 = i15 - 1;
            while (i28 >= 0) {
                e eVar7 = this.f2979i.get(i28);
                while (true) {
                    i12 = eVar7.f2999b;
                    if (i27 <= i12) {
                        break;
                    }
                    i27--;
                    Objects.requireNonNull(this.f2982l);
                    f15 -= 1.0f + f12;
                }
                f15 -= eVar7.f3001d + f12;
                eVar7.f3002e = f15;
                if (i12 == 0) {
                    this.f2994x = f15;
                }
                i28--;
                i27--;
            }
            float f16 = eVarA.f3002e + eVarA.f3001d + f12;
            int i29 = eVarA.f2999b;
            while (true) {
                i29++;
                if (i20 >= size2) {
                    break;
                }
                e eVar8 = this.f2979i.get(i20);
                while (true) {
                    i11 = eVar8.f2999b;
                    if (i29 >= i11) {
                        break;
                    }
                    i29++;
                    Objects.requireNonNull(this.f2982l);
                    f16 += 1.0f + f12;
                }
                if (i11 == 1) {
                    this.f2995y = (eVar8.f3001d + f16) - 1.0f;
                }
                eVar8.f3002e = f16;
                f16 += eVar8.f3001d + f12;
                i20++;
            }
            this.f2982l.h(eVarA.f2998a);
        }
        this.f2982l.b();
        int childCount = getChildCount();
        for (int i30 = 0; i30 < childCount; i30++) {
            View childAt = getChildAt(i30);
            f fVar = (f) childAt.getLayoutParams();
            Objects.requireNonNull(fVar);
            if (!fVar.f3003a && fVar.f3005c == 0.0f && (eVarH2 = h(childAt)) != null) {
                fVar.f3005c = eVarH2.f3001d;
                fVar.f3007e = eVarH2.f2999b;
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == null) {
                eVarH = null;
                break;
            }
            while (true) {
                Object parent = viewFindFocus.getParent();
                if (parent == this) {
                    eVarH = h(viewFindFocus);
                    break;
                } else {
                    if (parent == null || !(parent instanceof View)) {
                        eVarH = null;
                        break;
                    }
                    viewFindFocus = (View) parent;
                }
            }
            if (eVarH == null || eVarH.f2999b != this.f2983m) {
                for (int i31 = 0; i31 < getChildCount(); i31++) {
                    View childAt2 = getChildAt(i31);
                    e eVarH3 = h(childAt2);
                    if (eVarH3 != null && eVarH3.f2999b == this.f2983m && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.A) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final void s(int i10, int i11, int i12, int i13) {
        if (i11 > 0 && !this.f2979i.isEmpty()) {
            if (!this.f2987q.isFinished()) {
                this.f2987q.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        e eVarJ = j(this.f2983m);
        int iMin = (int) ((eVarJ != null ? Math.min(eVarJ.f3002e, this.f2995y) : 0.0f) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            d(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$h>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$h>] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$h>] */
    public void setAdapter(j1.a aVar) {
        j1.a aVar2 = this.f2982l;
        if (aVar2 != null) {
            synchronized (aVar2) {
            }
            this.f2982l.i(this);
            for (int i10 = 0; i10 < this.f2979i.size(); i10++) {
                e eVar = this.f2979i.get(i10);
                j1.a aVar3 = this.f2982l;
                int i11 = eVar.f2999b;
                aVar3.a(eVar.f2998a);
            }
            this.f2982l.b();
            this.f2979i.clear();
            int i12 = 0;
            while (i12 < getChildCount()) {
                if (!((f) getChildAt(i12).getLayoutParams()).f3003a) {
                    removeViewAt(i12);
                    i12--;
                }
                i12++;
            }
            this.f2983m = 0;
            scrollTo(0, 0);
        }
        this.f2982l = aVar;
        this.f2978h = 0;
        if (aVar != null) {
            if (this.f2989s == null) {
                this.f2989s = new j();
            }
            synchronized (this.f2982l) {
            }
            this.C = false;
            boolean z10 = this.V;
            this.V = true;
            this.f2982l.c();
            this.f2978h = 2;
            if (this.f2984n >= 0) {
                this.f2982l.f();
                w(this.f2984n, false, true, 0);
                this.f2984n = -1;
                this.f2985o = null;
                this.f2986p = null;
            } else if (z10) {
                requestLayout();
            } else {
                q();
            }
        }
        ?? r10 = this.d0;
        if (r10 == 0 || r10.isEmpty()) {
            return;
        }
        int size = this.d0.size();
        for (int i13 = 0; i13 < size; i13++) {
            ((h) this.d0.get(i13)).a(this, aVar);
        }
    }

    public void setCurrentItem(int i10) {
        this.C = false;
        w(i10, !this.V, false, 0);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i10 + " too small; defaulting to 1");
            i10 = 1;
        }
        if (i10 != this.D) {
            this.D = i10;
            q();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(i iVar) {
        this.f2975c0 = iVar;
    }

    public void setPageMargin(int i10) {
        int i11 = this.f2990t;
        this.f2990t = i10;
        int width = getWidth();
        s(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f2991u = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    public void setScrollState(int i10) {
        if (this.f2977f0 == i10) {
            return;
        }
        this.f2977f0 = i10;
        i iVar = this.f2975c0;
        if (iVar != null) {
            iVar.i(i10);
        }
        ?? r10 = this.f2974b0;
        if (r10 != 0) {
            int size = r10.size();
            for (int i11 = 0; i11 < size; i11++) {
                i iVar2 = (i) this.f2974b0.get(i11);
                if (iVar2 != null) {
                    iVar2.i(i10);
                }
            }
        }
    }

    public final void t() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public final boolean u() {
        this.N = -1;
        this.E = false;
        this.F = false;
        VelocityTracker velocityTracker = this.O;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.O = null;
        }
        this.T.onRelease();
        this.U.onRelease();
        return this.T.isFinished() || this.U.isFinished();
    }

    public final void v(int i10, boolean z10, int i11, boolean z11) {
        int iMax;
        int scrollX;
        int iAbs;
        e eVarJ = j(i10);
        if (eVarJ != null) {
            iMax = (int) (Math.max(this.f2994x, Math.min(eVarJ.f3002e, this.f2995y)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (!z10) {
            if (z11) {
                f(i10);
            }
            d(false);
            scrollTo(iMax, 0);
            o(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.f2987q;
            if ((scroller == null || scroller.isFinished()) ? false : true) {
                scrollX = this.f2988r ? this.f2987q.getCurrX() : this.f2987q.getStartX();
                this.f2987q.abortAnimation();
                setScrollingCacheEnabled(false);
            } else {
                scrollX = getScrollX();
            }
            int i12 = scrollX;
            int scrollY = getScrollY();
            int i13 = iMax - i12;
            int i14 = 0 - scrollY;
            if (i13 == 0 && i14 == 0) {
                d(false);
                q();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i15 = clientWidth / 2;
                float f10 = clientWidth;
                float f11 = i15;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i13) * 1.0f) / f10) - 0.5f) * 0.47123894f)) * f11) + f11;
                int iAbs2 = Math.abs(i11);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    Objects.requireNonNull(this.f2982l);
                    iAbs = (int) (((Math.abs(i13) / ((f10 * 1.0f) + this.f2990t)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, EventManagerImpl.DEFAULT_MAX_EVENT_BUFFER_TIME);
                this.f2988r = false;
                this.f2987q.startScroll(i12, scrollY, i13, i14, iMin);
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.k(this);
            }
        }
        if (z11) {
            f(i10);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2991u;
    }

    public final void w(int i10, boolean z10, boolean z11, int i11) {
        j1.a aVar = this.f2982l;
        if (aVar == null) {
            setScrollingCacheEnabled(false);
            return;
        }
        aVar.c();
        if (!z11 && this.f2983m == i10 && this.f2979i.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        } else {
            this.f2982l.c();
            if (i10 >= 2) {
                this.f2982l.c();
                i10 = 1;
            }
        }
        int i12 = this.D;
        int i13 = this.f2983m;
        if (i10 > i13 + i12 || i10 < i13 - i12) {
            for (int i14 = 0; i14 < this.f2979i.size(); i14++) {
                this.f2979i.get(i14).f3000c = true;
            }
        }
        boolean z12 = this.f2983m != i10;
        if (!this.V) {
            r(i10);
            v(i10, z10, i11, z12);
        } else {
            this.f2983m = i10;
            if (z12) {
                f(i10);
            }
            requestLayout();
        }
    }

    public static class f extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f3005c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f3006d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3007e;

        public f() {
            super(-1, -1);
            this.f3005c = 0.0f;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3005c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f2970g0);
            this.f3004b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i10) {
        Context context = getContext();
        Object obj = y.a.f18143a;
        setPageMarginDrawable(y.a.b.b(context, i10));
    }
}
