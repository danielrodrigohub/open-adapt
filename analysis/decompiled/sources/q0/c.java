package q0;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.newrelic.agent.android.analytics.EventManagerImpl;
import j0.a0;
import j0.g0;
import java.util.Arrays;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ViewDragHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final a f13515v = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13517b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float[] f13519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f13520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f13521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f13522g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f13523h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f13524i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f13525j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13526k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f13527l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f13528m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f13529n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13530o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public OverScroller f13531p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AbstractC0239c f13532q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f13533r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f13534s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ViewGroup f13535t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13518c = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final b f13536u = new b();

    /* JADX INFO: compiled from: ViewDragHelper.java */
    public class a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* JADX INFO: compiled from: ViewDragHelper.java */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.this.r(0);
        }
    }

    /* JADX INFO: renamed from: q0.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ViewDragHelper.java */
    public static abstract class AbstractC0239c {
        public abstract int a(View view, int i10);

        public abstract int b(View view, int i10);

        public int c(View view) {
            return 0;
        }

        public int d() {
            return 0;
        }

        public void e(View view, int i10) {
        }

        public abstract void f(int i10);

        public abstract void g(View view, int i10, int i11);

        public abstract void h(View view, float f10, float f11);

        public abstract boolean i(View view, int i10);
    }

    public c(Context context, ViewGroup viewGroup, AbstractC0239c abstractC0239c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0239c == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f13535t = viewGroup;
        this.f13532q = abstractC0239c;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f13530o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f13517b = viewConfiguration.getScaledTouchSlop();
        this.f13528m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f13529n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f13531p = new OverScroller(context, f13515v);
    }

    public final void a() {
        this.f13518c = -1;
        float[] fArr = this.f13519d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f13520e, 0.0f);
            Arrays.fill(this.f13521f, 0.0f);
            Arrays.fill(this.f13522g, 0.0f);
            Arrays.fill(this.f13523h, 0);
            Arrays.fill(this.f13524i, 0);
            Arrays.fill(this.f13525j, 0);
            this.f13526k = 0;
        }
        VelocityTracker velocityTracker = this.f13527l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f13527l = null;
        }
    }

    public final void b(View view, int i10) {
        if (view.getParent() != this.f13535t) {
            StringBuilder sbC = a0.b.c("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            sbC.append(this.f13535t);
            sbC.append(")");
            throw new IllegalArgumentException(sbC.toString());
        }
        this.f13533r = view;
        this.f13518c = i10;
        this.f13532q.e(view, i10);
        r(1);
    }

    public final boolean c(float f10, float f11, int i10, int i11) {
        float fAbs = Math.abs(f10);
        float fAbs2 = Math.abs(f11);
        if ((this.f13523h[i10] & i11) != i11 || (0 & i11) == 0 || (this.f13525j[i10] & i11) == i11 || (this.f13524i[i10] & i11) == i11) {
            return false;
        }
        int i12 = this.f13517b;
        if (fAbs <= i12 && fAbs2 <= i12) {
            return false;
        }
        if (fAbs < fAbs2 * 0.5f) {
            Objects.requireNonNull(this.f13532q);
        }
        return (this.f13524i[i10] & i11) == 0 && fAbs > ((float) this.f13517b);
    }

    public final boolean d(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        boolean z10 = this.f13532q.c(view) > 0;
        boolean z11 = this.f13532q.d() > 0;
        if (z10 && z11) {
            float f12 = (f11 * f11) + (f10 * f10);
            int i10 = this.f13517b;
            return f12 > ((float) (i10 * i10));
        }
        if (z10) {
            return Math.abs(f10) > ((float) this.f13517b);
        }
        return z11 && Math.abs(f11) > ((float) this.f13517b);
    }

    public final float e(float f10, float f11, float f12) {
        float fAbs = Math.abs(f10);
        if (fAbs < f11) {
            return 0.0f;
        }
        if (fAbs > f12) {
            return f10 > 0.0f ? f12 : -f12;
        }
        return f10;
    }

    public final void f(int i10) {
        float[] fArr = this.f13519d;
        if (fArr != null) {
            int i11 = this.f13526k;
            int i12 = 1 << i10;
            if ((i12 & i11) != 0) {
                fArr[i10] = 0.0f;
                this.f13520e[i10] = 0.0f;
                this.f13521f[i10] = 0.0f;
                this.f13522g[i10] = 0.0f;
                this.f13523h[i10] = 0;
                this.f13524i[i10] = 0;
                this.f13525j[i10] = 0;
                this.f13526k = (~i12) & i11;
            }
        }
    }

    public final int g(int i10, int i11, int i12) {
        if (i10 == 0) {
            return 0;
        }
        int width = this.f13535t.getWidth();
        float f10 = width / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i10) / width) - 0.5f) * 0.47123894f)) * f10) + f10;
        int iAbs = Math.abs(i11);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i10) / i12) + 1.0f) * 256.0f), EventManagerImpl.DEFAULT_MAX_EVENT_BUFFER_TIME);
    }

    public final boolean h() {
        if (this.f13516a == 2) {
            boolean zComputeScrollOffset = this.f13531p.computeScrollOffset();
            int currX = this.f13531p.getCurrX();
            int currY = this.f13531p.getCurrY();
            int left = currX - this.f13533r.getLeft();
            int top = currY - this.f13533r.getTop();
            if (left != 0) {
                View view = this.f13533r;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f13533r;
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f13532q.g(this.f13533r, currX, currY);
            }
            if (zComputeScrollOffset && currX == this.f13531p.getFinalX() && currY == this.f13531p.getFinalY()) {
                this.f13531p.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f13535t.post(this.f13536u);
            }
        }
        return this.f13516a == 2;
    }

    public final void i(float f10, float f11) {
        this.f13534s = true;
        this.f13532q.h(this.f13533r, f10, f11);
        this.f13534s = false;
        if (this.f13516a == 1) {
            r(0);
        }
    }

    public final View j(int i10, int i11) {
        for (int childCount = this.f13535t.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.f13535t;
            Objects.requireNonNull(this.f13532q);
            View childAt = viewGroup.getChildAt(childCount);
            if (i10 >= childAt.getLeft() && i10 < childAt.getRight() && i11 >= childAt.getTop() && i11 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean k(int i10, int i11, int i12, int i13) {
        float f10;
        float f11;
        float f12;
        float f13;
        int left = this.f13533r.getLeft();
        int top = this.f13533r.getTop();
        int i14 = i10 - left;
        int i15 = i11 - top;
        if (i14 == 0 && i15 == 0) {
            this.f13531p.abortAnimation();
            r(0);
            return false;
        }
        View view = this.f13533r;
        int i16 = (int) this.f13529n;
        int i17 = (int) this.f13528m;
        int iAbs = Math.abs(i12);
        if (iAbs < i16) {
            i12 = 0;
        } else if (iAbs > i17) {
            i12 = i12 > 0 ? i17 : -i17;
        }
        int i18 = (int) this.f13529n;
        int i19 = (int) this.f13528m;
        int iAbs2 = Math.abs(i13);
        if (iAbs2 < i18) {
            i13 = 0;
        } else if (iAbs2 > i19) {
            i13 = i13 > 0 ? i19 : -i19;
        }
        int iAbs3 = Math.abs(i14);
        int iAbs4 = Math.abs(i15);
        int iAbs5 = Math.abs(i12);
        int iAbs6 = Math.abs(i13);
        int i20 = iAbs5 + iAbs6;
        int i21 = iAbs3 + iAbs4;
        if (i12 != 0) {
            f10 = iAbs5;
            f11 = i20;
        } else {
            f10 = iAbs3;
            f11 = i21;
        }
        float f14 = f10 / f11;
        if (i13 != 0) {
            f12 = iAbs6;
            f13 = i20;
        } else {
            f12 = iAbs4;
            f13 = i21;
        }
        this.f13531p.startScroll(left, top, i14, i15, (int) ((g(i15, i13, this.f13532q.d()) * (f12 / f13)) + (g(i14, i12, this.f13532q.c(view)) * f14)));
        r(2);
        return true;
    }

    public final boolean l(int i10) {
        if ((this.f13526k & (1 << i10)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i10 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void m(MotionEvent motionEvent) {
        int i10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f13527l == null) {
            this.f13527l = VelocityTracker.obtain();
        }
        this.f13527l.addMovement(motionEvent);
        int i11 = 0;
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y7 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewJ = j((int) x10, (int) y7);
            p(x10, y7, pointerId);
            u(viewJ, pointerId);
            if ((this.f13523h[pointerId] & 0) != 0) {
                Objects.requireNonNull(this.f13532q);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f13516a == 1) {
                n();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.f13516a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                while (i11 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i11);
                    if (l(pointerId2)) {
                        float x11 = motionEvent.getX(i11);
                        float y10 = motionEvent.getY(i11);
                        float f10 = x11 - this.f13519d[pointerId2];
                        float f11 = y10 - this.f13520e[pointerId2];
                        o(f10, f11, pointerId2);
                        if (this.f13516a != 1) {
                            View viewJ2 = j((int) x11, (int) y10);
                            if (d(viewJ2, f10, f11) && u(viewJ2, pointerId2)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i11++;
                }
                q(motionEvent);
                return;
            }
            if (l(this.f13518c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f13518c);
                float x12 = motionEvent.getX(iFindPointerIndex);
                float y11 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f13521f;
                int i12 = this.f13518c;
                int i13 = (int) (x12 - fArr[i12]);
                int i14 = (int) (y11 - this.f13522g[i12]);
                int left = this.f13533r.getLeft() + i13;
                int top = this.f13533r.getTop() + i14;
                int left2 = this.f13533r.getLeft();
                int top2 = this.f13533r.getTop();
                if (i13 != 0) {
                    left = this.f13532q.a(this.f13533r, left);
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    this.f13533r.offsetLeftAndRight(left - left2);
                }
                if (i14 != 0) {
                    top = this.f13532q.b(this.f13533r, top);
                    WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                    this.f13533r.offsetTopAndBottom(top - top2);
                }
                if (i13 != 0 || i14 != 0) {
                    this.f13532q.g(this.f13533r, left, top);
                }
                q(motionEvent);
                return;
            }
            return;
        }
        if (actionMasked == 3) {
            if (this.f13516a == 1) {
                i(0.0f, 0.0f);
            }
            a();
            return;
        }
        if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f13516a == 1 && pointerId3 == this.f13518c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i11 >= pointerCount2) {
                        i10 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i11);
                    if (pointerId4 != this.f13518c) {
                        View viewJ3 = j((int) motionEvent.getX(i11), (int) motionEvent.getY(i11));
                        View view = this.f13533r;
                        if (viewJ3 == view && u(view, pointerId4)) {
                            i10 = this.f13518c;
                            break;
                        }
                    }
                    i11++;
                }
                if (i10 == -1) {
                    n();
                }
            }
            f(pointerId3);
            return;
        }
        int pointerId5 = motionEvent.getPointerId(actionIndex);
        float x13 = motionEvent.getX(actionIndex);
        float y12 = motionEvent.getY(actionIndex);
        p(x13, y12, pointerId5);
        if (this.f13516a == 0) {
            u(j((int) x13, (int) y12), pointerId5);
            if ((this.f13523h[pointerId5] & 0) != 0) {
                Objects.requireNonNull(this.f13532q);
                return;
            }
            return;
        }
        int i15 = (int) x13;
        int i16 = (int) y12;
        View view2 = this.f13533r;
        if (view2 != null && i15 >= view2.getLeft() && i15 < view2.getRight() && i16 >= view2.getTop() && i16 < view2.getBottom()) {
            i11 = 1;
        }
        if (i11 != 0) {
            u(this.f13533r, pointerId5);
        }
    }

    public final void n() {
        this.f13527l.computeCurrentVelocity(1000, this.f13528m);
        i(e(this.f13527l.getXVelocity(this.f13518c), this.f13529n, this.f13528m), e(this.f13527l.getYVelocity(this.f13518c), this.f13529n, this.f13528m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r4v2 */
    public final void o(float f10, float f11, int i10) {
        int i11;
        boolean zC = c(f10, f11, i10, 1);
        ?? r10 = zC;
        if (c(f11, f10, i10, 4)) {
            r10 = (zC ? 1 : 0) | 4;
        }
        ?? r11 = r10;
        if (c(f10, f11, i10, 2)) {
            r11 = (r10 == true ? 1 : 0) | 2;
        }
        ?? r12 = r11;
        if (c(f11, f10, i10, 8)) {
            i11 = (r11 == true ? 1 : 0) | 8;
        }
        if (r12 == 0) {
            r12 = i11;
            return;
        }
        r12 = i11;
        int[] iArr = this.f13524i;
        iArr[i10] = (iArr[i10] | r12) == true ? 1 : 0;
        Objects.requireNonNull(this.f13532q);
    }

    public final void p(float f10, float f11, int i10) {
        float[] fArr = this.f13519d;
        if (fArr == null || fArr.length <= i10) {
            int i11 = i10 + 1;
            float[] fArr2 = new float[i11];
            float[] fArr3 = new float[i11];
            float[] fArr4 = new float[i11];
            float[] fArr5 = new float[i11];
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int[] iArr3 = new int[i11];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f13520e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f13521f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f13522g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f13523h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f13524i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f13525j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f13519d = fArr2;
            this.f13520e = fArr3;
            this.f13521f = fArr4;
            this.f13522g = fArr5;
            this.f13523h = iArr;
            this.f13524i = iArr2;
            this.f13525j = iArr3;
        }
        float[] fArr9 = this.f13519d;
        this.f13521f[i10] = f10;
        fArr9[i10] = f10;
        float[] fArr10 = this.f13520e;
        this.f13522g[i10] = f11;
        fArr10[i10] = f11;
        int[] iArr7 = this.f13523h;
        int i12 = (int) f10;
        int i13 = (int) f11;
        int i14 = i12 < this.f13535t.getLeft() + this.f13530o ? 1 : 0;
        if (i13 < this.f13535t.getTop() + this.f13530o) {
            i14 |= 4;
        }
        if (i12 > this.f13535t.getRight() - this.f13530o) {
            i14 |= 2;
        }
        if (i13 > this.f13535t.getBottom() - this.f13530o) {
            i14 |= 8;
        }
        iArr7[i10] = i14;
        this.f13526k |= 1 << i10;
    }

    public final void q(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId = motionEvent.getPointerId(i10);
            if (l(pointerId)) {
                float x10 = motionEvent.getX(i10);
                float y7 = motionEvent.getY(i10);
                this.f13521f[pointerId] = x10;
                this.f13522g[pointerId] = y7;
            }
        }
    }

    public final void r(int i10) {
        this.f13535t.removeCallbacks(this.f13536u);
        if (this.f13516a != i10) {
            this.f13516a = i10;
            this.f13532q.f(i10);
            if (this.f13516a == 0) {
                this.f13533r = null;
            }
        }
    }

    public final boolean s(int i10, int i11) {
        if (this.f13534s) {
            return k(i10, i11, (int) this.f13527l.getXVelocity(this.f13518c), (int) this.f13527l.getYVelocity(this.f13518c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fd  */
    public final boolean t(MotionEvent motionEvent) {
        boolean z10;
        View viewJ;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f13527l == null) {
            this.f13527l = VelocityTracker.obtain();
        }
        this.f13527l.addMovement(motionEvent);
        boolean z11 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                a();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    a();
                } else if (actionMasked == 5) {
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    float x10 = motionEvent.getX(actionIndex);
                    float y7 = motionEvent.getY(actionIndex);
                    p(x10, y7, pointerId);
                    int i10 = this.f13516a;
                    if (i10 == 0) {
                        if ((this.f13523h[pointerId] & 0) != 0) {
                            Objects.requireNonNull(this.f13532q);
                        }
                    } else if (i10 == 2 && (viewJ = j((int) x10, (int) y7)) == this.f13533r) {
                        u(viewJ, pointerId);
                    }
                } else if (actionMasked == 6) {
                    f(motionEvent.getPointerId(actionIndex));
                }
            } else if (this.f13519d != null && this.f13520e != null) {
                int pointerCount = motionEvent.getPointerCount();
                int i11 = 0;
                while (i11 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i11);
                    if (l(pointerId2)) {
                        float x11 = motionEvent.getX(i11);
                        float y10 = motionEvent.getY(i11);
                        float f10 = x11 - this.f13519d[pointerId2];
                        float f11 = y10 - this.f13520e[pointerId2];
                        View viewJ2 = j((int) x11, (int) y10);
                        boolean z12 = (viewJ2 == null || !d(viewJ2, f10, f11)) ? z11 : true;
                        if (z12) {
                            int left = viewJ2.getLeft();
                            int iA = this.f13532q.a(viewJ2, ((int) f10) + left);
                            int top = viewJ2.getTop();
                            int iB = this.f13532q.b(viewJ2, ((int) f11) + top);
                            int iC = this.f13532q.c(viewJ2);
                            int iD = this.f13532q.d();
                            if ((iC != 0 && (iC <= 0 || iA != left)) || (iD != 0 && (iD <= 0 || iB != top))) {
                                o(f10, f11, pointerId2);
                                if (this.f13516a != 1 || (z12 && u(viewJ2, pointerId2))) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            o(f10, f11, pointerId2);
                            if (this.f13516a != 1) {
                                break;
                            }
                        }
                    }
                    i11++;
                    z11 = false;
                }
                q(motionEvent);
            }
            z10 = false;
        } else {
            float x12 = motionEvent.getX();
            float y11 = motionEvent.getY();
            int pointerId3 = motionEvent.getPointerId(0);
            p(x12, y11, pointerId3);
            View viewJ3 = j((int) x12, (int) y11);
            if (viewJ3 == this.f13533r && this.f13516a == 2) {
                u(viewJ3, pointerId3);
            }
            z10 = false;
            if ((this.f13523h[pointerId3] & 0) != 0) {
                Objects.requireNonNull(this.f13532q);
            }
        }
        if (this.f13516a == 1) {
            return true;
        }
        return z10;
    }

    public final boolean u(View view, int i10) {
        if (view == this.f13533r && this.f13518c == i10) {
            return true;
        }
        if (view == null || !this.f13532q.i(view, i10)) {
            return false;
        }
        this.f13518c = i10;
        b(view, i10);
        return true;
    }
}
