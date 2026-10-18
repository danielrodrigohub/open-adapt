package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.R;
import j0.a0;
import j0.g0;
import j0.l0;
import j0.n;
import j0.o;
import j0.p;
import j0.q;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements n, o {
    public static final String A;
    public static final Class<?>[] B;
    public static final ThreadLocal<Map<String, Constructor<c>>> C;
    public static final Comparator<View> D;
    public static final i0.e<Rect> E;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<View> f1723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w.a<View> f1724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<View> f1725j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<View> f1726k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f1727l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f1728m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1729n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1730o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f1731p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public View f1732q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f1733r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public g f1734s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1735t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public l0 f1736u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1737v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Drawable f1738w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f1739x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public a f1740y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final p f1741z;

    public class a implements q {
        public a() {
        }

        @Override // j0.q
        public final l0 a(View view, l0 l0Var) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            if (!i0.c.a(coordinatorLayout.f1736u, l0Var)) {
                coordinatorLayout.f1736u = l0Var;
                boolean z10 = l0Var.f() > 0;
                coordinatorLayout.f1737v = z10;
                coordinatorLayout.setWillNotDraw(!z10 && coordinatorLayout.getBackground() == null);
                if (!l0Var.h()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i10 = 0; i10 < childCount; i10++) {
                        View childAt = coordinatorLayout.getChildAt(i10);
                        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                        if (a0.d.b(childAt) && ((f) childAt.getLayoutParams()).f1744a != null && l0Var.h()) {
                            break;
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return l0Var;
        }
    }

    public interface b {
        c getBehavior();
    }

    public static abstract class c<V extends View> {
        public c() {
        }

        public boolean a(View view, Rect rect) {
            return false;
        }

        public boolean b(View view, View view2) {
            return false;
        }

        public void c(f fVar) {
        }

        public boolean d(CoordinatorLayout coordinatorLayout, V v10, View view) {
            return false;
        }

        public void e(CoordinatorLayout coordinatorLayout, View view) {
        }

        public void f() {
        }

        public boolean g(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
            return false;
        }

        public boolean h(CoordinatorLayout coordinatorLayout, V v10, int i10) {
            return false;
        }

        public boolean i(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
            return false;
        }

        public boolean j(View view) {
            return false;
        }

        public void k(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int[] iArr, int i12) {
        }

        public void l(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
            iArr[0] = iArr[0] + i11;
            iArr[1] = iArr[1] + i12;
        }

        public boolean m(CoordinatorLayout coordinatorLayout, V v10, Rect rect, boolean z10) {
            return false;
        }

        public void n(View view, Parcelable parcelable) {
        }

        public Parcelable o(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11) {
            return false;
        }

        public void q(CoordinatorLayout coordinatorLayout, V v10, View view, int i10) {
        }

        public boolean r(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
            return false;
        }

        public c(Context context, AttributeSet attributeSet) {
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface d {
        Class<? extends c> value();
    }

    public class e implements ViewGroup.OnHierarchyChangeListener {
        public e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1739x;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.r(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1739x;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public class g implements ViewTreeObserver.OnPreDrawListener {
        public g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.r(0);
            return true;
        }
    }

    public static class i implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            float fM = a0.i.m(view);
            float fM2 = a0.i.m(view2);
            if (fM > fM2) {
                return -1;
            }
            return fM < fM2 ? 1 : 0;
        }
    }

    static {
        Package r10 = CoordinatorLayout.class.getPackage();
        A = r10 != null ? r10.getName() : null;
        D = new i();
        B = new Class[]{Context.class, AttributeSet.class};
        C = new ThreadLocal<>();
        E = new i0.g(12);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.coordinatorLayoutStyle;
        super(context, attributeSet, i10);
        this.f1723h = new ArrayList();
        this.f1724i = new w.a<>();
        this.f1725j = new ArrayList();
        this.f1726k = new ArrayList();
        this.f1727l = new int[2];
        this.f1728m = new int[2];
        this.f1741z = new p();
        TypedArray typedArrayObtainStyledAttributes = i10 == 0 ? context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i10, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i10 == 0) {
                saveAttributeDataForStyleable(context, R.styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, R.styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
            }
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1731p = resources.getIntArray(resourceId);
            float f10 = resources.getDisplayMetrics().density;
            int length = this.f1731p.length;
            for (int i11 = 0; i11 < length; i11++) {
                int[] iArr = this.f1731p;
                iArr[i11] = (int) (iArr[i11] * f10);
            }
        }
        this.f1738w = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        z();
        super.setOnHierarchyChangeListener(new e());
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.d.c(this) == 0) {
            a0.d.s(this, 1);
        }
    }

    public static Rect a() {
        Rect rectB = E.b();
        return rectB == null ? new Rect() : rectB;
    }

    public final void b(f fVar, Rect rect, int i10, int i11) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i10) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i11) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(iMax, iMax2, i10 + iMax, i11 + iMax2);
    }

    public final void c(View view) {
        ArrayList<View> orDefault = this.f1724i.f17038b.getOrDefault(view, null);
        if (orDefault == null || orDefault.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < orDefault.size(); i10++) {
            View view2 = orDefault.get(i10);
            c cVar = ((f) view2.getLayoutParams()).f1744a;
            if (cVar != null) {
                cVar.d(this, view2, view);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public final void d(View view, boolean z10, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z10) {
            g(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        c cVar = ((f) view.getLayoutParams()).f1744a;
        if (cVar != null) {
            Objects.requireNonNull(cVar);
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1738w;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final List<View> e(View view) {
        w.a<View> aVar = this.f1724i;
        int i10 = aVar.f17038b.f12614j;
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < i10; i11++) {
            ArrayList<View> arrayListM = aVar.f17038b.m(i11);
            if (arrayListM != null && arrayListM.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(aVar.f17038b.i(i11));
            }
        }
        this.f1726k.clear();
        if (arrayList != null) {
            this.f1726k.addAll(arrayList);
        }
        return this.f1726k;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final List<View> f(View view) {
        ArrayList<View> orDefault = this.f1724i.f17038b.getOrDefault(view, null);
        this.f1726k.clear();
        if (orDefault != null) {
            this.f1726k.addAll(orDefault);
        }
        return this.f1726k;
    }

    public final void g(View view, Rect rect) {
        ThreadLocal<Matrix> threadLocal = w.b.f17041a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal<Matrix> threadLocal2 = w.b.f17041a;
        Matrix matrix = threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        w.b.a(this, view, matrix);
        ThreadLocal<RectF> threadLocal3 = w.b.f17042b;
        RectF rectF = threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        v();
        return Collections.unmodifiableList(this.f1723h);
    }

    public final l0 getLastWindowInsets() {
        return this.f1736u;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        p pVar = this.f1741z;
        return pVar.f9232b | pVar.f9231a;
    }

    public Drawable getStatusBarBackground() {
        return this.f1738w;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // j0.n
    public final void h(View view, View view2, int i10, int i11) {
        this.f1741z.a(i10, i11);
        this.f1733r = view2;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            Objects.requireNonNull((f) getChildAt(i12).getLayoutParams());
        }
    }

    @Override // j0.n
    public final void i(View view, int i10) {
        p pVar = this.f1741z;
        if (i10 == 1) {
            pVar.f9232b = 0;
        } else {
            pVar.f9231a = 0;
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.a(i10)) {
                c cVar = fVar.f1744a;
                if (cVar != null) {
                    cVar.q(this, childAt, view, i10);
                }
                fVar.c(i10, false);
                fVar.f1759p = false;
            }
        }
        this.f1733r = null;
    }

    @Override // j0.n
    public final void j(View view, int i10, int i11, int[] iArr, int i12) {
        c cVar;
        int childCount = getChildCount();
        boolean z10 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i12) && (cVar = fVar.f1744a) != null) {
                    int[] iArr2 = this.f1727l;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVar.k(this, childAt, view, i10, i11, iArr2, i12);
                    int[] iArr3 = this.f1727l;
                    iMax = i10 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f1727l;
                    iMax2 = i11 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z10 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z10) {
            r(1);
        }
    }

    public final void k(int i10, Rect rect, Rect rect2, f fVar, int i11, int i12) {
        int iWidth;
        int iHeight;
        int i13 = fVar.f1746c;
        if (i13 == 0) {
            i13 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i13, i10);
        int i14 = fVar.f1747d;
        if ((i14 & 7) == 0) {
            i14 |= 8388611;
        }
        if ((i14 & 112) == 0) {
            i14 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i14, i10);
        int i15 = absoluteGravity & 7;
        int i16 = absoluteGravity & 112;
        int i17 = absoluteGravity2 & 7;
        int i18 = absoluteGravity2 & 112;
        if (i17 != 1) {
            iWidth = i17 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i18 != 16) {
            iHeight = i18 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i15 == 1) {
            iWidth -= i11 / 2;
        } else if (i15 != 5) {
            iWidth -= i11;
        }
        if (i16 == 16) {
            iHeight -= i12 / 2;
        } else if (i16 != 80) {
            iHeight -= i12;
        }
        rect2.set(iWidth, iHeight, i11 + iWidth, i12 + iHeight);
    }

    public final int l(int i10) {
        int[] iArr = this.f1731p;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i10);
            return 0;
        }
        if (i10 >= 0 && i10 < iArr.length) {
            return iArr[i10];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i10 + " out of range for " + this);
        return 0;
    }

    @Override // j0.o
    public final void m(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        c cVar;
        int childCount = getChildCount();
        boolean z10 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i14) && (cVar = fVar.f1744a) != null) {
                    int[] iArr2 = this.f1727l;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVar.l(this, childAt, i11, i12, i13, iArr2);
                    int[] iArr3 = this.f1727l;
                    iMax = i12 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    iMax2 = i13 > 0 ? Math.max(iMax2, this.f1727l[1]) : Math.min(iMax2, this.f1727l[1]);
                    z10 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z10) {
            r(1);
        }
    }

    @Override // j0.n
    public final void n(View view, int i10, int i11, int i12, int i13, int i14) {
        m(view, i10, i11, i12, i13, 0, this.f1728m);
    }

    @Override // j0.n
    public final boolean o(View view, View view2, int i10, int i11) {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVar = fVar.f1744a;
                if (cVar != null) {
                    boolean zP = cVar.p(this, childAt, view, i10, i11);
                    z10 |= zP;
                    fVar.c(i11, zP);
                } else {
                    fVar.c(i11, false);
                }
            }
        }
        return z10;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        w(false);
        if (this.f1735t) {
            if (this.f1734s == null) {
                this.f1734s = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1734s);
        }
        if (this.f1736u == null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.d.b(this)) {
                a0.h.c(this);
            }
        }
        this.f1730o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        w(false);
        if (this.f1735t && this.f1734s != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1734s);
        }
        View view = this.f1733r;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1730o = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1737v || this.f1738w == null) {
            return;
        }
        l0 l0Var = this.f1736u;
        int iF = l0Var != null ? l0Var.f() : 0;
        if (iF > 0) {
            this.f1738w.setBounds(0, 0, getWidth(), iF);
            this.f1738w.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            w(true);
        }
        boolean zU = u(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            w(true);
        }
        return zU;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        c cVar;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iD = a0.e.d(this);
        int size = this.f1723h.size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = (View) this.f1723h.get(i14);
            if (view.getVisibility() != 8 && ((cVar = ((f) view.getLayoutParams()).f1744a) == null || !cVar.h(this, view, iD))) {
                s(view, iD);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0165  */
    /* JADX WARN: Code duplicated, block: B:78:0x016d  */
    /* JADX WARN: Code duplicated, block: B:81:0x018f  */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        boolean z10;
        int i12;
        int i13;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        c cVar;
        int i14;
        int i15;
        int i16;
        boolean z11;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z12;
        v();
        int childCount = getChildCount();
        int i22 = 0;
        while (true) {
            if (i22 >= childCount) {
                z10 = false;
                break;
            }
            View childAt = getChildAt(i22);
            w.a<View> aVar = this.f1724i;
            int i23 = aVar.f17038b.f12614j;
            int i24 = 0;
            while (true) {
                if (i24 < i23) {
                    ArrayList<View> arrayListM = aVar.f17038b.m(i24);
                    if (arrayListM != null && arrayListM.contains(childAt)) {
                        z12 = true;
                        break;
                    }
                    i24++;
                } else {
                    z12 = false;
                    break;
                }
            }
            if (z12) {
                z10 = true;
                break;
            }
            i22++;
        }
        if (z10 != this.f1735t) {
            if (z10) {
                if (this.f1730o) {
                    if (this.f1734s == null) {
                        this.f1734s = new g();
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.f1734s);
                }
                this.f1735t = true;
            } else {
                if (this.f1730o && this.f1734s != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f1734s);
                }
                this.f1735t = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iD = a0.e.d(this);
        boolean z13 = iD == 1;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int i25 = paddingLeft + paddingRight;
        int i26 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z14 = this.f1736u != null && a0.d.b(this);
        int size3 = this.f1723h.size();
        int iMax2 = suggestedMinimumWidth;
        int iMax3 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i27 = 0;
        while (i27 < size3) {
            View view = (View) this.f1723h.get(i27);
            if (view.getVisibility() == 8) {
                i21 = i27;
                i14 = size3;
                i19 = paddingLeft;
                i15 = paddingRight;
                i16 = iD;
                z11 = false;
            } else {
                f fVar = (f) view.getLayoutParams();
                int i28 = fVar.f1748e;
                if (i28 < 0 || mode == 0) {
                    i12 = iCombineMeasuredStates;
                    i13 = i27;
                } else {
                    int iL = l(i28);
                    i12 = iCombineMeasuredStates;
                    int i29 = fVar.f1746c;
                    if (i29 == 0) {
                        i29 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i29, iD) & 7;
                    i13 = i27;
                    if ((absoluteGravity == 3 && !z13) || (absoluteGravity == 5 && z13)) {
                        iMax = Math.max(0, (size - paddingRight) - iL);
                    } else if ((absoluteGravity == 5 && !z13) || (absoluteGravity == 3 && z13)) {
                        iMax = Math.max(0, iL - paddingLeft);
                    }
                    if (z14 || a0.d.b(view)) {
                        iMakeMeasureSpec = i10;
                        iMakeMeasureSpec2 = i11;
                    } else {
                        int iE = this.f1736u.e() + this.f1736u.d();
                        int iC = this.f1736u.c() + this.f1736u.f();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iE, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iC, mode2);
                    }
                    cVar = fVar.f1744a;
                    if (cVar != null) {
                        int i30 = i12;
                        i21 = i13;
                        z11 = false;
                        i19 = paddingLeft;
                        i20 = i30;
                        i15 = paddingRight;
                        i17 = iMax3;
                        i16 = iD;
                        i18 = iMax2;
                        i14 = size3;
                        if (!cVar.i(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2)) {
                        }
                        iMax2 = Math.max(i18, view.getMeasuredWidth() + i25 + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin);
                        iMax3 = Math.max(i17, view.getMeasuredHeight() + i26 + ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i20, view.getMeasuredState());
                    } else {
                        i14 = size3;
                        i15 = paddingRight;
                        i16 = iD;
                        z11 = false;
                        i17 = iMax3;
                        i18 = iMax2;
                        int i31 = i13;
                        i19 = paddingLeft;
                        i20 = i12;
                        i21 = i31;
                    }
                    measureChildWithMargins(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    iMax2 = Math.max(i18, view.getMeasuredWidth() + i25 + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin);
                    iMax3 = Math.max(i17, view.getMeasuredHeight() + i26 + ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i20, view.getMeasuredState());
                }
                iMax = 0;
                if (z14) {
                    iMakeMeasureSpec = i10;
                    iMakeMeasureSpec2 = i11;
                } else {
                    iMakeMeasureSpec = i10;
                    iMakeMeasureSpec2 = i11;
                }
                cVar = fVar.f1744a;
                if (cVar != null) {
                    int i32 = i12;
                    i21 = i13;
                    z11 = false;
                    i19 = paddingLeft;
                    i20 = i32;
                    i15 = paddingRight;
                    i17 = iMax3;
                    i16 = iD;
                    i18 = iMax2;
                    i14 = size3;
                    if (!cVar.i(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2)) {
                    }
                    iMax2 = Math.max(i18, view.getMeasuredWidth() + i25 + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin);
                    iMax3 = Math.max(i17, view.getMeasuredHeight() + i26 + ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i20, view.getMeasuredState());
                } else {
                    i14 = size3;
                    i15 = paddingRight;
                    i16 = iD;
                    z11 = false;
                    i17 = iMax3;
                    i18 = iMax2;
                    int i33 = i13;
                    i19 = paddingLeft;
                    i20 = i12;
                    i21 = i33;
                }
                measureChildWithMargins(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                iMax2 = Math.max(i18, view.getMeasuredWidth() + i25 + ((ViewGroup.MarginLayoutParams) fVar).leftMargin + ((ViewGroup.MarginLayoutParams) fVar).rightMargin);
                iMax3 = Math.max(i17, view.getMeasuredHeight() + i26 + ((ViewGroup.MarginLayoutParams) fVar).topMargin + ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(i20, view.getMeasuredState());
            }
            i27 = i21 + 1;
            paddingLeft = i19;
            paddingRight = i15;
            iD = i16;
            size3 = i14;
        }
        int i34 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(iMax2, i10, (-16777216) & i34), View.resolveSizeAndState(iMax3, i11, i34 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                ((f) childAt.getLayoutParams()).a(0);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        c cVar;
        int childCount = getChildCount();
        boolean zJ = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVar = fVar.f1744a) != null) {
                    zJ |= cVar.j(view);
                }
            }
        }
        return zJ;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        j(view, i10, i11, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        m(view, i10, i11, i12, i13, 0, this.f1728m);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i10) {
        h(view, view2, i10, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.f12620h);
        SparseArray<Parcelable> sparseArray = hVar.f1762j;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            c cVar = p(childAt).f1744a;
            if (id2 != -1 && cVar != null && (parcelable2 = sparseArray.get(id2)) != null) {
                cVar.n(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableO;
        h hVar = new h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            c cVar = ((f) childAt.getLayoutParams()).f1744a;
            if (id2 != -1 && cVar != null && (parcelableO = cVar.o(childAt)) != null) {
                sparseArray.append(id2, parcelableO);
            }
        }
        hVar.f1762j = sparseArray;
        return hVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i10) {
        return o(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        i(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0029 A[PHI: r3
      0x0029: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:9:0x0020, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0052  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zU;
        boolean zR;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1732q == null) {
            zU = u(motionEvent, 1);
            if (!zU) {
                zR = false;
            }
            motionEventObtain = null;
            if (this.f1732q == null) {
                zR |= super.onTouchEvent(motionEvent);
            } else if (zU) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                w(false);
            }
            return zR;
        }
        zU = false;
        c cVar = ((f) this.f1732q.getLayoutParams()).f1744a;
        if (cVar != null) {
            zR = cVar.r(this, this.f1732q, motionEvent);
        } else {
            zR = false;
        }
        motionEventObtain = null;
        if (this.f1732q == null) {
            zR |= super.onTouchEvent(motionEvent);
        } else if (zU) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            w(false);
        } else {
            w(false);
        }
        return zR;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final f p(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f1745b) {
            if (view instanceof b) {
                c behavior = ((b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                fVar.b(behavior);
                fVar.f1745b = true;
            } else {
                d dVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    dVar = (d) superclass.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.b(dVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e10) {
                        StringBuilder sbC = a0.b.c("Default behavior class ");
                        sbC.append(dVar.value().getName());
                        sbC.append(" could not be instantiated. Did you forget a default constructor?");
                        Log.e("CoordinatorLayout", sbC.toString(), e10);
                    }
                }
                fVar.f1745b = true;
            }
        }
        return fVar;
    }

    public final boolean q(View view, int i10, int i11) {
        Rect rectA = a();
        g(view, rectA);
        try {
            return rectA.contains(i10, i11);
        } finally {
            rectA.setEmpty();
            E.a(rectA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00ea  */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public final void r(int i10) {
        int i11;
        Rect rect;
        int i12;
        boolean zD;
        boolean z10;
        boolean z11;
        int width;
        int i13;
        int i14;
        int i15;
        int height;
        int i16;
        int i17;
        int i18;
        c cVar;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iD = a0.e.d(this);
        int size = this.f1723h.size();
        Rect rectA = a();
        Rect rectA2 = a();
        Rect rectA3 = a();
        int i19 = 0;
        int i20 = i10;
        while (i19 < size) {
            View view = (View) this.f1723h.get(i19);
            f fVar = (f) view.getLayoutParams();
            if (i20 == 0 && view.getVisibility() == 8) {
                i12 = size;
                rect = rectA3;
                i11 = i19;
            } else {
                int i21 = 0;
                while (i21 < i19) {
                    if (fVar.f1755l == ((View) this.f1723h.get(i21))) {
                        f fVar2 = (f) view.getLayoutParams();
                        if (fVar2.f1754k != null) {
                            Rect rectA4 = a();
                            Rect rectA5 = a();
                            Rect rectA6 = a();
                            g(fVar2.f1754k, rectA4);
                            d(view, false, rectA5);
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            k(iD, rectA4, rectA6, fVar2, measuredWidth, measuredHeight);
                            boolean z12 = (rectA6.left == rectA5.left && rectA6.top == rectA5.top) ? false : true;
                            b(fVar2, rectA6, measuredWidth, measuredHeight);
                            int i22 = rectA6.left - rectA5.left;
                            int i23 = rectA6.top - rectA5.top;
                            if (i22 != 0) {
                                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                                view.offsetLeftAndRight(i22);
                            }
                            if (i23 != 0) {
                                WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                                view.offsetTopAndBottom(i23);
                            }
                            if (z12 && (cVar = fVar2.f1744a) != null) {
                                cVar.d(this, view, fVar2.f1754k);
                            }
                            rectA4.setEmpty();
                            i0.e<Rect> eVar = E;
                            eVar.a(rectA4);
                            rectA5.setEmpty();
                            eVar.a(rectA5);
                            rectA6.setEmpty();
                            eVar.a(rectA6);
                        }
                    }
                    i21++;
                    fVar = fVar;
                    size = size;
                    i19 = i19;
                    rectA3 = rectA3;
                }
                int i24 = size;
                Rect rect2 = rectA3;
                i11 = i19;
                f fVar3 = fVar;
                d(view, true, rectA2);
                if (fVar3.f1750g != 0 && !rectA2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(fVar3.f1750g, iD);
                    int i25 = absoluteGravity & 112;
                    if (i25 == 48) {
                        rectA.top = Math.max(rectA.top, rectA2.bottom);
                    } else if (i25 == 80) {
                        rectA.bottom = Math.max(rectA.bottom, getHeight() - rectA2.top);
                    }
                    int i26 = absoluteGravity & 7;
                    if (i26 == 3) {
                        rectA.left = Math.max(rectA.left, rectA2.right);
                    } else if (i26 == 5) {
                        rectA.right = Math.max(rectA.right, getWidth() - rectA2.left);
                    }
                }
                if (fVar3.f1751h != 0 && view.getVisibility() == 0) {
                    WeakHashMap<View, g0> weakHashMap4 = a0.f9147a;
                    if (a0.g.c(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                        f fVar4 = (f) view.getLayoutParams();
                        c cVar2 = fVar4.f1744a;
                        Rect rectA7 = a();
                        Rect rectA8 = a();
                        rectA8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        if (cVar2 == null || !cVar2.a(view, rectA7)) {
                            rectA7.set(rectA8);
                        } else if (!rectA8.contains(rectA7)) {
                            StringBuilder sbC = a0.b.c("Rect should be within the child's bounds. Rect:");
                            sbC.append(rectA7.toShortString());
                            sbC.append(" | Bounds:");
                            sbC.append(rectA8.toShortString());
                            throw new IllegalArgumentException(sbC.toString());
                        }
                        rectA8.setEmpty();
                        i0.e<Rect> eVar2 = E;
                        eVar2.a(rectA8);
                        if (rectA7.isEmpty()) {
                            rectA7.setEmpty();
                            eVar2.a(rectA7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(fVar4.f1751h, iD);
                            if ((absoluteGravity2 & 48) != 48 || (i17 = (rectA7.top - ((ViewGroup.MarginLayoutParams) fVar4).topMargin) - fVar4.f1753j) >= (i18 = rectA.top)) {
                                z10 = false;
                            } else {
                                y(view, i18 - i17);
                                z10 = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectA7.bottom) - ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin) + fVar4.f1753j) < (i16 = rectA.bottom)) {
                                y(view, height - i16);
                                z10 = true;
                            }
                            if (!z10) {
                                y(view, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i14 = (rectA7.left - ((ViewGroup.MarginLayoutParams) fVar4).leftMargin) - fVar4.f1752i) >= (i15 = rectA.left)) {
                                z11 = false;
                            } else {
                                x(view, i15 - i14);
                                z11 = true;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectA7.right) - ((ViewGroup.MarginLayoutParams) fVar4).rightMargin) + fVar4.f1752i) < (i13 = rectA.right)) {
                                x(view, width - i13);
                                z11 = true;
                            }
                            if (!z11) {
                                x(view, 0);
                            }
                            rectA7.setEmpty();
                            eVar2.a(rectA7);
                        }
                    }
                }
                if (i10 != 2) {
                    rect = rect2;
                    rect.set(((f) view.getLayoutParams()).f1760q);
                    if (rect.equals(rectA2)) {
                        i12 = i24;
                    } else {
                        ((f) view.getLayoutParams()).f1760q.set(rectA2);
                    }
                    i20 = i10;
                } else {
                    rect = rect2;
                }
                i12 = i24;
                for (int i27 = i11 + 1; i27 < i12; i27++) {
                    View view2 = (View) this.f1723h.get(i27);
                    f fVar5 = (f) view2.getLayoutParams();
                    c cVar3 = fVar5.f1744a;
                    if (cVar3 != null && cVar3.b(view2, view)) {
                        if (i10 == 0 && fVar5.f1759p) {
                            fVar5.f1759p = false;
                        } else {
                            if (i10 != 2) {
                                zD = cVar3.d(this, view2, view);
                            } else {
                                cVar3.e(this, view);
                                zD = true;
                            }
                            if (i10 == 1) {
                                fVar5.f1759p = zD;
                            }
                        }
                    }
                }
                i20 = i10;
            }
            i19 = i11 + 1;
            size = i12;
            rectA3 = rect;
        }
        Rect rect3 = rectA3;
        rectA.setEmpty();
        i0.e<Rect> eVar3 = E;
        eVar3.a(rectA);
        rectA2.setEmpty();
        eVar3.a(rectA2);
        rect3.setEmpty();
        eVar3.a(rect3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        c cVar = ((f) view.getLayoutParams()).f1744a;
        if (cVar == null || !cVar.m(this, view, rect, z10)) {
            return super.requestChildRectangleOnScreen(view, rect, z10);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        if (!z10 || this.f1729n) {
            return;
        }
        w(false);
        this.f1729n = true;
    }

    public final void s(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        View view2 = fVar.f1754k;
        int i11 = 0;
        if (view2 == null && fVar.f1749f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (view2 != null) {
            Rect rectA = a();
            Rect rectA2 = a();
            try {
                g(view2, rectA);
                f fVar2 = (f) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                k(i10, rectA, rectA2, fVar2, measuredWidth, measuredHeight);
                b(fVar2, rectA2, measuredWidth, measuredHeight);
                view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
                return;
            } finally {
                rectA.setEmpty();
                i0.e<Rect> eVar = E;
                eVar.a(rectA);
                rectA2.setEmpty();
                eVar.a(rectA2);
            }
        }
        int i12 = fVar.f1748e;
        if (i12 < 0) {
            f fVar3 = (f) view.getLayoutParams();
            Rect rectA3 = a();
            rectA3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin);
            if (this.f1736u != null) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                if (a0.d.b(this) && !a0.d.b(view)) {
                    rectA3.left = this.f1736u.d() + rectA3.left;
                    rectA3.top = this.f1736u.f() + rectA3.top;
                    rectA3.right -= this.f1736u.e();
                    rectA3.bottom -= this.f1736u.c();
                }
            }
            Rect rectA4 = a();
            int i13 = fVar3.f1746c;
            if ((i13 & 7) == 0) {
                i13 |= 8388611;
            }
            if ((i13 & 112) == 0) {
                i13 |= 48;
            }
            j0.f.b(i13, view.getMeasuredWidth(), view.getMeasuredHeight(), rectA3, rectA4, i10);
            view.layout(rectA4.left, rectA4.top, rectA4.right, rectA4.bottom);
            rectA3.setEmpty();
            i0.e<Rect> eVar2 = E;
            eVar2.a(rectA3);
            rectA4.setEmpty();
            eVar2.a(rectA4);
            return;
        }
        f fVar4 = (f) view.getLayoutParams();
        int i14 = fVar4.f1746c;
        if (i14 == 0) {
            i14 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i14, i10);
        int i15 = absoluteGravity & 7;
        int i16 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i10 == 1) {
            i12 = width - i12;
        }
        int iL = l(i12) - measuredWidth2;
        if (i15 == 1) {
            iL += measuredWidth2 / 2;
        } else if (i15 == 5) {
            iL += measuredWidth2;
        }
        if (i16 == 16) {
            i11 = 0 + (measuredHeight2 / 2);
        } else if (i16 == 80) {
            i11 = measuredHeight2 + 0;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar4).leftMargin, Math.min(iL, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) fVar4).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar4).topMargin, Math.min(i11, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z10) {
        super.setFitsSystemWindows(z10);
        z();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1739x = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f1738w;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1738w = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1738w.setState(getDrawableState());
                }
                Drawable drawable3 = this.f1738w;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                b0.a.c.b(drawable3, a0.e.d(this));
                this.f1738w.setVisible(getVisibility() == 0, false);
                this.f1738w.setCallback(this);
            }
            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
            a0.d.k(this);
        }
    }

    public void setStatusBarBackgroundColor(int i10) {
        setStatusBarBackground(new ColorDrawable(i10));
    }

    public void setStatusBarBackgroundResource(int i10) {
        Drawable drawableB;
        if (i10 != 0) {
            Context context = getContext();
            Object obj = y.a.f18143a;
            drawableB = y.a.b.b(context, i10);
        } else {
            drawableB = null;
        }
        setStatusBarBackground(drawableB);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f1738w;
        if (drawable == null || drawable.isVisible() == z10) {
            return;
        }
        this.f1738w.setVisible(z10, false);
    }

    public final void t(View view, int i10, int i11, int i12) {
        measureChildWithMargins(view, i10, i11, i12, 0);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List, java.util.List<android.view.View>] */
    public final boolean u(MotionEvent motionEvent, int i10) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        ?? r10 = this.f1725j;
        r10.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            r10.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i11) : i11));
        }
        Comparator<View> comparator = D;
        if (comparator != null) {
            Collections.sort(r10, comparator);
        }
        int size = r10.size();
        MotionEvent motionEventObtain = null;
        boolean zG = false;
        boolean z11 = false;
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) r10.get(i12);
            f fVar = (f) view.getLayoutParams();
            c cVar = fVar.f1744a;
            if (!(zG || z11) || actionMasked == 0) {
                if (!zG && cVar != null) {
                    if (i10 == 0) {
                        zG = cVar.g(this, view, motionEvent);
                    } else if (i10 == 1) {
                        zG = cVar.r(this, view, motionEvent);
                    }
                    if (zG) {
                        this.f1732q = view;
                    }
                }
                if (fVar.f1744a == null) {
                    fVar.f1756m = false;
                }
                boolean z12 = fVar.f1756m;
                if (z12) {
                    z10 = true;
                } else {
                    z10 = z12 | false;
                    fVar.f1756m = z10;
                }
                z11 = z10 && !z12;
                if (z10 && !z11) {
                    break;
                }
            } else if (cVar != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i10 == 0) {
                    cVar.g(this, view, motionEventObtain);
                } else if (i10 == 1) {
                    cVar.r(this, view, motionEventObtain);
                }
            }
        }
        r10.clear();
        return zG;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r1v12 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    public final void v() {
        /*
            Method dump skipped, instruction units count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.v():void");
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1738w;
    }

    public final void w(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            c cVar = ((f) childAt.getLayoutParams()).f1744a;
            if (cVar != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z10) {
                    cVar.g(this, childAt, motionEventObtain);
                } else {
                    cVar.r(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ((f) getChildAt(i11).getLayoutParams()).f1756m = false;
        }
        this.f1732q = null;
        this.f1729n = false;
    }

    public final void x(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f1752i;
        if (i11 != i10) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            view.offsetLeftAndRight(i10 - i11);
            fVar.f1752i = i10;
        }
    }

    public final void y(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int i11 = fVar.f1753j;
        if (i11 != i10) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            view.offsetTopAndBottom(i10 - i11);
            fVar.f1753j = i10;
        }
    }

    public final void z() {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (!a0.d.b(this)) {
            a0.i.u(this, null);
            return;
        }
        if (this.f1740y == null) {
            this.f1740y = new a();
        }
        a0.i.u(this, this.f1740y);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    public static class h extends p0.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public SparseArray<Parcelable> f1762j;

        public static class a implements Parcelable.ClassLoaderCreator<h> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new h[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i10 = parcel.readInt();
            int[] iArr = new int[i10];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f1762j = new SparseArray<>(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                this.f1762j.append(iArr[i11], parcelableArray[i11]);
            }
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            SparseArray<Parcelable> sparseArray = this.f1762j;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = this.f1762j.keyAt(i11);
                parcelableArr[i11] = this.f1762j.valueAt(i11);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i10);
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c f1744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1745b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1746c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1747d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1748e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1749f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1750g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1751h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1752i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1753j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public View f1754k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f1755l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f1756m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f1757n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f1758o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f1759p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final Rect f1760q;

        public f() {
            super(-2, -2);
            this.f1745b = false;
            this.f1746c = 0;
            this.f1747d = 0;
            this.f1748e = -1;
            this.f1749f = -1;
            this.f1750g = 0;
            this.f1751h = 0;
            this.f1760q = new Rect();
        }

        public final boolean a(int i10) {
            if (i10 == 0) {
                return this.f1757n;
            }
            if (i10 != 1) {
                return false;
            }
            return this.f1758o;
        }

        public final void b(c cVar) {
            c cVar2 = this.f1744a;
            if (cVar2 != cVar) {
                if (cVar2 != null) {
                    cVar2.f();
                }
                this.f1744a = cVar;
                this.f1745b = true;
                if (cVar != null) {
                    cVar.c(this);
                }
            }
        }

        public final void c(int i10, boolean z10) {
            if (i10 == 0) {
                this.f1757n = z10;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.f1758o = z10;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public f(Context context, AttributeSet attributeSet) {
            c cVarNewInstance;
            super(context, attributeSet);
            this.f1745b = false;
            this.f1746c = 0;
            this.f1747d = 0;
            this.f1748e = -1;
            this.f1749f = -1;
            this.f1750g = 0;
            this.f1751h = 0;
            this.f1760q = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.f1746c = typedArrayObtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1749f = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1747d = typedArrayObtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1748e = typedArrayObtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1750g = typedArrayObtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1751h = typedArrayObtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            int i10 = R.styleable.CoordinatorLayout_Layout_layout_behavior;
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i10);
            this.f1745b = zHasValue;
            if (zHasValue) {
                String string = typedArrayObtainStyledAttributes.getString(i10);
                String str = CoordinatorLayout.A;
                if (TextUtils.isEmpty(string)) {
                    cVarNewInstance = null;
                } else {
                    if (string.startsWith(".")) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.A;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal<Map<String, Constructor<c>>> threadLocal = CoordinatorLayout.C;
                        Map<String, Constructor<c>> map = threadLocal.get();
                        if (map == null) {
                            map = new HashMap<>();
                            threadLocal.set(map);
                        }
                        Constructor<c> constructor = map.get(string);
                        if (constructor == null) {
                            constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.B);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        cVarNewInstance = constructor.newInstance(context, attributeSet);
                    } catch (Exception e10) {
                        throw new RuntimeException(androidx.recyclerview.widget.d.c("Could not inflate Behavior subclass ", string), e10);
                    }
                }
                this.f1744a = cVarNewInstance;
            }
            typedArrayObtainStyledAttributes.recycle();
            c cVar = this.f1744a;
            if (cVar != null) {
                cVar.c(this);
            }
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f1745b = false;
            this.f1746c = 0;
            this.f1747d = 0;
            this.f1748e = -1;
            this.f1749f = -1;
            this.f1750g = 0;
            this.f1751h = 0;
            this.f1760q = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1745b = false;
            this.f1746c = 0;
            this.f1747d = 0;
            this.f1748e = -1;
            this.f1749f = -1;
            this.f1750g = 0;
            this.f1751h = 0;
            this.f1760q = new Rect();
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1745b = false;
            this.f1746c = 0;
            this.f1747d = 0;
            this.f1748e = -1;
            this.f1749f = -1;
            this.f1750g = 0;
            this.f1751h = 0;
            this.f1760q = new Rect();
        }
    }
}
