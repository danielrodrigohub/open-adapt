package n0;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: AutoScrollHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f11136x = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0211a f11137h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AccelerateInterpolator f11138i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f11139j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b f11140k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float[] f11141l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float[] f11142m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11143n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11144o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float[] f11145p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float[] f11146q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float[] f11147r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f11148s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11149t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f11150u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f11151v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f11152w;

    /* JADX INFO: renamed from: n0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoScrollHelper.java */
    public static class C0211a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f11155c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f11156d;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f11160h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11161i;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f11157e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f11159g = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f11158f = 0;

        public final float a(long j10) {
            long j11 = this.f11157e;
            if (j10 < j11) {
                return 0.0f;
            }
            long j12 = this.f11159g;
            if (j12 < 0 || j10 < j12) {
                return a.b((j10 - j11) / this.f11153a, 0.0f, 1.0f) * 0.5f;
            }
            float f10 = this.f11160h;
            return (a.b((j10 - j12) / this.f11161i, 0.0f, 1.0f) * f10) + (1.0f - f10);
        }
    }

    /* JADX INFO: compiled from: AutoScrollHelper.java */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            if (aVar.f11151v) {
                if (aVar.f11149t) {
                    aVar.f11149t = false;
                    C0211a c0211a = aVar.f11137h;
                    Objects.requireNonNull(c0211a);
                    long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                    c0211a.f11157e = jCurrentAnimationTimeMillis;
                    c0211a.f11159g = -1L;
                    c0211a.f11158f = jCurrentAnimationTimeMillis;
                    c0211a.f11160h = 0.5f;
                }
                C0211a c0211a2 = a.this.f11137h;
                if ((c0211a2.f11159g > 0 && AnimationUtils.currentAnimationTimeMillis() > c0211a2.f11159g + ((long) c0211a2.f11161i)) || !a.this.e()) {
                    a.this.f11151v = false;
                    return;
                }
                a aVar2 = a.this;
                if (aVar2.f11150u) {
                    aVar2.f11150u = false;
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    aVar2.f11139j.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (c0211a2.f11158f == 0) {
                    throw new RuntimeException("Cannot compute scroll delta before calling start()");
                }
                long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                float fA = c0211a2.a(jCurrentAnimationTimeMillis2);
                long j10 = jCurrentAnimationTimeMillis2 - c0211a2.f11158f;
                c0211a2.f11158f = jCurrentAnimationTimeMillis2;
                h.b(((g) a.this).f11164y, (int) (j10 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * c0211a2.f11156d));
                View view = a.this.f11139j;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.m(view, this);
            }
        }
    }

    public a(View view) {
        C0211a c0211a = new C0211a();
        this.f11137h = c0211a;
        this.f11138i = new AccelerateInterpolator();
        this.f11141l = new float[]{0.0f, 0.0f};
        this.f11142m = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.f11145p = new float[]{0.0f, 0.0f};
        this.f11146q = new float[]{0.0f, 0.0f};
        this.f11147r = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.f11139j = view;
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.f11147r;
        float f11 = ((int) ((1575.0f * f10) + 0.5f)) / 1000.0f;
        fArr[0] = f11;
        fArr[1] = f11;
        float[] fArr2 = this.f11146q;
        float f12 = ((int) ((f10 * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f12;
        fArr2[1] = f12;
        this.f11143n = 1;
        float[] fArr3 = this.f11142m;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f11141l;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.f11145p;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.f11144o = f11136x;
        c0211a.f11153a = HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR;
        c0211a.f11154b = HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR;
    }

    public static float b(float f10, float f11, float f12) {
        if (f10 > f12) {
            return f12;
        }
        return f10 < f11 ? f11 : f10;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x003e  */
    /* JADX WARN: Code duplicated, block: B:15:0x004d  */
    /* JADX WARN: Code duplicated, block: B:17:0x0053  */
    public final float a(int i10, float f10, float f11, float f12) {
        float fB;
        float interpolation;
        float fB2 = b(this.f11141l[i10] * f11, 0.0f, this.f11142m[i10]);
        float fC = c(f11 - f10, fB2) - c(f10, fB2);
        if (fC >= 0.0f) {
            if (fC > 0.0f) {
                interpolation = this.f11138i.getInterpolation(fC);
            } else {
                fB = 0.0f;
            }
            if (fB == 0.0f) {
                return 0.0f;
            }
            float f13 = this.f11145p[i10];
            float f14 = this.f11146q[i10];
            float f15 = this.f11147r[i10];
            float f16 = f13 * f12;
            return fB > 0.0f ? b(fB * f16, f14, f15) : -b((-fB) * f16, f14, f15);
        }
        interpolation = -this.f11138i.getInterpolation(-fC);
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB == 0.0f) {
            return 0.0f;
        }
        float f17 = this.f11145p[i10];
        float f18 = this.f11146q[i10];
        float f19 = this.f11147r[i10];
        float f110 = f17 * f12;
        if (fB > 0.0f) {
        }
    }

    public final float c(float f10, float f11) {
        if (f11 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.f11143n;
        if (i10 == 0 || i10 == 1) {
            if (f10 < f11) {
                if (f10 >= 0.0f) {
                    return 1.0f - (f10 / f11);
                }
                if (this.f11151v && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f10 < 0.0f) {
            return f10 / (-f11);
        }
        return 0.0f;
    }

    public final void d() {
        int i10 = 0;
        if (this.f11149t) {
            this.f11151v = false;
            return;
        }
        C0211a c0211a = this.f11137h;
        Objects.requireNonNull(c0211a);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i11 = (int) (jCurrentAnimationTimeMillis - c0211a.f11157e);
        int i12 = c0211a.f11154b;
        if (i11 > i12) {
            i10 = i12;
        } else if (i11 >= 0) {
            i10 = i11;
        }
        c0211a.f11161i = i10;
        c0211a.f11160h = c0211a.a(jCurrentAnimationTimeMillis);
        c0211a.f11159g = jCurrentAnimationTimeMillis;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0021  */
    public final boolean e() {
        boolean z10;
        C0211a c0211a = this.f11137h;
        float f10 = c0211a.f11156d;
        int iAbs = (int) (f10 / Math.abs(f10));
        float f11 = c0211a.f11155c;
        if (iAbs != 0) {
            ListView listView = ((g) this).f11164y;
            int count = listView.getCount();
            if (count == 0) {
                z10 = false;
            } else {
                int childCount = listView.getChildCount();
                int firstVisiblePosition = listView.getFirstVisiblePosition();
                int i10 = firstVisiblePosition + childCount;
                if (iAbs <= 0 ? iAbs >= 0 || (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) : i10 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i10;
        if (!this.f11152w) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                d();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    d();
                }
            }
            return false;
        }
        this.f11150u = true;
        this.f11148s = false;
        float fA = a(0, motionEvent.getX(), view.getWidth(), this.f11139j.getWidth());
        float fA2 = a(1, motionEvent.getY(), view.getHeight(), this.f11139j.getHeight());
        C0211a c0211a = this.f11137h;
        c0211a.f11155c = fA;
        c0211a.f11156d = fA2;
        if (!this.f11151v && e()) {
            if (this.f11140k == null) {
                this.f11140k = new b();
            }
            this.f11151v = true;
            this.f11149t = true;
            if (this.f11148s || (i10 = this.f11144o) <= 0) {
                this.f11140k.run();
            } else {
                View view2 = this.f11139j;
                b bVar = this.f11140k;
                long j10 = i10;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.n(view2, bVar, j10);
            }
            this.f11148s = true;
        }
        return false;
    }
}
