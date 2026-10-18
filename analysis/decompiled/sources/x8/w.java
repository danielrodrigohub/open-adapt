package x8;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import com.nike.adapt.adk.InMemoryCache;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w {
    public static final fd.d<float[]> C = (fd.h) androidx.lifecycle.o.x(a.f18047h);
    public final fd.h A;
    public final fd.h B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f18021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f18022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f18023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f18024d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18026f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f18027g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18028h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final qd.l<d1, fd.o> f18029i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18030j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f18031k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f18032l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final fd.h f18033m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final fd.h f18034n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f18035o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f18036p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f18037q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f18038r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f18039s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f18040t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float[] f18041u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f18042v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ObjectAnimator f18043w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18044x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f18045y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Context f18046z;

    /* JADX INFO: compiled from: LacingController.kt */
    public static final class a extends rd.o implements qd.a<float[]> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f18047h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final float[] invoke() {
            float[] fArr = new float[21];
            for (int i10 = 0; i10 < 21; i10++) {
                fArr[i10] = i10 * 5.0f;
            }
            return fArr;
        }
    }

    public w(int i10, qd.l lVar) {
        androidx.appcompat.widget.o.d(i10, "shoeType");
        this.f18021a = 0.0f;
        this.f18022b = 0.0f;
        this.f18023c = 0.0f;
        this.f18024d = 0.0f;
        this.f18025e = 50;
        this.f18026f = 50;
        this.f18027g = false;
        this.f18028h = i10;
        this.f18029i = lVar;
        this.f18033m = (fd.h) androidx.lifecycle.o.x(new z(this));
        this.f18034n = (fd.h) androidx.lifecycle.o.x(new x(this));
        this.f18037q = 0;
        this.f18039s = 20;
        this.f18040t = 1;
        this.A = (fd.h) androidx.lifecycle.o.x(new y(this));
        this.B = (fd.h) androidx.lifecycle.o.x(new a0(this));
    }

    public static void e(w wVar, int i10, boolean z10, int i11) {
        int i12;
        int i13;
        boolean z11 = (i11 & 2) != 0 ? false : z10;
        if (wVar.f18042v) {
            View view = wVar.f18035o;
            if (view == null) {
                p4.h.C("laceControllerView");
                throw null;
            }
            float y7 = view.getY();
            wVar.f18022b = y7;
            int iA = wVar.a(y7, false);
            wVar.f18038r = iA;
            wVar.f18037q = iA;
            if (i10 <= -1 || i10 >= wVar.c().length || (i12 = wVar.f18037q) <= -1 || i12 >= wVar.c().length || (i13 = wVar.f18038r) <= -1 || i13 >= wVar.c().length) {
                return;
            }
            float fB = wVar.b() - ((wVar.b() - wVar.d()) * (wVar.c()[i10] / wVar.c()[gd.i.r(wVar.c())]));
            qd.l<d1, fd.o> lVar = wVar.f18029i;
            View view2 = wVar.f18035o;
            if (view2 == null) {
                p4.h.C("laceControllerView");
                throw null;
            }
            d1 d1Var = new d1(view2, wVar.f18038r, wVar.f18037q, i10, new h1(0L, 1, null), z11, false);
            wVar.f18037q = i10;
            lVar.invoke(d1Var);
            View view3 = wVar.f18035o;
            if (view3 != null) {
                view3.animate().y(fB).setDuration(200L).start();
            } else {
                p4.h.C("laceControllerView");
                throw null;
            }
        }
    }

    public final int a(float f10, boolean z10) {
        float fD = 1 - ((f10 - d()) / (b() - d()));
        float[] fArrC = c();
        p4.h.j(fArrC, "<this>");
        if (fArrC.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        float f11 = fD * fArrC[fArrC.length - 1];
        int iQ = p4.h.q(c(), f11);
        if (z10) {
            return iQ;
        }
        if (iQ >= this.f18037q || c()[iQ] > f11) {
            return (iQ <= this.f18037q || c()[iQ] < f11) ? iQ : this.f18037q;
        }
        return this.f18037q;
    }

    public final int b() {
        return ((Number) this.f18034n.getValue()).intValue();
    }

    public final float[] c() {
        float[] fArr = this.f18041u;
        if (fArr == null) {
            p4.h.C("significantPercents");
            throw null;
        }
        if (!(fArr.length == 0)) {
            return fArr;
        }
        o7.x.f12420a.a("LacingController tried to use an empty array of percents.");
        return C.getValue();
    }

    public final int d() {
        return ((Number) this.f18033m.getValue()).intValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return p4.h.c(Float.valueOf(this.f18021a), Float.valueOf(wVar.f18021a)) && p4.h.c(Float.valueOf(this.f18022b), Float.valueOf(wVar.f18022b)) && p4.h.c(Float.valueOf(this.f18023c), Float.valueOf(wVar.f18023c)) && p4.h.c(Float.valueOf(this.f18024d), Float.valueOf(wVar.f18024d)) && this.f18025e == wVar.f18025e && this.f18026f == wVar.f18026f && this.f18027g == wVar.f18027g && this.f18028h == wVar.f18028h && p4.h.c(this.f18029i, wVar.f18029i);
    }

    public final void f(boolean z10) {
        int i10;
        if (this.f18042v) {
            View view = this.f18035o;
            if (view == null) {
                p4.h.C("laceControllerView");
                throw null;
            }
            if (view.getTag() == h0.LOCK || i()) {
                ObjectAnimator objectAnimator = this.f18043w;
                if (objectAnimator == null || objectAnimator.isRunning()) {
                    return;
                }
                objectAnimator.start();
                return;
            }
            if (this.f18037q == 0) {
                View view2 = this.f18035o;
                if (view2 == null) {
                    p4.h.C("laceControllerView");
                    throw null;
                }
                this.f18037q = a(view2.getY(), true);
            }
            int i11 = this.f18037q;
            if (z10 && i11 < c().length - 1) {
                i10 = i11 + 1;
            } else if (z10 || this.f18037q <= 0) {
                return;
            } else {
                i10 = i11 - 1;
            }
            qd.l<d1, fd.o> lVar = this.f18029i;
            View view3 = this.f18035o;
            if (view3 == null) {
                p4.h.C("laceControllerView");
                throw null;
            }
            int i12 = this.f18037q;
            lVar.invoke(new d1(view3, i12, i12, i10, new f1(0L, 1, null)));
            this.f18037q = i10;
            float fG = g();
            View view4 = this.f18035o;
            if (view4 == null) {
                p4.h.C("laceControllerView");
                throw null;
            }
            view4.animate().y(fG).setDuration(200L).start();
            qd.l<d1, fd.o> lVar2 = this.f18029i;
            View view5 = this.f18035o;
            if (view5 == null) {
                p4.h.C("laceControllerView");
                throw null;
            }
            d1 d1Var = new d1(view5, i11, i11, i10, new u(0L, 1, null));
            this.f18037q = i10;
            lVar2.invoke(d1Var);
        }
    }

    public final float g() {
        return b() - ((b() - d()) * (c()[this.f18037q] / c()[gd.i.r(c())]));
    }

    public final void h(View view, float[] fArr) {
        p4.h.j(fArr, "percents");
        this.f18035o = view;
        this.f18041u = fArr;
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, "rotation", 0.0f, -4.0f, 0.0f, 4.0f, 0.0f).setDuration(100L);
        duration.setRepeatMode(1);
        duration.setRepeatCount(2);
        duration.addListener(new j(view));
        duration.addListener(new i(view));
        this.f18043w = duration;
        view.post(new y0.u(this, view, 3));
        view.setOnTouchListener(new v(view, this, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    public final int hashCode() {
        int iE = androidx.fragment.app.r0.e(this.f18026f, androidx.fragment.app.r0.e(this.f18025e, (Float.hashCode(this.f18024d) + ((Float.hashCode(this.f18023c) + ((Float.hashCode(this.f18022b) + (Float.hashCode(this.f18021a) * 31)) * 31)) * 31)) * 31, 31), 31);
        boolean z10 = this.f18027g;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return this.f18029i.hashCode() + ((q.g.a(this.f18028h) + ((iE + r10) * 31)) * 31);
    }

    public final boolean i() {
        if (this.f18028h == 1 && InMemoryCache.INSTANCE.getLeftDevice().getBattery().getState().isCharging()) {
            return true;
        }
        return this.f18028h == 2 && InMemoryCache.INSTANCE.getRightDevice().getBattery().getState().isCharging();
    }

    public final String toString() {
        float f10 = this.f18021a;
        float f11 = this.f18022b;
        float f12 = this.f18023c;
        float f13 = this.f18024d;
        int i10 = this.f18025e;
        int i11 = this.f18026f;
        boolean z10 = this.f18027g;
        int i12 = this.f18028h;
        qd.l<d1, fd.o> lVar = this.f18029i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LacingController(locationOfStartingPointerInRespectiveToView=");
        sb2.append(f10);
        sb2.append(", startingY=");
        sb2.append(f11);
        sb2.append(", cancelX1=");
        sb2.append(f12);
        sb2.append(", cancelX2=");
        sb2.append(f13);
        sb2.append(", ratchetMargin=");
        a1.d.e(sb2, i10, ", unlaceMargin=", i11, ", abort=");
        sb2.append(z10);
        sb2.append(", shoeType=");
        sb2.append(androidx.appcompat.widget.o.l(i12));
        sb2.append(", locationReporter=");
        sb2.append(lVar);
        sb2.append(")");
        return sb2.toString();
    }
}
