package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.recyclerview.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ItemTouchHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class t extends RecyclerView.l implements RecyclerView.o {
    public Rect A;
    public long B;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f2778g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2779h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2780i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2781j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2782k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public d f2784m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2786o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2788q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RecyclerView f2789r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public VelocityTracker f2791t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public List<RecyclerView.b0> f2792u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public List<Integer> f2793v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public j0.e f2795x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public e f2796y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<View> f2772a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f2773b = new float[2];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RecyclerView.b0 f2774c = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2783l = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2785n = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public List<f> f2787p = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final a f2790s = new a();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f2794w = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final b f2797z = new b();

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:22:0x007a  */
        /* JADX WARN: Code duplicated, block: B:34:0x00c1  */
        @Override // java.lang.Runnable
        public final void run() {
            int iF;
            int iF2;
            int i10;
            t tVar = t.this;
            if (tVar.f2774c != null) {
                boolean z10 = false;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j10 = tVar.B;
                long j11 = j10 == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - j10;
                RecyclerView.m layoutManager = tVar.f2789r.getLayoutManager();
                if (tVar.A == null) {
                    tVar.A = new Rect();
                }
                layoutManager.f(tVar.f2774c.f2453a, tVar.A);
                if (layoutManager.g()) {
                    int i11 = (int) (tVar.f2781j + tVar.f2779h);
                    iF = (i11 - tVar.A.left) - tVar.f2789r.getPaddingLeft();
                    float f10 = tVar.f2779h;
                    if ((f10 >= 0.0f || iF >= 0) && (f10 <= 0.0f || (iF = ((tVar.f2774c.f2453a.getWidth() + i11) + tVar.A.right) - (tVar.f2789r.getWidth() - tVar.f2789r.getPaddingRight())) <= 0)) {
                        iF = 0;
                    }
                } else {
                    iF = 0;
                }
                if (layoutManager.h()) {
                    int i12 = (int) (tVar.f2782k + tVar.f2780i);
                    int paddingTop = (i12 - tVar.A.top) - tVar.f2789r.getPaddingTop();
                    float f11 = tVar.f2780i;
                    if ((f11 >= 0.0f || paddingTop >= 0) && (f11 <= 0.0f || (paddingTop = ((tVar.f2774c.f2453a.getHeight() + i12) + tVar.A.bottom) - (tVar.f2789r.getHeight() - tVar.f2789r.getPaddingBottom())) <= 0)) {
                        iF2 = 0;
                    } else {
                        iF2 = paddingTop;
                    }
                } else {
                    iF2 = 0;
                }
                if (iF != 0) {
                    d dVar = tVar.f2784m;
                    RecyclerView recyclerView = tVar.f2789r;
                    int width = tVar.f2774c.f2453a.getWidth();
                    tVar.f2789r.getWidth();
                    iF = dVar.f(recyclerView, width, iF, j11);
                }
                int i13 = iF;
                if (iF2 != 0) {
                    d dVar2 = tVar.f2784m;
                    RecyclerView recyclerView2 = tVar.f2789r;
                    int height = tVar.f2774c.f2453a.getHeight();
                    tVar.f2789r.getHeight();
                    i10 = i13;
                    iF2 = dVar2.f(recyclerView2, height, iF2, j11);
                } else {
                    i10 = i13;
                }
                if (i10 == 0 && iF2 == 0) {
                    tVar.B = Long.MIN_VALUE;
                } else {
                    if (tVar.B == Long.MIN_VALUE) {
                        tVar.B = jCurrentTimeMillis;
                    }
                    tVar.f2789r.scrollBy(i10, iF2);
                    z10 = true;
                }
                if (z10) {
                    t tVar2 = t.this;
                    RecyclerView.b0 b0Var = tVar2.f2774c;
                    if (b0Var != null) {
                        tVar2.p(b0Var);
                    }
                    t tVar3 = t.this;
                    tVar3.f2789r.removeCallbacks(tVar3.f2790s);
                    RecyclerView recyclerView3 = t.this.f2789r;
                    WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                    j0.a0.d.m(recyclerView3, this);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public class b implements RecyclerView.q {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.q
        public final void a(MotionEvent motionEvent) {
            t.this.f2795x.f9183a.f9184a.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = t.this.f2791t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (t.this.f2783l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int iFindPointerIndex = motionEvent.findPointerIndex(t.this.f2783l);
            if (iFindPointerIndex >= 0) {
                t.this.j(actionMasked, motionEvent, iFindPointerIndex);
            }
            t tVar = t.this;
            RecyclerView.b0 b0Var = tVar.f2774c;
            if (b0Var == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (iFindPointerIndex >= 0) {
                        tVar.s(motionEvent, tVar.f2786o, iFindPointerIndex);
                        t.this.p(b0Var);
                        t tVar2 = t.this;
                        tVar2.f2789r.removeCallbacks(tVar2.f2790s);
                        t.this.f2790s.run();
                        t.this.f2789r.invalidate();
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    t tVar3 = t.this;
                    if (pointerId == tVar3.f2783l) {
                        tVar3.f2783l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        t tVar4 = t.this;
                        tVar4.s(motionEvent, tVar4.f2786o, actionIndex);
                        return;
                    }
                    return;
                }
                VelocityTracker velocityTracker2 = tVar.f2791t;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            }
            t.this.r(null, 0);
            t.this.f2783l = -1;
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [java.util.ArrayList, java.util.List<android.view.View>] */
        /* JADX WARN: Type inference failed for: r1v12, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
        /* JADX WARN: Type inference failed for: r5v7, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
        /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
        @Override // androidx.recyclerview.widget.RecyclerView.q
        public final boolean c(MotionEvent motionEvent) {
            int iFindPointerIndex;
            t.this.f2795x.f9183a.f9184a.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            f fVar = null;
            if (actionMasked == 0) {
                t.this.f2783l = motionEvent.getPointerId(0);
                t.this.f2775d = motionEvent.getX();
                t.this.f2776e = motionEvent.getY();
                t tVar = t.this;
                VelocityTracker velocityTracker = tVar.f2791t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                tVar.f2791t = VelocityTracker.obtain();
                t tVar2 = t.this;
                if (tVar2.f2774c == null) {
                    if (!tVar2.f2787p.isEmpty()) {
                        View viewM = tVar2.m(motionEvent);
                        for (int size = tVar2.f2787p.size() - 1; size >= 0; size--) {
                            f fVar2 = (f) tVar2.f2787p.get(size);
                            if (fVar2.f2812e.f2453a == viewM) {
                                fVar = fVar2;
                                break;
                            }
                        }
                    }
                    if (fVar != null) {
                        t tVar3 = t.this;
                        tVar3.f2775d -= fVar.f2816i;
                        tVar3.f2776e -= fVar.f2817j;
                        tVar3.l(fVar.f2812e, true);
                        if (t.this.f2772a.remove(fVar.f2812e.f2453a)) {
                            t tVar4 = t.this;
                            tVar4.f2784m.a(tVar4.f2789r, fVar.f2812e);
                        }
                        t.this.r(fVar.f2812e, fVar.f2813f);
                        t tVar5 = t.this;
                        tVar5.s(motionEvent, tVar5.f2786o, 0);
                    }
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                t tVar6 = t.this;
                tVar6.f2783l = -1;
                tVar6.r(null, 0);
            } else {
                int i10 = t.this.f2783l;
                if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) >= 0) {
                    t.this.j(actionMasked, motionEvent, iFindPointerIndex);
                }
            }
            VelocityTracker velocityTracker2 = t.this.f2791t;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return t.this.f2774c != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.q
        public final void e(boolean z10) {
            if (z10) {
                t.this.r(null, 0);
            }
        }
    }

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public class c extends f {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final /* synthetic */ int f2800n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.b0 f2801o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(RecyclerView.b0 b0Var, int i10, int i11, float f10, float f11, float f12, float f13, int i12, RecyclerView.b0 b0Var2) {
            super(b0Var, i11, f10, f11, f12, f13);
            this.f2800n = i12;
            this.f2801o = b0Var2;
        }

        /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList, java.util.List<android.view.View>] */
        @Override // androidx.recyclerview.widget.t.f, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (this.f2818k) {
                return;
            }
            if (this.f2800n <= 0) {
                t tVar = t.this;
                tVar.f2784m.a(tVar.f2789r, this.f2801o);
            } else {
                t.this.f2772a.add(this.f2801o.f2453a);
                this.f2815h = true;
                int i10 = this.f2800n;
                if (i10 > 0) {
                    t tVar2 = t.this;
                    tVar2.f2789r.post(new u(tVar2, this, i10));
                }
            }
            t tVar3 = t.this;
            View view = tVar3.f2794w;
            View view2 = this.f2801o.f2453a;
            if (view == view2) {
                tVar3.q(view2);
            }
        }
    }

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public static abstract class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f2803b = new a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f2804c = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2805a = -1;

        /* JADX INFO: compiled from: ItemTouchHelper.java */
        public class a implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f10) {
                return f10 * f10 * f10 * f10 * f10;
            }
        }

        /* JADX INFO: compiled from: ItemTouchHelper.java */
        public class b implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f10) {
                float f11 = f10 - 1.0f;
                return (f11 * f11 * f11 * f11 * f11) + 1.0f;
            }
        }

        public static int c(int i10, int i11) {
            int i12;
            int i13 = i10 & 789516;
            if (i13 == 0) {
                return i10;
            }
            int i14 = i10 & (~i13);
            if (i11 == 0) {
                i12 = i13 << 2;
            } else {
                int i15 = i13 << 1;
                i14 |= (-789517) & i15;
                i12 = (i15 & 789516) << 2;
            }
            return i14 | i12;
        }

        public void a(RecyclerView recyclerView, RecyclerView.b0 b0Var) {
            View view = b0Var.f2453a;
            int i10 = R.id.item_touch_helper_previous_elevation;
            Object tag = view.getTag(i10);
            if (tag instanceof Float) {
                float fFloatValue = ((Float) tag).floatValue();
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                j0.a0.i.s(view, fFloatValue);
            }
            view.setTag(i10, null);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        public final int b(int i10, int i11) {
            int i12;
            int i13 = i10 & 3158064;
            if (i13 == 0) {
                return i10;
            }
            int i14 = i10 & (~i13);
            if (i11 == 0) {
                i12 = i13 >> 2;
            } else {
                int i15 = i13 >> 1;
                i14 |= (-3158065) & i15;
                i12 = (i15 & 3158064) >> 2;
            }
            return i14 | i12;
        }

        public final int d(RecyclerView recyclerView, RecyclerView.b0 b0Var) {
            e(recyclerView, b0Var);
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            return b(204835, j0.a0.e.d(recyclerView));
        }

        public abstract void e(RecyclerView recyclerView, RecyclerView.b0 b0Var);

        public final int f(RecyclerView recyclerView, int i10, int i11, long j10) {
            if (this.f2805a == -1) {
                this.f2805a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int interpolation = (int) (f2804c.getInterpolation(Math.min(1.0f, (Math.abs(i11) * 1.0f) / i10)) * ((int) Math.signum(i11)) * this.f2805a);
            float f10 = j10 <= 2000 ? j10 / 2000.0f : 1.0f;
            int i12 = (int) (f10 * f10 * f10 * f10 * f10 * interpolation);
            if (i12 == 0) {
                return i11 > 0 ? 1 : -1;
            }
            return i12;
        }

        public void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.b0 b0Var, float f10, float f11, int i10, boolean z10) {
            View view = b0Var.f2453a;
            if (z10 && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                Float fValueOf = Float.valueOf(j0.a0.i.i(view));
                int childCount = recyclerView.getChildCount();
                float f12 = 0.0f;
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = recyclerView.getChildAt(i11);
                    if (childAt != view) {
                        WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
                        float fI = j0.a0.i.i(childAt);
                        if (fI > f12) {
                            f12 = fI;
                        }
                    }
                }
                j0.a0.i.s(view, f12 + 1.0f);
                view.setTag(R.id.item_touch_helper_previous_elevation, fValueOf);
            }
            view.setTranslationX(f10);
            view.setTranslationY(f11);
        }

        public abstract void h(RecyclerView recyclerView, RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2);

        public abstract void i(RecyclerView.b0 b0Var, int i10);

        public abstract void j(RecyclerView.b0 b0Var);
    }

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public class e extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2806h = true;

        public e() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            View viewM;
            RecyclerView.b0 b0VarJ;
            if (!this.f2806h || (viewM = t.this.m(motionEvent)) == null || (b0VarJ = t.this.f2789r.J(viewM)) == null) {
                return;
            }
            t tVar = t.this;
            if ((tVar.f2784m.d(tVar.f2789r, b0VarJ) & 16711680) != 0) {
                int pointerId = motionEvent.getPointerId(0);
                int i10 = t.this.f2783l;
                if (pointerId == i10) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i10);
                    float x10 = motionEvent.getX(iFindPointerIndex);
                    float y7 = motionEvent.getY(iFindPointerIndex);
                    t tVar2 = t.this;
                    tVar2.f2775d = x10;
                    tVar2.f2776e = y7;
                    tVar2.f2780i = 0.0f;
                    tVar2.f2779h = 0.0f;
                    d dVar = tVar2.f2784m;
                    Objects.requireNonNull(dVar);
                    if (!(dVar instanceof e9.a)) {
                        t.this.r(b0VarJ, 2);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public static class f implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f2808a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f2809b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f2810c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float f2811d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final RecyclerView.b0 f2812e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f2813f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final ValueAnimator f2814g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2815h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f2816i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f2817j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f2818k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f2819l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f2820m;

        public f(RecyclerView.b0 b0Var, int i10, float f10, float f11, float f12, float f13) {
            this.f2813f = i10;
            this.f2812e = b0Var;
            this.f2808a = f10;
            this.f2809b = f11;
            this.f2810c = f12;
            this.f2811d = f13;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f2814g = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new v(this));
            valueAnimatorOfFloat.setTarget(b0Var.f2453a);
            valueAnimatorOfFloat.addListener(this);
            this.f2820m = 0.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f2820m = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f2819l) {
                this.f2812e.w(true);
            }
            this.f2819l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: compiled from: ItemTouchHelper.java */
    public interface g {
        void b(View view, View view2);
    }

    public t(d dVar) {
        this.f2784m = dVar;
    }

    public static boolean o(View view, float f10, float f11, float f12, float f13) {
        return f10 >= f12 && f10 <= f12 + ((float) view.getWidth()) && f11 >= f13 && f11 <= f13 + ((float) view.getHeight());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public final void b() {
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    @Override // androidx.recyclerview.widget.RecyclerView.o
    public final void d(View view) {
        q(view);
        RecyclerView.b0 b0VarJ = this.f2789r.J(view);
        if (b0VarJ == null) {
            return;
        }
        RecyclerView.b0 b0Var = this.f2774c;
        if (b0Var != null && b0VarJ == b0Var) {
            r(null, 0);
            return;
        }
        l(b0VarJ, false);
        if (this.f2772a.remove(b0VarJ.f2453a)) {
            this.f2784m.a(this.f2789r, b0VarJ);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
        rect.setEmpty();
    }

    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.ArrayList, java.util.List, java.util.List<androidx.recyclerview.widget.t$f>] */
    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void g(Canvas canvas, RecyclerView recyclerView) {
        float f10;
        float f11;
        if (this.f2774c != null) {
            n(this.f2773b);
            float[] fArr = this.f2773b;
            float f12 = fArr[0];
            f11 = fArr[1];
            f10 = f12;
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        d dVar = this.f2784m;
        RecyclerView.b0 b0Var = this.f2774c;
        ?? r14 = this.f2787p;
        int i10 = this.f2785n;
        Objects.requireNonNull(dVar);
        int i11 = 0;
        for (int size = r14.size(); i11 < size; size = size) {
            f fVar = (f) r14.get(i11);
            float f13 = fVar.f2808a;
            float f14 = fVar.f2810c;
            if (f13 == f14) {
                fVar.f2816i = fVar.f2812e.f2453a.getTranslationX();
            } else {
                fVar.f2816i = androidx.appcompat.widget.o.c(f14, f13, fVar.f2820m, f13);
            }
            float f15 = fVar.f2809b;
            float f16 = fVar.f2811d;
            if (f15 == f16) {
                fVar.f2817j = fVar.f2812e.f2453a.getTranslationY();
            } else {
                fVar.f2817j = androidx.appcompat.widget.o.c(f16, f15, fVar.f2820m, f15);
            }
            int iSave = canvas.save();
            dVar.g(canvas, recyclerView, fVar.f2812e, fVar.f2816i, fVar.f2817j, fVar.f2813f, false);
            canvas.restoreToCount(iSave);
            i11++;
        }
        if (b0Var != null) {
            int iSave2 = canvas.save();
            dVar.g(canvas, recyclerView, b0Var, f10, f11, i10, true);
            canvas.restoreToCount(iSave2);
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List, java.util.List<androidx.recyclerview.widget.t$f>] */
    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        boolean z10 = false;
        if (this.f2774c != null) {
            n(this.f2773b);
            float[] fArr = this.f2773b;
            float f10 = fArr[0];
            float f11 = fArr[1];
        }
        d dVar = this.f2784m;
        RecyclerView.b0 b0Var = this.f2774c;
        ?? r10 = this.f2787p;
        Objects.requireNonNull(dVar);
        int size = r10.size();
        for (int i10 = 0; i10 < size; i10++) {
            f fVar = (f) r10.get(i10);
            int iSave = canvas.save();
            View view = fVar.f2812e.f2453a;
            canvas.restoreToCount(iSave);
        }
        if (b0Var != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i11 = size - 1; i11 >= 0; i11--) {
            f fVar2 = (f) r10.get(i11);
            boolean z11 = fVar2.f2819l;
            if (z11 && !fVar2.f2815h) {
                r10.remove(i11);
            } else if (!z11) {
                z10 = true;
            }
        }
        if (z10) {
            recyclerView.invalidate();
        }
    }

    public final int i(int i10) {
        if ((i10 & 12) == 0) {
            return 0;
        }
        int i11 = this.f2779h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.f2791t;
        if (velocityTracker != null && this.f2783l > -1) {
            d dVar = this.f2784m;
            float f10 = this.f2778g;
            Objects.requireNonNull(dVar);
            velocityTracker.computeCurrentVelocity(1000, f10);
            float xVelocity = this.f2791t.getXVelocity(this.f2783l);
            float yVelocity = this.f2791t.getYVelocity(this.f2783l);
            int i12 = xVelocity <= 0.0f ? 4 : 8;
            float fAbs = Math.abs(xVelocity);
            if ((i12 & i10) != 0 && i11 == i12) {
                d dVar2 = this.f2784m;
                float f11 = this.f2777f;
                Objects.requireNonNull(dVar2);
                if (fAbs >= f11 && fAbs > Math.abs(yVelocity)) {
                    return i12;
                }
            }
        }
        float width = this.f2789r.getWidth();
        Objects.requireNonNull(this.f2784m);
        float f12 = width * 0.5f;
        if ((i10 & i11) == 0 || Math.abs(this.f2779h) <= f12) {
            return 0;
        }
        return i11;
    }

    public final void j(int i10, MotionEvent motionEvent, int i11) {
        int iD;
        View viewM;
        if (this.f2774c == null && i10 == 2 && this.f2785n != 2) {
            Objects.requireNonNull(this.f2784m);
            if (this.f2789r.getScrollState() == 1) {
                return;
            }
            RecyclerView.m layoutManager = this.f2789r.getLayoutManager();
            int i12 = this.f2783l;
            RecyclerView.b0 b0VarJ = null;
            if (i12 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i12);
                float x10 = motionEvent.getX(iFindPointerIndex) - this.f2775d;
                float y7 = motionEvent.getY(iFindPointerIndex) - this.f2776e;
                float fAbs = Math.abs(x10);
                float fAbs2 = Math.abs(y7);
                float f10 = this.f2788q;
                if ((fAbs >= f10 || fAbs2 >= f10) && ((fAbs <= fAbs2 || !layoutManager.g()) && ((fAbs2 <= fAbs || !layoutManager.h()) && (viewM = m(motionEvent)) != null))) {
                    b0VarJ = this.f2789r.J(viewM);
                }
            }
            if (b0VarJ == null || (iD = (this.f2784m.d(this.f2789r, b0VarJ) & 65280) >> 8) == 0) {
                return;
            }
            float x11 = motionEvent.getX(i11);
            float y10 = motionEvent.getY(i11);
            float f11 = x11 - this.f2775d;
            float f12 = y10 - this.f2776e;
            float fAbs3 = Math.abs(f11);
            float fAbs4 = Math.abs(f12);
            float f13 = this.f2788q;
            if (fAbs3 >= f13 || fAbs4 >= f13) {
                if (fAbs3 > fAbs4) {
                    if (f11 < 0.0f && (iD & 4) == 0) {
                        return;
                    }
                    if (f11 > 0.0f && (iD & 8) == 0) {
                        return;
                    }
                } else {
                    if (f12 < 0.0f && (iD & 1) == 0) {
                        return;
                    }
                    if (f12 > 0.0f && (iD & 2) == 0) {
                        return;
                    }
                }
                this.f2780i = 0.0f;
                this.f2779h = 0.0f;
                this.f2783l = motionEvent.getPointerId(0);
                r(b0VarJ, 1);
            }
        }
    }

    public final int k(int i10) {
        if ((i10 & 3) == 0) {
            return 0;
        }
        int i11 = this.f2780i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.f2791t;
        if (velocityTracker != null && this.f2783l > -1) {
            d dVar = this.f2784m;
            float f10 = this.f2778g;
            Objects.requireNonNull(dVar);
            velocityTracker.computeCurrentVelocity(1000, f10);
            float xVelocity = this.f2791t.getXVelocity(this.f2783l);
            float yVelocity = this.f2791t.getYVelocity(this.f2783l);
            int i12 = yVelocity <= 0.0f ? 1 : 2;
            float fAbs = Math.abs(yVelocity);
            if ((i12 & i10) != 0 && i12 == i11) {
                d dVar2 = this.f2784m;
                float f11 = this.f2777f;
                Objects.requireNonNull(dVar2);
                if (fAbs >= f11 && fAbs > Math.abs(xVelocity)) {
                    return i12;
                }
            }
        }
        float height = this.f2789r.getHeight();
        Objects.requireNonNull(this.f2784m);
        float f12 = height * 0.5f;
        if ((i10 & i11) == 0 || Math.abs(this.f2780i) <= f12) {
            return 0;
        }
        return i11;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    public final void l(RecyclerView.b0 b0Var, boolean z10) {
        f fVar;
        int size = this.f2787p.size();
        do {
            size--;
            if (size < 0) {
                return;
            } else {
                fVar = (f) this.f2787p.get(size);
            }
        } while (fVar.f2812e != b0Var);
        fVar.f2818k |= z10;
        if (!fVar.f2819l) {
            fVar.f2814g.cancel();
        }
        this.f2787p.remove(size);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    public final View m(MotionEvent motionEvent) {
        f fVar;
        View view;
        float x10 = motionEvent.getX();
        float y7 = motionEvent.getY();
        RecyclerView.b0 b0Var = this.f2774c;
        if (b0Var != null) {
            View view2 = b0Var.f2453a;
            if (o(view2, x10, y7, this.f2781j + this.f2779h, this.f2782k + this.f2780i)) {
                return view2;
            }
        }
        int size = this.f2787p.size();
        do {
            size--;
            if (size >= 0) {
                fVar = (f) this.f2787p.get(size);
                view = fVar.f2812e.f2453a;
            } else {
                RecyclerView recyclerView = this.f2789r;
                int iE = recyclerView.f2413l.e();
                while (true) {
                    iE--;
                    if (iE < 0) {
                        return null;
                    }
                    View viewD = recyclerView.f2413l.d(iE);
                    float translationX = viewD.getTranslationX();
                    float translationY = viewD.getTranslationY();
                    if (x10 >= viewD.getLeft() + translationX && x10 <= viewD.getRight() + translationX && y7 >= viewD.getTop() + translationY && y7 <= viewD.getBottom() + translationY) {
                        return viewD;
                    }
                }
            }
        } while (!o(view, x10, y7, fVar.f2816i, fVar.f2817j));
        return view;
    }

    public final void n(float[] fArr) {
        if ((this.f2786o & 12) != 0) {
            fArr[0] = (this.f2781j + this.f2779h) - this.f2774c.f2453a.getLeft();
        } else {
            fArr[0] = this.f2774c.f2453a.getTranslationX();
        }
        if ((this.f2786o & 3) != 0) {
            fArr[1] = (this.f2782k + this.f2780i) - this.f2774c.f2453a.getTop();
        } else {
            fArr[1] = this.f2774c.f2453a.getTranslationY();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.util.ArrayList, java.util.List<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.util.ArrayList, java.util.List, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v36, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r2v37, types: [java.util.ArrayList, java.util.List<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList, java.util.List<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$b0>] */
    /* JADX WARN: Type inference failed for: r3v20, types: [java.util.ArrayList, java.util.List<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r3v8, types: [androidx.recyclerview.widget.RecyclerView$m] */
    public final void p(RecyclerView.b0 b0Var) {
        ?? r10;
        ?? r16;
        int bottom;
        int iAbs;
        int top;
        int iAbs2;
        int left;
        int iAbs3;
        int right;
        ?? r17;
        int iAbs4;
        if (!this.f2789r.isLayoutRequested() && this.f2785n == 2) {
            Objects.requireNonNull(this.f2784m);
            int i10 = (int) (this.f2781j + this.f2779h);
            int i11 = (int) (this.f2782k + this.f2780i);
            if (Math.abs(i11 - b0Var.f2453a.getTop()) >= b0Var.f2453a.getHeight() * 0.5f || Math.abs(i10 - b0Var.f2453a.getLeft()) >= b0Var.f2453a.getWidth() * 0.5f) {
                ?? r11 = this.f2792u;
                if (r11 == 0) {
                    this.f2792u = new ArrayList();
                    this.f2793v = new ArrayList();
                } else {
                    r11.clear();
                    this.f2793v.clear();
                }
                Objects.requireNonNull(this.f2784m);
                int iRound = Math.round(this.f2781j + this.f2779h) - 0;
                int iRound2 = Math.round(this.f2782k + this.f2780i) - 0;
                int width = b0Var.f2453a.getWidth() + iRound + 0;
                int height = b0Var.f2453a.getHeight() + iRound2 + 0;
                int i12 = (iRound + width) / 2;
                int i13 = (iRound2 + height) / 2;
                RecyclerView.m layoutManager = this.f2789r.getLayoutManager();
                int iZ = layoutManager.z();
                int i14 = 0;
                while (i14 < iZ) {
                    View viewY = layoutManager.y(i14);
                    if (viewY != b0Var.f2453a && viewY.getBottom() >= iRound2 && viewY.getTop() <= height && viewY.getRight() >= iRound && viewY.getLeft() <= width) {
                        RecyclerView.b0 b0VarJ = this.f2789r.J(viewY);
                        Objects.requireNonNull(this.f2784m);
                        int iAbs5 = Math.abs(i12 - ((viewY.getRight() + viewY.getLeft()) / 2));
                        int iAbs6 = Math.abs(i13 - ((viewY.getBottom() + viewY.getTop()) / 2));
                        int i15 = (iAbs6 * iAbs6) + (iAbs5 * iAbs5);
                        int size = this.f2792u.size();
                        int i16 = 0;
                        int i17 = 0;
                        while (i16 < size) {
                            int i18 = size;
                            if (i15 <= ((Integer) this.f2793v.get(i16)).intValue()) {
                                break;
                            }
                            i17++;
                            i16++;
                            size = i18;
                        }
                        this.f2792u.add(i17, b0VarJ);
                        this.f2793v.add(i17, Integer.valueOf(i15));
                    }
                    i14++;
                    iRound = iRound;
                    iRound2 = iRound2;
                }
                ?? r12 = this.f2792u;
                if (r12.size() == 0) {
                    return;
                }
                Objects.requireNonNull(this.f2784m);
                int width2 = b0Var.f2453a.getWidth() + i10;
                int height2 = b0Var.f2453a.getHeight() + i11;
                int left2 = i10 - b0Var.f2453a.getLeft();
                int top2 = i11 - b0Var.f2453a.getTop();
                int size2 = r12.size();
                int i19 = -1;
                RecyclerView.b0 b0Var2 = null;
                int i20 = 0;
                while (i20 < size2) {
                    RecyclerView.b0 b0Var3 = (RecyclerView.b0) r10.get(i20);
                    if (left2 <= 0 || (right = b0Var3.f2453a.getRight() - width2) >= 0) {
                        r10 = r12;
                        r10 = r12;
                        r16 = r10;
                    } else {
                        r17 = r10;
                        if (b0Var3.f2453a.getRight() > b0Var.f2453a.getRight() && (iAbs4 = Math.abs(right)) > i19) {
                            r10 = r12;
                            r16 = r17;
                            r16 = r17;
                            i19 = iAbs4;
                            b0Var2 = b0Var3;
                            r16 = r17;
                        }
                    }
                    if (left2 < 0 && (left = b0Var3.f2453a.getLeft() - i10) > 0 && b0Var3.f2453a.getLeft() < b0Var.f2453a.getLeft() && (iAbs3 = Math.abs(left)) > i19) {
                        i19 = iAbs3;
                        b0Var2 = b0Var3;
                    }
                    if (top2 < 0 && (top = b0Var3.f2453a.getTop() - i11) > 0 && b0Var3.f2453a.getTop() < b0Var.f2453a.getTop() && (iAbs2 = Math.abs(top)) > i19) {
                        i19 = iAbs2;
                        b0Var2 = b0Var3;
                    }
                    if (top2 > 0 && (bottom = b0Var3.f2453a.getBottom() - height2) < 0 && b0Var3.f2453a.getBottom() > b0Var.f2453a.getBottom() && (iAbs = Math.abs(bottom)) > i19) {
                        i19 = iAbs;
                        b0Var2 = b0Var3;
                    }
                    i20++;
                    r10 = r16;
                }
                if (b0Var2 == null) {
                    r10 = r12;
                    this.f2792u.clear();
                    this.f2793v.clear();
                    return;
                }
                int iG = b0Var2.g();
                b0Var.g();
                this.f2784m.h(this.f2789r, b0Var, b0Var2);
                d dVar = this.f2784m;
                RecyclerView recyclerView = this.f2789r;
                Objects.requireNonNull(dVar);
                ?? layoutManager2 = recyclerView.getLayoutManager();
                if (layoutManager2 instanceof g) {
                    r10 = r12;
                    ((g) layoutManager2).b(b0Var.f2453a, b0Var2.f2453a);
                    return;
                }
                if (layoutManager2.g()) {
                    if (layoutManager2.D(b0Var2.f2453a) <= recyclerView.getPaddingLeft()) {
                        r10 = r12;
                        recyclerView.h0(iG);
                    }
                    r10 = r12;
                    if (layoutManager2.E(b0Var2.f2453a) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                        recyclerView.h0(iG);
                    }
                }
                r10 = r12;
                if (layoutManager2.h()) {
                    if (layoutManager2.F(b0Var2.f2453a) <= recyclerView.getPaddingTop()) {
                        recyclerView.h0(iG);
                    }
                    if (layoutManager2.C(b0Var2.f2453a) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                        recyclerView.h0(iG);
                    }
                }
            }
        }
    }

    public final void q(View view) {
        if (view == this.f2794w) {
            this.f2794w = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ab  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void r(RecyclerView.b0 b0Var, int i10) {
        int i11;
        boolean z10;
        boolean z11;
        RecyclerView.b0 b0Var2;
        int iK;
        int i12;
        float fSignum;
        float fSignum2;
        int i13;
        long j10;
        if (b0Var == this.f2774c && i10 == this.f2785n) {
            return;
        }
        this.B = Long.MIN_VALUE;
        int i14 = this.f2785n;
        l(b0Var, true);
        this.f2785n = i10;
        if (i10 == 2) {
            if (b0Var == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.f2794w = b0Var.f2453a;
        }
        int i15 = (1 << ((i10 * 8) + 8)) - 1;
        RecyclerView.b0 b0Var3 = this.f2774c;
        if (b0Var3 != null) {
            if (b0Var3.f2453a.getParent() != null) {
                if (i14 == 2) {
                    i12 = 0;
                } else {
                    if (this.f2785n == 2) {
                        iK = 0;
                    } else {
                        this.f2784m.e(this.f2789r, b0Var3);
                        d dVar = this.f2784m;
                        RecyclerView recyclerView = this.f2789r;
                        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                        int iB = (dVar.b(204835, j0.a0.e.d(recyclerView)) & 65280) >> 8;
                        if (iB == 0) {
                            iK = 0;
                        } else if (Math.abs(this.f2779h) > Math.abs(this.f2780i)) {
                            iK = i(iB);
                            if (iK <= 0) {
                                iK = k(iB);
                                if (iK <= 0) {
                                    iK = 0;
                                }
                            } else if ((32 & iK) == 0) {
                                iK = d.c(iK, j0.a0.e.d(this.f2789r));
                            }
                        } else {
                            iK = k(iB);
                            if (iK <= 0) {
                                iK = i(iB);
                                if (iK <= 0) {
                                    iK = 0;
                                } else if ((32 & iK) == 0) {
                                    iK = d.c(iK, j0.a0.e.d(this.f2789r));
                                }
                            }
                        }
                    }
                    i12 = iK;
                }
                VelocityTracker velocityTracker = this.f2791t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f2791t = null;
                }
                if (i12 == 1 || i12 == 2) {
                    fSignum = Math.signum(this.f2780i) * this.f2789r.getHeight();
                    fSignum2 = 0.0f;
                } else if (i12 == 4 || i12 == 8 || i12 == 16 || i12 == 32) {
                    fSignum2 = Math.signum(this.f2779h) * this.f2789r.getWidth();
                    fSignum = 0.0f;
                } else {
                    fSignum2 = 0.0f;
                    fSignum = 0.0f;
                }
                if (i14 == 2) {
                    i13 = 8;
                } else {
                    i13 = i12 > 0 ? 2 : 4;
                }
                n(this.f2773b);
                float[] fArr = this.f2773b;
                int i16 = i13;
                i11 = 8;
                c cVar = new c(b0Var3, i13, i14, fArr[0], fArr[1], fSignum2, fSignum, i12, b0Var3);
                d dVar2 = this.f2784m;
                RecyclerView recyclerView2 = this.f2789r;
                Objects.requireNonNull(dVar2);
                RecyclerView.j itemAnimator = recyclerView2.getItemAnimator();
                if (itemAnimator == null) {
                    j10 = i16 == 8 ? 200L : 250L;
                } else {
                    j10 = i16 == 8 ? itemAnimator.f2480e : itemAnimator.f2479d;
                }
                cVar.f2814g.setDuration(j10);
                this.f2787p.add(cVar);
                b0Var3.w(false);
                cVar.f2814g.start();
                b0Var2 = null;
                z10 = true;
            } else {
                i11 = 8;
                q(b0Var3.f2453a);
                this.f2784m.a(this.f2789r, b0Var3);
                b0Var2 = null;
                z10 = false;
            }
            this.f2774c = b0Var2;
        } else {
            i11 = 8;
            z10 = false;
        }
        if (b0Var != null) {
            this.f2786o = (this.f2784m.d(this.f2789r, b0Var) & i15) >> (this.f2785n * i11);
            this.f2781j = b0Var.f2453a.getLeft();
            this.f2782k = b0Var.f2453a.getTop();
            this.f2774c = b0Var;
            if (i10 == 2) {
                z11 = false;
                b0Var.f2453a.performHapticFeedback(0);
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        ViewParent parent = this.f2789r.getParent();
        if (parent != null) {
            if (this.f2774c != null) {
                z11 = true;
            }
            parent.requestDisallowInterceptTouchEvent(z11);
        }
        if (!z10) {
            this.f2789r.getLayoutManager().f2492h = true;
        }
        this.f2784m.i(this.f2774c, this.f2785n);
        this.f2789r.invalidate();
    }

    public final void s(MotionEvent motionEvent, int i10, int i11) {
        float x10 = motionEvent.getX(i11);
        float y7 = motionEvent.getY(i11);
        float f10 = x10 - this.f2775d;
        this.f2779h = f10;
        this.f2780i = y7 - this.f2776e;
        if ((i10 & 4) == 0) {
            this.f2779h = Math.max(0.0f, f10);
        }
        if ((i10 & 8) == 0) {
            this.f2779h = Math.min(0.0f, this.f2779h);
        }
        if ((i10 & 1) == 0) {
            this.f2780i = Math.max(0.0f, this.f2780i);
        }
        if ((i10 & 2) == 0) {
            this.f2780i = Math.min(0.0f, this.f2780i);
        }
    }
}
