package q5;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: HeaderBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<V extends View> extends d<V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f13625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public OverScroller f13626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public VelocityTracker f13631i;

    /* JADX INFO: compiled from: HeaderBehavior.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final CoordinatorLayout f13632h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final V f13633i;

        public a(CoordinatorLayout coordinatorLayout, V v10) {
            this.f13632h = coordinatorLayout;
            this.f13633i = v10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OverScroller overScroller;
            if (this.f13633i == null || (overScroller = b.this.f13626d) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                b.this.z(this.f13632h, this.f13633i);
                return;
            }
            b bVar = b.this;
            bVar.B(this.f13632h, this.f13633i, bVar.f13626d.getCurrY());
            V v10 = this.f13633i;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.m(v10, this);
        }
    }

    public b() {
        this.f13628f = -1;
        this.f13630h = -1;
    }

    public final int A(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12) {
        return C(coordinatorLayout, v10, y() - i10, i11, i12);
    }

    public final int B(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        return C(coordinatorLayout, v10, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public int C(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12) {
        int iG;
        int iS = s();
        if (i11 == 0 || iS < i11 || iS > i12 || iS == (iG = o.g(i10, i11, i12))) {
            return 0;
        }
        u(iG);
        return iS - iG;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean g(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f13630h < 0) {
            this.f13630h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f13627e) {
            int i10 = this.f13628f;
            if (i10 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y7 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y7 - this.f13629g) > this.f13630h) {
                this.f13629g = y7;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f13628f = -1;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            boolean z10 = v(v10) && coordinatorLayout.q(v10, x10, y10);
            this.f13627e = z10;
            if (z10) {
                this.f13629g = y10;
                this.f13628f = motionEvent.getPointerId(0);
                if (this.f13631i == null) {
                    this.f13631i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f13626d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f13626d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f13631i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:47:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean r(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        boolean z10;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f13628f);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y7 = (int) motionEvent.getY(iFindPointerIndex);
                int i10 = this.f13629g - y7;
                this.f13629g = y7;
                A(coordinatorLayout, v10, i10, w(v10), 0);
            } else if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i11 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.f13628f = motionEvent.getPointerId(i11);
                    this.f13629g = (int) (motionEvent.getY(i11) + 0.5f);
                }
            }
            z10 = false;
            velocityTracker2 = this.f13631i;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.f13627e || z10;
        }
        VelocityTracker velocityTracker3 = this.f13631i;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.f13631i.computeCurrentVelocity(1000);
            float yVelocity = this.f13631i.getYVelocity(this.f13628f);
            int i12 = -x(v10);
            a aVar = this.f13625c;
            if (aVar != null) {
                v10.removeCallbacks(aVar);
                this.f13625c = null;
            }
            if (this.f13626d == null) {
                this.f13626d = new OverScroller(v10.getContext());
            }
            this.f13626d.fling(0, s(), 0, Math.round(yVelocity), 0, 0, i12, 0);
            if (this.f13626d.computeScrollOffset()) {
                a aVar2 = new a(coordinatorLayout, v10);
                this.f13625c = aVar2;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.m(v10, aVar2);
            } else {
                z(coordinatorLayout, v10);
            }
            z10 = true;
        }
        this.f13627e = false;
        this.f13628f = -1;
        velocityTracker = this.f13631i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f13631i = null;
        }
        velocityTracker2 = this.f13631i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f13627e) {
            return true;
        }
        z10 = false;
        this.f13627e = false;
        this.f13628f = -1;
        velocityTracker = this.f13631i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f13631i = null;
        }
        velocityTracker2 = this.f13631i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f13627e) {
            return true;
        }
    }

    public boolean v(V v10) {
        return false;
    }

    public int w(V v10) {
        return -v10.getHeight();
    }

    public int x(V v10) {
        return v10.getHeight();
    }

    public int y() {
        return s();
    }

    public void z(CoordinatorLayout coordinatorLayout, V v10) {
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13628f = -1;
        this.f13630h = -1;
    }
}
