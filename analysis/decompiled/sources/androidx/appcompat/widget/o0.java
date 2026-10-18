package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

/* JADX INFO: compiled from: ForwardingListener.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class o0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f1386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1388j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f1389k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f1390l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b f1391m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1392n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1393o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int[] f1394p = new int[2];

    /* JADX INFO: compiled from: ForwardingListener.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewParent parent = o0.this.f1389k.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: compiled from: ForwardingListener.java */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            o0 o0Var = o0.this;
            o0Var.a();
            View view = o0Var.f1389k;
            if (view.isEnabled() && !view.isLongClickable() && o0Var.c()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                o0Var.f1392n = true;
            }
        }
    }

    public o0(View view) {
        this.f1389k = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1386h = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1387i = tapTimeout;
        this.f1388j = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        b bVar = this.f1391m;
        if (bVar != null) {
            this.f1389k.removeCallbacks(bVar);
        }
        a aVar = this.f1390l;
        if (aVar != null) {
            this.f1389k.removeCallbacks(aVar);
        }
    }

    public abstract k.f b();

    public abstract boolean c();

    public boolean d() {
        k.f fVarB = b();
        if (fVarB == null || !fVarB.c()) {
            return true;
        }
        fVarB.dismiss();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d4  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        m0 m0Var;
        boolean z13 = this.f1392n;
        if (z13) {
            View view2 = this.f1389k;
            k.f fVarB = b();
            if (fVarB == null || !fVarB.c() || (m0Var = (m0) fVarB.g()) == null || !m0Var.isShown()) {
                z12 = false;
            } else {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f1394p;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                int[] iArr2 = this.f1394p;
                m0Var.getLocationOnScreen(iArr2);
                motionEventObtainNoHistory.offsetLocation(-iArr2[0], -iArr2[1]);
                boolean zB = m0Var.b(motionEventObtainNoHistory, this.f1393o);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z14 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (zB && z14) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            z11 = z12 || !d();
        } else {
            View view3 = this.f1389k;
            if (view3.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    this.f1393o = motionEvent.getPointerId(0);
                    if (this.f1390l == null) {
                        this.f1390l = new a();
                    }
                    view3.postDelayed(this.f1390l, this.f1387i);
                    if (this.f1391m == null) {
                        this.f1391m = new b();
                    }
                    view3.postDelayed(this.f1391m, this.f1388j);
                } else if (actionMasked2 == 1) {
                    a();
                } else if (actionMasked2 == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f1393o);
                    if (iFindPointerIndex >= 0) {
                        float x10 = motionEvent.getX(iFindPointerIndex);
                        float y7 = motionEvent.getY(iFindPointerIndex);
                        float f10 = this.f1386h;
                        float f11 = -f10;
                        if (!(x10 >= f11 && y7 >= f11 && x10 < ((float) (view3.getRight() - view3.getLeft())) + f10 && y7 < ((float) (view3.getBottom() - view3.getTop())) + f10)) {
                            a();
                            view3.getParent().requestDisallowInterceptTouchEvent(true);
                            z10 = true;
                        }
                    }
                } else if (actionMasked2 == 3) {
                    a();
                }
                z10 = false;
            } else {
                z10 = false;
            }
            z11 = z10 && c();
            if (z11) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1389k.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f1392n = z11;
        return z11 || z13;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f1392n = false;
        this.f1393o = -1;
        a aVar = this.f1390l;
        if (aVar != null) {
            this.f1389k.removeCallbacks(aVar);
        }
    }
}
