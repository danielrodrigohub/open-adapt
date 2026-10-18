package androidx.fragment.app;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: Fragment.java */
/* JADX INFO: loaded from: classes.dex */
public class m implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.q, androidx.lifecycle.o0, androidx.lifecycle.g, b1.d {
    public static final Object Z = new Object();
    public u<?> A;
    public m C;
    public int D;
    public int E;
    public String F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean K;
    public ViewGroup L;
    public View M;
    public boolean N;
    public b P;
    public boolean Q;
    public LayoutInflater R;
    public boolean S;
    public androidx.lifecycle.r U;
    public l0 V;
    public b1.c X;
    public final ArrayList<d> Y;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Bundle f1966i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SparseArray<Parcelable> f1967j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Bundle f1968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Boolean f1969l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bundle f1971n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public m f1972o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1974q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1976s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1977t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1978u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1979v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1980w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1981x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1982y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public x f1983z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1965h = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f1970m = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f1973p = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Boolean f1975r = null;
    public y B = new y();
    public boolean J = true;
    public boolean O = true;
    public androidx.lifecycle.i.c T = androidx.lifecycle.i.c.RESUMED;
    public androidx.lifecycle.v<androidx.lifecycle.q> W = new androidx.lifecycle.v<>();

    /* JADX INFO: compiled from: Fragment.java */
    public class a extends r {
        public a() {
        }

        @Override // androidx.fragment.app.r
        public final View h(int i10) {
            View view = m.this.M;
            if (view != null) {
                return view.findViewById(i10);
            }
            StringBuilder sbC = a0.b.c("Fragment ");
            sbC.append(m.this);
            sbC.append(" does not have a view");
            throw new IllegalStateException(sbC.toString());
        }

        @Override // androidx.fragment.app.r
        public final boolean i() {
            return m.this.M != null;
        }
    }

    /* JADX INFO: compiled from: Fragment.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f1985a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1986b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1987c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1988d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1989e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1990f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1991g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ArrayList<String> f1992h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ArrayList<String> f1993i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f1994j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Object f1995k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public Object f1996l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f1997m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f1998n;

        public b() {
            Object obj = m.Z;
            this.f1994j = obj;
            this.f1995k = obj;
            this.f1996l = obj;
            this.f1997m = 1.0f;
            this.f1998n = null;
        }
    }

    /* JADX INFO: compiled from: Fragment.java */
    public static class c extends RuntimeException {
        public c(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: compiled from: Fragment.java */
    public static abstract class d {
        public abstract void a();
    }

    public m() {
        new AtomicInteger();
        this.Y = new ArrayList<>();
        this.U = new androidx.lifecycle.r(this);
        this.X = b1.c.a(this);
    }

    @Deprecated
    public final m A() {
        String str;
        m mVar = this.f1972o;
        if (mVar != null) {
            return mVar;
        }
        x xVar = this.f1983z;
        if (xVar == null || (str = this.f1973p) == null) {
            return null;
        }
        return xVar.D(str);
    }

    public final boolean B() {
        return this.A != null && this.f1976s;
    }

    public final boolean D() {
        return this.f1982y > 0;
    }

    @Deprecated
    public void E() {
        this.K = true;
    }

    @Deprecated
    public final void F(int i10, int i11, Intent intent) {
        if (x.L(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i10 + " resultCode: " + i11 + " data: " + intent);
        }
    }

    public void G(Context context) {
        this.K = true;
        u<?> uVar = this.A;
        if ((uVar == null ? null : uVar.f2036h) != null) {
            this.K = true;
        }
    }

    public void H(Bundle bundle) {
        this.K = true;
        h0(bundle);
        y yVar = this.B;
        if (yVar.f2060p >= 1) {
            return;
        }
        yVar.j();
    }

    public View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void J() {
        this.K = true;
    }

    public void K() {
        this.K = true;
    }

    public void L() {
        this.K = true;
    }

    public LayoutInflater M(Bundle bundle) {
        u<?> uVar = this.A;
        if (uVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater layoutInflaterL = uVar.l();
        layoutInflaterL.setFactory2(this.B.f2050f);
        return layoutInflaterL;
    }

    public final void N() {
        this.K = true;
        u<?> uVar = this.A;
        if ((uVar == null ? null : uVar.f2036h) != null) {
            this.K = true;
        }
    }

    public void O() {
        this.K = true;
    }

    @Override // androidx.lifecycle.o0
    public final androidx.lifecycle.n0 P() {
        if (this.f1983z == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (p() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        a0 a0Var = this.f1983z.I;
        androidx.lifecycle.n0 n0Var = a0Var.f1819e.get(this.f1970m);
        if (n0Var != null) {
            return n0Var;
        }
        androidx.lifecycle.n0 n0Var2 = new androidx.lifecycle.n0();
        a0Var.f1819e.put(this.f1970m, n0Var2);
        return n0Var2;
    }

    public void Q() {
        this.K = true;
    }

    public void R(Bundle bundle) {
    }

    public void S() {
        this.K = true;
    }

    public void T() {
        this.K = true;
    }

    public void U(View view, Bundle bundle) {
    }

    public void V(Bundle bundle) {
        this.K = true;
    }

    public void W(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.B.R();
        this.f1981x = true;
        this.V = new l0(P());
        View viewI = I(layoutInflater, viewGroup, bundle);
        this.M = viewI;
        if (viewI == null) {
            if (this.V.f1963i != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.V = null;
        } else {
            this.V.c();
            androidx.lifecycle.p0.a(this.M, this.V);
            androidx.lifecycle.q0.a(this.M, this.V);
            androidx.lifecycle.o.H(this.M, this.V);
            this.W.h(this.V);
        }
    }

    public final void X() {
        this.B.t(1);
        if (this.M != null) {
            l0 l0Var = this.V;
            l0Var.c();
            if (l0Var.f1963i.f2231c.b(androidx.lifecycle.i.c.CREATED)) {
                this.V.b(androidx.lifecycle.i.b.ON_DESTROY);
            }
        }
        this.f1965h = 1;
        this.K = false;
        K();
        if (!this.K) {
            throw new t0("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        v0.b.C0281b c0281b = ((v0.b) v0.a.b(this)).f16101b;
        int i10 = c0281b.f16103c.f12618j;
        for (int i11 = 0; i11 < i10; i11++) {
            Objects.requireNonNull((v0.b.a) c0281b.f16103c.f12617i[i11]);
        }
        this.f1981x = false;
    }

    public final LayoutInflater Y(Bundle bundle) {
        LayoutInflater layoutInflaterM = M(bundle);
        this.R = layoutInflaterM;
        return layoutInflaterM;
    }

    public final void Z() {
        onLowMemory();
        this.B.m();
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.i a() {
        return this.U;
    }

    public final void a0(boolean z10) {
        this.B.n(z10);
    }

    public final void b0(boolean z10) {
        this.B.r(z10);
    }

    public final boolean c0(Menu menu) {
        if (this.G) {
            return false;
        }
        return false | this.B.s(menu);
    }

    public r d() {
        return new a();
    }

    public final p d0() {
        p pVarI = i();
        if (pVarI != null) {
            return pVarI;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Bundle e0() {
        Bundle bundle = this.f1971n;
        if (bundle != null) {
            return bundle;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // b1.d
    public final b1.b f() {
        return this.X.f3165b;
    }

    public final Context f0() {
        Context contextL = l();
        if (contextL != null) {
            return contextL;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.D));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.E));
        printWriter.print(" mTag=");
        printWriter.println(this.F);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f1965h);
        printWriter.print(" mWho=");
        printWriter.print(this.f1970m);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f1982y);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f1976s);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f1977t);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f1978u);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f1979v);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.G);
        printWriter.print(" mDetached=");
        printWriter.print(this.H);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.J);
        printWriter.print(" mHasMenu=");
        printWriter.println(false);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.I);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.O);
        if (this.f1983z != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f1983z);
        }
        if (this.A != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.A);
        }
        if (this.C != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.C);
        }
        if (this.f1971n != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f1971n);
        }
        if (this.f1966i != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f1966i);
        }
        if (this.f1967j != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f1967j);
        }
        if (this.f1968k != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.f1968k);
        }
        m mVarA = A();
        if (mVarA != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(mVarA);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f1974q);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(s());
        if (m() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(m());
        }
        if (n() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(n());
        }
        if (t() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(t());
        }
        if (u() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(u());
        }
        if (this.L != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.L);
        }
        if (this.M != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.M);
        }
        if (j() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(j());
        }
        if (l() != null) {
            v0.a.b(this).a(str, printWriter);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.B + ":");
        this.B.v(androidx.recyclerview.widget.d.c(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final View g0() {
        View view = this.M;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final b h() {
        if (this.P == null) {
            this.P = new b();
        }
        return this.P;
    }

    public final void h0(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.B.X(parcelable);
        this.B.j();
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final p i() {
        u<?> uVar = this.A;
        if (uVar == null) {
            return null;
        }
        return (p) uVar.f2036h;
    }

    public final void i0(int i10, int i11, int i12, int i13) {
        if (this.P == null && i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return;
        }
        h().f1987c = i10;
        h().f1988d = i11;
        h().f1989e = i12;
        h().f1990f = i13;
    }

    public final View j() {
        b bVar = this.P;
        if (bVar == null) {
            return null;
        }
        return bVar.f1985a;
    }

    public final void j0(Bundle bundle) {
        x xVar = this.f1983z;
        if (xVar != null) {
            if (xVar == null ? false : xVar.P()) {
                throw new IllegalStateException("Fragment already added and state has been saved");
            }
        }
        this.f1971n = bundle;
    }

    public final x k() {
        if (this.A != null) {
            return this.B;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final void k0(View view) {
        h().f1998n = view;
    }

    public final Context l() {
        u<?> uVar = this.A;
        if (uVar == null) {
            return null;
        }
        return uVar.f2037i;
    }

    public final void l0(boolean z10) {
        if (this.J != z10) {
            this.J = z10;
        }
    }

    public final int m() {
        b bVar = this.P;
        if (bVar == null) {
            return 0;
        }
        return bVar.f1987c;
    }

    public final void m0(boolean z10) {
        if (this.P == null) {
            return;
        }
        h().f1986b = z10;
    }

    public final int n() {
        b bVar = this.P;
        if (bVar == null) {
            return 0;
        }
        return bVar.f1988d;
    }

    @Deprecated
    public final void n0(m mVar) {
        x xVar = this.f1983z;
        x xVar2 = mVar != null ? mVar.f1983z : null;
        if (xVar != null && xVar2 != null && xVar != xVar2) {
            throw new IllegalArgumentException("Fragment " + mVar + " must share the same FragmentManager to be set as a target fragment");
        }
        for (m mVarA = mVar; mVarA != null; mVarA = mVarA.A()) {
            if (mVarA.equals(this)) {
                throw new IllegalArgumentException("Setting " + mVar + " as the target of " + this + " would create a target cycle");
            }
        }
        if (mVar == null) {
            this.f1973p = null;
            this.f1972o = null;
        } else if (this.f1983z == null || mVar.f1983z == null) {
            this.f1973p = null;
            this.f1972o = mVar;
        } else {
            this.f1973p = mVar.f1970m;
            this.f1972o = null;
        }
        this.f1974q = 0;
    }

    public final LayoutInflater o() {
        LayoutInflater layoutInflater = this.R;
        return layoutInflater == null ? Y(null) : layoutInflater;
    }

    @Deprecated
    public final void o0(boolean z10) {
        if (!this.O && z10 && this.f1965h < 5 && this.f1983z != null && B() && this.S) {
            x xVar = this.f1983z;
            xVar.S(xVar.f(this));
        }
        this.O = z10;
        this.N = this.f1965h < 5 && !z10;
        if (this.f1966i != null) {
            this.f1969l = Boolean.valueOf(z10);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.K = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        d0().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.K = true;
    }

    public final int p() {
        androidx.lifecycle.i.c cVar = this.T;
        return (cVar == androidx.lifecycle.i.c.INITIALIZED || this.C == null) ? cVar.ordinal() : Math.min(cVar.ordinal(), this.C.p());
    }

    public final x r() {
        x xVar = this.f1983z;
        if (xVar != null) {
            return xVar;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final boolean s() {
        b bVar = this.P;
        if (bVar == null) {
            return false;
        }
        return bVar.f1986b;
    }

    public final int t() {
        b bVar = this.P;
        if (bVar == null) {
            return 0;
        }
        return bVar.f1989e;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(getClass().getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("}");
        sb2.append(" (");
        sb2.append(this.f1970m);
        if (this.D != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.D));
        }
        if (this.F != null) {
            sb2.append(" tag=");
            sb2.append(this.F);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public final int u() {
        b bVar = this.P;
        if (bVar == null) {
            return 0;
        }
        return bVar.f1990f;
    }

    public final Object v() {
        Object obj;
        b bVar = this.P;
        if (bVar == null || (obj = bVar.f1995k) == Z) {
            return null;
        }
        return obj;
    }

    public final Resources w() {
        return f0().getResources();
    }

    public final Object x() {
        Object obj;
        b bVar = this.P;
        if (bVar == null || (obj = bVar.f1994j) == Z) {
            return null;
        }
        return obj;
    }

    public final Object y() {
        Object obj;
        b bVar = this.P;
        if (bVar == null || (obj = bVar.f1996l) == Z) {
            return null;
        }
        return obj;
    }

    public final String z(int i10) {
        return w().getString(i10);
    }
}
