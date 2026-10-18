package j0;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: WindowInsetsCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l0 f9194b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f9195a;

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    @SuppressLint({"SoonBlockedPrivateApi"})
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Field f9196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Field f9197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static Field f9198c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static boolean f9199d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f9196a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f9197b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f9198c = declaredField3;
                declaredField3.setAccessible(true);
                f9199d = true;
            } catch (ReflectiveOperationException e10) {
                StringBuilder sbC = a0.b.c("Failed to get visible insets from AttachInfo ");
                sbC.append(e10.getMessage());
                Log.w("WindowInsetsCompat", sbC.toString(), e10);
            }
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class d extends c {
        public d() {
        }

        public d(l0 l0Var) {
            super(l0Var);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l0 f9207a;

        public e() {
            this(new l0());
        }

        public final void a() {
        }

        public l0 b() {
            throw null;
        }

        public void c(a0.c cVar) {
            throw null;
        }

        public void d(a0.c cVar) {
            throw null;
        }

        public e(l0 l0Var) {
            this.f9207a = l0Var;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class f extends k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static boolean f9208h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static Method f9209i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static Class<?> f9210j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static Field f9211k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static Field f9212l;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WindowInsets f9213c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public a0.c[] f9214d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public a0.c f9215e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public l0 f9216f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public a0.c f9217g;

        public f(l0 l0Var, WindowInsets windowInsets) {
            super(l0Var);
            this.f9215e = null;
            this.f9213c = windowInsets;
        }

        @SuppressLint({"WrongConstant"})
        private a0.c r(int i10, boolean z10) {
            a0.c cVarA = a0.c.f4e;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    cVarA = a0.c.a(cVarA, s(i11, z10));
                }
            }
            return cVarA;
        }

        private a0.c t() {
            l0 l0Var = this.f9216f;
            return l0Var != null ? l0Var.f9195a.h() : a0.c.f4e;
        }

        private a0.c u(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f9208h) {
                v();
            }
            Method method = f9209i;
            if (method != null && f9210j != null && f9211k != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f9211k.get(f9212l.get(objInvoke));
                    if (rect != null) {
                        return a0.c.c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e10) {
                    StringBuilder sbC = a0.b.c("Failed to get visible insets. (Reflection error). ");
                    sbC.append(e10.getMessage());
                    Log.e("WindowInsetsCompat", sbC.toString(), e10);
                }
            }
            return null;
        }

        @SuppressLint({"PrivateApi"})
        private static void v() {
            try {
                f9209i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f9210j = cls;
                f9211k = cls.getDeclaredField("mVisibleInsets");
                f9212l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f9211k.setAccessible(true);
                f9212l.setAccessible(true);
            } catch (ReflectiveOperationException e10) {
                StringBuilder sbC = a0.b.c("Failed to get visible insets. (Reflection error). ");
                sbC.append(e10.getMessage());
                Log.e("WindowInsetsCompat", sbC.toString(), e10);
            }
            f9208h = true;
        }

        @Override // j0.l0.k
        public void d(View view) {
            a0.c cVarU = u(view);
            if (cVarU == null) {
                cVarU = a0.c.f4e;
            }
            w(cVarU);
        }

        @Override // j0.l0.k
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f9217g, ((f) obj).f9217g);
            }
            return false;
        }

        @Override // j0.l0.k
        public a0.c f(int i10) {
            return r(i10, false);
        }

        @Override // j0.l0.k
        public final a0.c j() {
            if (this.f9215e == null) {
                this.f9215e = a0.c.b(this.f9213c.getSystemWindowInsetLeft(), this.f9213c.getSystemWindowInsetTop(), this.f9213c.getSystemWindowInsetRight(), this.f9213c.getSystemWindowInsetBottom());
            }
            return this.f9215e;
        }

        @Override // j0.l0.k
        public l0 l(int i10, int i11, int i12, int i13) {
            e cVar;
            l0 l0VarL = l0.l(this.f9213c, null);
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 30) {
                cVar = new d(l0VarL);
            } else {
                cVar = i14 >= 29 ? new c(l0VarL) : new b(l0VarL);
            }
            cVar.d(l0.g(j(), i10, i11, i12, i13));
            cVar.c(l0.g(h(), i10, i11, i12, i13));
            return cVar.b();
        }

        @Override // j0.l0.k
        public boolean n() {
            return this.f9213c.isRound();
        }

        @Override // j0.l0.k
        public void o(a0.c[] cVarArr) {
            this.f9214d = cVarArr;
        }

        @Override // j0.l0.k
        public void p(l0 l0Var) {
            this.f9216f = l0Var;
        }

        public a0.c s(int i10, boolean z10) {
            a0.c cVarH;
            int i11;
            if (i10 == 1) {
                return z10 ? a0.c.b(0, Math.max(t().f6b, j().f6b), 0, 0) : a0.c.b(0, j().f6b, 0, 0);
            }
            if (i10 == 2) {
                if (z10) {
                    a0.c cVarT = t();
                    a0.c cVarH2 = h();
                    return a0.c.b(Math.max(cVarT.f5a, cVarH2.f5a), 0, Math.max(cVarT.f7c, cVarH2.f7c), Math.max(cVarT.f8d, cVarH2.f8d));
                }
                a0.c cVarJ = j();
                l0 l0Var = this.f9216f;
                cVarH = l0Var != null ? l0Var.f9195a.h() : null;
                int iMin = cVarJ.f8d;
                if (cVarH != null) {
                    iMin = Math.min(iMin, cVarH.f8d);
                }
                return a0.c.b(cVarJ.f5a, 0, cVarJ.f7c, iMin);
            }
            if (i10 == 8) {
                a0.c[] cVarArr = this.f9214d;
                cVarH = cVarArr != null ? cVarArr[3] : null;
                if (cVarH != null) {
                    return cVarH;
                }
                a0.c cVarJ2 = j();
                a0.c cVarT2 = t();
                int i12 = cVarJ2.f8d;
                if (i12 > cVarT2.f8d) {
                    return a0.c.b(0, 0, 0, i12);
                }
                a0.c cVar = this.f9217g;
                return (cVar == null || cVar.equals(a0.c.f4e) || (i11 = this.f9217g.f8d) <= cVarT2.f8d) ? a0.c.f4e : a0.c.b(0, 0, 0, i11);
            }
            if (i10 == 16) {
                return i();
            }
            if (i10 == 32) {
                return g();
            }
            if (i10 == 64) {
                return k();
            }
            if (i10 != 128) {
                return a0.c.f4e;
            }
            l0 l0Var2 = this.f9216f;
            j0.d dVarE = l0Var2 != null ? l0Var2.f9195a.e() : e();
            if (dVarE == null) {
                return a0.c.f4e;
            }
            int i13 = Build.VERSION.SDK_INT;
            return a0.c.b(i13 >= 28 ? j0.d.a.d(dVarE.f9182a) : 0, i13 >= 28 ? j0.d.a.f(dVarE.f9182a) : 0, i13 >= 28 ? j0.d.a.e(dVarE.f9182a) : 0, i13 >= 28 ? j0.d.a.c(dVarE.f9182a) : 0);
        }

        public void w(a0.c cVar) {
            this.f9217g = cVar;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class g extends f {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public a0.c f9218m;

        public g(l0 l0Var, WindowInsets windowInsets) {
            super(l0Var, windowInsets);
            this.f9218m = null;
        }

        @Override // j0.l0.k
        public l0 b() {
            return l0.l(this.f9213c.consumeStableInsets(), null);
        }

        @Override // j0.l0.k
        public l0 c() {
            return l0.l(this.f9213c.consumeSystemWindowInsets(), null);
        }

        @Override // j0.l0.k
        public final a0.c h() {
            if (this.f9218m == null) {
                this.f9218m = a0.c.b(this.f9213c.getStableInsetLeft(), this.f9213c.getStableInsetTop(), this.f9213c.getStableInsetRight(), this.f9213c.getStableInsetBottom());
            }
            return this.f9218m;
        }

        @Override // j0.l0.k
        public boolean m() {
            return this.f9213c.isConsumed();
        }

        @Override // j0.l0.k
        public void q(a0.c cVar) {
            this.f9218m = cVar;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class h extends g {
        public h(l0 l0Var, WindowInsets windowInsets) {
            super(l0Var, windowInsets);
        }

        @Override // j0.l0.k
        public l0 a() {
            return l0.l(this.f9213c.consumeDisplayCutout(), null);
        }

        @Override // j0.l0.k
        public j0.d e() {
            DisplayCutout displayCutout = this.f9213c.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new j0.d(displayCutout);
        }

        @Override // j0.l0.f, j0.l0.k
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Objects.equals(this.f9213c, hVar.f9213c) && Objects.equals(this.f9217g, hVar.f9217g);
        }

        @Override // j0.l0.k
        public int hashCode() {
            return this.f9213c.hashCode();
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class i extends h {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public a0.c f9219n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public a0.c f9220o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public a0.c f9221p;

        public i(l0 l0Var, WindowInsets windowInsets) {
            super(l0Var, windowInsets);
            this.f9219n = null;
            this.f9220o = null;
            this.f9221p = null;
        }

        @Override // j0.l0.k
        public a0.c g() {
            if (this.f9220o == null) {
                this.f9220o = a0.c.d(this.f9213c.getMandatorySystemGestureInsets());
            }
            return this.f9220o;
        }

        @Override // j0.l0.k
        public a0.c i() {
            if (this.f9219n == null) {
                this.f9219n = a0.c.d(this.f9213c.getSystemGestureInsets());
            }
            return this.f9219n;
        }

        @Override // j0.l0.k
        public a0.c k() {
            if (this.f9221p == null) {
                this.f9221p = a0.c.d(this.f9213c.getTappableElementInsets());
            }
            return this.f9221p;
        }

        @Override // j0.l0.f, j0.l0.k
        public l0 l(int i10, int i11, int i12, int i13) {
            return l0.l(this.f9213c.inset(i10, i11, i12, i13), null);
        }

        @Override // j0.l0.g, j0.l0.k
        public void q(a0.c cVar) {
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class j extends i {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final l0 f9222q = l0.l(WindowInsets.CONSUMED, null);

        public j(l0 l0Var, WindowInsets windowInsets) {
            super(l0Var, windowInsets);
        }

        @Override // j0.l0.f, j0.l0.k
        public final void d(View view) {
        }

        @Override // j0.l0.f, j0.l0.k
        public a0.c f(int i10) {
            return a0.c.d(this.f9213c.getInsets(l.a(i10)));
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final l0 f9223b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l0 f9224a;

        static {
            e cVar;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                cVar = new d();
            } else {
                cVar = i10 >= 29 ? new c() : new b();
            }
            f9223b = cVar.b().f9195a.a().f9195a.b().f9195a.c();
        }

        public k(l0 l0Var) {
            this.f9224a = l0Var;
        }

        public l0 a() {
            return this.f9224a;
        }

        public l0 b() {
            return this.f9224a;
        }

        public l0 c() {
            return this.f9224a;
        }

        public void d(View view) {
        }

        public j0.d e() {
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return n() == kVar.n() && m() == kVar.m() && i0.c.a(j(), kVar.j()) && i0.c.a(h(), kVar.h()) && i0.c.a(e(), kVar.e());
        }

        public a0.c f(int i10) {
            return a0.c.f4e;
        }

        public a0.c g() {
            return j();
        }

        public a0.c h() {
            return a0.c.f4e;
        }

        public int hashCode() {
            return i0.c.b(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), e());
        }

        public a0.c i() {
            return j();
        }

        public a0.c j() {
            return a0.c.f4e;
        }

        public a0.c k() {
            return j();
        }

        public l0 l(int i10, int i11, int i12, int i13) {
            return f9223b;
        }

        public boolean m() {
            return false;
        }

        public boolean n() {
            return false;
        }

        public void o(a0.c[] cVarArr) {
        }

        public void p(l0 l0Var) {
        }

        public void q(a0.c cVar) {
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static final class l {
        public static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 256; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f9194b = j.f9222q;
        } else {
            f9194b = k.f9223b;
        }
    }

    public l0(WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.f9195a = new j(this, windowInsets);
            return;
        }
        if (i10 >= 29) {
            this.f9195a = new i(this, windowInsets);
        } else if (i10 >= 28) {
            this.f9195a = new h(this, windowInsets);
        } else {
            this.f9195a = new g(this, windowInsets);
        }
    }

    public static a0.c g(a0.c cVar, int i10, int i11, int i12, int i13) {
        int iMax = Math.max(0, cVar.f5a - i10);
        int iMax2 = Math.max(0, cVar.f6b - i11);
        int iMax3 = Math.max(0, cVar.f7c - i12);
        int iMax4 = Math.max(0, cVar.f8d - i13);
        return (iMax == i10 && iMax2 == i11 && iMax3 == i12 && iMax4 == i13) ? cVar : a0.c.b(iMax, iMax2, iMax3, iMax4);
    }

    public static l0 l(WindowInsets windowInsets, View view) {
        Objects.requireNonNull(windowInsets);
        l0 l0Var = new l0(windowInsets);
        if (view != null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.g.b(view)) {
                l0Var.j(a0.j.a(view));
                l0Var.a(view.getRootView());
            }
        }
        return l0Var;
    }

    public final void a(View view) {
        this.f9195a.d(view);
    }

    public final a0.c b(int i10) {
        return this.f9195a.f(i10);
    }

    @Deprecated
    public final int c() {
        return this.f9195a.j().f8d;
    }

    @Deprecated
    public final int d() {
        return this.f9195a.j().f5a;
    }

    @Deprecated
    public final int e() {
        return this.f9195a.j().f7c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l0) {
            return i0.c.a(this.f9195a, ((l0) obj).f9195a);
        }
        return false;
    }

    @Deprecated
    public final int f() {
        return this.f9195a.j().f6b;
    }

    public final boolean h() {
        return this.f9195a.m();
    }

    public final int hashCode() {
        k kVar = this.f9195a;
        if (kVar == null) {
            return 0;
        }
        return kVar.hashCode();
    }

    @Deprecated
    public final l0 i(int i10, int i11, int i12, int i13) {
        e cVar;
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 30) {
            cVar = new d(this);
        } else {
            cVar = i14 >= 29 ? new c(this) : new b(this);
        }
        cVar.d(a0.c.b(i10, i11, i12, i13));
        return cVar.b();
    }

    public final void j(l0 l0Var) {
        this.f9195a.p(l0Var);
    }

    public final WindowInsets k() {
        k kVar = this.f9195a;
        if (kVar instanceof f) {
            return ((f) kVar).f9213c;
        }
        return null;
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class b extends e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static Field f9200d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static boolean f9201e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static Constructor<WindowInsets> f9202f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static boolean f9203g = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public WindowInsets f9204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a0.c f9205c;

        public b() {
            this.f9204b = e();
        }

        private static WindowInsets e() {
            if (!f9201e) {
                try {
                    f9200d = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e10) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e10);
                }
                f9201e = true;
            }
            Field field = f9200d;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e11) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e11);
                }
            }
            if (!f9203g) {
                try {
                    f9202f = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e12) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e12);
                }
                f9203g = true;
            }
            Constructor<WindowInsets> constructor = f9202f;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e13) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e13);
                }
            }
            return null;
        }

        @Override // j0.l0.e
        public l0 b() {
            a();
            l0 l0VarL = l0.l(this.f9204b, null);
            l0VarL.f9195a.o(null);
            l0VarL.f9195a.q(this.f9205c);
            return l0VarL;
        }

        @Override // j0.l0.e
        public void c(a0.c cVar) {
            this.f9205c = cVar;
        }

        @Override // j0.l0.e
        public void d(a0.c cVar) {
            WindowInsets windowInsets = this.f9204b;
            if (windowInsets != null) {
                this.f9204b = windowInsets.replaceSystemWindowInsets(cVar.f5a, cVar.f6b, cVar.f7c, cVar.f8d);
            }
        }

        public b(l0 l0Var) {
            super(l0Var);
            this.f9204b = l0Var.k();
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class c extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WindowInsets.Builder f9206b;

        public c() {
            this.f9206b = new WindowInsets.Builder();
        }

        @Override // j0.l0.e
        public l0 b() {
            a();
            l0 l0VarL = l0.l(this.f9206b.build(), null);
            l0VarL.f9195a.o(null);
            return l0VarL;
        }

        @Override // j0.l0.e
        public void c(a0.c cVar) {
            this.f9206b.setStableInsets(cVar.e());
        }

        @Override // j0.l0.e
        public void d(a0.c cVar) {
            this.f9206b.setSystemWindowInsets(cVar.e());
        }

        public c(l0 l0Var) {
            WindowInsets.Builder builder;
            super(l0Var);
            WindowInsets windowInsetsK = l0Var.k();
            if (windowInsetsK != null) {
                builder = new WindowInsets.Builder(windowInsetsK);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f9206b = builder;
        }
    }

    public l0() {
        this.f9195a = new k(this);
    }
}
