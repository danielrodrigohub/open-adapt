package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import android.view.View;
import java.util.WeakHashMap;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: FastScroller.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends RecyclerView.l implements RecyclerView.q {
    public static final int[] D = {R.attr.state_pressed};
    public static final int[] E = new int[0];
    public int A;
    public final a B;
    public final b C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f2728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Drawable f2729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final StateListDrawable f2732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f2733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2737l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2738m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2739n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2740o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2741p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public RecyclerView f2744s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ValueAnimator f2751z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2742q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2743r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2745t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2746u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2747v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2748w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f2749x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f2750y = new int[2];

    /* JADX INFO: compiled from: FastScroller.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            q qVar = q.this;
            int i10 = qVar.A;
            if (i10 == 1) {
                qVar.f2751z.cancel();
            } else if (i10 != 2) {
                return;
            }
            qVar.A = 3;
            ValueAnimator valueAnimator = qVar.f2751z;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            qVar.f2751z.setDuration(HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR);
            qVar.f2751z.start();
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    public class b extends RecyclerView.r {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public final void b(RecyclerView recyclerView, int i10, int i11) {
            q qVar = q.this;
            int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            int iComputeVerticalScrollRange = qVar.f2744s.computeVerticalScrollRange();
            int i12 = qVar.f2743r;
            qVar.f2745t = iComputeVerticalScrollRange - i12 > 0 && i12 >= qVar.f2726a;
            int iComputeHorizontalScrollRange = qVar.f2744s.computeHorizontalScrollRange();
            int i13 = qVar.f2742q;
            boolean z10 = iComputeHorizontalScrollRange - i13 > 0 && i13 >= qVar.f2726a;
            qVar.f2746u = z10;
            boolean z11 = qVar.f2745t;
            if (!z11 && !z10) {
                if (qVar.f2747v != 0) {
                    qVar.n(0);
                    return;
                }
                return;
            }
            if (z11) {
                float f10 = i12;
                qVar.f2737l = (int) ((((f10 / 2.0f) + iComputeVerticalScrollOffset) * f10) / iComputeVerticalScrollRange);
                qVar.f2736k = Math.min(i12, (i12 * i12) / iComputeVerticalScrollRange);
            }
            if (qVar.f2746u) {
                float f11 = iComputeHorizontalScrollOffset;
                float f12 = i13;
                qVar.f2740o = (int) ((((f12 / 2.0f) + f11) * f12) / iComputeHorizontalScrollRange);
                qVar.f2739n = Math.min(i13, (i13 * i13) / iComputeHorizontalScrollRange);
            }
            int i14 = qVar.f2747v;
            if (i14 == 0 || i14 == 1) {
                qVar.n(1);
            }
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    public class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2754a = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f2754a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f2754a) {
                this.f2754a = false;
                return;
            }
            if (((Float) q.this.f2751z.getAnimatedValue()).floatValue() == 0.0f) {
                q qVar = q.this;
                qVar.A = 0;
                qVar.n(0);
            } else {
                q qVar2 = q.this;
                qVar2.A = 2;
                qVar2.l();
            }
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            q.this.f2728c.setAlpha(iFloatValue);
            q.this.f2729d.setAlpha(iFloatValue);
            q.this.l();
        }
    }

    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    public q(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2751z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new a();
        b bVar = new b();
        this.C = bVar;
        this.f2728c = stateListDrawable;
        this.f2729d = drawable;
        this.f2732g = stateListDrawable2;
        this.f2733h = drawable2;
        this.f2730e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f2731f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f2734i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f2735j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f2726a = i11;
        this.f2727b = i12;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.addUpdateListener(new d());
        RecyclerView recyclerView2 = this.f2744s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.c0(this);
            RecyclerView recyclerView3 = this.f2744s;
            recyclerView3.f2437x.remove(this);
            if (recyclerView3.f2439y == this) {
                recyclerView3.f2439y = null;
            }
            ?? r10 = this.f2744s.f2424q0;
            if (r10 != 0) {
                r10.remove(bVar);
            }
            i();
        }
        this.f2744s = recyclerView;
        if (recyclerView != null) {
            recyclerView.g(this);
            this.f2744s.f2437x.add(this);
            this.f2744s.h(bVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public final void a(MotionEvent motionEvent) {
        if (this.f2747v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zK = k(motionEvent.getX(), motionEvent.getY());
            boolean zJ = j(motionEvent.getX(), motionEvent.getY());
            if (zK || zJ) {
                if (zJ) {
                    this.f2748w = 1;
                    this.f2741p = (int) motionEvent.getX();
                } else if (zK) {
                    this.f2748w = 2;
                    this.f2738m = (int) motionEvent.getY();
                }
                n(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f2747v == 2) {
            this.f2738m = 0.0f;
            this.f2741p = 0.0f;
            n(1);
            this.f2748w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f2747v == 2) {
            o();
            if (this.f2748w == 1) {
                float x10 = motionEvent.getX();
                int[] iArr = this.f2750y;
                int i10 = this.f2727b;
                iArr[0] = i10;
                iArr[1] = this.f2742q - i10;
                float fMax = Math.max(iArr[0], Math.min(iArr[1], x10));
                if (Math.abs(this.f2740o - fMax) >= 2.0f) {
                    int iM = m(this.f2741p, fMax, iArr, this.f2744s.computeHorizontalScrollRange(), this.f2744s.computeHorizontalScrollOffset(), this.f2742q);
                    if (iM != 0) {
                        this.f2744s.scrollBy(iM, 0);
                    }
                    this.f2741p = fMax;
                }
            }
            if (this.f2748w == 2) {
                float y7 = motionEvent.getY();
                int[] iArr2 = this.f2749x;
                int i11 = this.f2727b;
                iArr2[0] = i11;
                iArr2[1] = this.f2743r - i11;
                float fMax2 = Math.max(iArr2[0], Math.min(iArr2[1], y7));
                if (Math.abs(this.f2737l - fMax2) < 2.0f) {
                    return;
                }
                int iM2 = m(this.f2738m, fMax2, iArr2, this.f2744s.computeVerticalScrollRange(), this.f2744s.computeVerticalScrollOffset(), this.f2743r);
                if (iM2 != 0) {
                    this.f2744s.scrollBy(0, iM2);
                }
                this.f2738m = fMax2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public final boolean c(MotionEvent motionEvent) {
        int i10 = this.f2747v;
        if (i10 == 1) {
            boolean zK = k(motionEvent.getX(), motionEvent.getY());
            boolean zJ = j(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (zK || zJ)) {
                if (zJ) {
                    this.f2748w = 1;
                    this.f2741p = (int) motionEvent.getX();
                } else if (zK) {
                    this.f2748w = 2;
                    this.f2738m = (int) motionEvent.getY();
                }
                n(2);
                return true;
            }
        } else if (i10 == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public final void e(boolean z10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        if (this.f2742q != this.f2744s.getWidth() || this.f2743r != this.f2744s.getHeight()) {
            this.f2742q = this.f2744s.getWidth();
            this.f2743r = this.f2744s.getHeight();
            n(0);
            return;
        }
        if (this.A != 0) {
            if (this.f2745t) {
                int i10 = this.f2742q;
                int i11 = this.f2730e;
                int i12 = i10 - i11;
                int i13 = this.f2737l;
                int i14 = this.f2736k;
                int i15 = i13 - (i14 / 2);
                this.f2728c.setBounds(0, 0, i11, i14);
                this.f2729d.setBounds(0, 0, this.f2731f, this.f2743r);
                RecyclerView recyclerView2 = this.f2744s;
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                if (j0.a0.e.d(recyclerView2) == 1) {
                    this.f2729d.draw(canvas);
                    canvas.translate(this.f2730e, i15);
                    canvas.scale(-1.0f, 1.0f);
                    this.f2728c.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-this.f2730e, -i15);
                } else {
                    canvas.translate(i12, 0.0f);
                    this.f2729d.draw(canvas);
                    canvas.translate(0.0f, i15);
                    this.f2728c.draw(canvas);
                    canvas.translate(-i12, -i15);
                }
            }
            if (this.f2746u) {
                int i16 = this.f2743r;
                int i17 = this.f2734i;
                int i18 = i16 - i17;
                int i19 = this.f2740o;
                int i20 = this.f2739n;
                int i21 = i19 - (i20 / 2);
                this.f2732g.setBounds(0, 0, i20, i17);
                this.f2733h.setBounds(0, 0, this.f2742q, this.f2735j);
                canvas.translate(0.0f, i18);
                this.f2733h.draw(canvas);
                canvas.translate(i21, 0.0f);
                this.f2732g.draw(canvas);
                canvas.translate(-i21, -i18);
            }
        }
    }

    public final void i() {
        this.f2744s.removeCallbacks(this.B);
    }

    public final boolean j(float f10, float f11) {
        if (f11 >= this.f2743r - this.f2734i) {
            int i10 = this.f2740o;
            int i11 = this.f2739n;
            if (f10 >= i10 - (i11 / 2) && f10 <= (i11 / 2) + i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean k(float f10, float f11) {
        RecyclerView recyclerView = this.f2744s;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        if (j0.a0.e.d(recyclerView) == 1) {
            if (f10 > this.f2730e) {
                return false;
            }
        } else if (f10 < this.f2742q - this.f2730e) {
            return false;
        }
        int i10 = this.f2737l;
        int i11 = this.f2736k;
        return f11 >= ((float) (i10 - (i11 / 2))) && f11 <= ((float) ((i11 / 2) + i10));
    }

    public final void l() {
        this.f2744s.invalidate();
    }

    public final int m(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    public final void n(int i10) {
        if (i10 == 2 && this.f2747v != 2) {
            this.f2728c.setState(D);
            i();
        }
        if (i10 == 0) {
            l();
        } else {
            o();
        }
        if (this.f2747v == 2 && i10 != 2) {
            this.f2728c.setState(E);
            i();
            this.f2744s.postDelayed(this.B, 1200);
        } else if (i10 == 1) {
            i();
            this.f2744s.postDelayed(this.B, 1500);
        }
        this.f2747v = i10;
    }

    public final void o() {
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 != 3) {
                return;
            } else {
                this.f2751z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f2751z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f2751z.setDuration(500L);
        this.f2751z.setStartDelay(0L);
        this.f2751z.start();
    }
}
