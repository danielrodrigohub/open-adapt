package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.appcompat.widget.y0;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements j0.l {
    public static final int[] I0 = {R.attr.nestedScrollingEnabled};
    public static final Class<?>[] J0;
    public static final c K0;
    public boolean A;
    public final int[] A0;
    public boolean B;
    public final int[] B0;
    public int C;
    public final List<b0> C0;
    public boolean D;
    public b D0;
    public boolean E;
    public boolean E0;
    public boolean F;
    public int F0;
    public int G;
    public int G0;
    public boolean H;
    public final d H0;
    public final AccessibilityManager I;
    public List<o> J;
    public boolean K;
    public boolean L;
    public int M;
    public int N;
    public i O;
    public EdgeEffect P;
    public EdgeEffect Q;
    public EdgeEffect R;
    public EdgeEffect S;
    public j T;
    public int U;
    public int V;
    public VelocityTracker W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f2399a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2400b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2401c0;
    public int d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f2402e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public p f2403f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f2404g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v f2405h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f2406h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t f2407i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float f2408i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public w f2409j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float f2410j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public androidx.recyclerview.widget.a f2411k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f2412k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public androidx.recyclerview.widget.e f2413l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final a0 f2414l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final m0 f2415m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public androidx.recyclerview.widget.r f2416m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2417n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public androidx.recyclerview.widget.r.b f2418n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final a f2419o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final y f2420o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Rect f2421p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public r f2422p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Rect f2423q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public List<r> f2424q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final RectF f2425r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f2426r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public e f2427s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f2428s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public m f2429t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public k f2430t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public u f2431u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f2432u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final List<u> f2433v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public h0 f2434v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ArrayList<l> f2435w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public h f2436w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ArrayList<q> f2437x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final int[] f2438x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public q f2439y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public j0.m f2440y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2441z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final int[] f2442z0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.B || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.f2441z) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.E) {
                recyclerView2.D = true;
            } else {
                recyclerView2.n();
            }
        }
    }

    public class a0 implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2444h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2445i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public OverScroller f2446j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Interpolator f2447k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f2448l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f2449m;

        public a0() {
            c cVar = RecyclerView.K0;
            this.f2447k = cVar;
            this.f2448l = false;
            this.f2449m = false;
            this.f2446j = new OverScroller(RecyclerView.this.getContext(), cVar);
        }

        public final void a() {
            if (this.f2448l) {
                this.f2449m = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView = RecyclerView.this;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            j0.a0.d.m(recyclerView, this);
        }

        public final void b(int i10, int i11, int i12, Interpolator interpolator) {
            if (i12 == Integer.MIN_VALUE) {
                int iAbs = Math.abs(i10);
                int iAbs2 = Math.abs(i11);
                boolean z10 = iAbs > iAbs2;
                RecyclerView recyclerView = RecyclerView.this;
                int width = z10 ? recyclerView.getWidth() : recyclerView.getHeight();
                if (!z10) {
                    iAbs = iAbs2;
                }
                i12 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), ActivityTrace.MAX_TRACES);
            }
            int i13 = i12;
            if (interpolator == null) {
                interpolator = RecyclerView.K0;
            }
            if (this.f2447k != interpolator) {
                this.f2447k = interpolator;
                this.f2446j = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f2445i = 0;
            this.f2444h = 0;
            RecyclerView.this.setScrollState(2);
            this.f2446j.startScroll(0, 0, i10, i11, i13);
            a();
        }

        public final void c() {
            RecyclerView.this.removeCallbacks(this);
            this.f2446j.abortAnimation();
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i10;
            int i11;
            int i12;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2429t == null) {
                c();
                return;
            }
            this.f2449m = false;
            this.f2448l = true;
            recyclerView.n();
            OverScroller overScroller = this.f2446j;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i13 = currX - this.f2444h;
                int i14 = currY - this.f2445i;
                this.f2444h = currX;
                this.f2445i = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.B0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.t(i13, i14, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.B0;
                    i13 -= iArr2[0];
                    i14 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m(i13, i14);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f2427s != null) {
                    int[] iArr3 = recyclerView3.B0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.g0(i13, i14, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.B0;
                    i11 = iArr4[0];
                    i10 = iArr4[1];
                    i13 -= i11;
                    i14 -= i10;
                    x xVar = recyclerView4.f2429t.f2491g;
                    if (xVar != null && !xVar.f2531d && xVar.f2532e) {
                        int iB = recyclerView4.f2420o0.b();
                        if (iB == 0) {
                            xVar.f();
                        } else if (xVar.f2528a >= iB) {
                            xVar.f2528a = iB - 1;
                            xVar.b(i11, i10);
                        } else {
                            xVar.b(i11, i10);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (!RecyclerView.this.f2435w.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.B0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.u(i11, i10, i13, i14, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.B0;
                int i15 = i13 - iArr6[0];
                int i16 = i14 - iArr6[1];
                if (i11 != 0 || i10 != 0) {
                    recyclerView6.v(i11, i10);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z10 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i15 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i16 != 0));
                RecyclerView recyclerView7 = RecyclerView.this;
                x xVar2 = recyclerView7.f2429t.f2491g;
                if ((xVar2 != null && xVar2.f2531d) || !z10) {
                    a();
                    RecyclerView recyclerView8 = RecyclerView.this;
                    androidx.recyclerview.widget.r rVar = recyclerView8.f2416m0;
                    if (rVar != null) {
                        rVar.a(recyclerView8, i11, i10);
                    }
                } else {
                    if (recyclerView7.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        if (i15 < 0) {
                            i12 = -currVelocity;
                        } else {
                            i12 = i15 > 0 ? currVelocity : 0;
                        }
                        if (i16 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i16 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView recyclerView9 = RecyclerView.this;
                        Objects.requireNonNull(recyclerView9);
                        if (i12 < 0) {
                            recyclerView9.x();
                            if (recyclerView9.P.isFinished()) {
                                recyclerView9.P.onAbsorb(-i12);
                            }
                        } else if (i12 > 0) {
                            recyclerView9.y();
                            if (recyclerView9.R.isFinished()) {
                                recyclerView9.R.onAbsorb(i12);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView9.z();
                            if (recyclerView9.Q.isFinished()) {
                                recyclerView9.Q.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView9.w();
                            if (recyclerView9.S.isFinished()) {
                                recyclerView9.S.onAbsorb(currVelocity);
                            }
                        }
                        if (i12 != 0 || currVelocity != 0) {
                            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                            j0.a0.d.k(recyclerView9);
                        }
                    }
                    int[] iArr7 = RecyclerView.I0;
                    androidx.recyclerview.widget.r.b bVar = RecyclerView.this.f2418n0;
                    int[] iArr8 = bVar.f2765c;
                    if (iArr8 != null) {
                        Arrays.fill(iArr8, -1);
                    }
                    bVar.f2766d = 0;
                }
            }
            x xVar3 = RecyclerView.this.f2429t.f2491g;
            if (xVar3 != null && xVar3.f2531d) {
                xVar3.b(0, 0);
            }
            this.f2448l = false;
            if (!this.f2449m) {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.o0(1);
            } else {
                RecyclerView.this.removeCallbacks(this);
                RecyclerView recyclerView10 = RecyclerView.this;
                WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
                j0.a0.d.m(recyclerView10, this);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            j jVar = RecyclerView.this.T;
            if (jVar != null) {
                androidx.recyclerview.widget.n nVar = (androidx.recyclerview.widget.n) jVar;
                boolean z10 = !nVar.f2677h.isEmpty();
                boolean z11 = !nVar.f2679j.isEmpty();
                boolean z12 = !nVar.f2680k.isEmpty();
                boolean z13 = !nVar.f2678i.isEmpty();
                if (z10 || z11 || z13 || z12) {
                    for (b0 b0Var : nVar.f2677h) {
                        View view = b0Var.f2453a;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        nVar.f2686q.add(b0Var);
                        viewPropertyAnimatorAnimate.setDuration(nVar.f2479d).alpha(0.0f).setListener(new androidx.recyclerview.widget.i(nVar, b0Var, viewPropertyAnimatorAnimate, view)).start();
                    }
                    nVar.f2677h.clear();
                    if (z11) {
                        ArrayList<androidx.recyclerview.widget.n.b> arrayList = new ArrayList<>();
                        arrayList.addAll(nVar.f2679j);
                        nVar.f2682m.add(arrayList);
                        nVar.f2679j.clear();
                        androidx.recyclerview.widget.f fVar = new androidx.recyclerview.widget.f(nVar, arrayList);
                        if (z10) {
                            View view2 = arrayList.get(0).f2694a.f2453a;
                            long j10 = nVar.f2479d;
                            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                            j0.a0.d.n(view2, fVar, j10);
                        } else {
                            fVar.run();
                        }
                    }
                    if (z12) {
                        ArrayList<androidx.recyclerview.widget.n.a> arrayList2 = new ArrayList<>();
                        arrayList2.addAll(nVar.f2680k);
                        nVar.f2683n.add(arrayList2);
                        nVar.f2680k.clear();
                        androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(nVar, arrayList2);
                        if (z10) {
                            View view3 = arrayList2.get(0).f2688a.f2453a;
                            long j11 = nVar.f2479d;
                            WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
                            j0.a0.d.n(view3, gVar, j11);
                        } else {
                            gVar.run();
                        }
                    }
                    if (z13) {
                        ArrayList<b0> arrayList3 = new ArrayList<>();
                        arrayList3.addAll(nVar.f2678i);
                        nVar.f2681l.add(arrayList3);
                        nVar.f2678i.clear();
                        androidx.recyclerview.widget.h hVar = new androidx.recyclerview.widget.h(nVar, arrayList3);
                        if (z10 || z11 || z12) {
                            long jMax = Math.max(z11 ? nVar.f2480e : 0L, z12 ? nVar.f2481f : 0L) + (z10 ? nVar.f2479d : 0L);
                            View view4 = arrayList3.get(0).f2453a;
                            WeakHashMap<View, j0.g0> weakHashMap3 = j0.a0.f9147a;
                            j0.a0.d.n(view4, hVar, jMax);
                        } else {
                            hVar.run();
                        }
                    }
                }
            }
            RecyclerView.this.f2432u0 = false;
        }
    }

    public static abstract class b0 {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final List<Object> f2452t = Collections.emptyList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f2453a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public WeakReference<RecyclerView> f2454b;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2462j;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public RecyclerView f2470r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public e<? extends b0> f2471s;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2455c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2456d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2457e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2458f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2459g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public b0 f2460h = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public b0 f2461i = null;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List<Object> f2463k = null;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public List<Object> f2464l = null;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f2465m = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public t f2466n = null;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f2467o = false;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f2468p = 0;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f2469q = -1;

        public b0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f2453a = view;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<java.lang.Object>] */
        public final void c(Object obj) {
            if (obj == null) {
                d(1024);
                return;
            }
            if ((1024 & this.f2462j) == 0) {
                if (this.f2463k == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f2463k = arrayList;
                    this.f2464l = Collections.unmodifiableList(arrayList);
                }
                this.f2463k.add(obj);
            }
        }

        public final void d(int i10) {
            this.f2462j = i10 | this.f2462j;
        }

        public final void e() {
            this.f2456d = -1;
            this.f2459g = -1;
        }

        public final void f() {
            this.f2462j &= -33;
        }

        public final int g() {
            RecyclerView recyclerView = this.f2470r;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.H(this);
        }

        @Deprecated
        public final int h() {
            RecyclerView recyclerView;
            e<? extends b0> adapter;
            int iH;
            if (this.f2471s == null || (recyclerView = this.f2470r) == null || (adapter = recyclerView.getAdapter()) == null || (iH = this.f2470r.H(this)) == -1 || this.f2471s != adapter) {
                return -1;
            }
            return iH;
        }

        public final int i() {
            int i10 = this.f2459g;
            return i10 == -1 ? this.f2455c : i10;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<java.lang.Object>] */
        public final List<Object> j() {
            if ((this.f2462j & 1024) != 0) {
                return f2452t;
            }
            ?? r10 = this.f2463k;
            return (r10 == 0 || r10.size() == 0) ? f2452t : this.f2464l;
        }

        public final boolean k(int i10) {
            return (i10 & this.f2462j) != 0;
        }

        public final boolean l() {
            return (this.f2453a.getParent() == null || this.f2453a.getParent() == this.f2470r) ? false : true;
        }

        public final boolean m() {
            return (this.f2462j & 1) != 0;
        }

        public final boolean n() {
            return (this.f2462j & 4) != 0;
        }

        public final boolean o() {
            if ((this.f2462j & 16) == 0) {
                View view = this.f2453a;
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                if (!j0.a0.d.i(view)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean p() {
            return (this.f2462j & 8) != 0;
        }

        public final boolean q() {
            return this.f2466n != null;
        }

        public final boolean r() {
            return (this.f2462j & 256) != 0;
        }

        public final boolean s() {
            return (this.f2462j & 2) != 0;
        }

        public final void t(int i10, boolean z10) {
            if (this.f2456d == -1) {
                this.f2456d = this.f2455c;
            }
            if (this.f2459g == -1) {
                this.f2459g = this.f2455c;
            }
            if (z10) {
                this.f2459g += i10;
            }
            this.f2455c += i10;
            if (this.f2453a.getLayoutParams() != null) {
                ((n) this.f2453a.getLayoutParams()).f2510c = true;
            }
        }

        public final String toString() {
            StringBuilder sbH = r0.h(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            sbH.append(Integer.toHexString(hashCode()));
            sbH.append(" position=");
            sbH.append(this.f2455c);
            sbH.append(" id=");
            sbH.append(this.f2457e);
            sbH.append(", oldPos=");
            sbH.append(this.f2456d);
            sbH.append(", pLpos:");
            sbH.append(this.f2459g);
            StringBuilder sb2 = new StringBuilder(sbH.toString());
            if (q()) {
                sb2.append(" scrap ");
                sb2.append(this.f2467o ? "[changeScrap]" : "[attachedScrap]");
            }
            if (n()) {
                sb2.append(" invalid");
            }
            if (!m()) {
                sb2.append(" unbound");
            }
            boolean z10 = true;
            if ((this.f2462j & 2) != 0) {
                sb2.append(" update");
            }
            if (p()) {
                sb2.append(" removed");
            }
            if (x()) {
                sb2.append(" ignored");
            }
            if (r()) {
                sb2.append(" tmpDetached");
            }
            if (!o()) {
                StringBuilder sbC = a0.b.c(" not recyclable(");
                sbC.append(this.f2465m);
                sbC.append(")");
                sb2.append(sbC.toString());
            }
            if ((this.f2462j & 512) == 0 && !n()) {
                z10 = false;
            }
            if (z10) {
                sb2.append(" undefined adapter position");
            }
            if (this.f2453a.getParent() == null) {
                sb2.append(" no parent");
            }
            sb2.append("}");
            return sb2.toString();
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<java.lang.Object>] */
        public final void u() {
            this.f2462j = 0;
            this.f2455c = -1;
            this.f2456d = -1;
            this.f2457e = -1L;
            this.f2459g = -1;
            this.f2465m = 0;
            this.f2460h = null;
            this.f2461i = null;
            ?? r10 = this.f2463k;
            if (r10 != 0) {
                r10.clear();
            }
            this.f2462j &= -1025;
            this.f2468p = 0;
            this.f2469q = -1;
            RecyclerView.k(this);
        }

        public final void v(int i10, int i11) {
            this.f2462j = (i10 & i11) | (this.f2462j & (~i11));
        }

        public final void w(boolean z10) {
            int i10 = this.f2465m;
            int i11 = z10 ? i10 - 1 : i10 + 1;
            this.f2465m = i11;
            if (i11 < 0) {
                this.f2465m = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z10 && i11 == 1) {
                this.f2462j |= 16;
            } else if (z10 && i11 == 0) {
                this.f2462j &= -17;
            }
        }

        public final boolean x() {
            return (this.f2462j & 128) != 0;
        }

        public final void y() {
            this.f2466n.k(this);
        }

        public final boolean z() {
            return (this.f2462j & 32) != 0;
        }
    }

    public class c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    public class d {
        public d() {
        }

        public final void a(b0 b0Var, j.c cVar, j.c cVar2) {
            boolean zH;
            int i10;
            int i11;
            RecyclerView recyclerView = RecyclerView.this;
            Objects.requireNonNull(recyclerView);
            b0Var.w(false);
            j0 j0Var = (j0) recyclerView.T;
            Objects.requireNonNull(j0Var);
            if (cVar == null || ((i10 = cVar.f2482a) == (i11 = cVar2.f2482a) && cVar.f2483b == cVar2.f2483b)) {
                androidx.recyclerview.widget.n nVar = (androidx.recyclerview.widget.n) j0Var;
                nVar.m(b0Var);
                b0Var.f2453a.setAlpha(0.0f);
                nVar.f2678i.add(b0Var);
                zH = true;
            } else {
                zH = j0Var.h(b0Var, i10, cVar.f2483b, i11, cVar2.f2483b);
            }
            if (zH) {
                recyclerView.X();
            }
        }

        public final void b(b0 b0Var, j.c cVar, j.c cVar2) {
            boolean zH;
            RecyclerView.this.f2407i.k(b0Var);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f(b0Var);
            b0Var.w(false);
            j0 j0Var = (j0) recyclerView.T;
            Objects.requireNonNull(j0Var);
            int i10 = cVar.f2482a;
            int i11 = cVar.f2483b;
            View view = b0Var.f2453a;
            int left = cVar2 == null ? view.getLeft() : cVar2.f2482a;
            int top = cVar2 == null ? view.getTop() : cVar2.f2483b;
            if (b0Var.p() || (i10 == left && i11 == top)) {
                androidx.recyclerview.widget.n nVar = (androidx.recyclerview.widget.n) j0Var;
                nVar.m(b0Var);
                nVar.f2677h.add(b0Var);
                zH = true;
            } else {
                view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                zH = j0Var.h(b0Var, i10, i11, left, top);
            }
            if (zH) {
                recyclerView.X();
            }
        }
    }

    public static abstract class e<VH extends b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f f2473a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2474b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2475c = 1;

        public abstract int a();

        public long b(int i10) {
            return -1L;
        }

        public int c(int i10) {
            return 0;
        }

        public final void d() {
            this.f2473a.b();
        }

        public final void e(int i10) {
            this.f2473a.d(i10, 1, null);
        }

        public final void f(int i10, Object obj) {
            this.f2473a.d(i10, 1, obj);
        }

        public void g(RecyclerView recyclerView) {
        }

        public abstract void h(VH vh, int i10);

        public void i(VH vh, int i10, List<Object> list) {
            h(vh, i10);
        }

        public abstract VH j(ViewGroup viewGroup, int i10);

        public void k(VH vh) {
        }

        public final void l(boolean z10) {
            if (this.f2473a.a()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f2474b = z10;
        }
    }

    public static class f extends Observable<g> {
        public final boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public final void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).a();
            }
        }

        public final void c(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).d(i10, i11);
            }
        }

        public final void d(int i10, int i11, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).b(i10, i11, obj);
            }
        }

        public final void e(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).c(i10, i11);
            }
        }

        public final void f(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).e(i10, i11);
            }
        }
    }

    public static abstract class g {
        public void a() {
        }

        public void b(int i10, int i11, Object obj) {
        }

        public void c(int i10, int i11) {
        }

        public void d(int i10, int i11) {
        }

        public void e(int i10, int i11) {
        }
    }

    public interface h {
        int a();
    }

    public static class i {
        public final EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public b f2476a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<a> f2477b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f2478c = 120;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f2479d = 120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2480e = 250;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f2481f = 250;

        public interface a {
            void a();
        }

        public interface b {
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2482a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2483b;

            public final c a(b0 b0Var) {
                View view = b0Var.f2453a;
                this.f2482a = view.getLeft();
                this.f2483b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        public static int b(b0 b0Var) {
            int i10 = b0Var.f2462j & 14;
            if (b0Var.n()) {
                return 4;
            }
            if ((i10 & 4) != 0) {
                return i10;
            }
            int i11 = b0Var.f2456d;
            int iG = b0Var.g();
            return (i11 == -1 || iG == -1 || i11 == iG) ? i10 : i10 | 2048;
        }

        public abstract boolean a(b0 b0Var, b0 b0Var2, c cVar, c cVar2);

        public final void c(b0 b0Var) {
            b bVar = this.f2476a;
            if (bVar != null) {
                k kVar = (k) bVar;
                Objects.requireNonNull(kVar);
                boolean z10 = true;
                b0Var.w(true);
                if (b0Var.f2460h != null && b0Var.f2461i == null) {
                    b0Var.f2460h = null;
                }
                b0Var.f2461i = null;
                if ((b0Var.f2462j & 16) != 0) {
                    return;
                }
                RecyclerView recyclerView = RecyclerView.this;
                View view = b0Var.f2453a;
                recyclerView.l0();
                androidx.recyclerview.widget.e eVar = recyclerView.f2413l;
                int iC = ((f0) eVar.f2617a).c(view);
                if (iC == -1) {
                    eVar.l(view);
                } else if (eVar.f2618b.d(iC)) {
                    eVar.f2618b.f(iC);
                    eVar.l(view);
                    ((f0) eVar.f2617a).d(iC);
                } else {
                    z10 = false;
                }
                if (z10) {
                    b0 b0VarK = RecyclerView.K(view);
                    recyclerView.f2407i.k(b0VarK);
                    recyclerView.f2407i.h(b0VarK);
                }
                recyclerView.n0(!z10);
                if (z10 || !b0Var.r()) {
                    return;
                }
                RecyclerView.this.removeDetachedView(b0Var.f2453a, false);
            }
        }

        public final void d() {
            int size = this.f2477b.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f2477b.get(i10).a();
            }
            this.f2477b.clear();
        }

        public abstract void e(b0 b0Var);

        public abstract void f();

        public abstract boolean g();
    }

    public class k implements j.b {
        public k() {
        }
    }

    public static abstract class l {
        public void f(Rect rect, View view, RecyclerView recyclerView, y yVar) {
            ((n) view.getLayoutParams()).a();
            rect.set(0, 0, 0, 0);
        }

        public void g(Canvas canvas, RecyclerView recyclerView) {
        }

        public void h(Canvas canvas, RecyclerView recyclerView) {
        }
    }

    public static abstract class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.e f2485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView f2486b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f2487c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f2488d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public l0 f2489e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public l0 f2490f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public x f2491g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2492h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f2493i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f2494j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f2495k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f2496l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f2497m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f2498n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f2499o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f2500p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f2501q;

        public class a implements l0.b {
            public a() {
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int a() {
                m mVar = m.this;
                return mVar.f2500p - mVar.M();
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int b(View view) {
                return m.this.D(view) - ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final View c(int i10) {
                return m.this.y(i10);
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int d() {
                return m.this.L();
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int e(View view) {
                return m.this.E(view) + ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).rightMargin;
            }
        }

        public class b implements l0.b {
            public b() {
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int a() {
                m mVar = m.this;
                return mVar.f2501q - mVar.K();
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int b(View view) {
                return m.this.F(view) - ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final View c(int i10) {
                return m.this.y(i10);
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int d() {
                return m.this.N();
            }

            @Override // androidx.recyclerview.widget.l0.b
            public final int e(View view) {
                return m.this.C(view) + ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).bottomMargin;
            }
        }

        public interface c {
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2504a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2505b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f2506c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f2507d;
        }

        public m() {
            a aVar = new a();
            this.f2487c = aVar;
            b bVar = new b();
            this.f2488d = bVar;
            this.f2489e = new l0(aVar);
            this.f2490f = new l0(bVar);
            this.f2492h = false;
            this.f2493i = false;
            this.f2494j = true;
            this.f2495k = true;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001c  */
        /* JADX WARN: Code duplicated, block: B:14:0x0020  */
        /* JADX WARN: Code duplicated, block: B:21:0x002f  */
        public static int A(int i10, int i11, int i12, int i13, boolean z10) {
            int iMax = Math.max(0, i10 - i12);
            if (z10) {
                if (i13 >= 0) {
                    i11 = 1073741824;
                } else if (i13 != -1 || (i11 != Integer.MIN_VALUE && (i11 == 0 || i11 != 1073741824))) {
                    i11 = 0;
                    i13 = 0;
                } else {
                    i13 = iMax;
                }
            } else if (i13 >= 0) {
                i11 = 1073741824;
            } else if (i13 == -1) {
                i13 = iMax;
            } else if (i13 != -2) {
                i11 = 0;
                i13 = 0;
            } else if (i11 == Integer.MIN_VALUE || i11 == 1073741824) {
                i13 = iMax;
                i11 = Integer.MIN_VALUE;
            } else {
                i13 = iMax;
                i11 = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(i13, i11);
        }

        public static d P(Context context, AttributeSet attributeSet, int i10, int i11) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i10, i11);
            dVar.f2504a = typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_orientation, 1);
            dVar.f2505b = typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_spanCount, 1);
            dVar.f2506c = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_reverseLayout, false);
            dVar.f2507d = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        public static boolean T(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        public static int j(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i11, i12) : size;
            }
            return Math.min(size, Math.max(i11, i12));
        }

        public final void A0(int i10, int i11) {
            this.f2486b.setMeasuredDimension(i10, i11);
        }

        public int B(t tVar, y yVar) {
            return -1;
        }

        public void B0(Rect rect, int i10, int i11) {
            A0(j(i10, M() + L() + rect.width(), J()), j(i11, K() + N() + rect.height(), I()));
        }

        public final int C(View view) {
            return view.getBottom() + ((n) view.getLayoutParams()).f2509b.bottom;
        }

        public final void C0(int i10, int i11) {
            int iZ = z();
            if (iZ == 0) {
                this.f2486b.o(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MAX_VALUE;
            int i14 = Integer.MAX_VALUE;
            int i15 = Integer.MIN_VALUE;
            for (int i16 = 0; i16 < iZ; i16++) {
                View viewY = y(i16);
                Rect rect = this.f2486b.f2421p;
                RecyclerView.L(viewY, rect);
                int i17 = rect.left;
                if (i17 < i13) {
                    i13 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i14) {
                    i14 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i15) {
                    i15 = i20;
                }
            }
            this.f2486b.f2421p.set(i13, i14, i12, i15);
            B0(this.f2486b.f2421p, i10, i11);
        }

        public final int D(View view) {
            return view.getLeft() - ((n) view.getLayoutParams()).f2509b.left;
        }

        public final void D0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f2486b = null;
                this.f2485a = null;
                this.f2500p = 0;
                this.f2501q = 0;
            } else {
                this.f2486b = recyclerView;
                this.f2485a = recyclerView.f2413l;
                this.f2500p = recyclerView.getWidth();
                this.f2501q = recyclerView.getHeight();
            }
            this.f2498n = 1073741824;
            this.f2499o = 1073741824;
        }

        public final int E(View view) {
            return view.getRight() + ((n) view.getLayoutParams()).f2509b.right;
        }

        public final boolean E0(View view, int i10, int i11, n nVar) {
            return (!view.isLayoutRequested() && this.f2494j && T(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) nVar).width) && T(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
        }

        public final int F(View view) {
            return view.getTop() - ((n) view.getLayoutParams()).f2509b.top;
        }

        public boolean F0() {
            return false;
        }

        public final View G() {
            View focusedChild;
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f2485a.k(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public final boolean G0(View view, int i10, int i11, n nVar) {
            return (this.f2494j && T(view.getMeasuredWidth(), i10, ((ViewGroup.MarginLayoutParams) nVar).width) && T(view.getMeasuredHeight(), i11, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
        }

        public final int H() {
            RecyclerView recyclerView = this.f2486b;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            return j0.a0.e.d(recyclerView);
        }

        public void H0(RecyclerView recyclerView, y yVar, int i10) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public final int I() {
            RecyclerView recyclerView = this.f2486b;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            return j0.a0.d.d(recyclerView);
        }

        public final void I0(x xVar) {
            x xVar2 = this.f2491g;
            if (xVar2 != null && xVar != xVar2 && xVar2.f2532e) {
                xVar2.f();
            }
            this.f2491g = xVar;
            RecyclerView recyclerView = this.f2486b;
            recyclerView.f2414l0.c();
            if (xVar.f2535h) {
                StringBuilder sbC = a0.b.c("An instance of ");
                sbC.append(xVar.getClass().getSimpleName());
                sbC.append(" was started more than once. Each instance of");
                sbC.append(xVar.getClass().getSimpleName());
                sbC.append(" is intended to only be used once. You should create a new instance for each use.");
                Log.w("RecyclerView", sbC.toString());
            }
            xVar.f2529b = recyclerView;
            xVar.f2530c = this;
            int i10 = xVar.f2528a;
            if (i10 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.f2420o0.f2543a = i10;
            xVar.f2532e = true;
            xVar.f2531d = true;
            xVar.f2533f = recyclerView.f2429t.u(i10);
            xVar.f2529b.f2414l0.a();
            xVar.f2535h = true;
        }

        public final int J() {
            RecyclerView recyclerView = this.f2486b;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            return j0.a0.d.e(recyclerView);
        }

        public boolean J0() {
            return false;
        }

        public final int K() {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public final int L() {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public final int M() {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public final int N() {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public final int O(View view) {
            return ((n) view.getLayoutParams()).a();
        }

        public int Q(t tVar, y yVar) {
            return -1;
        }

        public final void R(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((n) view.getLayoutParams()).f2509b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.f2486b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f2486b.f2425r;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean S() {
            return false;
        }

        public final void U(View view, int i10, int i11, int i12, int i13) {
            n nVar = (n) view.getLayoutParams();
            Rect rect = nVar.f2509b;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) nVar).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) nVar).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) nVar).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) nVar).bottomMargin);
        }

        public void V(int i10) {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                int iE = recyclerView.f2413l.e();
                for (int i11 = 0; i11 < iE; i11++) {
                    recyclerView.f2413l.d(i11).offsetLeftAndRight(i10);
                }
            }
        }

        public void W(int i10) {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                int iE = recyclerView.f2413l.e();
                for (int i11 = 0; i11 < iE; i11++) {
                    recyclerView.f2413l.d(i11).offsetTopAndBottom(i10);
                }
            }
        }

        public void X() {
        }

        public void Y(RecyclerView recyclerView) {
        }

        public View Z(View view, int i10, t tVar, y yVar) {
            return null;
        }

        public void a0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2486b;
            t tVar = recyclerView.f2407i;
            y yVar = recyclerView.f2420o0;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z10 = true;
            if (!recyclerView.canScrollVertically(1) && !this.f2486b.canScrollVertically(-1) && !this.f2486b.canScrollHorizontally(-1) && !this.f2486b.canScrollHorizontally(1)) {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            e eVar = this.f2486b.f2427s;
            if (eVar != null) {
                accessibilityEvent.setItemCount(eVar.a());
            }
        }

        public final void b0(View view, k0.f fVar) {
            b0 b0VarK = RecyclerView.K(view);
            if (b0VarK == null || b0VarK.p() || this.f2485a.k(b0VarK.f2453a)) {
                return;
            }
            RecyclerView recyclerView = this.f2486b;
            c0(recyclerView.f2407i, recyclerView.f2420o0, view, fVar);
        }

        public final void c(View view) {
            d(view, -1, false);
        }

        public void c0(t tVar, y yVar, View view, k0.f fVar) {
        }

        public final void d(View view, int i10, boolean z10) {
            b0 b0VarK = RecyclerView.K(view);
            if (z10 || b0VarK.p()) {
                this.f2486b.f2415m.a(b0VarK);
            } else {
                this.f2486b.f2415m.e(b0VarK);
            }
            n nVar = (n) view.getLayoutParams();
            if (b0VarK.z() || b0VarK.q()) {
                if (b0VarK.q()) {
                    b0VarK.y();
                } else {
                    b0VarK.f();
                }
                this.f2485a.b(view, i10, view.getLayoutParams(), false);
            } else {
                if (view.getParent() == this.f2486b) {
                    int iJ = this.f2485a.j(view);
                    if (i10 == -1) {
                        i10 = this.f2485a.e();
                    }
                    if (iJ == -1) {
                        StringBuilder sbC = a0.b.c("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                        sbC.append(this.f2486b.indexOfChild(view));
                        throw new IllegalStateException(androidx.recyclerview.widget.d.b(this.f2486b, sbC));
                    }
                    if (iJ != i10) {
                        m mVar = this.f2486b.f2429t;
                        View viewY = mVar.y(iJ);
                        if (viewY == null) {
                            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iJ + mVar.f2486b.toString());
                        }
                        mVar.y(iJ);
                        mVar.f2485a.c(iJ);
                        n nVar2 = (n) viewY.getLayoutParams();
                        b0 b0VarK2 = RecyclerView.K(viewY);
                        if (b0VarK2.p()) {
                            mVar.f2486b.f2415m.a(b0VarK2);
                        } else {
                            mVar.f2486b.f2415m.e(b0VarK2);
                        }
                        mVar.f2485a.b(viewY, i10, nVar2, b0VarK2.p());
                    }
                } else {
                    this.f2485a.a(view, i10, false);
                    nVar.f2510c = true;
                    x xVar = this.f2491g;
                    if (xVar != null && xVar.f2532e) {
                        Objects.requireNonNull(xVar.f2529b);
                        b0 b0VarK3 = RecyclerView.K(view);
                        if ((b0VarK3 != null ? b0VarK3.i() : -1) == xVar.f2528a) {
                            xVar.f2533f = view;
                        }
                    }
                }
            }
            if (nVar.f2511d) {
                b0VarK.f2453a.invalidate();
                nVar.f2511d = false;
            }
        }

        public void d0(int i10, int i11) {
        }

        public void e(String str) {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                recyclerView.i(str);
            }
        }

        public void e0() {
        }

        public final void f(View view, Rect rect) {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.M(view));
            }
        }

        public void f0(int i10, int i11) {
        }

        public boolean g() {
            return false;
        }

        public void g0(int i10, int i11) {
        }

        public boolean h() {
            return false;
        }

        public void h0(int i10, int i11) {
        }

        public boolean i(n nVar) {
            return nVar != null;
        }

        public void i0(t tVar, y yVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void j0(y yVar) {
        }

        public void k(int i10, int i11, y yVar, c cVar) {
        }

        public final void k0(int i10, int i11) {
            this.f2486b.o(i10, i11);
        }

        public void l(int i10, c cVar) {
        }

        public void l0(Parcelable parcelable) {
        }

        public int m(y yVar) {
            return 0;
        }

        public Parcelable m0() {
            return null;
        }

        public int n(y yVar) {
            return 0;
        }

        public void n0(int i10) {
        }

        public int o(y yVar) {
            return 0;
        }

        public final void o0(t tVar) {
            int iZ = z();
            while (true) {
                iZ--;
                if (iZ < 0) {
                    return;
                }
                if (!RecyclerView.K(y(iZ)).x()) {
                    r0(iZ, tVar);
                }
            }
        }

        public int p(y yVar) {
            return 0;
        }

        public final void p0(t tVar) {
            int size = tVar.f2518a.size();
            for (int i10 = size - 1; i10 >= 0; i10--) {
                View view = tVar.f2518a.get(i10).f2453a;
                b0 b0VarK = RecyclerView.K(view);
                if (!b0VarK.x()) {
                    b0VarK.w(false);
                    if (b0VarK.r()) {
                        this.f2486b.removeDetachedView(view, false);
                    }
                    j jVar = this.f2486b.T;
                    if (jVar != null) {
                        jVar.e(b0VarK);
                    }
                    b0VarK.w(true);
                    b0 b0VarK2 = RecyclerView.K(view);
                    b0VarK2.f2466n = null;
                    b0VarK2.f2467o = false;
                    b0VarK2.f();
                    tVar.h(b0VarK2);
                }
            }
            tVar.f2518a.clear();
            ArrayList<b0> arrayList = tVar.f2519b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.f2486b.invalidate();
            }
        }

        public int q(y yVar) {
            return 0;
        }

        public final void q0(View view, t tVar) {
            androidx.recyclerview.widget.e eVar = this.f2485a;
            int iC = ((f0) eVar.f2617a).c(view);
            if (iC >= 0) {
                if (eVar.f2618b.f(iC)) {
                    eVar.l(view);
                }
                ((f0) eVar.f2617a).d(iC);
            }
            tVar.g(view);
        }

        public int r(y yVar) {
            return 0;
        }

        public final void r0(int i10, t tVar) {
            View viewY = y(i10);
            s0(i10);
            tVar.g(viewY);
        }

        public final void s(t tVar) {
            int iZ = z();
            while (true) {
                iZ--;
                if (iZ < 0) {
                    return;
                }
                View viewY = y(iZ);
                b0 b0VarK = RecyclerView.K(viewY);
                if (!b0VarK.x()) {
                    if (!b0VarK.n() || b0VarK.p() || this.f2486b.f2427s.f2474b) {
                        y(iZ);
                        this.f2485a.c(iZ);
                        tVar.i(viewY);
                        this.f2486b.f2415m.e(b0VarK);
                    } else {
                        s0(iZ);
                        tVar.h(b0VarK);
                    }
                }
            }
        }

        public final void s0(int i10) {
            androidx.recyclerview.widget.e eVar;
            int iF;
            View viewA;
            if (y(i10) == null || (viewA = ((f0) eVar.f2617a).a((iF = (eVar = this.f2485a).f(i10)))) == null) {
                return;
            }
            if (eVar.f2618b.f(iF)) {
                eVar.l(viewA);
            }
            ((f0) eVar.f2617a).d(iF);
        }

        public final View t(View view) {
            View viewC;
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView == null || (viewC = recyclerView.C(view)) == null || this.f2485a.k(viewC)) {
                return null;
            }
            return viewC;
        }

        /* JADX WARN: Code duplicated, block: B:29:0x00b3  */
        /* JADX WARN: Code duplicated, block: B:31:0x00b6  */
        /* JADX WARN: Code duplicated, block: B:36:0x00be  */
        /* JADX WARN: Code duplicated, block: B:37:0x00c2  */
        public final boolean t0(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            boolean z12;
            int[] iArr = new int[2];
            int iL = L();
            int iN = N();
            int iM = this.f2500p - M();
            int iK = this.f2501q - K();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i10 = left - iL;
            int iMin = Math.min(0, i10);
            int i11 = top - iN;
            int iMin2 = Math.min(0, i11);
            int i12 = iWidth - iM;
            int iMax = Math.max(0, i12);
            int iMax2 = Math.max(0, iHeight - iK);
            if (H() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i10, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i12);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i11, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            int i13 = iArr[0];
            int i14 = iArr[1];
            if (z11) {
                View focusedChild = recyclerView.getFocusedChild();
                if (focusedChild == null) {
                    z12 = false;
                } else {
                    int iL2 = L();
                    int iN2 = N();
                    int iM2 = this.f2500p - M();
                    int iK2 = this.f2501q - K();
                    Rect rect2 = this.f2486b.f2421p;
                    RecyclerView.L(focusedChild, rect2);
                    if (rect2.left - i13 >= iM2 || rect2.right - i13 <= iL2 || rect2.top - i14 >= iK2 || rect2.bottom - i14 <= iN2) {
                        z12 = false;
                    } else {
                        z12 = true;
                    }
                }
                if (z12) {
                    if (i13 == 0) {
                    }
                    if (z10) {
                        recyclerView.scrollBy(i13, i14);
                    } else {
                        recyclerView.j0(i13, i14, false);
                    }
                    return true;
                }
            } else if (i13 == 0 || i14 != 0) {
                if (z10) {
                    recyclerView.scrollBy(i13, i14);
                } else {
                    recyclerView.j0(i13, i14, false);
                }
                return true;
            }
            return false;
        }

        public View u(int i10) {
            int iZ = z();
            for (int i11 = 0; i11 < iZ; i11++) {
                View viewY = y(i11);
                b0 b0VarK = RecyclerView.K(viewY);
                if (b0VarK != null && b0VarK.i() == i10 && !b0VarK.x() && (this.f2486b.f2420o0.f2549g || !b0VarK.p())) {
                    return viewY;
                }
            }
            return null;
        }

        public final void u0() {
            RecyclerView recyclerView = this.f2486b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public abstract n v();

        public int v0(int i10, t tVar, y yVar) {
            return 0;
        }

        public n w(Context context, AttributeSet attributeSet) {
            return new n(context, attributeSet);
        }

        public void w0(int i10) {
        }

        public n x(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof n) {
                return new n((n) layoutParams);
            }
            return layoutParams instanceof ViewGroup.MarginLayoutParams ? new n((ViewGroup.MarginLayoutParams) layoutParams) : new n(layoutParams);
        }

        public int x0(int i10, t tVar, y yVar) {
            return 0;
        }

        public final View y(int i10) {
            androidx.recyclerview.widget.e eVar = this.f2485a;
            if (eVar != null) {
                return eVar.d(i10);
            }
            return null;
        }

        public final void y0(RecyclerView recyclerView) {
            z0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final int z() {
            androidx.recyclerview.widget.e eVar = this.f2485a;
            if (eVar != null) {
                return eVar.e();
            }
            return 0;
        }

        public final void z0(int i10, int i11) {
            this.f2500p = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.f2498n = mode;
            if (mode == 0) {
                int[] iArr = RecyclerView.I0;
            }
            this.f2501q = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.f2499o = mode2;
            if (mode2 == 0) {
                int[] iArr2 = RecyclerView.I0;
            }
        }
    }

    public interface o {
        void b();

        void d(View view);
    }

    public static abstract class p {
    }

    public interface q {
        void a(MotionEvent motionEvent);

        boolean c(MotionEvent motionEvent);

        void e(boolean z10);
    }

    public static abstract class r {
        public void a(RecyclerView recyclerView, int i10) {
        }

        public void b(RecyclerView recyclerView, int i10, int i11) {
        }
    }

    public static class s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SparseArray<a> f2512a = new SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2513b = 0;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ArrayList<b0> f2514a = new ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2515b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f2516c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f2517d = 0;
        }

        public final a a(int i10) {
            a aVar = this.f2512a.get(i10);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f2512a.put(i10, aVar2);
            return aVar2;
        }
    }

    public final class t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList<b0> f2518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<b0> f2519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList<b0> f2520c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<b0> f2521d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2522e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2523f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public s f2524g;

        public t() {
            ArrayList<b0> arrayList = new ArrayList<>();
            this.f2518a = arrayList;
            this.f2519b = null;
            this.f2520c = new ArrayList<>();
            this.f2521d = Collections.unmodifiableList(arrayList);
            this.f2522e = 2;
            this.f2523f = 2;
        }

        /* JADX WARN: Type inference failed for: r1v12, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        /* JADX WARN: Type inference failed for: r1v5, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$u>] */
        /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$u>] */
        public final void a(b0 b0Var, boolean z10) {
            RecyclerView.k(b0Var);
            View view = b0Var.f2453a;
            h0 h0Var = RecyclerView.this.f2434v0;
            if (h0Var != null) {
                j0.a aVarJ = h0Var.j();
                j0.a0.p(view, aVarJ instanceof h0.a ? (j0.a) ((h0.a) aVarJ).f2635e.remove(view) : null);
            }
            if (z10) {
                u uVar = RecyclerView.this.f2431u;
                if (uVar != null) {
                    uVar.a();
                }
                int size = RecyclerView.this.f2433v.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((u) RecyclerView.this.f2433v.get(i10)).a();
                }
                e eVar = RecyclerView.this.f2427s;
                if (eVar != null) {
                    eVar.k(b0Var);
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f2420o0 != null) {
                    recyclerView.f2415m.f(b0Var);
                }
            }
            b0Var.f2471s = null;
            b0Var.f2470r = null;
            s sVarD = d();
            Objects.requireNonNull(sVarD);
            int i11 = b0Var.f2458f;
            ArrayList<b0> arrayList = sVarD.a(i11).f2514a;
            if (sVarD.f2512a.get(i11).f2515b <= arrayList.size()) {
                return;
            }
            b0Var.u();
            arrayList.add(b0Var);
        }

        public final void b() {
            this.f2518a.clear();
            e();
        }

        public final int c(int i10) {
            if (i10 >= 0 && i10 < RecyclerView.this.f2420o0.b()) {
                RecyclerView recyclerView = RecyclerView.this;
                return !recyclerView.f2420o0.f2549g ? i10 : recyclerView.f2411k.f(i10, 0);
            }
            StringBuilder sbC = y0.c("invalid position ", i10, ". State item count is ");
            sbC.append(RecyclerView.this.f2420o0.b());
            throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sbC));
        }

        public final s d() {
            if (this.f2524g == null) {
                this.f2524g = new s();
            }
            return this.f2524g;
        }

        public final void e() {
            for (int size = this.f2520c.size() - 1; size >= 0; size--) {
                f(size);
            }
            this.f2520c.clear();
            int[] iArr = RecyclerView.I0;
            androidx.recyclerview.widget.r.b bVar = RecyclerView.this.f2418n0;
            int[] iArr2 = bVar.f2765c;
            if (iArr2 != null) {
                Arrays.fill(iArr2, -1);
            }
            bVar.f2766d = 0;
        }

        public final void f(int i10) {
            a(this.f2520c.get(i10), true);
            this.f2520c.remove(i10);
        }

        public final void g(View view) {
            b0 b0VarK = RecyclerView.K(view);
            if (b0VarK.r()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (b0VarK.q()) {
                b0VarK.y();
            } else if (b0VarK.z()) {
                b0VarK.f();
            }
            h(b0VarK);
            if (RecyclerView.this.T == null || b0VarK.o()) {
                return;
            }
            RecyclerView.this.T.e(b0VarK);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0030  */
        public final void h(b0 b0Var) {
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13 = false;
            if (b0Var.q() || b0Var.f2453a.getParent() != null) {
                StringBuilder sbC = a0.b.c("Scrapped or attached views may not be recycled. isScrap:");
                sbC.append(b0Var.q());
                sbC.append(" isAttached:");
                sbC.append(b0Var.f2453a.getParent() != null);
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(RecyclerView.this, sbC));
            }
            if (b0Var.r()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
                sb2.append(b0Var);
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(RecyclerView.this, sb2));
            }
            if (b0Var.x()) {
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(RecyclerView.this, a0.b.c("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
            }
            if ((b0Var.f2462j & 16) == 0) {
                View view = b0Var.f2453a;
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                if (j0.a0.d.i(view)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            e eVar = RecyclerView.this.f2427s;
            if (b0Var.o()) {
                if (this.f2523f <= 0 || b0Var.k(526)) {
                    z12 = false;
                } else {
                    int size = this.f2520c.size();
                    if (size >= this.f2523f && size > 0) {
                        f(0);
                        size--;
                    }
                    int[] iArr = RecyclerView.I0;
                    if (size > 0 && !RecyclerView.this.f2418n0.c(b0Var.f2455c)) {
                        do {
                            size--;
                            if (size < 0) {
                                break;
                            }
                        } while (RecyclerView.this.f2418n0.c(this.f2520c.get(size).f2455c));
                        size++;
                    }
                    this.f2520c.add(size, b0Var);
                    z12 = true;
                }
                if (!z12) {
                    a(b0Var, true);
                    z13 = true;
                }
                z11 = z13;
                z13 = z12;
            } else {
                z11 = false;
            }
            RecyclerView.this.f2415m.f(b0Var);
            if (z13 || z11 || !z10) {
                return;
            }
            b0Var.f2471s = null;
            b0Var.f2470r = null;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0039  */
        /* JADX WARN: Code duplicated, block: B:24:0x003f  */
        public final void i(View view) {
            boolean z10;
            boolean z11;
            b0 b0VarK = RecyclerView.K(view);
            if (!b0VarK.k(12) && b0VarK.s()) {
                j jVar = RecyclerView.this.T;
                if (jVar != null) {
                    androidx.recyclerview.widget.n nVar = (androidx.recyclerview.widget.n) jVar;
                    if (b0VarK.j().isEmpty()) {
                        if (!nVar.f2644g || b0VarK.n()) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                    } else {
                        z11 = true;
                    }
                    if (z11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    z10 = true;
                }
                if (!z10) {
                    if (this.f2519b == null) {
                        this.f2519b = new ArrayList<>();
                    }
                    b0VarK.f2466n = this;
                    b0VarK.f2467o = true;
                    this.f2519b.add(b0VarK);
                    return;
                }
            }
            if (b0VarK.n() && !b0VarK.p() && !RecyclerView.this.f2427s.f2474b) {
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(RecyclerView.this, a0.b.c("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
            }
            b0VarK.f2466n = this;
            b0VarK.f2467o = false;
            this.f2518a.add(b0VarK);
        }

        /* JADX WARN: Code duplicated, block: B:111:0x01fb  */
        /* JADX WARN: Code duplicated, block: B:114:0x0200  */
        /* JADX WARN: Code duplicated, block: B:116:0x020a  */
        /* JADX WARN: Code duplicated, block: B:117:0x0215  */
        /* JADX WARN: Code duplicated, block: B:119:0x021b  */
        /* JADX WARN: Code duplicated, block: B:121:0x0223  */
        /* JADX WARN: Code duplicated, block: B:126:0x0241  */
        /* JADX WARN: Code duplicated, block: B:215:0x0400  */
        /* JADX WARN: Code duplicated, block: B:221:0x042b  */
        /* JADX WARN: Code duplicated, block: B:223:0x0431  */
        /* JADX WARN: Code duplicated, block: B:225:0x0436  */
        /* JADX WARN: Code duplicated, block: B:226:0x0438  */
        /* JADX WARN: Code duplicated, block: B:228:0x043b  */
        /* JADX WARN: Code duplicated, block: B:230:0x0441  */
        /* JADX WARN: Code duplicated, block: B:232:0x045e  */
        /* JADX WARN: Code duplicated, block: B:234:0x046c  */
        /* JADX WARN: Code duplicated, block: B:238:0x0474  */
        /* JADX WARN: Code duplicated, block: B:240:0x0477  */
        /* JADX WARN: Code duplicated, block: B:243:0x0486  */
        /* JADX WARN: Code duplicated, block: B:244:0x0488  */
        /* JADX WARN: Code duplicated, block: B:246:0x048b  */
        /* JADX WARN: Code duplicated, block: B:248:0x0491  */
        /* JADX WARN: Code duplicated, block: B:252:0x04af  */
        /* JADX WARN: Code duplicated, block: B:254:0x04b3  */
        /* JADX WARN: Code duplicated, block: B:257:0x04c6  */
        /* JADX WARN: Code duplicated, block: B:262:0x04e8  */
        /* JADX WARN: Code duplicated, block: B:265:0x04f8  */
        /* JADX WARN: Code duplicated, block: B:268:0x0500  */
        /* JADX WARN: Code duplicated, block: B:270:0x0503  */
        /* JADX WARN: Code duplicated, block: B:272:0x050e  */
        /* JADX WARN: Code duplicated, block: B:276:0x0518  */
        /* JADX WARN: Code duplicated, block: B:278:0x0520  */
        /* JADX WARN: Code duplicated, block: B:280:0x052c A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:284:0x0538  */
        /* JADX WARN: Code duplicated, block: B:287:0x0541  */
        /* JADX WARN: Code duplicated, block: B:291:0x054c  */
        /* JADX WARN: Code duplicated, block: B:292:0x055a  */
        /* JADX WARN: Code duplicated, block: B:294:0x0562  */
        /* JADX WARN: Code duplicated, block: B:295:0x0570  */
        /* JADX WARN: Code duplicated, block: B:298:0x0576 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:311:0x00c9 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:316:0x00ff A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:321:0x01b3 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:35:0x0086 A[EDGE_INSN: B:35:0x0086->B:36:0x0087 BREAK  A[LOOP:0: B:14:0x0028->B:20:0x0042]] */
        /* JADX WARN: Code duplicated, block: B:42:0x0090  */
        /* JADX WARN: Code duplicated, block: B:44:0x0099  */
        /* JADX WARN: Code duplicated, block: B:58:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:68:0x0102  */
        /* JADX WARN: Code duplicated, block: B:70:0x0114  */
        /* JADX WARN: Code duplicated, block: B:72:0x011c  */
        /* JADX WARN: Code duplicated, block: B:74:0x012e A[EDGE_INSN: B:74:0x012e->B:93:0x01b4 BREAK  A[LOOP:1: B:43:0x0097->B:55:0x00c6]] */
        /* JADX WARN: Code duplicated, block: B:75:0x013f  */
        /* JADX WARN: Code duplicated, block: B:77:0x0158  */
        /* JADX WARN: Code duplicated, block: B:79:0x016f  */
        /* JADX WARN: Code duplicated, block: B:81:0x0186  */
        /* JADX WARN: Code duplicated, block: B:83:0x018f  */
        /* JADX WARN: Code duplicated, block: B:94:0x01b6  */
        /* JADX WARN: Code duplicated, block: B:96:0x01bc  */
        /* JADX WARN: Code duplicated, block: B:97:0x01c3  */
        /* JADX WARN: Code duplicated, block: B:99:0x01c7  */
        /* JADX WARN: Instruction removed from duplicated block: B:77:0x0158, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:79:0x016f, please report this as an issue */
        /* JADX WARN: Type inference failed for: r10v21, types: [java.util.ArrayList, java.util.List<android.view.View>] */
        /* JADX WARN: Type inference failed for: r3v29, types: [java.util.ArrayList, java.util.List<java.lang.Object>] */
        /* JADX WARN: Type inference failed for: r8v11, types: [java.util.ArrayList, java.util.List<android.view.View>] */
        /* JADX WARN: Type inference failed for: r8v6, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        public final b0 j(int i10, long j10) {
            b0 b0VarK;
            boolean z10;
            int iF;
            int i11;
            e<? extends b0> eVar;
            boolean z11;
            long nanoTime;
            long j11;
            AccessibilityManager accessibilityManager;
            boolean z12;
            boolean z13;
            boolean z14;
            View view;
            h0 h0Var;
            j0.a aVarJ;
            h0.a aVar;
            j0.a aVarE;
            ?? r10;
            ViewGroup.LayoutParams layoutParams;
            long j12;
            boolean z15;
            boolean z16;
            ViewGroup.LayoutParams layoutParams2;
            n nVar;
            int iF2;
            b0 b0VarRemove;
            int size;
            int i12;
            androidx.recyclerview.widget.e eVar2;
            int size2;
            int i13;
            View view2;
            int size3;
            int i14;
            b0 b0Var;
            androidx.recyclerview.widget.e eVar3;
            int iC;
            int iJ;
            b0 b0VarK2;
            int i15;
            boolean z17;
            int size4;
            int iF3;
            if (i10 < 0 || i10 >= RecyclerView.this.f2420o0.b()) {
                StringBuilder sbB = androidx.recyclerview.widget.s.b("Invalid item position ", i10, "(", i10, "). Item count:");
                sbB.append(RecyclerView.this.f2420o0.b());
                throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sbB));
            }
            boolean z18 = false;
            if (RecyclerView.this.f2420o0.f2549g) {
                ArrayList<b0> arrayList = this.f2519b;
                if (arrayList != null && (size4 = arrayList.size()) != 0) {
                    int i16 = 0;
                    while (true) {
                        if (i16 >= size4) {
                            RecyclerView recyclerView = RecyclerView.this;
                            if (recyclerView.f2427s.f2474b && (iF3 = recyclerView.f2411k.f(i10, 0)) > 0 && iF3 < RecyclerView.this.f2427s.a()) {
                                long jB = RecyclerView.this.f2427s.b(iF3);
                                int i17 = 0;
                                while (true) {
                                    if (i17 >= size4) {
                                        b0VarK = null;
                                        break;
                                    }
                                    b0 b0Var2 = this.f2519b.get(i17);
                                    if (!b0Var2.z() && b0Var2.f2457e == jB) {
                                        b0Var2.d(32);
                                        b0VarK = b0Var2;
                                        break;
                                    }
                                    i17++;
                                }
                            } else {
                                b0VarK = null;
                                break;
                            }
                        } else {
                            b0VarK = this.f2519b.get(i16);
                            if (!b0VarK.z() && b0VarK.i() == i10) {
                                b0VarK.d(32);
                                break;
                            }
                            i16++;
                        }
                    }
                } else {
                    b0VarK = null;
                    break;
                }
                if (b0VarK != null) {
                    z10 = true;
                }
                if (b0VarK == null) {
                    size = this.f2518a.size();
                    i12 = 0;
                    while (true) {
                        if (i12 >= size) {
                            eVar2 = RecyclerView.this.f2413l;
                            size2 = eVar2.f2619c.size();
                            i13 = 0;
                            while (true) {
                                if (i13 < size2) {
                                    view2 = null;
                                    break;
                                }
                                view2 = (View) eVar2.f2619c.get(i13);
                                Objects.requireNonNull((f0) eVar2.f2617a);
                                b0VarK2 = RecyclerView.K(view2);
                                if (b0VarK2.i() != i10 && !b0VarK2.n() && !b0VarK2.p()) {
                                    break;
                                }
                                i13++;
                            }
                            if (view2 != null) {
                                size3 = this.f2520c.size();
                                i14 = 0;
                                while (true) {
                                    if (i14 < size3) {
                                        b0VarK = null;
                                        break;
                                    }
                                    b0Var = this.f2520c.get(i14);
                                    if (b0Var.n() && b0Var.i() == i10 && !b0Var.l()) {
                                        this.f2520c.remove(i14);
                                    } else {
                                        i14++;
                                    }
                                }
                            } else {
                                b0VarK = RecyclerView.K(view2);
                                eVar3 = RecyclerView.this.f2413l;
                                iC = ((f0) eVar3.f2617a).c(view2);
                                if (iC >= 0) {
                                    throw new IllegalArgumentException("view is not a child, cannot hide " + view2);
                                }
                                if (eVar3.f2618b.d(iC)) {
                                    throw new RuntimeException("trying to unhide a view that was not hidden" + view2);
                                }
                                eVar3.f2618b.a(iC);
                                eVar3.l(view2);
                                iJ = RecyclerView.this.f2413l.j(view2);
                                if (iJ != -1) {
                                    RecyclerView.this.f2413l.c(iJ);
                                    i(view2);
                                    b0VarK.d(8224);
                                    break;
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("layout index should not be -1 after unhiding a view:");
                                sb2.append(b0VarK);
                                throw new IllegalStateException(androidx.recyclerview.widget.d.b(RecyclerView.this, sb2));
                            }
                        } else {
                            b0Var = this.f2518a.get(i12);
                            if (!b0Var.z() || b0Var.i() != i10 || b0Var.n() || (!RecyclerView.this.f2420o0.f2549g && b0Var.p())) {
                                i12++;
                            } else {
                                b0Var.d(32);
                            }
                        }
                        b0VarK = b0Var;
                        break;
                    }
                    if (b0VarK != null) {
                        if (b0VarK.p()) {
                            z17 = RecyclerView.this.f2420o0.f2549g;
                        } else {
                            i15 = b0VarK.f2455c;
                            if (i15 >= 0 || i15 >= RecyclerView.this.f2427s.a()) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("Inconsistency detected. Invalid view holder adapter position");
                                sb3.append(b0VarK);
                                throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sb3));
                            }
                            RecyclerView recyclerView2 = RecyclerView.this;
                            if (recyclerView2.f2420o0.f2549g || recyclerView2.f2427s.c(b0VarK.f2455c) == b0VarK.f2458f) {
                                e eVar4 = RecyclerView.this.f2427s;
                                if (!eVar4.f2474b || b0VarK.f2457e == eVar4.b(b0VarK.f2455c)) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                            } else {
                                z17 = false;
                            }
                        }
                        if (z17) {
                            z10 = true;
                        } else {
                            b0VarK.d(4);
                            if (b0VarK.q()) {
                                RecyclerView.this.removeDetachedView(b0VarK.f2453a, false);
                                b0VarK.y();
                            } else if (b0VarK.z()) {
                                b0VarK.f();
                            }
                            h(b0VarK);
                            b0VarK = null;
                        }
                    }
                }
                if (b0VarK == null) {
                    iF2 = RecyclerView.this.f2411k.f(i10, 0);
                    if (iF2 >= 0 || iF2 >= RecyclerView.this.f2427s.a()) {
                        StringBuilder sbB2 = androidx.recyclerview.widget.s.b("Inconsistency detected. Invalid item position ", i10, "(offset:", iF2, ").state:");
                        sbB2.append(RecyclerView.this.f2420o0.b());
                        throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sbB2));
                    }
                    int iC2 = RecyclerView.this.f2427s.c(iF2);
                    e eVar5 = RecyclerView.this.f2427s;
                    if (eVar5.f2474b) {
                        long jB2 = eVar5.b(iF2);
                        int size5 = this.f2518a.size() - 1;
                        while (true) {
                            if (size5 < 0) {
                                int size6 = this.f2520c.size() - 1;
                                while (true) {
                                    if (size6 >= 0) {
                                        b0VarK = this.f2520c.get(size6);
                                        if (b0VarK.f2457e != jB2 || b0VarK.l()) {
                                            size6--;
                                        } else {
                                            if (iC2 == b0VarK.f2458f) {
                                                this.f2520c.remove(size6);
                                                break;
                                            }
                                            f(size6);
                                        }
                                    }
                                    b0VarK = null;
                                    break;
                                }
                            }
                            b0 b0Var3 = this.f2518a.get(size5);
                            if (b0Var3.f2457e == jB2 && !b0Var3.z()) {
                                if (iC2 == b0Var3.f2458f) {
                                    b0Var3.d(32);
                                    if (b0Var3.p() && !RecyclerView.this.f2420o0.f2549g) {
                                        b0Var3.v(2, 14);
                                    }
                                    b0VarK = b0Var3;
                                    break;
                                }
                                this.f2518a.remove(size5);
                                RecyclerView.this.removeDetachedView(b0Var3.f2453a, false);
                                b0 b0VarK3 = RecyclerView.K(b0Var3.f2453a);
                                b0VarK3.f2466n = null;
                                b0VarK3.f2467o = false;
                                b0VarK3.f();
                                h(b0VarK3);
                            }
                            size5--;
                        }
                        if (b0VarK != null) {
                            b0VarK.f2455c = iF2;
                            z10 = true;
                        }
                    }
                    if (b0VarK == null) {
                        s.a aVar2 = d().f2512a.get(iC2);
                        if (aVar2 != null && !aVar2.f2514a.isEmpty()) {
                            ArrayList<b0> arrayList2 = aVar2.f2514a;
                            int size7 = arrayList2.size() - 1;
                            while (true) {
                                if (size7 < 0) {
                                    b0VarRemove = null;
                                    break;
                                }
                                if (!arrayList2.get(size7).l()) {
                                    b0VarRemove = arrayList2.remove(size7);
                                    break;
                                }
                                size7--;
                            }
                        } else {
                            b0VarRemove = null;
                            break;
                        }
                        if (b0VarRemove != null) {
                            b0VarRemove.u();
                            int[] iArr = RecyclerView.I0;
                        }
                        b0VarK = b0VarRemove;
                    }
                    if (b0VarK == null) {
                        long nanoTime2 = RecyclerView.this.getNanoTime();
                        if (j10 != Long.MAX_VALUE) {
                            long j13 = this.f2524g.a(iC2).f2516c;
                            if (!(j13 == 0 || j13 + nanoTime2 < j10)) {
                                return null;
                            }
                        }
                        RecyclerView recyclerView3 = RecyclerView.this;
                        e eVar6 = recyclerView3.f2427s;
                        Objects.requireNonNull(eVar6);
                        try {
                            int i18 = f0.f.f6959a;
                            f0.f.a.a("RV CreateView");
                            b0 b0VarJ = eVar6.j(recyclerView3, iC2);
                            if (b0VarJ.f2453a.getParent() != null) {
                                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                            }
                            b0VarJ.f2458f = iC2;
                            f0.f.a.b();
                            int[] iArr2 = RecyclerView.I0;
                            RecyclerView recyclerViewF = RecyclerView.F(b0VarJ.f2453a);
                            if (recyclerViewF != null) {
                                b0VarJ.f2454b = new WeakReference<>(recyclerViewF);
                            }
                            long nanoTime3 = RecyclerView.this.getNanoTime() - nanoTime2;
                            s.a aVarA = this.f2524g.a(iC2);
                            long j14 = aVarA.f2516c;
                            if (j14 != 0) {
                                nanoTime3 = (nanoTime3 / 4) + ((j14 / 4) * 3);
                            }
                            aVarA.f2516c = nanoTime3;
                            b0VarK = b0VarJ;
                        } catch (Throwable th) {
                            int i19 = f0.f.f6959a;
                            f0.f.a.b();
                            throw th;
                        }
                    }
                }
                if (z10 && !RecyclerView.this.f2420o0.f2549g && b0VarK.k(8192)) {
                    b0VarK.v(0, 8192);
                    if (RecyclerView.this.f2420o0.f2552j) {
                        j.b(b0VarK);
                        j jVar = RecyclerView.this.T;
                        b0VarK.j();
                        Objects.requireNonNull(jVar);
                        j.c cVar = new j.c();
                        cVar.a(b0VarK);
                        RecyclerView.this.a0(b0VarK, cVar);
                    }
                }
                if (RecyclerView.this.f2420o0.f2549g || !b0VarK.m()) {
                    if (b0VarK.m()) {
                        if ((b0VarK.f2462j & 2) != 0) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        if (z16 || b0VarK.n()) {
                            iF = RecyclerView.this.f2411k.f(i10, 0);
                            b0VarK.f2471s = null;
                            RecyclerView recyclerView4 = RecyclerView.this;
                            b0VarK.f2470r = recyclerView4;
                            i11 = b0VarK.f2458f;
                            long nanoTime4 = recyclerView4.getNanoTime();
                            if (j10 != Long.MAX_VALUE) {
                                j12 = this.f2524g.a(i11).f2517d;
                                if (j12 != 0) {
                                    z15 = true;
                                } else {
                                    z15 = true;
                                }
                                if (!z15) {
                                }
                            }
                            eVar = RecyclerView.this.f2427s;
                            Objects.requireNonNull(eVar);
                            if (b0VarK.f2471s == null) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                b0VarK.f2455c = iF;
                                if (eVar.f2474b) {
                                    b0VarK.f2457e = eVar.b(iF);
                                }
                                b0VarK.v(1, 519);
                                int i20 = f0.f.f6959a;
                                f0.f.a.a("RV OnBindView");
                            }
                            b0VarK.f2471s = eVar;
                            eVar.i(b0VarK, iF, b0VarK.j());
                            if (z11) {
                                r10 = b0VarK.f2463k;
                                if (r10 != 0) {
                                    r10.clear();
                                }
                                b0VarK.f2462j &= -1025;
                                layoutParams = b0VarK.f2453a.getLayoutParams();
                                if (layoutParams instanceof n) {
                                    ((n) layoutParams).f2510c = true;
                                }
                                int i21 = f0.f.f6959a;
                                f0.f.a.b();
                            }
                            nanoTime = RecyclerView.this.getNanoTime() - nanoTime4;
                            s.a aVarA2 = this.f2524g.a(b0VarK.f2458f);
                            j11 = aVarA2.f2517d;
                            if (j11 != 0) {
                                nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                            }
                            aVarA2.f2517d = nanoTime;
                            accessibilityManager = RecyclerView.this.I;
                            if (accessibilityManager == null) {
                                z12 = false;
                            } else {
                                z12 = false;
                            }
                            if (z12) {
                                view = b0VarK.f2453a;
                                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                                if (j0.a0.d.c(view) == 0) {
                                    j0.a0.d.s(view, 1);
                                }
                                h0Var = RecyclerView.this.f2434v0;
                                if (h0Var != null) {
                                    aVarJ = h0Var.j();
                                    if (aVarJ instanceof h0.a) {
                                        aVar = (h0.a) aVarJ;
                                        Objects.requireNonNull(aVar);
                                        aVarE = j0.a0.e(view);
                                        if (aVarE != null) {
                                            aVar.f2635e.put(view, aVarE);
                                        }
                                    }
                                    j0.a0.p(view, aVarJ);
                                }
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            if (RecyclerView.this.f2420o0.f2549g) {
                                b0VarK.f2459g = i10;
                            }
                            z14 = z13;
                        }
                    } else {
                        iF = RecyclerView.this.f2411k.f(i10, 0);
                        b0VarK.f2471s = null;
                        RecyclerView recyclerView5 = RecyclerView.this;
                        b0VarK.f2470r = recyclerView5;
                        i11 = b0VarK.f2458f;
                        long nanoTime5 = recyclerView5.getNanoTime();
                        if (j10 != Long.MAX_VALUE) {
                            j12 = this.f2524g.a(i11).f2517d;
                            if (j12 != 0 || j12 + nanoTime5 < j10) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            if (!z15) {
                            }
                        }
                        eVar = RecyclerView.this.f2427s;
                        Objects.requireNonNull(eVar);
                        if (b0VarK.f2471s == null) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            b0VarK.f2455c = iF;
                            if (eVar.f2474b) {
                                b0VarK.f2457e = eVar.b(iF);
                            }
                            b0VarK.v(1, 519);
                            int i22 = f0.f.f6959a;
                            f0.f.a.a("RV OnBindView");
                        }
                        b0VarK.f2471s = eVar;
                        eVar.i(b0VarK, iF, b0VarK.j());
                        if (z11) {
                            r10 = b0VarK.f2463k;
                            if (r10 != 0) {
                                r10.clear();
                            }
                            b0VarK.f2462j &= -1025;
                            layoutParams = b0VarK.f2453a.getLayoutParams();
                            if (layoutParams instanceof n) {
                                ((n) layoutParams).f2510c = true;
                            }
                            int i23 = f0.f.f6959a;
                            f0.f.a.b();
                        }
                        nanoTime = RecyclerView.this.getNanoTime() - nanoTime5;
                        s.a aVarA3 = this.f2524g.a(b0VarK.f2458f);
                        j11 = aVarA3.f2517d;
                        if (j11 != 0) {
                            nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                        }
                        aVarA3.f2517d = nanoTime;
                        accessibilityManager = RecyclerView.this.I;
                        if (accessibilityManager == null && accessibilityManager.isEnabled()) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            view = b0VarK.f2453a;
                            WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
                            if (j0.a0.d.c(view) == 0) {
                                j0.a0.d.s(view, 1);
                            }
                            h0Var = RecyclerView.this.f2434v0;
                            if (h0Var != null) {
                                aVarJ = h0Var.j();
                                if (aVarJ instanceof h0.a) {
                                    aVar = (h0.a) aVarJ;
                                    Objects.requireNonNull(aVar);
                                    aVarE = j0.a0.e(view);
                                    if (aVarE != null && aVarE != aVar) {
                                        aVar.f2635e.put(view, aVarE);
                                    }
                                }
                                j0.a0.p(view, aVarJ);
                            }
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        if (RecyclerView.this.f2420o0.f2549g) {
                            b0VarK.f2459g = i10;
                        }
                        z14 = z13;
                    }
                    layoutParams2 = b0VarK.f2453a.getLayoutParams();
                    if (layoutParams2 == null) {
                        nVar = (n) RecyclerView.this.generateDefaultLayoutParams();
                        b0VarK.f2453a.setLayoutParams(nVar);
                    } else if (RecyclerView.this.checkLayoutParams(layoutParams2)) {
                        nVar = (n) layoutParams2;
                    } else {
                        nVar = (n) RecyclerView.this.generateLayoutParams(layoutParams2);
                        b0VarK.f2453a.setLayoutParams(nVar);
                    }
                    nVar.f2508a = b0VarK;
                    if (z10 && z13) {
                        z18 = z14;
                    }
                    nVar.f2511d = z18;
                    return b0VarK;
                }
                b0VarK.f2459g = i10;
                z14 = true;
                z13 = false;
                layoutParams2 = b0VarK.f2453a.getLayoutParams();
                if (layoutParams2 == null) {
                    nVar = (n) RecyclerView.this.generateDefaultLayoutParams();
                    b0VarK.f2453a.setLayoutParams(nVar);
                } else if (RecyclerView.this.checkLayoutParams(layoutParams2)) {
                    nVar = (n) RecyclerView.this.generateLayoutParams(layoutParams2);
                    b0VarK.f2453a.setLayoutParams(nVar);
                } else {
                    nVar = (n) layoutParams2;
                }
                nVar.f2508a = b0VarK;
                if (z10) {
                    z18 = z14;
                }
                nVar.f2511d = z18;
                return b0VarK;
            }
            b0VarK = null;
            z10 = false;
            if (b0VarK == null) {
                size = this.f2518a.size();
                i12 = 0;
                while (true) {
                    if (i12 >= size) {
                        b0Var = this.f2518a.get(i12);
                        if (b0Var.z()) {
                        }
                        i12++;
                    } else {
                        eVar2 = RecyclerView.this.f2413l;
                        size2 = eVar2.f2619c.size();
                        i13 = 0;
                        while (true) {
                            if (i13 < size2) {
                                view2 = null;
                                break;
                            }
                            view2 = (View) eVar2.f2619c.get(i13);
                            Objects.requireNonNull((f0) eVar2.f2617a);
                            b0VarK2 = RecyclerView.K(view2);
                            if (b0VarK2.i() != i10) {
                            }
                            i13++;
                        }
                        if (view2 != null) {
                            size3 = this.f2520c.size();
                            i14 = 0;
                            while (true) {
                                if (i14 < size3) {
                                    b0VarK = null;
                                    break;
                                }
                                b0Var = this.f2520c.get(i14);
                                if (b0Var.n()) {
                                }
                                i14++;
                            }
                        } else {
                            b0VarK = RecyclerView.K(view2);
                            eVar3 = RecyclerView.this.f2413l;
                            iC = ((f0) eVar3.f2617a).c(view2);
                            if (iC >= 0) {
                                throw new IllegalArgumentException("view is not a child, cannot hide " + view2);
                            }
                            if (eVar3.f2618b.d(iC)) {
                                throw new RuntimeException("trying to unhide a view that was not hidden" + view2);
                            }
                            eVar3.f2618b.a(iC);
                            eVar3.l(view2);
                            iJ = RecyclerView.this.f2413l.j(view2);
                            if (iJ != -1) {
                                RecyclerView.this.f2413l.c(iJ);
                                i(view2);
                                b0VarK.d(8224);
                                break;
                            }
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("layout index should not be -1 after unhiding a view:");
                            sb4.append(b0VarK);
                            throw new IllegalStateException(androidx.recyclerview.widget.d.b(RecyclerView.this, sb4));
                        }
                        if (b0VarK != null) {
                            if (b0VarK.p()) {
                                i15 = b0VarK.f2455c;
                                if (i15 >= 0) {
                                }
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("Inconsistency detected. Invalid view holder adapter position");
                                sb5.append(b0VarK);
                                throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sb5));
                            }
                            z17 = RecyclerView.this.f2420o0.f2549g;
                            if (z17) {
                                b0VarK.d(4);
                                if (b0VarK.q()) {
                                    RecyclerView.this.removeDetachedView(b0VarK.f2453a, false);
                                    b0VarK.y();
                                } else if (b0VarK.z()) {
                                    b0VarK.f();
                                }
                                h(b0VarK);
                                b0VarK = null;
                            } else {
                                z10 = true;
                            }
                        }
                    }
                    b0VarK = b0Var;
                    if (b0VarK != null) {
                        if (b0VarK.p()) {
                            i15 = b0VarK.f2455c;
                            if (i15 >= 0) {
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("Inconsistency detected. Invalid view holder adapter position");
                            sb6.append(b0VarK);
                            throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sb6));
                        }
                        z17 = RecyclerView.this.f2420o0.f2549g;
                        if (z17) {
                            b0VarK.d(4);
                            if (b0VarK.q()) {
                                RecyclerView.this.removeDetachedView(b0VarK.f2453a, false);
                                b0VarK.y();
                            } else if (b0VarK.z()) {
                                b0VarK.f();
                            }
                            h(b0VarK);
                            b0VarK = null;
                        } else {
                            z10 = true;
                        }
                    }
                }
            }
            if (b0VarK == null) {
                iF2 = RecyclerView.this.f2411k.f(i10, 0);
                if (iF2 >= 0) {
                }
                StringBuilder sbB3 = androidx.recyclerview.widget.s.b("Inconsistency detected. Invalid item position ", i10, "(offset:", iF2, ").state:");
                sbB3.append(RecyclerView.this.f2420o0.b());
                throw new IndexOutOfBoundsException(androidx.recyclerview.widget.d.b(RecyclerView.this, sbB3));
            }
            if (z10) {
                b0VarK.v(0, 8192);
                if (RecyclerView.this.f2420o0.f2552j) {
                    j.b(b0VarK);
                    j jVar2 = RecyclerView.this.T;
                    b0VarK.j();
                    Objects.requireNonNull(jVar2);
                    j.c cVar2 = new j.c();
                    cVar2.a(b0VarK);
                    RecyclerView.this.a0(b0VarK, cVar2);
                }
            }
            if (RecyclerView.this.f2420o0.f2549g) {
                if (b0VarK.m()) {
                    iF = RecyclerView.this.f2411k.f(i10, 0);
                    b0VarK.f2471s = null;
                    RecyclerView recyclerView6 = RecyclerView.this;
                    b0VarK.f2470r = recyclerView6;
                    i11 = b0VarK.f2458f;
                    long nanoTime6 = recyclerView6.getNanoTime();
                    if (j10 != Long.MAX_VALUE) {
                        j12 = this.f2524g.a(i11).f2517d;
                        if (j12 != 0) {
                            z15 = true;
                        } else {
                            z15 = true;
                        }
                        if (!z15) {
                            z14 = true;
                            z13 = false;
                        }
                    }
                    eVar = RecyclerView.this.f2427s;
                    Objects.requireNonNull(eVar);
                    if (b0VarK.f2471s == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        b0VarK.f2455c = iF;
                        if (eVar.f2474b) {
                            b0VarK.f2457e = eVar.b(iF);
                        }
                        b0VarK.v(1, 519);
                        int i24 = f0.f.f6959a;
                        f0.f.a.a("RV OnBindView");
                    }
                    b0VarK.f2471s = eVar;
                    eVar.i(b0VarK, iF, b0VarK.j());
                    if (z11) {
                        r10 = b0VarK.f2463k;
                        if (r10 != 0) {
                            r10.clear();
                        }
                        b0VarK.f2462j &= -1025;
                        layoutParams = b0VarK.f2453a.getLayoutParams();
                        if (layoutParams instanceof n) {
                            ((n) layoutParams).f2510c = true;
                        }
                        int i25 = f0.f.f6959a;
                        f0.f.a.b();
                    }
                    nanoTime = RecyclerView.this.getNanoTime() - nanoTime6;
                    s.a aVarA4 = this.f2524g.a(b0VarK.f2458f);
                    j11 = aVarA4.f2517d;
                    if (j11 != 0) {
                        nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                    }
                    aVarA4.f2517d = nanoTime;
                    accessibilityManager = RecyclerView.this.I;
                    if (accessibilityManager == null) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    if (z12) {
                        view = b0VarK.f2453a;
                        WeakHashMap<View, j0.g0> weakHashMap3 = j0.a0.f9147a;
                        if (j0.a0.d.c(view) == 0) {
                            j0.a0.d.s(view, 1);
                        }
                        h0Var = RecyclerView.this.f2434v0;
                        if (h0Var != null) {
                            aVarJ = h0Var.j();
                            if (aVarJ instanceof h0.a) {
                                aVar = (h0.a) aVarJ;
                                Objects.requireNonNull(aVar);
                                aVarE = j0.a0.e(view);
                                if (aVarE != null) {
                                    aVar.f2635e.put(view, aVarE);
                                }
                            }
                            j0.a0.p(view, aVarJ);
                        }
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    if (RecyclerView.this.f2420o0.f2549g) {
                        b0VarK.f2459g = i10;
                    }
                    z14 = z13;
                } else {
                    if ((b0VarK.f2462j & 2) != 0) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    if (z16) {
                        iF = RecyclerView.this.f2411k.f(i10, 0);
                        b0VarK.f2471s = null;
                        RecyclerView recyclerView7 = RecyclerView.this;
                        b0VarK.f2470r = recyclerView7;
                        i11 = b0VarK.f2458f;
                        long nanoTime7 = recyclerView7.getNanoTime();
                        if (j10 != Long.MAX_VALUE) {
                            j12 = this.f2524g.a(i11).f2517d;
                            if (j12 != 0) {
                                z15 = true;
                            } else {
                                z15 = true;
                            }
                            if (!z15) {
                                z14 = true;
                                z13 = false;
                            }
                        }
                        eVar = RecyclerView.this.f2427s;
                        Objects.requireNonNull(eVar);
                        if (b0VarK.f2471s == null) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            b0VarK.f2455c = iF;
                            if (eVar.f2474b) {
                                b0VarK.f2457e = eVar.b(iF);
                            }
                            b0VarK.v(1, 519);
                            int i26 = f0.f.f6959a;
                            f0.f.a.a("RV OnBindView");
                        }
                        b0VarK.f2471s = eVar;
                        eVar.i(b0VarK, iF, b0VarK.j());
                        if (z11) {
                            r10 = b0VarK.f2463k;
                            if (r10 != 0) {
                                r10.clear();
                            }
                            b0VarK.f2462j &= -1025;
                            layoutParams = b0VarK.f2453a.getLayoutParams();
                            if (layoutParams instanceof n) {
                                ((n) layoutParams).f2510c = true;
                            }
                            int i27 = f0.f.f6959a;
                            f0.f.a.b();
                        }
                        nanoTime = RecyclerView.this.getNanoTime() - nanoTime7;
                        s.a aVarA5 = this.f2524g.a(b0VarK.f2458f);
                        j11 = aVarA5.f2517d;
                        if (j11 != 0) {
                            nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                        }
                        aVarA5.f2517d = nanoTime;
                        accessibilityManager = RecyclerView.this.I;
                        if (accessibilityManager == null) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            view = b0VarK.f2453a;
                            WeakHashMap<View, j0.g0> weakHashMap4 = j0.a0.f9147a;
                            if (j0.a0.d.c(view) == 0) {
                                j0.a0.d.s(view, 1);
                            }
                            h0Var = RecyclerView.this.f2434v0;
                            if (h0Var != null) {
                                aVarJ = h0Var.j();
                                if (aVarJ instanceof h0.a) {
                                    aVar = (h0.a) aVarJ;
                                    Objects.requireNonNull(aVar);
                                    aVarE = j0.a0.e(view);
                                    if (aVarE != null) {
                                        aVar.f2635e.put(view, aVarE);
                                    }
                                }
                                j0.a0.p(view, aVarJ);
                            }
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        if (RecyclerView.this.f2420o0.f2549g) {
                            b0VarK.f2459g = i10;
                        }
                        z14 = z13;
                    } else {
                        iF = RecyclerView.this.f2411k.f(i10, 0);
                        b0VarK.f2471s = null;
                        RecyclerView recyclerView8 = RecyclerView.this;
                        b0VarK.f2470r = recyclerView8;
                        i11 = b0VarK.f2458f;
                        long nanoTime8 = recyclerView8.getNanoTime();
                        if (j10 != Long.MAX_VALUE) {
                            j12 = this.f2524g.a(i11).f2517d;
                            if (j12 != 0) {
                                z15 = true;
                            } else {
                                z15 = true;
                            }
                            if (!z15) {
                                z14 = true;
                                z13 = false;
                            }
                        }
                        eVar = RecyclerView.this.f2427s;
                        Objects.requireNonNull(eVar);
                        if (b0VarK.f2471s == null) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            b0VarK.f2455c = iF;
                            if (eVar.f2474b) {
                                b0VarK.f2457e = eVar.b(iF);
                            }
                            b0VarK.v(1, 519);
                            int i28 = f0.f.f6959a;
                            f0.f.a.a("RV OnBindView");
                        }
                        b0VarK.f2471s = eVar;
                        eVar.i(b0VarK, iF, b0VarK.j());
                        if (z11) {
                            r10 = b0VarK.f2463k;
                            if (r10 != 0) {
                                r10.clear();
                            }
                            b0VarK.f2462j &= -1025;
                            layoutParams = b0VarK.f2453a.getLayoutParams();
                            if (layoutParams instanceof n) {
                                ((n) layoutParams).f2510c = true;
                            }
                            int i29 = f0.f.f6959a;
                            f0.f.a.b();
                        }
                        nanoTime = RecyclerView.this.getNanoTime() - nanoTime8;
                        s.a aVarA6 = this.f2524g.a(b0VarK.f2458f);
                        j11 = aVarA6.f2517d;
                        if (j11 != 0) {
                            nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                        }
                        aVarA6.f2517d = nanoTime;
                        accessibilityManager = RecyclerView.this.I;
                        if (accessibilityManager == null) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            view = b0VarK.f2453a;
                            WeakHashMap<View, j0.g0> weakHashMap5 = j0.a0.f9147a;
                            if (j0.a0.d.c(view) == 0) {
                                j0.a0.d.s(view, 1);
                            }
                            h0Var = RecyclerView.this.f2434v0;
                            if (h0Var != null) {
                                aVarJ = h0Var.j();
                                if (aVarJ instanceof h0.a) {
                                    aVar = (h0.a) aVarJ;
                                    Objects.requireNonNull(aVar);
                                    aVarE = j0.a0.e(view);
                                    if (aVarE != null) {
                                        aVar.f2635e.put(view, aVarE);
                                    }
                                }
                                j0.a0.p(view, aVarJ);
                            }
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        if (RecyclerView.this.f2420o0.f2549g) {
                            b0VarK.f2459g = i10;
                        }
                        z14 = z13;
                    }
                }
            } else if (b0VarK.m()) {
                iF = RecyclerView.this.f2411k.f(i10, 0);
                b0VarK.f2471s = null;
                RecyclerView recyclerView9 = RecyclerView.this;
                b0VarK.f2470r = recyclerView9;
                i11 = b0VarK.f2458f;
                long nanoTime9 = recyclerView9.getNanoTime();
                if (j10 != Long.MAX_VALUE) {
                    j12 = this.f2524g.a(i11).f2517d;
                    if (j12 != 0) {
                        z15 = true;
                    } else {
                        z15 = true;
                    }
                    if (!z15) {
                        z14 = true;
                        z13 = false;
                    }
                }
                eVar = RecyclerView.this.f2427s;
                Objects.requireNonNull(eVar);
                if (b0VarK.f2471s == null) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11) {
                    b0VarK.f2455c = iF;
                    if (eVar.f2474b) {
                        b0VarK.f2457e = eVar.b(iF);
                    }
                    b0VarK.v(1, 519);
                    int i210 = f0.f.f6959a;
                    f0.f.a.a("RV OnBindView");
                }
                b0VarK.f2471s = eVar;
                eVar.i(b0VarK, iF, b0VarK.j());
                if (z11) {
                    r10 = b0VarK.f2463k;
                    if (r10 != 0) {
                        r10.clear();
                    }
                    b0VarK.f2462j &= -1025;
                    layoutParams = b0VarK.f2453a.getLayoutParams();
                    if (layoutParams instanceof n) {
                        ((n) layoutParams).f2510c = true;
                    }
                    int i211 = f0.f.f6959a;
                    f0.f.a.b();
                }
                nanoTime = RecyclerView.this.getNanoTime() - nanoTime9;
                s.a aVarA7 = this.f2524g.a(b0VarK.f2458f);
                j11 = aVarA7.f2517d;
                if (j11 != 0) {
                    nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                }
                aVarA7.f2517d = nanoTime;
                accessibilityManager = RecyclerView.this.I;
                if (accessibilityManager == null) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                if (z12) {
                    view = b0VarK.f2453a;
                    WeakHashMap<View, j0.g0> weakHashMap6 = j0.a0.f9147a;
                    if (j0.a0.d.c(view) == 0) {
                        j0.a0.d.s(view, 1);
                    }
                    h0Var = RecyclerView.this.f2434v0;
                    if (h0Var != null) {
                        aVarJ = h0Var.j();
                        if (aVarJ instanceof h0.a) {
                            aVar = (h0.a) aVarJ;
                            Objects.requireNonNull(aVar);
                            aVarE = j0.a0.e(view);
                            if (aVarE != null) {
                                aVar.f2635e.put(view, aVarE);
                            }
                        }
                        j0.a0.p(view, aVarJ);
                    }
                    z13 = true;
                } else {
                    z13 = true;
                }
                if (RecyclerView.this.f2420o0.f2549g) {
                    b0VarK.f2459g = i10;
                }
                z14 = z13;
            } else {
                if ((b0VarK.f2462j & 2) != 0) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                if (z16) {
                    iF = RecyclerView.this.f2411k.f(i10, 0);
                    b0VarK.f2471s = null;
                    RecyclerView recyclerView10 = RecyclerView.this;
                    b0VarK.f2470r = recyclerView10;
                    i11 = b0VarK.f2458f;
                    long nanoTime10 = recyclerView10.getNanoTime();
                    if (j10 != Long.MAX_VALUE) {
                        j12 = this.f2524g.a(i11).f2517d;
                        if (j12 != 0) {
                            z15 = true;
                        } else {
                            z15 = true;
                        }
                        if (!z15) {
                            z14 = true;
                            z13 = false;
                        }
                    }
                    eVar = RecyclerView.this.f2427s;
                    Objects.requireNonNull(eVar);
                    if (b0VarK.f2471s == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        b0VarK.f2455c = iF;
                        if (eVar.f2474b) {
                            b0VarK.f2457e = eVar.b(iF);
                        }
                        b0VarK.v(1, 519);
                        int i212 = f0.f.f6959a;
                        f0.f.a.a("RV OnBindView");
                    }
                    b0VarK.f2471s = eVar;
                    eVar.i(b0VarK, iF, b0VarK.j());
                    if (z11) {
                        r10 = b0VarK.f2463k;
                        if (r10 != 0) {
                            r10.clear();
                        }
                        b0VarK.f2462j &= -1025;
                        layoutParams = b0VarK.f2453a.getLayoutParams();
                        if (layoutParams instanceof n) {
                            ((n) layoutParams).f2510c = true;
                        }
                        int i213 = f0.f.f6959a;
                        f0.f.a.b();
                    }
                    nanoTime = RecyclerView.this.getNanoTime() - nanoTime10;
                    s.a aVarA8 = this.f2524g.a(b0VarK.f2458f);
                    j11 = aVarA8.f2517d;
                    if (j11 != 0) {
                        nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                    }
                    aVarA8.f2517d = nanoTime;
                    accessibilityManager = RecyclerView.this.I;
                    if (accessibilityManager == null) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    if (z12) {
                        view = b0VarK.f2453a;
                        WeakHashMap<View, j0.g0> weakHashMap7 = j0.a0.f9147a;
                        if (j0.a0.d.c(view) == 0) {
                            j0.a0.d.s(view, 1);
                        }
                        h0Var = RecyclerView.this.f2434v0;
                        if (h0Var != null) {
                            aVarJ = h0Var.j();
                            if (aVarJ instanceof h0.a) {
                                aVar = (h0.a) aVarJ;
                                Objects.requireNonNull(aVar);
                                aVarE = j0.a0.e(view);
                                if (aVarE != null) {
                                    aVar.f2635e.put(view, aVarE);
                                }
                            }
                            j0.a0.p(view, aVarJ);
                        }
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    if (RecyclerView.this.f2420o0.f2549g) {
                        b0VarK.f2459g = i10;
                    }
                    z14 = z13;
                } else {
                    iF = RecyclerView.this.f2411k.f(i10, 0);
                    b0VarK.f2471s = null;
                    RecyclerView recyclerView11 = RecyclerView.this;
                    b0VarK.f2470r = recyclerView11;
                    i11 = b0VarK.f2458f;
                    long nanoTime11 = recyclerView11.getNanoTime();
                    if (j10 != Long.MAX_VALUE) {
                        j12 = this.f2524g.a(i11).f2517d;
                        if (j12 != 0) {
                            z15 = true;
                        } else {
                            z15 = true;
                        }
                        if (!z15) {
                            z14 = true;
                            z13 = false;
                        }
                    }
                    eVar = RecyclerView.this.f2427s;
                    Objects.requireNonNull(eVar);
                    if (b0VarK.f2471s == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        b0VarK.f2455c = iF;
                        if (eVar.f2474b) {
                            b0VarK.f2457e = eVar.b(iF);
                        }
                        b0VarK.v(1, 519);
                        int i214 = f0.f.f6959a;
                        f0.f.a.a("RV OnBindView");
                    }
                    b0VarK.f2471s = eVar;
                    eVar.i(b0VarK, iF, b0VarK.j());
                    if (z11) {
                        r10 = b0VarK.f2463k;
                        if (r10 != 0) {
                            r10.clear();
                        }
                        b0VarK.f2462j &= -1025;
                        layoutParams = b0VarK.f2453a.getLayoutParams();
                        if (layoutParams instanceof n) {
                            ((n) layoutParams).f2510c = true;
                        }
                        int i215 = f0.f.f6959a;
                        f0.f.a.b();
                    }
                    nanoTime = RecyclerView.this.getNanoTime() - nanoTime11;
                    s.a aVarA9 = this.f2524g.a(b0VarK.f2458f);
                    j11 = aVarA9.f2517d;
                    if (j11 != 0) {
                        nanoTime = (nanoTime / 4) + ((j11 / 4) * 3);
                    }
                    aVarA9.f2517d = nanoTime;
                    accessibilityManager = RecyclerView.this.I;
                    if (accessibilityManager == null) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    if (z12) {
                        view = b0VarK.f2453a;
                        WeakHashMap<View, j0.g0> weakHashMap8 = j0.a0.f9147a;
                        if (j0.a0.d.c(view) == 0) {
                            j0.a0.d.s(view, 1);
                        }
                        h0Var = RecyclerView.this.f2434v0;
                        if (h0Var != null) {
                            aVarJ = h0Var.j();
                            if (aVarJ instanceof h0.a) {
                                aVar = (h0.a) aVarJ;
                                Objects.requireNonNull(aVar);
                                aVarE = j0.a0.e(view);
                                if (aVarE != null) {
                                    aVar.f2635e.put(view, aVarE);
                                }
                            }
                            j0.a0.p(view, aVarJ);
                        }
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    if (RecyclerView.this.f2420o0.f2549g) {
                        b0VarK.f2459g = i10;
                    }
                    z14 = z13;
                }
            }
            layoutParams2 = b0VarK.f2453a.getLayoutParams();
            if (layoutParams2 == null) {
                nVar = (n) RecyclerView.this.generateDefaultLayoutParams();
                b0VarK.f2453a.setLayoutParams(nVar);
            } else if (RecyclerView.this.checkLayoutParams(layoutParams2)) {
                nVar = (n) RecyclerView.this.generateLayoutParams(layoutParams2);
                b0VarK.f2453a.setLayoutParams(nVar);
            } else {
                nVar = (n) layoutParams2;
            }
            nVar.f2508a = b0VarK;
            if (z10) {
                z18 = z14;
            }
            nVar.f2511d = z18;
            return b0VarK;
        }

        public final void k(b0 b0Var) {
            if (b0Var.f2467o) {
                this.f2519b.remove(b0Var);
            } else {
                this.f2518a.remove(b0Var);
            }
            b0Var.f2466n = null;
            b0Var.f2467o = false;
            b0Var.f();
        }

        public final void l() {
            m mVar = RecyclerView.this.f2429t;
            this.f2523f = this.f2522e + (mVar != null ? mVar.f2496l : 0);
            for (int size = this.f2520c.size() - 1; size >= 0 && this.f2520c.size() > this.f2523f; size--) {
                f(size);
            }
        }
    }

    public interface u {
        void a();
    }

    public class v extends g {
        public v() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void a() {
            RecyclerView.this.i(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2420o0.f2548f = true;
            recyclerView.Z(true);
            if (RecyclerView.this.f2411k.g()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0029  */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void b(int i10, int i11, Object obj) {
            boolean z10;
            RecyclerView.this.i(null);
            androidx.recyclerview.widget.a aVar = RecyclerView.this.f2411k;
            Objects.requireNonNull(aVar);
            if (i11 >= 1) {
                aVar.f2598b.add(aVar.h(4, i10, i11, obj));
                aVar.f2602f |= 4;
                z10 = aVar.f2598b.size() == 1;
            }
            if (z10) {
                f();
            }
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0028  */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void c(int i10, int i11) {
            boolean z10;
            RecyclerView.this.i(null);
            androidx.recyclerview.widget.a aVar = RecyclerView.this.f2411k;
            Objects.requireNonNull(aVar);
            if (i11 >= 1) {
                aVar.f2598b.add(aVar.h(1, i10, i11, null));
                aVar.f2602f |= 1;
                z10 = aVar.f2598b.size() == 1;
            }
            if (z10) {
                f();
            }
        }

        /* JADX WARN: Code duplicated, block: B:8:0x002a  */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void d(int i10, int i11) {
            boolean z10;
            RecyclerView.this.i(null);
            androidx.recyclerview.widget.a aVar = RecyclerView.this.f2411k;
            Objects.requireNonNull(aVar);
            if (i10 != i11) {
                aVar.f2598b.add(aVar.h(8, i10, i11, null));
                aVar.f2602f |= 8;
                z10 = aVar.f2598b.size() == 1;
            }
            if (z10) {
                f();
            }
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0029  */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void e(int i10, int i11) {
            boolean z10;
            RecyclerView.this.i(null);
            androidx.recyclerview.widget.a aVar = RecyclerView.this.f2411k;
            Objects.requireNonNull(aVar);
            if (i11 >= 1) {
                aVar.f2598b.add(aVar.h(2, i10, i11, null));
                aVar.f2602f |= 2;
                z10 = aVar.f2598b.size() == 1;
            }
            if (z10) {
                f();
            }
        }

        public final void f() {
            int[] iArr = RecyclerView.I0;
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.A || !recyclerView.f2441z) {
                recyclerView.H = true;
                recyclerView.requestLayout();
            } else {
                a aVar = recyclerView.f2419o;
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                j0.a0.d.m(recyclerView, aVar);
            }
        }
    }

    public static abstract class x {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView f2529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public m f2530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2531d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2532e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f2533f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2535h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2528a = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final a f2534g = new a();

        public static class a {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f2539d = -1;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f2541f = false;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f2542g = 0;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2536a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2537b = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f2538c = Integer.MIN_VALUE;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public Interpolator f2540e = null;

            public final void a(RecyclerView recyclerView) {
                int i10 = this.f2539d;
                if (i10 >= 0) {
                    this.f2539d = -1;
                    recyclerView.R(i10);
                    this.f2541f = false;
                    return;
                }
                if (!this.f2541f) {
                    this.f2542g = 0;
                    return;
                }
                Interpolator interpolator = this.f2540e;
                if (interpolator != null && this.f2538c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                int i11 = this.f2538c;
                if (i11 < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                recyclerView.f2414l0.b(this.f2536a, this.f2537b, i11, interpolator);
                int i12 = this.f2542g + 1;
                this.f2542g = i12;
                if (i12 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f2541f = false;
            }

            public final void b(int i10, int i11, int i12, Interpolator interpolator) {
                this.f2536a = i10;
                this.f2537b = i11;
                this.f2538c = i12;
                this.f2540e = interpolator;
                this.f2541f = true;
            }
        }

        public interface b {
            PointF a(int i10);
        }

        public PointF a(int i10) {
            Object obj = this.f2530c;
            if (obj instanceof b) {
                return ((b) obj).a(i10);
            }
            StringBuilder sbC = a0.b.c("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
            sbC.append(b.class.getCanonicalName());
            Log.w("RecyclerView", sbC.toString());
            return null;
        }

        public final void b(int i10, int i11) {
            PointF pointFA;
            RecyclerView recyclerView = this.f2529b;
            if (this.f2528a == -1 || recyclerView == null) {
                f();
            }
            if (this.f2531d && this.f2533f == null && this.f2530c != null && (pointFA = a(this.f2528a)) != null) {
                float f10 = pointFA.x;
                if (f10 != 0.0f || pointFA.y != 0.0f) {
                    recyclerView.g0((int) Math.signum(f10), (int) Math.signum(pointFA.y), null);
                }
            }
            this.f2531d = false;
            View view = this.f2533f;
            if (view != null) {
                Objects.requireNonNull(this.f2529b);
                b0 b0VarK = RecyclerView.K(view);
                if ((b0VarK != null ? b0VarK.i() : -1) == this.f2528a) {
                    e(this.f2533f, recyclerView.f2420o0, this.f2534g);
                    this.f2534g.a(recyclerView);
                    f();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f2533f = null;
                }
            }
            if (this.f2532e) {
                y yVar = recyclerView.f2420o0;
                c(i10, i11, this.f2534g);
                a aVar = this.f2534g;
                boolean z10 = aVar.f2539d >= 0;
                aVar.a(recyclerView);
                if (z10 && this.f2532e) {
                    this.f2531d = true;
                    recyclerView.f2414l0.a();
                }
            }
        }

        public abstract void c(int i10, int i11, a aVar);

        public abstract void d();

        public abstract void e(View view, y yVar, a aVar);

        public final void f() {
            if (this.f2532e) {
                this.f2532e = false;
                d();
                this.f2529b.f2420o0.f2543a = -1;
                this.f2533f = null;
                this.f2528a = -1;
                this.f2531d = false;
                m mVar = this.f2530c;
                if (mVar.f2491g == this) {
                    mVar.f2491g = null;
                }
                this.f2530c = null;
                this.f2529b = null;
            }
        }
    }

    public static class y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2543a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2544b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2545c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2546d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2547e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2548f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f2549g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2550h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f2551i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f2552j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f2553k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f2554l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f2555m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f2556n;

        public final void a(int i10) {
            if ((this.f2546d & i10) != 0) {
                return;
            }
            StringBuilder sbC = a0.b.c("Layout state should be one of ");
            sbC.append(Integer.toBinaryString(i10));
            sbC.append(" but it is ");
            sbC.append(Integer.toBinaryString(this.f2546d));
            throw new IllegalStateException(sbC.toString());
        }

        public final int b() {
            return this.f2549g ? this.f2544b - this.f2545c : this.f2547e;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("State{mTargetPosition=");
            sbC.append(this.f2543a);
            sbC.append(", mData=");
            sbC.append((Object) null);
            sbC.append(", mItemCount=");
            sbC.append(this.f2547e);
            sbC.append(", mIsMeasuring=");
            sbC.append(this.f2551i);
            sbC.append(", mPreviousLayoutItemCount=");
            sbC.append(this.f2544b);
            sbC.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            sbC.append(this.f2545c);
            sbC.append(", mStructureChanged=");
            sbC.append(this.f2548f);
            sbC.append(", mInPreLayout=");
            sbC.append(this.f2549g);
            sbC.append(", mRunSimpleAnimations=");
            sbC.append(this.f2552j);
            sbC.append(", mRunPredictiveAnimations=");
            sbC.append(this.f2553k);
            sbC.append('}');
            return sbC.toString();
        }
    }

    public static abstract class z {
    }

    static {
        Class<?> cls = Integer.TYPE;
        J0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        K0 = new c();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.recyclerview.R.attr.recyclerViewStyle);
    }

    public static RecyclerView F(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerViewF = F(viewGroup.getChildAt(i10));
            if (recyclerViewF != null) {
                return recyclerViewF;
            }
        }
        return null;
    }

    public static b0 K(View view) {
        if (view == null) {
            return null;
        }
        return ((n) view.getLayoutParams()).f2508a;
    }

    public static void L(View view, Rect rect) {
        n nVar = (n) view.getLayoutParams();
        Rect rect2 = nVar.f2509b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) nVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) nVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) nVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin);
    }

    private j0.m getScrollingChildHelper() {
        if (this.f2440y0 == null) {
            this.f2440y0 = new j0.m(this);
        }
        return this.f2440y0;
    }

    public static void k(b0 b0Var) {
        WeakReference<RecyclerView> weakReference = b0Var.f2454b;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == b0Var.f2453a) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            b0Var.f2454b = null;
        }
    }

    public final String A() {
        StringBuilder sbC = a0.b.c(" ");
        sbC.append(super.toString());
        sbC.append(", adapter:");
        sbC.append(this.f2427s);
        sbC.append(", layout:");
        sbC.append(this.f2429t);
        sbC.append(", context:");
        sbC.append(getContext());
        return sbC.toString();
    }

    public final void B(y yVar) {
        if (getScrollState() != 2) {
            Objects.requireNonNull(yVar);
            return;
        }
        OverScroller overScroller = this.f2414l0.f2446j;
        overScroller.getFinalX();
        overScroller.getCurrX();
        Objects.requireNonNull(yVar);
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public final View C(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final boolean D(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f2437x.size();
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = this.f2437x.get(i10);
            if (qVar.c(motionEvent) && action != 3) {
                this.f2439y = qVar;
                return true;
            }
        }
        return false;
    }

    public final void E(int[] iArr) {
        int iE = this.f2413l.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < iE; i12++) {
            b0 b0VarK = K(this.f2413l.d(i12));
            if (!b0VarK.x()) {
                int i13 = b0VarK.i();
                if (i13 < i10) {
                    i10 = i13;
                }
                if (i13 > i11) {
                    i11 = i13;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    public final b0 G(int i10) {
        b0 b0Var = null;
        if (this.K) {
            return null;
        }
        int iH = this.f2413l.h();
        for (int i11 = 0; i11 < iH; i11++) {
            b0 b0VarK = K(this.f2413l.g(i11));
            if (b0VarK != null && !b0VarK.p() && H(b0VarK) == i10) {
                if (!this.f2413l.k(b0VarK.f2453a)) {
                    return b0VarK;
                }
                b0Var = b0VarK;
            }
        }
        return b0Var;
    }

    public final int H(b0 b0Var) {
        if (b0Var.k(524) || !b0Var.m()) {
            return -1;
        }
        androidx.recyclerview.widget.a aVar = this.f2411k;
        int i10 = b0Var.f2455c;
        int size = aVar.f2598b.size();
        for (int i11 = 0; i11 < size; i11++) {
            androidx.recyclerview.widget.a.b bVar = aVar.f2598b.get(i11);
            int i12 = bVar.f2603a;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = bVar.f2604b;
                    if (i13 <= i10) {
                        int i14 = bVar.f2606d;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = bVar.f2604b;
                    if (i15 == i10) {
                        i10 = bVar.f2606d;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (bVar.f2606d <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (bVar.f2604b <= i10) {
                i10 += bVar.f2606d;
            }
        }
        return i10;
    }

    public final long I(b0 b0Var) {
        return this.f2427s.f2474b ? b0Var.f2457e : b0Var.f2455c;
    }

    public final b0 J(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return K(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect M(View view) {
        n nVar = (n) view.getLayoutParams();
        if (!nVar.f2510c) {
            return nVar.f2509b;
        }
        if (this.f2420o0.f2549g && (nVar.b() || nVar.f2508a.n())) {
            return nVar.f2509b;
        }
        Rect rect = nVar.f2509b;
        rect.set(0, 0, 0, 0);
        int size = this.f2435w.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f2421p.set(0, 0, 0, 0);
            this.f2435w.get(i10).f(this.f2421p, view, this, this.f2420o0);
            int i11 = rect.left;
            Rect rect2 = this.f2421p;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        nVar.f2510c = false;
        return rect;
    }

    public final boolean N() {
        return !this.B || this.K || this.f2411k.g();
    }

    public final void O() {
        this.S = null;
        this.Q = null;
        this.R = null;
        this.P = null;
    }

    public final void P() {
        if (this.f2435w.size() == 0) {
            return;
        }
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.e("Cannot invalidate item decorations during a scroll or layout");
        }
        S();
        requestLayout();
    }

    public final boolean Q() {
        return this.M > 0;
    }

    public final void R(int i10) {
        if (this.f2429t == null) {
            return;
        }
        setScrollState(2);
        this.f2429t.w0(i10);
        awakenScrollBars();
    }

    public final void S() {
        int iH = this.f2413l.h();
        for (int i10 = 0; i10 < iH; i10++) {
            ((n) this.f2413l.g(i10).getLayoutParams()).f2510c = true;
        }
        t tVar = this.f2407i;
        int size = tVar.f2520c.size();
        for (int i11 = 0; i11 < size; i11++) {
            n nVar = (n) tVar.f2520c.get(i11).f2453a.getLayoutParams();
            if (nVar != null) {
                nVar.f2510c = true;
            }
        }
    }

    public final void T(int i10, int i11, boolean z10) {
        int i12 = i10 + i11;
        int iH = this.f2413l.h();
        for (int i13 = 0; i13 < iH; i13++) {
            b0 b0VarK = K(this.f2413l.g(i13));
            if (b0VarK != null && !b0VarK.x()) {
                int i14 = b0VarK.f2455c;
                if (i14 >= i12) {
                    b0VarK.t(-i11, z10);
                    this.f2420o0.f2548f = true;
                } else if (i14 >= i10) {
                    b0VarK.d(8);
                    b0VarK.t(-i11, z10);
                    b0VarK.f2455c = i10 - 1;
                    this.f2420o0.f2548f = true;
                }
            }
        }
        t tVar = this.f2407i;
        int size = tVar.f2520c.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            b0 b0Var = tVar.f2520c.get(size);
            if (b0Var != null) {
                int i15 = b0Var.f2455c;
                if (i15 >= i12) {
                    b0Var.t(-i11, z10);
                } else if (i15 >= i10) {
                    b0Var.d(8);
                    tVar.f(size);
                }
            }
        }
    }

    public final void U() {
        this.M++;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    public final void V(boolean z10) {
        int i10;
        int i11 = this.M - 1;
        this.M = i11;
        if (i11 < 1) {
            this.M = 0;
            if (z10) {
                int i12 = this.G;
                this.G = 0;
                if (i12 != 0) {
                    AccessibilityManager accessibilityManager = this.I;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                        accessibilityEventObtain.setEventType(2048);
                        k0.b.b(accessibilityEventObtain, i12);
                        sendAccessibilityEventUnchecked(accessibilityEventObtain);
                    }
                }
                for (int size = this.C0.size() - 1; size >= 0; size--) {
                    b0 b0Var = (b0) this.C0.get(size);
                    if (b0Var.f2453a.getParent() == this && !b0Var.x() && (i10 = b0Var.f2469q) != -1) {
                        View view = b0Var.f2453a;
                        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                        j0.a0.d.s(view, i10);
                        b0Var.f2469q = -1;
                    }
                }
                this.C0.clear();
            }
        }
    }

    public final void W(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.V) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.V = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.f2401c0 = x10;
            this.f2399a0 = x10;
            int y7 = (int) (motionEvent.getY(i10) + 0.5f);
            this.d0 = y7;
            this.f2400b0 = y7;
        }
    }

    public final void X() {
        if (this.f2432u0 || !this.f2441z) {
            return;
        }
        b bVar = this.D0;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.d.m(this, bVar);
        this.f2432u0 = true;
    }

    public final void Y() {
        boolean z10;
        boolean z11 = false;
        if (this.K) {
            androidx.recyclerview.widget.a aVar = this.f2411k;
            aVar.l(aVar.f2598b);
            aVar.l(aVar.f2599c);
            aVar.f2602f = 0;
            if (this.L) {
                this.f2429t.e0();
            }
        }
        if (this.T != null && this.f2429t.J0()) {
            this.f2411k.j();
        } else {
            this.f2411k.c();
        }
        boolean z12 = this.f2426r0 || this.f2428s0;
        y yVar = this.f2420o0;
        boolean z13 = this.B && this.T != null && ((z10 = this.K) || z12 || this.f2429t.f2492h) && (!z10 || this.f2427s.f2474b);
        yVar.f2552j = z13;
        if (z13 && z12 && !this.K) {
            if (this.T != null && this.f2429t.J0()) {
                z11 = true;
            }
        }
        yVar.f2553k = z11;
    }

    public final void Z(boolean z10) {
        this.L = z10 | this.L;
        this.K = true;
        int iH = this.f2413l.h();
        for (int i10 = 0; i10 < iH; i10++) {
            b0 b0VarK = K(this.f2413l.g(i10));
            if (b0VarK != null && !b0VarK.x()) {
                b0VarK.d(6);
            }
        }
        S();
        t tVar = this.f2407i;
        int size = tVar.f2520c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b0 b0Var = tVar.f2520c.get(i11);
            if (b0Var != null) {
                b0Var.d(6);
                b0Var.c(null);
            }
        }
        e eVar = RecyclerView.this.f2427s;
        if (eVar == null || !eVar.f2474b) {
            tVar.e();
        }
    }

    public final void a0(b0 b0Var, j.c cVar) {
        b0Var.v(0, 8192);
        if (this.f2420o0.f2550h && b0Var.s() && !b0Var.p() && !b0Var.x()) {
            this.f2415m.f2671b.f(I(b0Var), b0Var);
        }
        this.f2415m.c(b0Var, cVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        m mVar = this.f2429t;
        if (mVar != null) {
            Objects.requireNonNull(mVar);
        }
        super.addFocusables(arrayList, i10, i11);
    }

    public final void b0() {
        j jVar = this.T;
        if (jVar != null) {
            jVar.f();
        }
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.o0(this.f2407i);
            this.f2429t.p0(this.f2407i);
        }
        this.f2407i.b();
    }

    public final void c0(l lVar) {
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.e("Cannot remove item decoration during a scroll  or layout");
        }
        this.f2435w.remove(lVar);
        if (this.f2435w.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        S();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof n) && this.f2429t.i((n) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        m mVar = this.f2429t;
        if (mVar != null && mVar.g()) {
            return this.f2429t.m(this.f2420o0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        m mVar = this.f2429t;
        if (mVar != null && mVar.g()) {
            return this.f2429t.n(this.f2420o0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        m mVar = this.f2429t;
        if (mVar != null && mVar.g()) {
            return this.f2429t.o(this.f2420o0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        m mVar = this.f2429t;
        if (mVar != null && mVar.h()) {
            return this.f2429t.p(this.f2420o0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        m mVar = this.f2429t;
        if (mVar != null && mVar.h()) {
            return this.f2429t.q(this.f2420o0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        m mVar = this.f2429t;
        if (mVar != null && mVar.h()) {
            return this.f2429t.r(this.f2420o0);
        }
        return 0;
    }

    public final void d0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f2421p.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof n) {
            n nVar = (n) layoutParams;
            if (!nVar.f2510c) {
                Rect rect = nVar.f2509b;
                Rect rect2 = this.f2421p;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f2421p);
            offsetRectIntoDescendantCoords(view, this.f2421p);
        }
        this.f2429t.t0(this, view, this.f2421p, !this.B, view2 == null);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().a(f10, f11, z10);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().b(f10, f11);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().e(i10, i11, i12, i13, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z10;
        super.draw(canvas);
        int size = this.f2435w.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.f2435w.get(i10).h(canvas, this);
        }
        EdgeEffect edgeEffect = this.P;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z10 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f2417n ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.P;
            z10 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.Q;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f2417n) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.Q;
            z10 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.R;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f2417n ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.R;
            z10 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.S;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f2417n) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.S;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z11 = true;
            }
            z10 |= z11;
            canvas.restoreToCount(iSave4);
        }
        if ((z10 || this.T == null || this.f2435w.size() <= 0 || !this.T.g()) ? z10 : true) {
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            j0.a0.d.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    public final void e0() {
        VelocityTracker velocityTracker = this.W;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        o0(0);
        EdgeEffect edgeEffect = this.P;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.P.isFinished();
        }
        EdgeEffect edgeEffect2 = this.Q;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.Q.isFinished();
        }
        EdgeEffect edgeEffect3 = this.R;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.R.isFinished();
        }
        EdgeEffect edgeEffect4 = this.S;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.S.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            j0.a0.d.k(this);
        }
    }

    public final void f(b0 b0Var) {
        View view = b0Var.f2453a;
        boolean z10 = view.getParent() == this;
        this.f2407i.k(J(view));
        if (b0Var.r()) {
            this.f2413l.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z10) {
            this.f2413l.a(view, -1, true);
            return;
        }
        androidx.recyclerview.widget.e eVar = this.f2413l;
        int iC = ((f0) eVar.f2617a).c(view);
        if (iC >= 0) {
            eVar.f2618b.h(iC);
            eVar.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:36:0x010e A[DONT_INVERT, PHI: r3
      0x010e: PHI (r3v6 boolean) = (r3v4 boolean), (r3v10 boolean) binds: [B:33:0x00f5, B:35:0x010d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x0110  */
    /* JADX WARN: Code duplicated, block: B:41:0x0118  */
    public final boolean f0(int i10, int i11, MotionEvent motionEvent, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z10;
        n();
        if (this.f2427s != null) {
            int[] iArr = this.B0;
            iArr[0] = 0;
            iArr[1] = 0;
            g0(i10, i11, iArr);
            int[] iArr2 = this.B0;
            i14 = iArr2[0];
            i13 = iArr2[1];
            i15 = i10 - i14;
            i16 = i11 - i13;
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if (!this.f2435w.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.B0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        getScrollingChildHelper().e(i14, i13, i15, i16, this.f2442z0, i12, iArr3);
        int[] iArr4 = this.B0;
        int i17 = i15 - iArr4[0];
        int i18 = i16 - iArr4[1];
        boolean z11 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i19 = this.f2401c0;
        int[] iArr5 = this.f2442z0;
        this.f2401c0 = i19 - iArr5[0];
        this.d0 -= iArr5[1];
        int[] iArr6 = this.A0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.lifecycle.o.u(motionEvent, 8194)) {
                float x10 = motionEvent.getX();
                float f10 = i17;
                float y7 = motionEvent.getY();
                float f11 = i18;
                if (f10 < 0.0f) {
                    x();
                    n0.e.a.a(this.P, (-f10) / getWidth(), 1.0f - (y7 / getHeight()));
                } else {
                    if (f10 > 0.0f) {
                        y();
                        n0.e.a.a(this.R, f10 / getWidth(), y7 / getHeight());
                    } else {
                        z10 = false;
                    }
                    if (f11 < 0.0f) {
                        z();
                        n0.e.a.a(this.Q, (-f11) / getHeight(), x10 / getWidth());
                    } else if (f11 > 0.0f) {
                        w();
                        n0.e.a.a(this.S, f11 / getHeight(), 1.0f - (x10 / getWidth()));
                    } else if (z10 || f10 != 0.0f || f11 != 0.0f) {
                        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                        j0.a0.d.k(this);
                    }
                    z10 = true;
                    if (z10) {
                        WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
                        j0.a0.d.k(this);
                    } else {
                        WeakHashMap<View, j0.g0> weakHashMap3 = j0.a0.f9147a;
                        j0.a0.d.k(this);
                    }
                }
                z10 = true;
                if (f11 < 0.0f) {
                    z();
                    n0.e.a.a(this.Q, (-f11) / getHeight(), x10 / getWidth());
                } else if (f11 > 0.0f) {
                    w();
                    n0.e.a.a(this.S, f11 / getHeight(), 1.0f - (x10 / getWidth()));
                } else if (z10) {
                    WeakHashMap<View, j0.g0> weakHashMap4 = j0.a0.f9147a;
                    j0.a0.d.k(this);
                } else {
                    WeakHashMap<View, j0.g0> weakHashMap5 = j0.a0.f9147a;
                    j0.a0.d.k(this);
                }
                z10 = true;
                if (z10) {
                    WeakHashMap<View, j0.g0> weakHashMap6 = j0.a0.f9147a;
                    j0.a0.d.k(this);
                } else {
                    WeakHashMap<View, j0.g0> weakHashMap7 = j0.a0.f9147a;
                    j0.a0.d.k(this);
                }
            }
            m(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            v(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z11 && i14 == 0 && i13 == 0) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:136:0x0199  */
    /* JADX WARN: Code duplicated, block: B:24:0x0042  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i10) {
        View viewZ;
        int i11;
        byte b10;
        boolean z10;
        Objects.requireNonNull(this.f2429t);
        boolean z11 = true;
        boolean z12 = (this.f2427s == null || this.f2429t == null || Q() || this.E) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z12 && (i10 == 2 || i10 == 1)) {
            if (this.f2429t.h()) {
                if (focusFinder.findNextFocus(this, view, i10 == 2 ? 130 : 33) == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!z10 && this.f2429t.g()) {
                z10 = focusFinder.findNextFocus(this, view, (this.f2429t.H() == 1) ^ (i10 == 2) ? 66 : 17) == null;
            }
            if (z10) {
                n();
                if (C(view) == null) {
                    return null;
                }
                l0();
                this.f2429t.Z(view, i10, this.f2407i, this.f2420o0);
                n0(false);
            }
            viewZ = focusFinder.findNextFocus(this, view, i10);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i10);
            if (viewFindNextFocus == null && z12) {
                n();
                if (C(view) == null) {
                    return null;
                }
                l0();
                viewZ = this.f2429t.Z(view, i10, this.f2407i, this.f2420o0);
                n0(false);
            } else {
                viewZ = viewFindNextFocus;
            }
        }
        if (viewZ != null && !viewZ.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i10);
            }
            d0(viewZ, null);
            return view;
        }
        if (viewZ == null || viewZ == this || viewZ == view) {
            z11 = false;
        } else if (C(viewZ) == null) {
            z11 = false;
        } else if (view != null && C(view) != null) {
            this.f2421p.set(0, 0, view.getWidth(), view.getHeight());
            this.f2423q.set(0, 0, viewZ.getWidth(), viewZ.getHeight());
            offsetDescendantRectToMyCoords(view, this.f2421p);
            offsetDescendantRectToMyCoords(viewZ, this.f2423q);
            int i12 = this.f2429t.H() == 1 ? -1 : 1;
            Rect rect = this.f2421p;
            int i13 = rect.left;
            Rect rect2 = this.f2423q;
            int i14 = rect2.left;
            if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
                i11 = 1;
            } else {
                int i15 = rect.right;
                int i16 = rect2.right;
                i11 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? -1 : 0;
            }
            int i17 = rect.top;
            int i18 = rect2.top;
            if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
                b10 = 1;
            } else {
                int i19 = rect.bottom;
                int i20 = rect2.bottom;
                b10 = ((i19 > i20 || i17 >= i20) && i17 > i18) ? (byte) -1 : (byte) 0;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 17) {
                        if (i10 != 33) {
                            if (i10 != 66) {
                                if (i10 != 130) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Invalid direction: ");
                                    sb2.append(i10);
                                    throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(this, sb2));
                                }
                                if (b10 <= 0) {
                                    z11 = false;
                                }
                            } else if (i11 <= 0) {
                                z11 = false;
                            }
                        } else if (b10 >= 0) {
                            z11 = false;
                        }
                    } else if (i11 >= 0) {
                        z11 = false;
                    }
                } else if (b10 <= 0 && (b10 != 0 || i11 * i12 <= 0)) {
                    z11 = false;
                }
            } else if (b10 >= 0 && (b10 != 0 || i11 * i12 >= 0)) {
                z11 = false;
            }
        }
        return z11 ? viewZ : super.focusSearch(view, i10);
    }

    public final void g(l lVar) {
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.e("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f2435w.isEmpty()) {
            setWillNotDraw(false);
        }
        this.f2435w.add(lVar);
        S();
        requestLayout();
    }

    public final void g0(int i10, int i11, int[] iArr) {
        b0 b0Var;
        l0();
        U();
        int i12 = f0.f.f6959a;
        f0.f.a.a("RV Scroll");
        B(this.f2420o0);
        int iV0 = i10 != 0 ? this.f2429t.v0(i10, this.f2407i, this.f2420o0) : 0;
        int iX0 = i11 != 0 ? this.f2429t.x0(i11, this.f2407i, this.f2420o0) : 0;
        f0.f.a.b();
        int iE = this.f2413l.e();
        for (int i13 = 0; i13 < iE; i13++) {
            View viewD = this.f2413l.d(i13);
            b0 b0VarJ = J(viewD);
            if (b0VarJ != null && (b0Var = b0VarJ.f2461i) != null) {
                View view = b0Var.f2453a;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        V(true);
        n0(false);
        if (iArr != null) {
            iArr[0] = iV0;
            iArr[1] = iX0;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        m mVar = this.f2429t;
        if (mVar != null) {
            return mVar.v();
        }
        throw new IllegalStateException(androidx.recyclerview.widget.d.b(this, a0.b.c("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        m mVar = this.f2429t;
        if (mVar != null) {
            return mVar.w(getContext(), attributeSet);
        }
        throw new IllegalStateException(androidx.recyclerview.widget.d.b(this, a0.b.c("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public e getAdapter() {
        return this.f2427s;
    }

    @Override // android.view.View
    public int getBaseline() {
        m mVar = this.f2429t;
        if (mVar == null) {
            return super.getBaseline();
        }
        Objects.requireNonNull(mVar);
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        h hVar = this.f2436w0;
        return hVar == null ? super.getChildDrawingOrder(i10, i11) : hVar.a();
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f2417n;
    }

    public h0 getCompatAccessibilityDelegate() {
        return this.f2434v0;
    }

    public i getEdgeEffectFactory() {
        return this.O;
    }

    public j getItemAnimator() {
        return this.T;
    }

    public int getItemDecorationCount() {
        return this.f2435w.size();
    }

    public m getLayoutManager() {
        return this.f2429t;
    }

    public int getMaxFlingVelocity() {
        return this.f2406h0;
    }

    public int getMinFlingVelocity() {
        return this.f2404g0;
    }

    long getNanoTime() {
        return System.nanoTime();
    }

    public p getOnFlingListener() {
        return this.f2403f0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f2412k0;
    }

    public s getRecycledViewPool() {
        return this.f2407i.d();
    }

    public int getScrollState() {
        return this.U;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    public final void h(r rVar) {
        if (this.f2424q0 == null) {
            this.f2424q0 = new ArrayList();
        }
        this.f2424q0.add(rVar);
    }

    public final void h0(int i10) {
        if (this.E) {
            return;
        }
        p0();
        m mVar = this.f2429t;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            mVar.w0(i10);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().g(0);
    }

    public final void i(String str) {
        if (Q()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(androidx.recyclerview.widget.d.b(this, a0.b.c("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.N > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(androidx.recyclerview.widget.d.b(this, a0.b.c(""))));
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    public final boolean i0(b0 b0Var, int i10) {
        if (Q()) {
            b0Var.f2469q = i10;
            this.C0.add(b0Var);
            return false;
        }
        View view = b0Var.f2453a;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.d.s(view, i10);
        return true;
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f2441z;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.E;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f9228d;
    }

    public final void j() {
        e0();
        setScrollState(0);
    }

    public final void j0(int i10, int i11, boolean z10) {
        m mVar = this.f2429t;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.E) {
            return;
        }
        if (!mVar.g()) {
            i10 = 0;
        }
        if (!this.f2429t.h()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        if (z10) {
            int i12 = i10 != 0 ? 1 : 0;
            if (i11 != 0) {
                i12 |= 2;
            }
            m0(i12, 1);
        }
        this.f2414l0.b(i10, i11, Integer.MIN_VALUE, null);
    }

    public final void k0(int i10) {
        if (this.E) {
            return;
        }
        m mVar = this.f2429t;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            mVar.H0(this, this.f2420o0, i10);
        }
    }

    public final void l() {
        int iH = this.f2413l.h();
        for (int i10 = 0; i10 < iH; i10++) {
            b0 b0VarK = K(this.f2413l.g(i10));
            if (!b0VarK.x()) {
                b0VarK.e();
            }
        }
        t tVar = this.f2407i;
        int size = tVar.f2520c.size();
        for (int i11 = 0; i11 < size; i11++) {
            tVar.f2520c.get(i11).e();
        }
        int size2 = tVar.f2518a.size();
        for (int i12 = 0; i12 < size2; i12++) {
            tVar.f2518a.get(i12).e();
        }
        ArrayList<b0> arrayList = tVar.f2519b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i13 = 0; i13 < size3; i13++) {
                tVar.f2519b.get(i13).e();
            }
        }
    }

    public final void l0() {
        int i10 = this.C + 1;
        this.C = i10;
        if (i10 != 1 || this.E) {
            return;
        }
        this.D = false;
    }

    public final void m(int i10, int i11) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.P;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            zIsFinished = false;
        } else {
            this.P.onRelease();
            zIsFinished = this.P.isFinished();
        }
        EdgeEffect edgeEffect2 = this.R;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.R.onRelease();
            zIsFinished |= this.R.isFinished();
        }
        EdgeEffect edgeEffect3 = this.Q;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.Q.onRelease();
            zIsFinished |= this.Q.isFinished();
        }
        EdgeEffect edgeEffect4 = this.S;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.S.onRelease();
            zIsFinished |= this.S.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            j0.a0.d.k(this);
        }
    }

    public final boolean m0(int i10, int i11) {
        return getScrollingChildHelper().h(i10, i11);
    }

    public final void n() {
        if (!this.B || this.K) {
            int i10 = f0.f.f6959a;
            f0.f.a.a("RV FullInvalidate");
            q();
            f0.f.a.b();
            return;
        }
        if (this.f2411k.g()) {
            androidx.recyclerview.widget.a aVar = this.f2411k;
            int i11 = aVar.f2602f;
            boolean z10 = false;
            if ((4 & i11) != 0) {
                if (!((11 & i11) != 0)) {
                    int i12 = f0.f.f6959a;
                    f0.f.a.a("RV PartialInvalidate");
                    l0();
                    U();
                    this.f2411k.j();
                    if (!this.D) {
                        int iE = this.f2413l.e();
                        for (int i13 = 0; i13 < iE; i13++) {
                            b0 b0VarK = K(this.f2413l.d(i13));
                            if (b0VarK != null && !b0VarK.x() && b0VarK.s()) {
                                z10 = true;
                                break;
                            }
                        }
                        if (z10) {
                            q();
                        } else {
                            this.f2411k.b();
                        }
                    }
                    n0(true);
                    V(true);
                    f0.f.a.b();
                    return;
                }
            }
            if (aVar.g()) {
                int i14 = f0.f.f6959a;
                f0.f.a.a("RV FullInvalidate");
                q();
                f0.f.a.b();
            }
        }
    }

    public final void n0(boolean z10) {
        if (this.C < 1) {
            this.C = 1;
        }
        if (!z10 && !this.E) {
            this.D = false;
        }
        if (this.C == 1) {
            if (z10 && this.D && !this.E && this.f2429t != null && this.f2427s != null) {
                q();
            }
            if (!this.E) {
                this.D = false;
            }
        }
        this.C--;
    }

    public final void o(int i10, int i11) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        setMeasuredDimension(m.j(i10, paddingRight, j0.a0.d.e(this)), m.j(i11, getPaddingBottom() + getPaddingTop(), j0.a0.d.d(this)));
    }

    public final void o0(int i10) {
        getScrollingChildHelper().i(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.M = 0;
        this.f2441z = true;
        this.B = this.B && !isLayoutRequested();
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.f2493i = true;
        }
        this.f2432u0 = false;
        ThreadLocal<androidx.recyclerview.widget.r> threadLocal = androidx.recyclerview.widget.r.f2757l;
        androidx.recyclerview.widget.r rVar = threadLocal.get();
        this.f2416m0 = rVar;
        if (rVar == null) {
            this.f2416m0 = new androidx.recyclerview.widget.r();
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            Display displayB = j0.a0.e.b(this);
            float f10 = 60.0f;
            if (!isInEditMode() && displayB != null) {
                float refreshRate = displayB.getRefreshRate();
                if (refreshRate >= 30.0f) {
                    f10 = refreshRate;
                }
            }
            androidx.recyclerview.widget.r rVar2 = this.f2416m0;
            rVar2.f2761j = (long) (1.0E9f / f10);
            threadLocal.set(rVar2);
        }
        this.f2416m0.f2759h.add(this);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.T;
        if (jVar != null) {
            jVar.f();
        }
        p0();
        this.f2441z = false;
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.f2493i = false;
            mVar.Y(this);
        }
        this.C0.clear();
        removeCallbacks(this.D0);
        Objects.requireNonNull(this.f2415m);
        while (m0.a.f2672d.b() != null) {
        }
        androidx.recyclerview.widget.r rVar = this.f2416m0;
        if (rVar != null) {
            rVar.f2759h.remove(this);
            this.f2416m0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f2435w.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f2435w.get(i10).g(canvas, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f10;
        float axisValue;
        if (this.f2429t != null && !this.E && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f10 = this.f2429t.h() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.f2429t.g() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f2429t.h()) {
                    f10 = -axisValue2;
                } else if (this.f2429t.g()) {
                    axisValue = axisValue2;
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                    axisValue = 0.0f;
                }
            } else {
                f10 = 0.0f;
                axisValue = 0.0f;
            }
            if (f10 != 0.0f || axisValue != 0.0f) {
                int i10 = (int) (axisValue * this.f2408i0);
                int i11 = (int) (f10 * this.f2410j0);
                m mVar = this.f2429t;
                if (mVar == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                } else if (!this.E) {
                    int[] iArr = this.B0;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean zG = mVar.g();
                    boolean zH = this.f2429t.h();
                    m0(zH ? (zG ? 1 : 0) | 2 : zG ? 1 : 0, 1);
                    if (t(zG ? i10 : 0, zH ? i11 : 0, this.B0, this.f2442z0, 1)) {
                        int[] iArr2 = this.B0;
                        i10 -= iArr2[0];
                        i11 -= iArr2[1];
                    }
                    f0(zG ? i10 : 0, zH ? i11 : 0, motionEvent, 1);
                    androidx.recyclerview.widget.r rVar = this.f2416m0;
                    if (rVar != null && (i10 != 0 || i11 != 0)) {
                        rVar.a(this, i10, i11);
                    }
                    o0(1);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.E) {
            return false;
        }
        this.f2439y = null;
        if (D(motionEvent)) {
            j();
            return true;
        }
        m mVar = this.f2429t;
        if (mVar == null) {
            return false;
        }
        boolean zG = mVar.g();
        boolean zH = this.f2429t.h();
        if (this.W == null) {
            this.W = VelocityTracker.obtain();
        }
        this.W.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.F) {
                this.F = false;
            }
            this.V = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.f2401c0 = x10;
            this.f2399a0 = x10;
            int y7 = (int) (motionEvent.getY() + 0.5f);
            this.d0 = y7;
            this.f2400b0 = y7;
            if (this.U == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                o0(1);
            }
            int[] iArr = this.A0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zG;
            if (zH) {
                i10 = (zG ? 1 : 0) | 2;
            }
            m0(i10, 0);
        } else if (actionMasked == 1) {
            this.W.clear();
            o0(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.V);
            if (iFindPointerIndex < 0) {
                StringBuilder sbC = a0.b.c("Error processing scroll; pointer index for id ");
                sbC.append(this.V);
                sbC.append(" not found. Did any MotionEvents get skipped?");
                Log.e("RecyclerView", sbC.toString());
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.U != 1) {
                int i11 = x11 - this.f2399a0;
                int i12 = y10 - this.f2400b0;
                if (!zG || Math.abs(i11) <= this.f2402e0) {
                    z10 = false;
                } else {
                    this.f2401c0 = x11;
                    z10 = true;
                }
                if (zH && Math.abs(i12) > this.f2402e0) {
                    this.d0 = y10;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            j();
        } else if (actionMasked == 5) {
            this.V = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f2401c0 = x12;
            this.f2399a0 = x12;
            int y11 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.d0 = y11;
            this.f2400b0 = y11;
        } else if (actionMasked == 6) {
            W(motionEvent);
        }
        return this.U == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14 = f0.f.f6959a;
        f0.f.a.a("RV OnLayout");
        q();
        f0.f.a.b();
        this.B = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        m mVar = this.f2429t;
        if (mVar == null) {
            o(i10, i11);
            return;
        }
        boolean z10 = false;
        if (mVar.S()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.f2429t.k0(i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z10 = true;
            }
            this.E0 = z10;
            if (z10 || this.f2427s == null) {
                return;
            }
            if (this.f2420o0.f2546d == 1) {
                r();
            }
            this.f2429t.z0(i10, i11);
            this.f2420o0.f2551i = true;
            s();
            this.f2429t.C0(i10, i11);
            if (this.f2429t.F0()) {
                this.f2429t.z0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f2420o0.f2551i = true;
                s();
                this.f2429t.C0(i10, i11);
            }
            this.F0 = getMeasuredWidth();
            this.G0 = getMeasuredHeight();
            return;
        }
        if (this.A) {
            this.f2429t.k0(i10, i11);
            return;
        }
        if (this.H) {
            l0();
            U();
            Y();
            V(true);
            y yVar = this.f2420o0;
            if (yVar.f2553k) {
                yVar.f2549g = true;
            } else {
                this.f2411k.c();
                this.f2420o0.f2549g = false;
            }
            this.H = false;
            n0(false);
        } else if (this.f2420o0.f2553k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        e eVar = this.f2427s;
        if (eVar != null) {
            this.f2420o0.f2547e = eVar.a();
        } else {
            this.f2420o0.f2547e = 0;
        }
        l0();
        this.f2429t.k0(i10, i11);
        n0(false);
        this.f2420o0.f2549g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (Q()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof w)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        w wVar = (w) parcelable;
        this.f2409j = wVar;
        super.onRestoreInstanceState(wVar.f12620h);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        w wVar = new w(super.onSaveInstanceState());
        w wVar2 = this.f2409j;
        if (wVar2 != null) {
            wVar.f2527j = wVar2.f2527j;
        } else {
            m mVar = this.f2429t;
            if (mVar != null) {
                wVar.f2527j = mVar.m0();
            } else {
                wVar.f2527j = null;
            }
        }
        return wVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        O();
    }

    /* JADX WARN: Code duplicated, block: B:152:0x0261  */
    /* JADX WARN: Code duplicated, block: B:169:0x0295  */
    /* JADX WARN: Code duplicated, block: B:246:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:255:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:256:0x0400  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f7 A[PHI: r0
      0x00f7: PHI (r0v49 int) = (r0v39 int), (r0v53 int) binds: [B:50:0x00e0, B:54:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [int] */
    /* JADX WARN: Type inference failed for: r5v12, types: [androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15, types: [androidx.recyclerview.widget.e0, androidx.recyclerview.widget.k0] */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35, types: [androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.recyclerview.widget.RecyclerView$m] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zD;
        ?? r10;
        ?? r11;
        int i10;
        MotionEvent motionEvent2;
        ?? r12;
        RecyclerView recyclerView;
        ?? r21;
        boolean z10;
        ?? r13;
        boolean z11;
        boolean z12;
        int iO;
        boolean z13;
        c0 c0VarF;
        PointF pointFA;
        boolean z14;
        boolean z15;
        int iA = 0;
        if (this.E || this.F) {
            return false;
        }
        q qVar = this.f2439y;
        boolean z16 = true;
        if (qVar == null) {
            zD = motionEvent.getAction() == 0 ? false : D(motionEvent);
        } else {
            qVar.a(motionEvent);
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.f2439y = null;
            }
            zD = true;
        }
        if (zD) {
            j();
            return true;
        }
        m mVar = this.f2429t;
        if (mVar == null) {
            return false;
        }
        boolean zG = mVar.g();
        boolean zH = this.f2429t.h();
        if (this.W == null) {
            this.W = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.A0;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.A0;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.V);
                    if (iFindPointerIndex < 0) {
                        StringBuilder sbC = a0.b.c("Error processing scroll; pointer index for id ");
                        sbC.append(this.V);
                        sbC.append(" not found. Did any MotionEvents get skipped?");
                        Log.e("RecyclerView", sbC.toString());
                        return false;
                    }
                    int x10 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y7 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    int iMax = this.f2401c0 - x10;
                    int iMax2 = this.d0 - y7;
                    if (this.U != 1) {
                        if (zG) {
                            iMax = iMax > 0 ? Math.max(0, iMax - this.f2402e0) : Math.min(0, iMax + this.f2402e0);
                            if (iMax != 0) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                        } else {
                            z15 = false;
                        }
                        if (zH) {
                            iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - this.f2402e0) : Math.min(0, iMax2 + this.f2402e0);
                            if (iMax2 != 0) {
                                z15 = true;
                            }
                        }
                        if (z15) {
                            setScrollState(1);
                        }
                    }
                    int i11 = iMax;
                    int i12 = iMax2;
                    if (this.U == 1) {
                        int[] iArr3 = this.B0;
                        iArr3[0] = 0;
                        iArr3[1] = 0;
                        if (t(zG ? i11 : 0, zH ? i12 : 0, iArr3, this.f2442z0, 0)) {
                            int[] iArr4 = this.B0;
                            i11 -= iArr4[0];
                            i12 -= iArr4[1];
                            int[] iArr5 = this.A0;
                            int i13 = iArr5[0];
                            int[] iArr6 = this.f2442z0;
                            iArr5[0] = i13 + iArr6[0];
                            iArr5[1] = iArr5[1] + iArr6[1];
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        int i14 = i12;
                        int[] iArr7 = this.f2442z0;
                        this.f2401c0 = x10 - iArr7[0];
                        this.d0 = y7 - iArr7[1];
                        if (f0(zG ? i11 : 0, zH ? i14 : 0, motionEvent, 0)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        androidx.recyclerview.widget.r rVar = this.f2416m0;
                        if (rVar != null && (i11 != 0 || i14 != 0)) {
                            rVar.a(this, i11, i14);
                        }
                    }
                } else if (actionMasked == 3) {
                    j();
                } else if (actionMasked == 5) {
                    this.V = motionEvent.getPointerId(actionIndex);
                    int x11 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f2401c0 = x11;
                    this.f2399a0 = x11;
                    int y10 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.d0 = y10;
                    this.f2400b0 = y10;
                } else if (actionMasked == 6) {
                    W(motionEvent);
                }
                r12 = this;
            } else {
                this.W.addMovement(motionEventObtain);
                this.W.computeCurrentVelocity(1000, this.f2406h0);
                float f10 = zG ? -this.W.getXVelocity(this.V) : 0.0f;
                float f11 = zH ? -this.W.getYVelocity(this.V) : 0.0f;
                if (f10 == 0.0f && f11 == 0.0f) {
                    r13 = this;
                    motionEventObtain = motionEventObtain;
                } else {
                    int i15 = (int) f10;
                    int i16 = (int) f11;
                    m mVar2 = this.f2429t;
                    if (mVar2 == null) {
                        Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    } else {
                        if (!this.E) {
                            boolean zG2 = mVar2.g();
                            boolean zH2 = this.f2429t.h();
                            if (!zG2 || Math.abs(i15) < this.f2404g0) {
                                i15 = 0;
                            }
                            if (!zH2 || Math.abs(i16) < this.f2404g0) {
                                i16 = 0;
                            }
                            if (i15 != 0 || i16 != 0) {
                                float f12 = i15;
                                float f13 = i16;
                                if (dispatchNestedPreFling(f12, f13)) {
                                    recyclerView = this;
                                    motionEventObtain = motionEventObtain;
                                } else {
                                    if (!zG2 && !zH2) {
                                        z16 = false;
                                    }
                                    dispatchNestedFling(f12, f13, z16);
                                    p pVar = this.f2403f0;
                                    if (pVar != null) {
                                        k0 k0Var = (k0) pVar;
                                        ?? layoutManager = k0Var.f2651a.getLayoutManager();
                                        if (layoutManager == 0 || k0Var.f2651a.getAdapter() == null) {
                                            r21 = zG2;
                                            z10 = zH2;
                                            motionEventObtain = motionEventObtain;
                                        } else {
                                            int minFlingVelocity = k0Var.f2651a.getMinFlingVelocity();
                                            if (Math.abs(i16) > minFlingVelocity || Math.abs(i15) > minFlingVelocity) {
                                                boolean z17 = layoutManager instanceof x.b;
                                                if (z17) {
                                                    ?? r14 = (e0) k0Var;
                                                    d0 d0Var = z17 ? new d0(r14, r14.f2651a.getContext()) : null;
                                                    if (d0Var == null) {
                                                        z11 = zG2;
                                                        z10 = zH2;
                                                        motionEventObtain = motionEventObtain;
                                                    } else {
                                                        RecyclerView recyclerView2 = layoutManager.f2486b;
                                                        e adapter = recyclerView2 != null ? recyclerView2.getAdapter() : null;
                                                        iA = adapter != null ? adapter.a() : 0;
                                                        if (iA != 0) {
                                                            if (layoutManager.h()) {
                                                                c0VarF = r14.g(layoutManager);
                                                            } else {
                                                                c0VarF = layoutManager.g() ? r14.f(layoutManager) : null;
                                                            }
                                                            if (c0VarF == null) {
                                                                z12 = zG2;
                                                                z10 = zH2;
                                                                motionEventObtain = motionEventObtain;
                                                            } else {
                                                                int i17 = Integer.MIN_VALUE;
                                                                int i18 = Integer.MAX_VALUE;
                                                                int iZ = layoutManager.z();
                                                                z12 = zG2;
                                                                View view = null;
                                                                View view2 = null;
                                                                motionEventObtain = motionEventObtain;
                                                                int i19 = 0;
                                                                while (i19 < iZ) {
                                                                    int i20 = iZ;
                                                                    View viewY = layoutManager.y(i19);
                                                                    if (viewY == null) {
                                                                        z14 = zH2;
                                                                    } else {
                                                                        z14 = zH2;
                                                                        int iD = r14.d(viewY, c0VarF);
                                                                        if (iD <= 0 && iD > i17) {
                                                                            i17 = iD;
                                                                            view = viewY;
                                                                        }
                                                                        if (iD >= 0 && iD < i18) {
                                                                            i18 = iD;
                                                                            view2 = viewY;
                                                                        }
                                                                    }
                                                                    i19++;
                                                                    iZ = i20;
                                                                    zH2 = z14;
                                                                }
                                                                z10 = zH2;
                                                                boolean z18 = !layoutManager.g() ? i16 <= 0 : i15 <= 0;
                                                                if (z18 && view2 != null) {
                                                                    iO = layoutManager.O(view2);
                                                                    z13 = z12;
                                                                } else if (z18 || view == null) {
                                                                    if (!z18) {
                                                                        view = view2;
                                                                    }
                                                                    if (view != null) {
                                                                        int iO2 = layoutManager.O(view);
                                                                        RecyclerView recyclerView3 = layoutManager.f2486b;
                                                                        e adapter2 = recyclerView3 != null ? recyclerView3.getAdapter() : null;
                                                                        iO = iO2 + ((z17 && (pointFA = ((x.b) layoutManager).a((adapter2 != null ? adapter2.a() : 0) + (-1))) != null && ((pointFA.x > 0.0f ? 1 : (pointFA.x == 0.0f ? 0 : -1)) < 0 || (pointFA.y > 0.0f ? 1 : (pointFA.y == 0.0f ? 0 : -1)) < 0)) == z18 ? -1 : 1);
                                                                        z13 = z12;
                                                                        if (iO < 0 || iO >= iA) {
                                                                        }
                                                                    }
                                                                } else {
                                                                    iO = layoutManager.O(view);
                                                                    z13 = z12;
                                                                }
                                                            }
                                                            iO = -1;
                                                            z13 = z12;
                                                        } else {
                                                            z12 = zG2;
                                                            z10 = zH2;
                                                            motionEventObtain = motionEventObtain;
                                                            iO = -1;
                                                            z13 = z12;
                                                        }
                                                        if (iO == -1) {
                                                            iA = 0;
                                                        } else {
                                                            d0Var.f2528a = iO;
                                                            layoutManager.I0(d0Var);
                                                            iA = 1;
                                                        }
                                                    }
                                                } else {
                                                    z11 = zG2;
                                                    z10 = zH2;
                                                    motionEventObtain = motionEventObtain;
                                                }
                                                if (iA != 0) {
                                                    z11 = z13;
                                                    iA = 1;
                                                }
                                            } else {
                                                z11 = zG2;
                                                z10 = zH2;
                                                motionEventObtain = motionEventObtain;
                                            }
                                            z11 = z13;
                                            z11 = z13;
                                            iA = 0;
                                            r21 = z11;
                                        }
                                        if (iA != 0) {
                                            z11 = z13;
                                            r21 = z11;
                                            iA = 1;
                                            r13 = this;
                                        }
                                    } else {
                                        r21 = zG2;
                                        z10 = zH2;
                                        motionEventObtain = motionEventObtain;
                                    }
                                    if (z16) {
                                        ?? r15 = this;
                                        r15.m0(z10 ? r21 | 2 : r21, 1);
                                        int i21 = r15.f2406h0;
                                        int iMax3 = Math.max(-i21, Math.min(i15, i21));
                                        int i22 = r15.f2406h0;
                                        int iMax4 = Math.max(-i22, Math.min(i16, i22));
                                        a0 a0Var = r15.f2414l0;
                                        RecyclerView.this.setScrollState(2);
                                        a0Var.f2445i = 0;
                                        a0Var.f2444h = 0;
                                        Interpolator interpolator = a0Var.f2447k;
                                        c cVar = K0;
                                        if (interpolator != cVar) {
                                            a0Var.f2447k = cVar;
                                            a0Var.f2446j = new OverScroller(RecyclerView.this.getContext(), cVar);
                                        }
                                        a0Var.f2446j.fling(0, 0, iMax3, iMax4, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                        a0Var.a();
                                        iA = 1;
                                        r13 = r15;
                                    } else {
                                        recyclerView = this;
                                    }
                                }
                                iA = 0;
                                r13 = recyclerView;
                            }
                        }
                        if (iA == 0) {
                            iA = 0;
                            r13 = r13;
                        }
                        e0();
                        i10 = 1;
                        r11 = r13;
                    }
                    r13 = this;
                    motionEventObtain = motionEventObtain;
                    if (iA == 0) {
                        iA = 0;
                        r13 = r13;
                    }
                    e0();
                    i10 = 1;
                    r11 = r13;
                }
                r13.setScrollState(iA);
                e0();
                i10 = 1;
                r11 = r13;
            }
            if (i10 == 0) {
                motionEvent2 = motionEventObtain;
                r11.W.addMovement(motionEvent2);
            } else {
                motionEvent2 = motionEventObtain;
            }
            motionEvent2.recycle();
            return true;
        }
        ?? r16 = this;
        r16.V = motionEvent.getPointerId(0);
        int x12 = (int) (motionEvent.getX() + 0.5f);
        r16.f2401c0 = x12;
        r16.f2399a0 = x12;
        int y11 = (int) (motionEvent.getY() + 0.5f);
        r16.d0 = y11;
        r16.f2400b0 = y11;
        if (zH) {
            r10 = zG;
            r10 = (zG ? 1 : 0) | 2;
        }
        r10 = zG;
        iA = 0;
        r16.m0(r10, 0);
        r12 = r16;
        i10 = iA;
        r11 = r12;
        if (i10 == 0) {
            motionEvent2 = motionEventObtain;
            r11.W.addMovement(motionEvent2);
        } else {
            motionEvent2 = motionEventObtain;
        }
        motionEvent2.recycle();
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$o>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$o>] */
    public final void p(View view) {
        K(view);
        e eVar = this.f2427s;
        ?? r10 = this.J;
        if (r10 == 0) {
            return;
        }
        int size = r10.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((o) this.J.get(size)).d(view);
            }
        }
    }

    public final void p0() {
        x xVar;
        setScrollState(0);
        this.f2414l0.c();
        m mVar = this.f2429t;
        if (mVar == null || (xVar = mVar.f2491g) == null) {
            return;
        }
        xVar.f();
    }

    /* JADX WARN: Code duplicated, block: B:163:0x0347  */
    /* JADX WARN: Code duplicated, block: B:182:0x038b  */
    /* JADX WARN: Code duplicated, block: B:190:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:192:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:194:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:197:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:200:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:204:0x03ce A[LOOP:3: B:196:0x03b9->B:204:0x03ce, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:208:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:215:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:248:0x03d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x03d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x03ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x03eb A[ADDED_TO_REGION, EDGE_INSN: B:253:0x03eb->B:214:0x03eb BREAK  A[LOOP:4: B:206:0x03d5->B:254:?], REMOVE, SYNTHETIC] */
    public final void q() {
        long j10;
        b0 b0VarK;
        int i10;
        int iB;
        int i11;
        int iMin;
        b0 b0VarG;
        View view;
        b0 b0VarG2;
        int i12;
        View viewFindViewById;
        boolean z10;
        b0 b0Var;
        boolean zH;
        if (this.f2427s == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f2429t == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.f2420o0.f2551i = false;
        boolean z11 = true;
        boolean z12 = this.E0 && !(this.F0 == getWidth() && this.G0 == getHeight());
        this.F0 = 0;
        this.G0 = 0;
        this.E0 = false;
        if (this.f2420o0.f2546d == 1) {
            r();
            this.f2429t.y0(this);
            s();
        } else {
            androidx.recyclerview.widget.a aVar = this.f2411k;
            if (((aVar.f2599c.isEmpty() || aVar.f2598b.isEmpty()) ? false : true) || z12 || this.f2429t.f2500p != getWidth() || this.f2429t.f2501q != getHeight()) {
                this.f2429t.y0(this);
                s();
            } else {
                this.f2429t.y0(this);
            }
        }
        int i13 = 4;
        this.f2420o0.a(4);
        l0();
        U();
        y yVar = this.f2420o0;
        yVar.f2546d = 1;
        View view2 = null;
        if (yVar.f2552j) {
            int iE = this.f2413l.e() - 1;
            while (iE >= 0) {
                b0 b0VarK2 = K(this.f2413l.d(iE));
                if (!b0VarK2.x()) {
                    long jI = I(b0VarK2);
                    Objects.requireNonNull(this.T);
                    j.c cVar = new j.c();
                    cVar.a(b0VarK2);
                    b0 b0VarD = this.f2415m.f2671b.d(jI, null);
                    if (b0VarD == null || b0VarD.x()) {
                        this.f2415m.b(b0VarK2, cVar);
                    } else {
                        m0.a orDefault = this.f2415m.f2670a.getOrDefault(b0VarD, null);
                        boolean z13 = (orDefault == null || (orDefault.f2673a & 1) == 0) ? false : true;
                        m0.a orDefault2 = this.f2415m.f2670a.getOrDefault(b0VarK2, null);
                        boolean z14 = (orDefault2 == null || (orDefault2.f2673a & 1) == 0) ? false : true;
                        if (z13 && b0VarD == b0VarK2) {
                            this.f2415m.b(b0VarK2, cVar);
                        } else {
                            j.c cVarD = this.f2415m.d(b0VarD, i13);
                            this.f2415m.b(b0VarK2, cVar);
                            j.c cVarD2 = this.f2415m.d(b0VarK2, 8);
                            if (cVarD == null) {
                                int iE2 = this.f2413l.e();
                                for (int i14 = 0; i14 < iE2; i14++) {
                                    b0 b0VarK3 = K(this.f2413l.d(i14));
                                    if (b0VarK3 != b0VarK2 && I(b0VarK3) == jI) {
                                        e eVar = this.f2427s;
                                        if (eVar == null || !eVar.f2474b) {
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb2.append(b0VarK3);
                                            sb2.append(" \n View Holder 2:");
                                            sb2.append(b0VarK2);
                                            throw new IllegalStateException(androidx.recyclerview.widget.d.b(this, sb2));
                                        }
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb3.append(b0VarK3);
                                        sb3.append(" \n View Holder 2:");
                                        sb3.append(b0VarK2);
                                        throw new IllegalStateException(androidx.recyclerview.widget.d.b(this, sb3));
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + b0VarD + " cannot be found but it is necessary for " + b0VarK2 + A());
                            } else {
                                b0VarD.w(false);
                                if (z13) {
                                    f(b0VarD);
                                }
                                if (b0VarD != b0VarK2) {
                                    if (z14) {
                                        f(b0VarK2);
                                    }
                                    b0VarD.f2460h = b0VarK2;
                                    f(b0VarD);
                                    this.f2407i.k(b0VarD);
                                    b0VarK2.w(false);
                                    b0VarK2.f2461i = b0VarD;
                                }
                                if (this.T.a(b0VarD, b0VarK2, cVarD, cVarD2)) {
                                    X();
                                }
                            }
                        }
                    }
                }
                iE--;
                i13 = 4;
            }
            m0 m0Var = this.f2415m;
            d dVar = this.H0;
            int i15 = m0Var.f2670a.f12614j;
            while (true) {
                i15--;
                if (i15 < 0) {
                    break;
                }
                b0 b0VarI = m0Var.f2670a.i(i15);
                m0.a aVarK = m0Var.f2670a.k(i15);
                int i16 = aVarK.f2673a;
                if ((i16 & 3) == 3) {
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.f2429t.q0(b0VarI.f2453a, recyclerView.f2407i);
                } else if ((i16 & 1) != 0) {
                    j.c cVar2 = aVarK.f2674b;
                    if (cVar2 == null) {
                        RecyclerView recyclerView2 = RecyclerView.this;
                        recyclerView2.f2429t.q0(b0VarI.f2453a, recyclerView2.f2407i);
                    } else {
                        dVar.b(b0VarI, cVar2, aVarK.f2675c);
                    }
                } else if ((i16 & 14) == 14) {
                    dVar.a(b0VarI, aVarK.f2674b, aVarK.f2675c);
                } else if ((i16 & 12) == 12) {
                    j.c cVar3 = aVarK.f2674b;
                    j.c cVar4 = aVarK.f2675c;
                    Objects.requireNonNull(dVar);
                    b0VarI.w(false);
                    RecyclerView recyclerView3 = RecyclerView.this;
                    if (!recyclerView3.K) {
                        j0 j0Var = (j0) recyclerView3.T;
                        Objects.requireNonNull(j0Var);
                        int i17 = cVar3.f2482a;
                        int i18 = cVar4.f2482a;
                        if (i17 == i18 && cVar3.f2483b == cVar4.f2483b) {
                            j0Var.c(b0VarI);
                            zH = false;
                        } else {
                            zH = j0Var.h(b0VarI, i17, cVar3.f2483b, i18, cVar4.f2483b);
                        }
                        if (zH) {
                            RecyclerView.this.X();
                        }
                    } else if (recyclerView3.T.a(b0VarI, b0VarI, cVar3, cVar4)) {
                        RecyclerView.this.X();
                    }
                } else if ((i16 & 4) != 0) {
                    dVar.b(b0VarI, aVarK.f2674b, null);
                } else if ((i16 & 8) != 0) {
                    dVar.a(b0VarI, aVarK.f2674b, aVarK.f2675c);
                }
                m0.a.b(aVarK);
            }
        }
        this.f2429t.p0(this.f2407i);
        y yVar2 = this.f2420o0;
        yVar2.f2544b = yVar2.f2547e;
        this.K = false;
        this.L = false;
        yVar2.f2552j = false;
        yVar2.f2553k = false;
        this.f2429t.f2492h = false;
        ArrayList<b0> arrayList = this.f2407i.f2519b;
        if (arrayList != null) {
            arrayList.clear();
        }
        m mVar = this.f2429t;
        if (mVar.f2497m) {
            mVar.f2496l = 0;
            mVar.f2497m = false;
            this.f2407i.l();
        }
        this.f2429t.j0(this.f2420o0);
        V(true);
        n0(false);
        m0 m0Var2 = this.f2415m;
        m0Var2.f2670a.clear();
        m0Var2.f2671b.a();
        int[] iArr = this.f2438x0;
        int i19 = iArr[0];
        int i20 = iArr[1];
        E(iArr);
        int[] iArr2 = this.f2438x0;
        if (iArr2[0] == i19 && iArr2[1] == i20) {
            z11 = false;
        }
        if (z11) {
            v(0, 0);
        }
        if (this.f2412k0 && this.f2427s != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                j10 = this.f2420o0.f2555m;
                if (j10 == -1) {
                    b0VarK = null;
                } else {
                    b0VarK = null;
                }
                if (b0VarK != null) {
                    if (this.f2413l.e() > 0) {
                        y yVar3 = this.f2420o0;
                        int i21 = yVar3.f2554l;
                        if (i21 != -1) {
                        }
                        iB = yVar3.b();
                        i11 = i10;
                        while (true) {
                            if (i11 < iB) {
                                b0VarG2 = G(i11);
                                if (b0VarG2 != null) {
                                    if (b0VarG2.f2453a.hasFocusable()) {
                                        view = b0VarG2.f2453a;
                                    } else {
                                        i11++;
                                    }
                                }
                                view2 = view;
                                break;
                            }
                            iMin = Math.min(iB, i10);
                            while (true) {
                                iMin--;
                                if (iMin < 0) {
                                    break;
                                }
                                break;
                                break;
                            }
                        }
                    }
                } else if (this.f2413l.e() > 0) {
                    y yVar4 = this.f2420o0;
                    int i22 = yVar4.f2554l;
                    if (i22 != -1) {
                    }
                    iB = yVar4.b();
                    i11 = i10;
                    while (true) {
                        if (i11 < iB) {
                            b0VarG2 = G(i11);
                            if (b0VarG2 != null) {
                                if (b0VarG2.f2453a.hasFocusable()) {
                                    view = b0VarG2.f2453a;
                                } else {
                                    i11++;
                                }
                            }
                            view2 = view;
                            break;
                        }
                        iMin = Math.min(iB, i10);
                        while (true) {
                            iMin--;
                            if (iMin < 0) {
                                break;
                                break;
                            } else {
                                break;
                                break;
                            }
                        }
                    }
                }
                if (view2 != null) {
                    i12 = this.f2420o0.f2556n;
                    if (i12 != -1) {
                        view2 = viewFindViewById;
                    }
                    view2.requestFocus();
                }
            } else if (this.f2413l.k(getFocusedChild())) {
                j10 = this.f2420o0.f2555m;
                if (j10 == -1 && (z10 = this.f2427s.f2474b)) {
                    if (z10) {
                        int iH = this.f2413l.h();
                        int i23 = 0;
                        b0Var = null;
                        while (true) {
                            if (i23 < iH) {
                                b0VarK = K(this.f2413l.g(i23));
                                if (b0VarK != null && !b0VarK.p() && b0VarK.f2457e == j10) {
                                    if (!this.f2413l.k(b0VarK.f2453a)) {
                                        break;
                                    } else {
                                        b0Var = b0VarK;
                                    }
                                }
                                i23++;
                            }
                        }
                    } else {
                        b0Var = null;
                    }
                    b0VarK = b0Var;
                    break;
                } else {
                    b0VarK = null;
                }
                if (b0VarK != null || this.f2413l.k(b0VarK.f2453a) || !b0VarK.f2453a.hasFocusable()) {
                    if (this.f2413l.e() > 0) {
                        y yVar5 = this.f2420o0;
                        int i24 = yVar5.f2554l;
                        i10 = i24 != -1 ? i24 : 0;
                        iB = yVar5.b();
                        i11 = i10;
                        while (true) {
                            if (i11 < iB) {
                                b0VarG2 = G(i11);
                                if (b0VarG2 != null) {
                                    if (b0VarG2.f2453a.hasFocusable()) {
                                        view = b0VarG2.f2453a;
                                    } else {
                                        i11++;
                                    }
                                }
                                view2 = view;
                                break;
                            }
                            iMin = Math.min(iB, i10);
                            while (true) {
                                iMin--;
                                if (iMin < 0 || (b0VarG = G(iMin)) == null) {
                                    break;
                                }
                                if (b0VarG.f2453a.hasFocusable()) {
                                    view = b0VarG.f2453a;
                                    view2 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    view2 = b0VarK.f2453a;
                }
                if (view2 != null) {
                    i12 = this.f2420o0.f2556n;
                    if (i12 != -1 && (viewFindViewById = view2.findViewById(i12)) != null && viewFindViewById.isFocusable()) {
                        view2 = viewFindViewById;
                    }
                    view2.requestFocus();
                }
            }
        }
        y yVar6 = this.f2420o0;
        yVar6.f2555m = -1L;
        yVar6.f2554l = -1;
        yVar6.f2556n = -1;
    }

    public final void r() {
        View viewC;
        this.f2420o0.a(1);
        B(this.f2420o0);
        this.f2420o0.f2551i = false;
        l0();
        m0 m0Var = this.f2415m;
        m0Var.f2670a.clear();
        m0Var.f2671b.a();
        U();
        Y();
        View focusedChild = (this.f2412k0 && hasFocus() && this.f2427s != null) ? getFocusedChild() : null;
        b0 b0VarJ = (focusedChild == null || (viewC = C(focusedChild)) == null) ? null : J(viewC);
        if (b0VarJ == null) {
            y yVar = this.f2420o0;
            yVar.f2555m = -1L;
            yVar.f2554l = -1;
            yVar.f2556n = -1;
        } else {
            y yVar2 = this.f2420o0;
            yVar2.f2555m = this.f2427s.f2474b ? b0VarJ.f2457e : -1L;
            yVar2.f2554l = this.K ? -1 : b0VarJ.p() ? b0VarJ.f2456d : b0VarJ.g();
            y yVar3 = this.f2420o0;
            View focusedChild2 = b0VarJ.f2453a;
            int id2 = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id2 = focusedChild2.getId();
                }
            }
            yVar3.f2556n = id2;
        }
        y yVar4 = this.f2420o0;
        yVar4.f2550h = yVar4.f2552j && this.f2428s0;
        this.f2428s0 = false;
        this.f2426r0 = false;
        yVar4.f2549g = yVar4.f2553k;
        yVar4.f2547e = this.f2427s.a();
        E(this.f2438x0);
        if (this.f2420o0.f2552j) {
            int iE = this.f2413l.e();
            for (int i10 = 0; i10 < iE; i10++) {
                b0 b0VarK = K(this.f2413l.d(i10));
                if (!b0VarK.x() && (!b0VarK.n() || this.f2427s.f2474b)) {
                    j jVar = this.T;
                    j.b(b0VarK);
                    b0VarK.j();
                    Objects.requireNonNull(jVar);
                    j.c cVar = new j.c();
                    cVar.a(b0VarK);
                    this.f2415m.c(b0VarK, cVar);
                    if (this.f2420o0.f2550h && b0VarK.s() && !b0VarK.p() && !b0VarK.x() && !b0VarK.n()) {
                        this.f2415m.f2671b.f(I(b0VarK), b0VarK);
                    }
                }
            }
        }
        if (this.f2420o0.f2553k) {
            int iH = this.f2413l.h();
            for (int i11 = 0; i11 < iH; i11++) {
                b0 b0VarK2 = K(this.f2413l.g(i11));
                if (!b0VarK2.x() && b0VarK2.f2456d == -1) {
                    b0VarK2.f2456d = b0VarK2.f2455c;
                }
            }
            y yVar5 = this.f2420o0;
            boolean z10 = yVar5.f2548f;
            yVar5.f2548f = false;
            this.f2429t.i0(this.f2407i, yVar5);
            this.f2420o0.f2548f = z10;
            for (int i12 = 0; i12 < this.f2413l.e(); i12++) {
                b0 b0VarK3 = K(this.f2413l.d(i12));
                if (!b0VarK3.x()) {
                    m0.a orDefault = this.f2415m.f2670a.getOrDefault(b0VarK3, null);
                    if (!((orDefault == null || (orDefault.f2673a & 4) == 0) ? false : true)) {
                        j.b(b0VarK3);
                        boolean zK = b0VarK3.k(8192);
                        j jVar2 = this.T;
                        b0VarK3.j();
                        Objects.requireNonNull(jVar2);
                        j.c cVar2 = new j.c();
                        cVar2.a(b0VarK3);
                        if (zK) {
                            a0(b0VarK3, cVar2);
                        } else {
                            m0 m0Var2 = this.f2415m;
                            m0.a orDefault2 = m0Var2.f2670a.getOrDefault(b0VarK3, null);
                            if (orDefault2 == null) {
                                orDefault2 = m0.a.a();
                                m0Var2.f2670a.put(b0VarK3, orDefault2);
                            }
                            orDefault2.f2673a |= 2;
                            orDefault2.f2674b = cVar2;
                        }
                    }
                }
            }
            l();
        } else {
            l();
        }
        V(true);
        n0(false);
        this.f2420o0.f2546d = 2;
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z10) {
        b0 b0VarK = K(view);
        if (b0VarK != null) {
            if (b0VarK.r()) {
                b0VarK.f2462j &= -257;
            } else if (!b0VarK.x()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb2.append(b0VarK);
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(this, sb2));
            }
        }
        view.clearAnimation();
        p(view);
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        x xVar = this.f2429t.f2491g;
        boolean z10 = true;
        if (!(xVar != null && xVar.f2532e) && !Q()) {
            z10 = false;
        }
        if (!z10 && view2 != null) {
            d0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.f2429t.t0(this, view, rect, z10, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.f2437x.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f2437x.get(i10).e(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.C != 0 || this.E) {
            this.D = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s() {
        l0();
        U();
        this.f2420o0.a(6);
        this.f2411k.c();
        this.f2420o0.f2547e = this.f2427s.a();
        this.f2420o0.f2545c = 0;
        if (this.f2409j != null) {
            e eVar = this.f2427s;
            int iA = q.g.a(eVar.f2475c);
            if (iA == 1 ? eVar.a() > 0 : iA != 2) {
                Parcelable parcelable = this.f2409j.f2527j;
                if (parcelable != null) {
                    this.f2429t.l0(parcelable);
                }
                this.f2409j = null;
            }
        }
        y yVar = this.f2420o0;
        yVar.f2549g = false;
        this.f2429t.i0(this.f2407i, yVar);
        y yVar2 = this.f2420o0;
        yVar2.f2548f = false;
        yVar2.f2552j = yVar2.f2552j && this.T != null;
        yVar2.f2546d = 4;
        V(true);
        n0(false);
    }

    @Override // android.view.View
    public final void scrollBy(int i10, int i11) {
        m mVar = this.f2429t;
        if (mVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.E) {
            return;
        }
        boolean zG = mVar.g();
        boolean zH = this.f2429t.h();
        if (zG || zH) {
            if (!zG) {
                i10 = 0;
            }
            if (!zH) {
                i11 = 0;
            }
            f0(i10, i11, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i10, int i11) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i10 = 0;
        if (Q()) {
            int iA = accessibilityEvent != null ? k0.b.a(accessibilityEvent) : 0;
            this.G |= iA != 0 ? iA : 0;
            i10 = 1;
        }
        if (i10 != 0) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(h0 h0Var) {
        this.f2434v0 = h0Var;
        j0.a0.p(this, h0Var);
    }

    public void setAdapter(e eVar) {
        setLayoutFrozen(false);
        e eVar2 = this.f2427s;
        if (eVar2 != null) {
            eVar2.f2473a.unregisterObserver(this.f2405h);
            Objects.requireNonNull(this.f2427s);
        }
        b0();
        androidx.recyclerview.widget.a aVar = this.f2411k;
        aVar.l(aVar.f2598b);
        aVar.l(aVar.f2599c);
        aVar.f2602f = 0;
        e eVar3 = this.f2427s;
        this.f2427s = eVar;
        if (eVar != null) {
            eVar.f2473a.registerObserver(this.f2405h);
            eVar.g(this);
        }
        m mVar = this.f2429t;
        if (mVar != null) {
            mVar.X();
        }
        t tVar = this.f2407i;
        e eVar4 = this.f2427s;
        tVar.b();
        s sVarD = tVar.d();
        Objects.requireNonNull(sVarD);
        if (eVar3 != null) {
            sVarD.f2513b--;
        }
        if (sVarD.f2513b == 0) {
            for (int i10 = 0; i10 < sVarD.f2512a.size(); i10++) {
                sVarD.f2512a.valueAt(i10).f2514a.clear();
            }
        }
        if (eVar4 != null) {
            sVarD.f2513b++;
        }
        this.f2420o0.f2548f = true;
        Z(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(h hVar) {
        if (hVar == this.f2436w0) {
            return;
        }
        this.f2436w0 = hVar;
        setChildrenDrawingOrderEnabled(hVar != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        if (z10 != this.f2417n) {
            O();
        }
        this.f2417n = z10;
        super.setClipToPadding(z10);
        if (this.B) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(i iVar) {
        Objects.requireNonNull(iVar);
        this.O = iVar;
        O();
    }

    public void setHasFixedSize(boolean z10) {
        this.A = z10;
    }

    public void setItemAnimator(j jVar) {
        j jVar2 = this.T;
        if (jVar2 != null) {
            jVar2.f();
            this.T.f2476a = null;
        }
        this.T = jVar;
        if (jVar != null) {
            jVar.f2476a = this.f2430t0;
        }
    }

    public void setItemViewCacheSize(int i10) {
        t tVar = this.f2407i;
        tVar.f2522e = i10;
        tVar.l();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z10) {
        suppressLayout(z10);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public void setLayoutManager(m mVar) {
        if (mVar == this.f2429t) {
            return;
        }
        p0();
        if (this.f2429t != null) {
            j jVar = this.T;
            if (jVar != null) {
                jVar.f();
            }
            this.f2429t.o0(this.f2407i);
            this.f2429t.p0(this.f2407i);
            this.f2407i.b();
            if (this.f2441z) {
                m mVar2 = this.f2429t;
                mVar2.f2493i = false;
                mVar2.Y(this);
            }
            this.f2429t.D0(null);
            this.f2429t = null;
        } else {
            this.f2407i.b();
        }
        androidx.recyclerview.widget.e eVar = this.f2413l;
        androidx.recyclerview.widget.e.a aVar = eVar.f2618b;
        aVar.f2620a = 0L;
        androidx.recyclerview.widget.e.a aVar2 = aVar.f2621b;
        if (aVar2 != null) {
            aVar2.g();
        }
        int size = eVar.f2619c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            androidx.recyclerview.widget.e.b bVar = eVar.f2617a;
            View view = (View) eVar.f2619c.get(size);
            f0 f0Var = (f0) bVar;
            Objects.requireNonNull(f0Var);
            b0 b0VarK = K(view);
            if (b0VarK != null) {
                f0Var.f2626a.i0(b0VarK, b0VarK.f2468p);
                b0VarK.f2468p = 0;
            }
            eVar.f2619c.remove(size);
        }
        f0 f0Var2 = (f0) eVar.f2617a;
        int iB = f0Var2.b();
        for (int i10 = 0; i10 < iB; i10++) {
            View viewA = f0Var2.a(i10);
            f0Var2.f2626a.p(viewA);
            viewA.clearAnimation();
        }
        f0Var2.f2626a.removeAllViews();
        this.f2429t = mVar;
        if (mVar != null) {
            if (mVar.f2486b != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("LayoutManager ");
                sb2.append(mVar);
                sb2.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(mVar.f2486b, sb2));
            }
            mVar.D0(this);
            if (this.f2441z) {
                this.f2429t.f2493i = true;
            }
        }
        this.f2407i.l();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        j0.m scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f9228d) {
            View view = scrollingChildHelper.f9227c;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            j0.a0.i.z(view);
        }
        scrollingChildHelper.f9228d = z10;
    }

    public void setOnFlingListener(p pVar) {
        this.f2403f0 = pVar;
    }

    @Deprecated
    public void setOnScrollListener(r rVar) {
        this.f2422p0 = rVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.f2412k0 = z10;
    }

    public void setRecycledViewPool(s sVar) {
        t tVar = this.f2407i;
        s sVar2 = tVar.f2524g;
        if (sVar2 != null) {
            sVar2.f2513b--;
        }
        tVar.f2524g = sVar;
        if (sVar == null || RecyclerView.this.getAdapter() == null) {
            return;
        }
        tVar.f2524g.f2513b++;
    }

    @Deprecated
    public void setRecyclerListener(u uVar) {
        this.f2431u = uVar;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    void setScrollState(int i10) {
        x xVar;
        if (i10 == this.U) {
            return;
        }
        this.U = i10;
        if (i10 != 2) {
            this.f2414l0.c();
            m mVar = this.f2429t;
            if (mVar != null && (xVar = mVar.f2491g) != null) {
                xVar.f();
            }
        }
        m mVar2 = this.f2429t;
        if (mVar2 != null) {
            mVar2.n0(i10);
        }
        r rVar = this.f2422p0;
        if (rVar != null) {
            rVar.a(this, i10);
        }
        ?? r10 = this.f2424q0;
        if (r10 == 0) {
            return;
        }
        int size = r10.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((r) this.f2424q0.get(size)).a(this, i10);
            }
        }
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 == 1) {
                this.f2402e0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i10 + "; using default value");
        }
        this.f2402e0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(z zVar) {
        Objects.requireNonNull(this.f2407i);
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().h(i10, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z10) {
        if (z10 != this.E) {
            i("Do not suppressLayout in layout or scroll");
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.E = true;
                this.F = true;
                p0();
                return;
            }
            this.E = false;
            if (this.D && this.f2429t != null && this.f2427s != null) {
                requestLayout();
            }
            this.D = false;
        }
    }

    public final boolean t(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2, i12);
    }

    public final void u(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        getScrollingChildHelper().e(i10, i11, i12, i13, null, 1, iArr2);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    public final void v(int i10, int i11) {
        this.N++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i10, scrollY - i11);
        r rVar = this.f2422p0;
        if (rVar != null) {
            rVar.b(this, i10, i11);
        }
        ?? r10 = this.f2424q0;
        if (r10 != 0) {
            int size = r10.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((r) this.f2424q0.get(size)).b(this, i10, i11);
                }
            }
        }
        this.N--;
    }

    public final void w() {
        if (this.S != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.O.a(this);
        this.S = edgeEffectA;
        if (this.f2417n) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void x() {
        if (this.P != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.O.a(this);
        this.P = edgeEffectA;
        if (this.f2417n) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void y() {
        if (this.R != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.O.a(this);
        this.R = edgeEffectA;
        if (this.f2417n) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void z() {
        if (this.Q != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.O.a(this);
        this.Q = edgeEffectA;
        if (this.f2417n) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) {
        Constructor constructor;
        super(context, attributeSet, i10);
        this.f2405h = new v();
        this.f2407i = new t();
        this.f2415m = new m0();
        this.f2419o = new a();
        this.f2421p = new Rect();
        this.f2423q = new Rect();
        this.f2425r = new RectF();
        this.f2433v = new ArrayList();
        this.f2435w = new ArrayList<>();
        this.f2437x = new ArrayList<>();
        this.C = 0;
        this.K = false;
        this.L = false;
        this.M = 0;
        this.N = 0;
        this.O = new i();
        this.T = new androidx.recyclerview.widget.n();
        this.U = 0;
        this.V = -1;
        this.f2408i0 = Float.MIN_VALUE;
        this.f2410j0 = Float.MIN_VALUE;
        this.f2412k0 = true;
        this.f2414l0 = new a0();
        this.f2418n0 = new androidx.recyclerview.widget.r.b();
        this.f2420o0 = new y();
        this.f2426r0 = false;
        this.f2428s0 = false;
        this.f2430t0 = new k();
        this.f2432u0 = false;
        this.f2438x0 = new int[2];
        this.f2442z0 = new int[2];
        this.A0 = new int[2];
        this.B0 = new int[2];
        this.C0 = new ArrayList();
        this.D0 = new b();
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = new d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2402e0 = viewConfiguration.getScaledTouchSlop();
        Method method = j0.c0.f9181a;
        int i11 = Build.VERSION.SDK_INT;
        this.f2408i0 = i11 >= 26 ? j0.c0.a.a(viewConfiguration) : j0.c0.a(viewConfiguration, context);
        this.f2410j0 = i11 >= 26 ? j0.c0.a.b(viewConfiguration) : j0.c0.a(viewConfiguration, context);
        this.f2404g0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2406h0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.T.f2476a = this.f2430t0;
        this.f2411k = new androidx.recyclerview.widget.a(new g0(this));
        this.f2413l = new androidx.recyclerview.widget.e(new f0(this));
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        if ((i11 >= 26 ? j0.a0.l.b(this) : 0) == 0 && i11 >= 26) {
            j0.a0.l.l(this, 8);
        }
        if (j0.a0.d.c(this) == 0) {
            j0.a0.d.s(this, 1);
        }
        this.I = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new h0(this));
        int[] iArr = androidx.recyclerview.R.styleable.RecyclerView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        j0.a0.o(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10);
        String string = typedArrayObtainStyledAttributes.getString(androidx.recyclerview.R.styleable.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f2417n = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_android_clipToPadding, true);
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_fastScrollEnabled, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalThumbDrawable);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalTrackDrawable);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(androidx.recyclerview.widget.d.b(this, a0.b.c("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.q(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(androidx.recyclerview.R.dimen.fastscroll_margin));
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                String str = strTrim;
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(m.class);
                    Object[] objArr = null;
                    try {
                        constructor = clsAsSubclass.getConstructor(J0);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), 0};
                    } catch (NoSuchMethodException e10) {
                        try {
                            constructor = clsAsSubclass.getConstructor(new Class[0]);
                        } catch (NoSuchMethodException e11) {
                            e11.initCause(e10);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e11);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((m) constructor.newInstance(objArr));
                } catch (ClassCastException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e12);
                } catch (ClassNotFoundException e13) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e13);
                } catch (IllegalAccessException e14) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e14);
                } catch (InstantiationException e15) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e15);
                } catch (InvocationTargetException e16) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e16);
                }
            }
        }
        int[] iArr2 = I0;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i10, 0);
        j0.a0.o(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i10);
        boolean z10 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z10);
    }

    public static class w extends p0.a {
        public static final Parcelable.Creator<w> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Parcelable f2527j;

        public class a implements Parcelable.ClassLoaderCreator<w> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final w createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new w(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new w[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new w(parcel, null);
            }
        }

        public w(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2527j = parcel.readParcelable(classLoader == null ? m.class.getClassLoader() : classLoader);
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeParcelable(this.f2527j, 0);
        }

        public w(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class n extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public b0 f2508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f2509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2510c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2511d;

        public n(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2509b = new Rect();
            this.f2510c = true;
            this.f2511d = false;
        }

        public final int a() {
            return this.f2508a.i();
        }

        public final boolean b() {
            return this.f2508a.s();
        }

        public final boolean c() {
            return this.f2508a.p();
        }

        public n(int i10, int i11) {
            super(i10, i11);
            this.f2509b = new Rect();
            this.f2510c = true;
            this.f2511d = false;
        }

        public n(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2509b = new Rect();
            this.f2510c = true;
            this.f2511d = false;
        }

        public n(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2509b = new Rect();
            this.f2510c = true;
            this.f2511d = false;
        }

        public n(n nVar) {
            super((ViewGroup.LayoutParams) nVar);
            this.f2509b = new Rect();
            this.f2510c = true;
            this.f2511d = false;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        m mVar = this.f2429t;
        if (mVar != null) {
            return mVar.x(layoutParams);
        }
        throw new IllegalStateException(androidx.recyclerview.widget.d.b(this, a0.b.c("RecyclerView has no LayoutManager")));
    }
}
