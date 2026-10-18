package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.e0;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.google.android.material.R;
import g6.q;
import g6.r;
import g6.s;
import j0.a0;
import j0.g0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import m6.f;
import m6.i;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c<V> {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final int f5038b0 = R.style.Widget_Design_BottomSheet_Modal;
    public int A;
    public int B;
    public int C;
    public float D;
    public int E;
    public float F;
    public boolean G;
    public boolean H;
    public boolean I;
    public int J;
    public q0.c K;
    public boolean L;
    public int M;
    public boolean N;
    public int O;
    public int P;
    public int Q;
    public WeakReference<V> R;
    public WeakReference<View> S;
    public final ArrayList<c> T;
    public VelocityTracker U;
    public int V;
    public int W;
    public boolean X;
    public Map<View, Integer> Y;
    public int Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5039a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final b f5040a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5046g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f f5047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorStateList f5048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5050k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5051l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5052m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5053n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5054o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f5055p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f5056q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f5057r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5058s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f5059t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5060u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f5061v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public i f5062w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f5063x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final BottomSheetBehavior<V>.e f5064y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ValueAnimator f5065z;

    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ View f5066h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f5067i;

        public a(View view, int i10) {
            this.f5066h = view;
            this.f5067i = i10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            View view = this.f5066h;
            int i10 = this.f5067i;
            int i11 = BottomSheetBehavior.f5038b0;
            bottomSheetBehavior.E(view, i10, false);
        }
    }

    public class b extends q0.c.AbstractC0239c {
        public b() {
        }

        @Override // q0.c.AbstractC0239c
        public final int a(View view, int i10) {
            return view.getLeft();
        }

        @Override // q0.c.AbstractC0239c
        public final int b(View view, int i10) {
            int iX = BottomSheetBehavior.this.x();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return o.g(i10, iX, bottomSheetBehavior.G ? bottomSheetBehavior.Q : bottomSheetBehavior.E);
        }

        @Override // q0.c.AbstractC0239c
        public final int d() {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.G ? bottomSheetBehavior.Q : bottomSheetBehavior.E;
        }

        @Override // q0.c.AbstractC0239c
        public final void f(int i10) {
            if (i10 == 1) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.I) {
                    bottomSheetBehavior.C(1);
                }
            }
        }

        @Override // q0.c.AbstractC0239c
        public final void g(View view, int i10, int i11) {
            BottomSheetBehavior.this.u(i11);
        }

        /* JADX WARN: Code duplicated, block: B:41:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:6:0x000f  */
        @Override // q0.c.AbstractC0239c
        public final void h(View view, float f10, float f11) {
            int i10 = 4;
            if (f11 < 0.0f) {
                if (!BottomSheetBehavior.this.f5041b) {
                    int top = view.getTop();
                    System.currentTimeMillis();
                    Objects.requireNonNull(BottomSheetBehavior.this);
                    if (top > BottomSheetBehavior.this.C) {
                        i10 = 6;
                    }
                }
                i10 = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.G && bottomSheetBehavior.D(view, f11)) {
                    if (Math.abs(f10) >= Math.abs(f11) || f11 <= 500.0f) {
                        int top2 = view.getTop();
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        if (!(top2 > (bottomSheetBehavior2.x() + bottomSheetBehavior2.Q) / 2)) {
                            if (!BottomSheetBehavior.this.f5041b && Math.abs(view.getTop() - BottomSheetBehavior.this.x()) >= Math.abs(view.getTop() - BottomSheetBehavior.this.C)) {
                                i10 = 6;
                            } else {
                                i10 = 3;
                            }
                        }
                    }
                    i10 = 5;
                } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                    int top3 = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior3.f5041b) {
                        int i11 = bottomSheetBehavior3.C;
                        if (top3 < i11) {
                            if (top3 < Math.abs(top3 - bottomSheetBehavior3.E)) {
                                i10 = 3;
                            } else {
                                Objects.requireNonNull(BottomSheetBehavior.this);
                            }
                        } else if (Math.abs(top3 - i11) < Math.abs(top3 - BottomSheetBehavior.this.E)) {
                            Objects.requireNonNull(BottomSheetBehavior.this);
                        }
                        i10 = 6;
                    } else if (Math.abs(top3 - bottomSheetBehavior3.B) < Math.abs(top3 - BottomSheetBehavior.this.E)) {
                        i10 = 3;
                    }
                } else if (!BottomSheetBehavior.this.f5041b) {
                    int top4 = view.getTop();
                    if (Math.abs(top4 - BottomSheetBehavior.this.C) < Math.abs(top4 - BottomSheetBehavior.this.E)) {
                        Objects.requireNonNull(BottomSheetBehavior.this);
                        i10 = 6;
                    }
                }
            }
            BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
            Objects.requireNonNull(bottomSheetBehavior4);
            bottomSheetBehavior4.E(view, i10, true);
        }

        @Override // q0.c.AbstractC0239c
        public final boolean i(View view, int i10) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i11 = bottomSheetBehavior.J;
            if (i11 == 1 || bottomSheetBehavior.X) {
                return false;
            }
            if (i11 == 3 && bottomSheetBehavior.V == i10) {
                WeakReference<View> weakReference = bottomSheetBehavior.S;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.R;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    public static abstract class c {
        public abstract void a(View view, float f10);

        public abstract void b(View view, int i10);
    }

    public class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f5075a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f5076b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f5077c = new a();

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                e eVar = e.this;
                eVar.f5076b = false;
                q0.c cVar = BottomSheetBehavior.this.K;
                if (cVar != null && cVar.h()) {
                    e eVar2 = e.this;
                    eVar2.a(eVar2.f5075a);
                    return;
                }
                e eVar3 = e.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.J == 2) {
                    bottomSheetBehavior.C(eVar3.f5075a);
                }
            }
        }

        public e() {
        }

        public final void a(int i10) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.R;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f5075a = i10;
            if (this.f5076b) {
                return;
            }
            V v10 = BottomSheetBehavior.this.R.get();
            a aVar = this.f5077c;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.m(v10, aVar);
            this.f5076b = true;
        }
    }

    public BottomSheetBehavior() {
        this.f5039a = 0;
        this.f5041b = true;
        this.f5049j = -1;
        this.f5050k = -1;
        this.f5064y = new e();
        this.D = 0.5f;
        this.F = -1.0f;
        this.I = true;
        this.J = 4;
        this.T = new ArrayList<>();
        this.Z = -1;
        this.f5040a0 = new b();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0015  */
    public final void A(int i10) {
        boolean z10 = true;
        if (i10 == -1) {
            if (this.f5044e) {
                z10 = false;
            } else {
                this.f5044e = true;
            }
        } else if (this.f5044e || this.f5043d != i10) {
            this.f5044e = false;
            this.f5043d = Math.max(0, i10);
        } else {
            z10 = false;
        }
        if (z10) {
            I();
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    public final void B(int i10) {
        boolean z10;
        if (i10 == 1 || i10 == 2) {
            throw new IllegalArgumentException(a1.f.d(a0.b.c("STATE_"), i10 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.G && i10 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i10);
            return;
        }
        int i11 = (i10 == 6 && this.f5041b && y(i10) <= this.B) ? 3 : i10;
        WeakReference<V> weakReference = this.R;
        if (weakReference == null || weakReference.get() == null) {
            C(i10);
            return;
        }
        V v10 = this.R.get();
        a aVar = new a(v10, i11);
        ViewParent parent = v10.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            z10 = a0.g.b(v10);
        }
        if (z10) {
            v10.post(aVar);
        } else {
            aVar.run();
        }
    }

    public final void C(int i10) {
        V v10;
        if (this.J == i10) {
            return;
        }
        this.J = i10;
        if (i10 != 4 && i10 != 3 && i10 != 6) {
            boolean z10 = this.G;
        }
        WeakReference<V> weakReference = this.R;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            H(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            H(false);
        }
        G(i10);
        for (int i11 = 0; i11 < this.T.size(); i11++) {
            this.T.get(i11).b(v10, i10);
        }
        F();
    }

    public final boolean D(View view, float f10) {
        if (this.H) {
            return true;
        }
        if (view.getTop() < this.E) {
            return false;
        }
        return Math.abs(((f10 * 0.1f) + ((float) view.getTop())) - ((float) this.E)) / ((float) t()) > 0.5f;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    public final void E(View view, int i10, boolean z10) {
        int iY = y(i10);
        q0.c cVar = this.K;
        boolean z11 = false;
        if (cVar != null) {
            if (!z10) {
                int left = view.getLeft();
                cVar.f13533r = view;
                cVar.f13518c = -1;
                boolean zK = cVar.k(left, iY, 0, 0);
                if (!zK && cVar.f13516a == 0 && cVar.f13533r != null) {
                    cVar.f13533r = null;
                }
                if (zK) {
                    z11 = true;
                }
            } else if (cVar.s(view.getLeft(), iY)) {
                z11 = true;
            }
        }
        if (!z11) {
            C(i10);
            return;
        }
        C(2);
        G(i10);
        this.f5064y.a(i10);
    }

    public final void F() {
        V v10;
        int iA;
        WeakReference<V> weakReference = this.R;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        a0.m(524288, v10);
        a0.j(v10, 0);
        a0.m(262144, v10);
        a0.j(v10, 0);
        a0.m(1048576, v10);
        a0.j(v10, 0);
        int i10 = this.Z;
        if (i10 != -1) {
            a0.m(i10, v10);
            a0.j(v10, 0);
        }
        if (!this.f5041b && this.J != 6) {
            String string = v10.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            t5.c cVar = new t5.c(this, 6);
            List<k0.f.a> listH = a0.h(v10);
            int i11 = 0;
            while (true) {
                if (i11 >= listH.size()) {
                    int i12 = 0;
                    int i13 = -1;
                    while (true) {
                        int[] iArr = a0.f9150d;
                        if (i12 >= iArr.length || i13 != -1) {
                            break;
                        }
                        int i14 = iArr[i12];
                        boolean z10 = true;
                        for (int i15 = 0; i15 < listH.size(); i15++) {
                            z10 &= listH.get(i15).a() != i14;
                        }
                        if (z10) {
                            i13 = i14;
                        }
                        i12++;
                    }
                    iA = i13;
                    break;
                }
                if (TextUtils.equals(string, listH.get(i11).b())) {
                    iA = listH.get(i11).a();
                    break;
                }
                i11++;
            }
            if (iA != -1) {
                a0.a(v10, new k0.f.a(null, iA, string, cVar, null));
            }
            this.Z = iA;
        }
        if (this.G && this.J != 5) {
            z(v10, k0.f.a.f9560j, 5);
        }
        int i16 = this.J;
        if (i16 == 3) {
            z(v10, k0.f.a.f9559i, this.f5041b ? 4 : 6);
            return;
        }
        if (i16 == 4) {
            z(v10, k0.f.a.f9558h, this.f5041b ? 3 : 6);
        } else {
            if (i16 != 6) {
                return;
            }
            z(v10, k0.f.a.f9559i, 4);
            z(v10, k0.f.a.f9558h, 3);
        }
    }

    public final void G(int i10) {
        ValueAnimator valueAnimator;
        if (i10 == 2) {
            return;
        }
        boolean z10 = i10 == 3;
        if (this.f5063x != z10) {
            this.f5063x = z10;
            if (this.f5047h == null || (valueAnimator = this.f5065z) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f5065z.reverse();
                return;
            }
            float f10 = z10 ? 0.0f : 1.0f;
            this.f5065z.setFloatValues(1.0f - f10, f10);
            this.f5065z.start();
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.HashMap, java.util.Map<android.view.View, java.lang.Integer>] */
    public final void H(boolean z10) {
        WeakReference<V> weakReference = this.R;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                if (this.Y != null) {
                    return;
                } else {
                    this.Y = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.R.get() && z10) {
                    this.Y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z10) {
                return;
            }
            this.Y = null;
        }
    }

    public final void I() {
        V v10;
        if (this.R != null) {
            s();
            if (this.J != 4 || (v10 = this.R.get()) == null) {
                return;
            }
            v10.requestLayout();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void c(CoordinatorLayout.f fVar) {
        this.R = null;
        this.K = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void f() {
        this.R = null;
        this.K = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean g(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        q0.c cVar;
        if (!v10.isShown() || !this.I) {
            this.L = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.V = -1;
            VelocityTracker velocityTracker = this.U;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.U = null;
            }
        }
        if (this.U == null) {
            this.U = VelocityTracker.obtain();
        }
        this.U.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.W = (int) motionEvent.getY();
            if (this.J != 2) {
                WeakReference<View> weakReference = this.S;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.q(view, x10, this.W)) {
                    this.V = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.X = true;
                }
            }
            this.L = this.V == -1 && !coordinatorLayout.q(v10, x10, this.W);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.X = false;
            this.V = -1;
            if (this.L) {
                this.L = false;
                return false;
            }
        }
        if (!this.L && (cVar = this.K) != null && cVar.t(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.S;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.L || this.J == 1 || coordinatorLayout.q(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.K == null || Math.abs(((float) this.W) - motionEvent.getY()) <= ((float) this.K.f13517b)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean h(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.d.b(coordinatorLayout) && !a0.d.b(v10)) {
            v10.setFitsSystemWindows(true);
        }
        if (this.R == null) {
            this.f5045f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z10 = (Build.VERSION.SDK_INT < 29 || this.f5052m || this.f5044e) ? false : true;
            if (this.f5053n || this.f5054o || this.f5055p || this.f5057r || this.f5058s || this.f5059t || z10) {
                a0.i.u(v10, new q(new t5.b(this, z10), new s.b(a0.e.f(v10), v10.getPaddingTop(), a0.e.e(v10), v10.getPaddingBottom())));
                if (a0.g.b(v10)) {
                    a0.h.c(v10);
                } else {
                    v10.addOnAttachStateChangeListener(new r());
                }
            }
            this.R = new WeakReference<>(v10);
            f fVar = this.f5047h;
            if (fVar != null) {
                a0.d.q(v10, fVar);
                f fVar2 = this.f5047h;
                float fI = this.F;
                if (fI == -1.0f) {
                    fI = a0.i.i(v10);
                }
                fVar2.n(fI);
                boolean z11 = this.J == 3;
                this.f5063x = z11;
                this.f5047h.p(z11 ? 0.0f : 1.0f);
            } else {
                ColorStateList colorStateList = this.f5048i;
                if (colorStateList != null) {
                    a0.i.q(v10, colorStateList);
                }
            }
            F();
            if (a0.d.c(v10) == 0) {
                a0.d.s(v10, 1);
            }
        }
        if (this.K == null) {
            this.K = new q0.c(coordinatorLayout.getContext(), coordinatorLayout, this.f5040a0);
        }
        int top = v10.getTop();
        coordinatorLayout.s(v10, i10);
        this.P = coordinatorLayout.getWidth();
        this.Q = coordinatorLayout.getHeight();
        int height = v10.getHeight();
        this.O = height;
        int i11 = this.Q;
        int i12 = i11 - height;
        int i13 = this.f5061v;
        if (i12 < i13) {
            if (this.f5056q) {
                this.O = i11;
            } else {
                this.O = i11 - i13;
            }
        }
        this.B = Math.max(0, i11 - this.O);
        this.C = (int) ((1.0f - this.D) * this.Q);
        s();
        int i14 = this.J;
        if (i14 == 3) {
            v10.offsetTopAndBottom(x());
        } else if (i14 == 6) {
            v10.offsetTopAndBottom(this.C);
        } else if (this.G && i14 == 5) {
            v10.offsetTopAndBottom(this.Q);
        } else if (i14 == 4) {
            v10.offsetTopAndBottom(this.E);
        } else if (i14 == 1 || i14 == 2) {
            v10.offsetTopAndBottom(top - v10.getTop());
        }
        this.S = new WeakReference<>(v(v10));
        for (int i15 = 0; i15 < this.T.size(); i15++) {
            Objects.requireNonNull(this.T.get(i15));
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(w(i10, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, this.f5049j, marginLayoutParams.width), w(i12, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, this.f5050k, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean j(View view) {
        WeakReference<View> weakReference = this.S;
        return (weakReference == null || view != weakReference.get() || this.J == 3) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void k(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.S;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v10.getTop();
        int i13 = top - i11;
        if (i11 > 0) {
            if (i13 < x()) {
                iArr[1] = top - x();
                int i14 = -iArr[1];
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                v10.offsetTopAndBottom(i14);
                C(3);
            } else {
                if (!this.I) {
                    return;
                }
                iArr[1] = i11;
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                v10.offsetTopAndBottom(-i11);
                C(1);
            }
        } else if (i11 < 0 && !view.canScrollVertically(-1)) {
            int i15 = this.E;
            if (i13 > i15 && !this.G) {
                iArr[1] = top - i15;
                int i16 = -iArr[1];
                WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                v10.offsetTopAndBottom(i16);
                C(4);
            } else {
                if (!this.I) {
                    return;
                }
                iArr[1] = i11;
                WeakHashMap<View, g0> weakHashMap4 = a0.f9147a;
                v10.offsetTopAndBottom(-i11);
                C(1);
            }
        }
        u(v10.getTop());
        this.M = i11;
        this.N = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void l(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void n(View view, Parcelable parcelable) {
        d dVar = (d) parcelable;
        int i10 = this.f5039a;
        if (i10 != 0) {
            if (i10 == -1 || (i10 & 1) == 1) {
                this.f5043d = dVar.f5071k;
            }
            if (i10 == -1 || (i10 & 2) == 2) {
                this.f5041b = dVar.f5072l;
            }
            if (i10 == -1 || (i10 & 4) == 4) {
                this.G = dVar.f5073m;
            }
            if (i10 == -1 || (i10 & 8) == 8) {
                this.H = dVar.f5074n;
            }
        }
        int i11 = dVar.f5070j;
        if (i11 == 1 || i11 == 2) {
            this.J = 4;
        } else {
            this.J = i11;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final Parcelable o(View view) {
        return new d((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11) {
        this.M = 0;
        this.N = false;
        return (i10 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:48:0x0098  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:51:0x00af  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void q(CoordinatorLayout coordinatorLayout, V v10, View view, int i10) {
        int top;
        int top2;
        int i11;
        float yVelocity;
        int i12 = 3;
        if (v10.getTop() == x()) {
            C(3);
            return;
        }
        WeakReference<View> weakReference = this.S;
        if (weakReference != null && view == weakReference.get() && this.N) {
            if (this.M > 0) {
                if (!this.f5041b && v10.getTop() > this.C) {
                    i12 = 6;
                }
            } else if (this.G) {
                VelocityTracker velocityTracker = this.U;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f5042c);
                    yVelocity = this.U.getYVelocity(this.V);
                }
                if (D(v10, yVelocity)) {
                    i12 = 5;
                } else if (this.M == 0) {
                    top2 = v10.getTop();
                    if (this.f5041b) {
                        i11 = this.C;
                        if (top2 < i11) {
                            if (top2 >= Math.abs(top2 - this.E)) {
                            }
                        } else if (Math.abs(top2 - i11) < Math.abs(top2 - this.E)) {
                            i12 = 4;
                        }
                        i12 = 6;
                    } else if (Math.abs(top2 - this.B) >= Math.abs(top2 - this.E)) {
                        i12 = 4;
                    }
                } else {
                    if (!this.f5041b) {
                        top = v10.getTop();
                        if (Math.abs(top - this.C) < Math.abs(top - this.E)) {
                            i12 = 6;
                        }
                    }
                    i12 = 4;
                }
            } else if (this.M == 0) {
                top2 = v10.getTop();
                if (this.f5041b) {
                    i11 = this.C;
                    if (top2 < i11) {
                        if (top2 >= Math.abs(top2 - this.E)) {
                        }
                    } else if (Math.abs(top2 - i11) < Math.abs(top2 - this.E)) {
                        i12 = 4;
                    }
                    i12 = 6;
                } else if (Math.abs(top2 - this.B) >= Math.abs(top2 - this.E)) {
                    i12 = 4;
                }
            } else {
                if (!this.f5041b) {
                    top = v10.getTop();
                    if (Math.abs(top - this.C) < Math.abs(top - this.E)) {
                        i12 = 6;
                    }
                }
                i12 = 4;
            }
            E(v10, i12, false);
            this.N = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean r(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        boolean z10 = false;
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i10 = this.J;
        if (i10 == 1 && actionMasked == 0) {
            return true;
        }
        q0.c cVar = this.K;
        if (cVar != null && (this.I || i10 == 1)) {
            cVar.m(motionEvent);
        }
        if (actionMasked == 0) {
            this.V = -1;
            VelocityTracker velocityTracker = this.U;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.U = null;
            }
        }
        if (this.U == null) {
            this.U = VelocityTracker.obtain();
        }
        this.U.addMovement(motionEvent);
        if (this.K != null && (this.I || this.J == 1)) {
            z10 = true;
        }
        if (z10 && actionMasked == 2 && !this.L) {
            float fAbs = Math.abs(this.W - motionEvent.getY());
            q0.c cVar2 = this.K;
            if (fAbs > cVar2.f13517b) {
                cVar2.b(v10, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.L;
    }

    public final void s() {
        int iT = t();
        if (this.f5041b) {
            this.E = Math.max(this.Q - iT, this.B);
        } else {
            this.E = this.Q - iT;
        }
    }

    public final int t() {
        int i10;
        if (this.f5044e) {
            return Math.min(Math.max(this.f5045f, this.Q - ((this.P * 9) / 16)), this.O) + this.f5060u;
        }
        return (this.f5052m || this.f5053n || (i10 = this.f5051l) <= 0) ? this.f5043d + this.f5060u : Math.max(this.f5043d, i10 + this.f5046g);
    }

    public final void u(int i10) {
        float f10;
        float fX;
        V v10 = this.R.get();
        if (v10 == null || this.T.isEmpty()) {
            return;
        }
        int i11 = this.E;
        if (i10 > i11 || i11 == x()) {
            int i12 = this.E;
            f10 = i12 - i10;
            fX = this.Q - i12;
        } else {
            int i13 = this.E;
            f10 = i13 - i10;
            fX = i13 - x();
        }
        float f11 = f10 / fX;
        for (int i14 = 0; i14 < this.T.size(); i14++) {
            this.T.get(i14).a(v10, f11);
        }
    }

    public final View v(View view) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.i.p(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View viewV = v(viewGroup.getChildAt(i10));
            if (viewV != null) {
                return viewV;
            }
        }
        return null;
    }

    public final int w(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    public final int x() {
        if (this.f5041b) {
            return this.B;
        }
        return Math.max(this.A, this.f5056q ? 0 : this.f5061v);
    }

    public final int y(int i10) {
        if (i10 == 3) {
            return x();
        }
        if (i10 == 4) {
            return this.E;
        }
        if (i10 == 5) {
            return this.Q;
        }
        if (i10 == 6) {
            return this.C;
        }
        throw new IllegalArgumentException(e0.d("Invalid state to get top offset: ", i10));
    }

    public final void z(V v10, k0.f.a aVar, int i10) {
        a0.n(v10, aVar, new t5.c(this, i10));
    }

    public static class d extends p0.a {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f5070j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f5071k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f5072l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f5073m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f5074n;

        public class a implements Parcelable.ClassLoaderCreator<d> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new d(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new d[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new d(parcel, (ClassLoader) null);
            }
        }

        public d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5070j = parcel.readInt();
            this.f5071k = parcel.readInt();
            this.f5072l = parcel.readInt() == 1;
            this.f5073m = parcel.readInt() == 1;
            this.f5074n = parcel.readInt() == 1;
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeInt(this.f5070j);
            parcel.writeInt(this.f5071k);
            parcel.writeInt(this.f5072l ? 1 : 0);
            parcel.writeInt(this.f5073m ? 1 : 0);
            parcel.writeInt(this.f5074n ? 1 : 0);
        }

        public d(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f5070j = bottomSheetBehavior.J;
            this.f5071k = bottomSheetBehavior.f5043d;
            this.f5072l = bottomSheetBehavior.f5041b;
            this.f5073m = bottomSheetBehavior.G;
            this.f5074n = bottomSheetBehavior.H;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.f5039a = 0;
        this.f5041b = true;
        this.f5049j = -1;
        this.f5050k = -1;
        this.f5064y = new e();
        this.D = 0.5f;
        this.F = -1.0f;
        this.I = true;
        this.J = 4;
        this.T = new ArrayList<>();
        this.Z = -1;
        this.f5040a0 = new b();
        this.f5046g = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        int i11 = R.styleable.BottomSheetBehavior_Layout_backgroundTint;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.f5048i = j6.c.a(context, typedArrayObtainStyledAttributes, i11);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.f5062w = new i(i.b(context, attributeSet, R.attr.bottomSheetStyle, f5038b0));
        }
        if (this.f5062w != null) {
            f fVar = new f(this.f5062w);
            this.f5047h = fVar;
            fVar.m(context);
            ColorStateList colorStateList = this.f5048i;
            if (colorStateList != null) {
                this.f5047h.o(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f5047h.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f5065z = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f5065z.addUpdateListener(new t5.a(this));
        this.F = typedArrayObtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        int i12 = R.styleable.BottomSheetBehavior_Layout_android_maxWidth;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            this.f5049j = typedArrayObtainStyledAttributes.getDimensionPixelSize(i12, -1);
        }
        int i13 = R.styleable.BottomSheetBehavior_Layout_android_maxHeight;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            this.f5050k = typedArrayObtainStyledAttributes.getDimensionPixelSize(i13, -1);
        }
        int i14 = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i14);
        if (typedValuePeekValue != null && (i10 = typedValuePeekValue.data) == -1) {
            A(i10);
        } else {
            A(typedArrayObtainStyledAttributes.getDimensionPixelSize(i14, -1));
        }
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false);
        if (this.G != z10) {
            this.G = z10;
            if (!z10 && this.J == 5) {
                B(4);
            }
            F();
        }
        this.f5052m = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.f5041b != z11) {
            this.f5041b = z11;
            if (this.R != null) {
                s();
            }
            C((this.f5041b && this.J == 6) ? 3 : this.J);
            F();
        }
        this.H = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        this.I = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true);
        this.f5039a = typedArrayObtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0);
        float f10 = typedArrayObtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f);
        if (f10 > 0.0f && f10 < 1.0f) {
            this.D = f10;
            if (this.R != null) {
                this.C = (int) ((1.0f - f10) * this.Q);
            }
            int i15 = R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i15);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i16 = typedValuePeekValue2.data;
                if (i16 >= 0) {
                    this.A = i16;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(i15, 0);
                if (dimensionPixelOffset >= 0) {
                    this.A = dimensionPixelOffset;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.f5053n = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
            this.f5054o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
            this.f5055p = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
            this.f5056q = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
            this.f5057r = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
            this.f5058s = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
            this.f5059t = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
            typedArrayObtainStyledAttributes.recycle();
            this.f5042c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
