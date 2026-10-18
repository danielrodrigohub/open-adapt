package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.y0;
import androidx.fragment.R;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: FragmentStateManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f1872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f0 f1873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f1874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1875d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1876e = -1;

    /* JADX INFO: compiled from: FragmentStateManager.java */
    public class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ View f1877h;

        public a(View view) {
            this.f1877h = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            this.f1877h.removeOnAttachStateChangeListener(this);
            View view2 = this.f1877h;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            j0.a0.h.c(view2);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public e0(w wVar, f0 f0Var, m mVar) {
        this.f1872a = wVar;
        this.f1873b = f0Var;
        this.f1874c = mVar;
    }

    public final void a() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("moveto ACTIVITY_CREATED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        Bundle bundle = mVar.f1966i;
        mVar.B.R();
        mVar.f1965h = 3;
        mVar.K = false;
        mVar.E();
        if (!mVar.K) {
            throw new t0("Fragment " + mVar + " did not call through to super.onActivityCreated()");
        }
        if (x.L(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + mVar);
        }
        View view = mVar.M;
        if (view != null) {
            Bundle bundle2 = mVar.f1966i;
            SparseArray<Parcelable> sparseArray = mVar.f1967j;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                mVar.f1967j = null;
            }
            if (mVar.M != null) {
                mVar.V.f1964j.c(mVar.f1968k);
                mVar.f1968k = null;
            }
            mVar.K = false;
            mVar.V(bundle2);
            if (!mVar.K) {
                throw new t0("Fragment " + mVar + " did not call through to super.onViewStateRestored()");
            }
            if (mVar.M != null) {
                mVar.V.b(androidx.lifecycle.i.b.ON_CREATE);
            }
        }
        mVar.f1966i = null;
        y yVar = mVar.B;
        yVar.B = false;
        yVar.C = false;
        yVar.I.f1822h = false;
        yVar.t(4);
        w wVar = this.f1872a;
        m mVar2 = this.f1874c;
        wVar.a(mVar2, mVar2.f1966i, false);
    }

    public final void b() {
        View view;
        View view2;
        f0 f0Var = this.f1873b;
        m mVar = this.f1874c;
        Objects.requireNonNull(f0Var);
        ViewGroup viewGroup = mVar.L;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = f0Var.f1882a.indexOf(mVar);
            for (int i10 = iIndexOf - 1; i10 >= 0; i10--) {
                m mVar2 = f0Var.f1882a.get(i10);
                if (mVar2.L == viewGroup && (view2 = mVar2.M) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                }
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= f0Var.f1882a.size()) {
                    break;
                }
                m mVar3 = f0Var.f1882a.get(iIndexOf);
                if (mVar3.L == viewGroup && (view = mVar3.M) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view);
                    break;
                }
            }
        }
        m mVar4 = this.f1874c;
        mVar4.L.addView(mVar4.M, iIndexOfChild);
    }

    public final void c() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("moveto ATTACHED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        m mVar2 = mVar.f1972o;
        e0 e0VarH = null;
        if (mVar2 != null) {
            e0 e0VarH2 = this.f1873b.h(mVar2.f1970m);
            if (e0VarH2 == null) {
                StringBuilder sbC2 = a0.b.c("Fragment ");
                sbC2.append(this.f1874c);
                sbC2.append(" declared target fragment ");
                sbC2.append(this.f1874c.f1972o);
                sbC2.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sbC2.toString());
            }
            m mVar3 = this.f1874c;
            mVar3.f1973p = mVar3.f1972o.f1970m;
            mVar3.f1972o = null;
            e0VarH = e0VarH2;
        } else {
            String str = mVar.f1973p;
            if (str != null && (e0VarH = this.f1873b.h(str)) == null) {
                StringBuilder sbC3 = a0.b.c("Fragment ");
                sbC3.append(this.f1874c);
                sbC3.append(" declared target fragment ");
                throw new IllegalStateException(a1.f.d(sbC3, this.f1874c.f1973p, " that does not belong to this FragmentManager!"));
            }
        }
        if (e0VarH != null) {
            e0VarH.k();
        }
        m mVar4 = this.f1874c;
        x xVar = mVar4.f1983z;
        mVar4.A = xVar.f2061q;
        mVar4.C = xVar.f2063s;
        this.f1872a.g(mVar4, false);
        m mVar5 = this.f1874c;
        Iterator<m.d> it = mVar5.Y.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        mVar5.Y.clear();
        mVar5.B.b(mVar5.A, mVar5.d(), mVar5);
        mVar5.f1965h = 0;
        mVar5.K = false;
        mVar5.G(mVar5.A.f2037i);
        if (!mVar5.K) {
            throw new t0("Fragment " + mVar5 + " did not call through to super.onAttach()");
        }
        Iterator<b0> it2 = mVar5.f1983z.f2059o.iterator();
        while (it2.hasNext()) {
            it2.next().b(mVar5);
        }
        y yVar = mVar5.B;
        yVar.B = false;
        yVar.C = false;
        yVar.I.f1822h = false;
        yVar.t(0);
        this.f1872a.b(this.f1874c, false);
    }

    public final int d() {
        m mVar = this.f1874c;
        if (mVar.f1983z == null) {
            return mVar.f1965h;
        }
        int iMin = this.f1876e;
        int iOrdinal = mVar.T.ordinal();
        int i10 = 0;
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        m mVar2 = this.f1874c;
        if (mVar2.f1978u) {
            if (mVar2.f1979v) {
                iMin = Math.max(this.f1876e, 2);
                View view = this.f1874c.M;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f1876e < 4 ? Math.min(iMin, mVar2.f1965h) : Math.min(iMin, 1);
            }
        }
        if (!this.f1874c.f1976s) {
            iMin = Math.min(iMin, 1);
        }
        m mVar3 = this.f1874c;
        ViewGroup viewGroup = mVar3.L;
        p0.b bVar = null;
        if (viewGroup != null) {
            p0 p0VarG = p0.g(viewGroup, mVar3.r().J());
            Objects.requireNonNull(p0VarG);
            p0.b bVarD = p0VarG.d(this.f1874c);
            i10 = bVarD != null ? bVarD.f2020b : 0;
            m mVar4 = this.f1874c;
            for (p0.b bVar2 : p0VarG.f2015c) {
                if (bVar2.f2021c.equals(mVar4) && !bVar2.f2024f) {
                    bVar = bVar2;
                    break;
                }
            }
            if (bVar != null && (i10 == 0 || i10 == 1)) {
                i10 = bVar.f2020b;
            }
        }
        if (i10 == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i10 == 3) {
            iMin = Math.max(iMin, 3);
        } else {
            m mVar5 = this.f1874c;
            if (mVar5.f1977t) {
                iMin = mVar5.D() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        m mVar6 = this.f1874c;
        if (mVar6.N && mVar6.f1965h < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (x.L(2)) {
            StringBuilder sbC = y0.c("computeExpectedState() of ", iMin, " for ");
            sbC.append(this.f1874c);
            Log.v("FragmentManager", sbC.toString());
        }
        return iMin;
    }

    public final void e() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("moveto CREATED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        if (mVar.S) {
            mVar.h0(mVar.f1966i);
            this.f1874c.f1965h = 1;
            return;
        }
        this.f1872a.h(mVar, mVar.f1966i, false);
        final m mVar2 = this.f1874c;
        Bundle bundle = mVar2.f1966i;
        mVar2.B.R();
        mVar2.f1965h = 1;
        mVar2.K = false;
        mVar2.U.a(new androidx.lifecycle.n() { // from class: androidx.fragment.app.Fragment$5
            @Override // androidx.lifecycle.n
            public final void a(androidx.lifecycle.q qVar, androidx.lifecycle.i.b bVar) {
                View view;
                if (bVar != androidx.lifecycle.i.b.ON_STOP || (view = mVar2.M) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        mVar2.X.c(bundle);
        mVar2.H(bundle);
        mVar2.S = true;
        if (mVar2.K) {
            mVar2.U.f(androidx.lifecycle.i.b.ON_CREATE);
            w wVar = this.f1872a;
            m mVar3 = this.f1874c;
            wVar.c(mVar3, mVar3.f1966i, false);
            return;
        }
        throw new t0("Fragment " + mVar2 + " did not call through to super.onCreate()");
    }

    public final void f() {
        String resourceName;
        if (this.f1874c.f1978u) {
            return;
        }
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("moveto CREATE_VIEW: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        LayoutInflater layoutInflaterY = mVar.Y(mVar.f1966i);
        ViewGroup viewGroup = null;
        m mVar2 = this.f1874c;
        ViewGroup viewGroup2 = mVar2.L;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i10 = mVar2.E;
            if (i10 != 0) {
                if (i10 == -1) {
                    StringBuilder sbC2 = a0.b.c("Cannot create fragment ");
                    sbC2.append(this.f1874c);
                    sbC2.append(" for a container view with no id");
                    throw new IllegalArgumentException(sbC2.toString());
                }
                viewGroup = (ViewGroup) mVar2.f1983z.f2062r.h(i10);
                if (viewGroup == null) {
                    m mVar3 = this.f1874c;
                    if (!mVar3.f1980w) {
                        try {
                            resourceName = mVar3.w().getResourceName(this.f1874c.E);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        StringBuilder sbC3 = a0.b.c("No view found for id 0x");
                        sbC3.append(Integer.toHexString(this.f1874c.E));
                        sbC3.append(" (");
                        sbC3.append(resourceName);
                        sbC3.append(") for fragment ");
                        sbC3.append(this.f1874c);
                        throw new IllegalArgumentException(sbC3.toString());
                    }
                }
            }
        }
        m mVar4 = this.f1874c;
        mVar4.L = viewGroup;
        mVar4.W(layoutInflaterY, viewGroup, mVar4.f1966i);
        View view = this.f1874c.M;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            m mVar5 = this.f1874c;
            mVar5.M.setTag(R.id.fragment_container_view_tag, mVar5);
            if (viewGroup != null) {
                b();
            }
            m mVar6 = this.f1874c;
            if (mVar6.G) {
                mVar6.M.setVisibility(8);
            }
            View view2 = this.f1874c.M;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            if (j0.a0.g.b(view2)) {
                j0.a0.h.c(this.f1874c.M);
            } else {
                View view3 = this.f1874c.M;
                view3.addOnAttachStateChangeListener(new a(view3));
            }
            m mVar7 = this.f1874c;
            mVar7.U(mVar7.M, mVar7.f1966i);
            mVar7.B.t(2);
            w wVar = this.f1872a;
            m mVar8 = this.f1874c;
            wVar.m(mVar8, mVar8.M, mVar8.f1966i, false);
            int visibility = this.f1874c.M.getVisibility();
            this.f1874c.h().f1997m = this.f1874c.M.getAlpha();
            m mVar9 = this.f1874c;
            if (mVar9.L != null && visibility == 0) {
                View viewFindFocus = mVar9.M.findFocus();
                if (viewFindFocus != null) {
                    this.f1874c.k0(viewFindFocus);
                    if (x.L(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f1874c);
                    }
                }
                this.f1874c.M.setAlpha(0.0f);
            }
        }
        this.f1874c.f1965h = 2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004c  */
    public final void g() {
        boolean z10;
        m mVarD;
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("movefrom CREATED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        boolean zIsChangingConfigurations = true;
        boolean z11 = mVar.f1977t && !mVar.D();
        if (z11) {
            z10 = true;
        } else {
            a0 a0Var = this.f1873b.f1884c;
            if ((a0Var.f1817c.containsKey(this.f1874c.f1970m) && a0Var.f1820f) ? a0Var.f1821g : true) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (!z10) {
            String str = this.f1874c.f1973p;
            if (str != null && (mVarD = this.f1873b.d(str)) != null && mVarD.I) {
                this.f1874c.f1972o = mVarD;
            }
            this.f1874c.f1965h = 0;
            return;
        }
        u<?> uVar = this.f1874c.A;
        if (uVar instanceof androidx.lifecycle.o0) {
            zIsChangingConfigurations = this.f1873b.f1884c.f1821g;
        } else {
            Context context = uVar.f2037i;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z11 || zIsChangingConfigurations) {
            a0 a0Var2 = this.f1873b.f1884c;
            m mVar2 = this.f1874c;
            Objects.requireNonNull(a0Var2);
            if (x.L(3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + mVar2);
            }
            a0 a0Var3 = a0Var2.f1818d.get(mVar2.f1970m);
            if (a0Var3 != null) {
                a0Var3.a();
                a0Var2.f1818d.remove(mVar2.f1970m);
            }
            androidx.lifecycle.n0 n0Var = a0Var2.f1819e.get(mVar2.f1970m);
            if (n0Var != null) {
                n0Var.a();
                a0Var2.f1819e.remove(mVar2.f1970m);
            }
        }
        m mVar3 = this.f1874c;
        mVar3.B.l();
        mVar3.U.f(androidx.lifecycle.i.b.ON_DESTROY);
        mVar3.f1965h = 0;
        mVar3.K = false;
        mVar3.S = false;
        mVar3.J();
        if (!mVar3.K) {
            throw new t0("Fragment " + mVar3 + " did not call through to super.onDestroy()");
        }
        this.f1872a.d(this.f1874c, false);
        for (e0 e0Var : (ArrayList) this.f1873b.f()) {
            if (e0Var != null) {
                m mVar4 = e0Var.f1874c;
                if (this.f1874c.f1970m.equals(mVar4.f1973p)) {
                    mVar4.f1972o = this.f1874c;
                    mVar4.f1973p = null;
                }
            }
        }
        m mVar5 = this.f1874c;
        String str2 = mVar5.f1973p;
        if (str2 != null) {
            mVar5.f1972o = this.f1873b.d(str2);
        }
        this.f1873b.k(this);
    }

    public final void h() {
        View view;
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("movefrom CREATE_VIEW: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        ViewGroup viewGroup = mVar.L;
        if (viewGroup != null && (view = mVar.M) != null) {
            viewGroup.removeView(view);
        }
        this.f1874c.X();
        this.f1872a.n(this.f1874c, false);
        m mVar2 = this.f1874c;
        mVar2.L = null;
        mVar2.M = null;
        mVar2.V = null;
        mVar2.W.h(null);
        this.f1874c.f1979v = false;
    }

    public final void i() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("movefrom ATTACHED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        mVar.f1965h = -1;
        mVar.K = false;
        mVar.L();
        mVar.R = null;
        if (!mVar.K) {
            throw new t0("Fragment " + mVar + " did not call through to super.onDetach()");
        }
        y yVar = mVar.B;
        if (!yVar.D) {
            yVar.l();
            mVar.B = new y();
        }
        this.f1872a.e(this.f1874c, false);
        m mVar2 = this.f1874c;
        mVar2.f1965h = -1;
        mVar2.A = null;
        mVar2.C = null;
        mVar2.f1983z = null;
        boolean z10 = true;
        if (!(mVar2.f1977t && !mVar2.D())) {
            a0 a0Var = this.f1873b.f1884c;
            if (a0Var.f1817c.containsKey(this.f1874c.f1970m) && a0Var.f1820f) {
                z10 = a0Var.f1821g;
            }
            if (!z10) {
                return;
            }
        }
        if (x.L(3)) {
            StringBuilder sbC2 = a0.b.c("initState called for fragment: ");
            sbC2.append(this.f1874c);
            Log.d("FragmentManager", sbC2.toString());
        }
        m mVar3 = this.f1874c;
        Objects.requireNonNull(mVar3);
        mVar3.U = new androidx.lifecycle.r(mVar3);
        mVar3.X = b1.c.a(mVar3);
        mVar3.f1970m = UUID.randomUUID().toString();
        mVar3.f1976s = false;
        mVar3.f1977t = false;
        mVar3.f1978u = false;
        mVar3.f1979v = false;
        mVar3.f1980w = false;
        mVar3.f1982y = 0;
        mVar3.f1983z = null;
        mVar3.B = new y();
        mVar3.A = null;
        mVar3.D = 0;
        mVar3.E = 0;
        mVar3.F = null;
        mVar3.G = false;
        mVar3.H = false;
    }

    public final void j() {
        m mVar = this.f1874c;
        if (mVar.f1978u && mVar.f1979v && !mVar.f1981x) {
            if (x.L(3)) {
                StringBuilder sbC = a0.b.c("moveto CREATE_VIEW: ");
                sbC.append(this.f1874c);
                Log.d("FragmentManager", sbC.toString());
            }
            m mVar2 = this.f1874c;
            mVar2.W(mVar2.Y(mVar2.f1966i), null, this.f1874c.f1966i);
            View view = this.f1874c.M;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                m mVar3 = this.f1874c;
                mVar3.M.setTag(R.id.fragment_container_view_tag, mVar3);
                m mVar4 = this.f1874c;
                if (mVar4.G) {
                    mVar4.M.setVisibility(8);
                }
                m mVar5 = this.f1874c;
                mVar5.U(mVar5.M, mVar5.f1966i);
                mVar5.B.t(2);
                w wVar = this.f1872a;
                m mVar6 = this.f1874c;
                wVar.m(mVar6, mVar6.M, mVar6.f1966i, false);
                this.f1874c.f1965h = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f1875d) {
            if (x.L(2)) {
                StringBuilder sbC = a0.b.c("Ignoring re-entrant call to moveToExpectedState() for ");
                sbC.append(this.f1874c);
                Log.v("FragmentManager", sbC.toString());
                return;
            }
            return;
        }
        try {
            this.f1875d = true;
            while (true) {
                int iD = d();
                m mVar = this.f1874c;
                int i10 = mVar.f1965h;
                if (iD == i10) {
                    if (mVar.Q) {
                        if (mVar.M != null && (viewGroup = mVar.L) != null) {
                            p0 p0VarG = p0.g(viewGroup, mVar.r().J());
                            if (this.f1874c.G) {
                                Objects.requireNonNull(p0VarG);
                                if (x.L(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + this.f1874c);
                                }
                                p0VarG.a(3, 1, this);
                            } else {
                                Objects.requireNonNull(p0VarG);
                                if (x.L(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + this.f1874c);
                                }
                                p0VarG.a(2, 1, this);
                            }
                        }
                        m mVar2 = this.f1874c;
                        x xVar = mVar2.f1983z;
                        if (xVar != null && mVar2.f1976s && xVar.M(mVar2)) {
                            xVar.A = true;
                        }
                        this.f1874c.Q = false;
                    }
                    return;
                }
                if (iD <= i10) {
                    switch (i10 - 1) {
                        case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            this.f1874c.f1965h = 1;
                            break;
                        case 2:
                            mVar.f1979v = false;
                            mVar.f1965h = 2;
                            break;
                        case 3:
                            if (x.L(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f1874c);
                            }
                            m mVar3 = this.f1874c;
                            if (mVar3.M != null && mVar3.f1967j == null) {
                                o();
                            }
                            m mVar4 = this.f1874c;
                            if (mVar4.M != null && (viewGroup3 = mVar4.L) != null) {
                                p0 p0VarG2 = p0.g(viewGroup3, mVar4.r().J());
                                Objects.requireNonNull(p0VarG2);
                                if (x.L(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + this.f1874c);
                                }
                                p0VarG2.a(1, 3, this);
                            }
                            this.f1874c.f1965h = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case 5:
                            mVar.f1965h = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i10 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (mVar.M != null && (viewGroup2 = mVar.L) != null) {
                                p0 p0VarG3 = p0.g(viewGroup2, mVar.r().J());
                                int iB = r0.b(this.f1874c.M.getVisibility());
                                Objects.requireNonNull(p0VarG3);
                                if (x.L(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + this.f1874c);
                                }
                                p0VarG3.a(iB, 2, this);
                            }
                            this.f1874c.f1965h = 4;
                            break;
                        case 5:
                            p();
                            break;
                        case 6:
                            mVar.f1965h = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
            }
        } finally {
            this.f1875d = false;
        }
    }

    public final void l() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("movefrom RESUMED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        mVar.B.t(5);
        if (mVar.M != null) {
            mVar.V.b(androidx.lifecycle.i.b.ON_PAUSE);
        }
        mVar.U.f(androidx.lifecycle.i.b.ON_PAUSE);
        mVar.f1965h = 6;
        mVar.K = false;
        mVar.O();
        if (mVar.K) {
            this.f1872a.f(this.f1874c, false);
            return;
        }
        throw new t0("Fragment " + mVar + " did not call through to super.onPause()");
    }

    public final void m(ClassLoader classLoader) {
        Bundle bundle = this.f1874c.f1966i;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        m mVar = this.f1874c;
        mVar.f1967j = mVar.f1966i.getSparseParcelableArray("android:view_state");
        m mVar2 = this.f1874c;
        mVar2.f1968k = mVar2.f1966i.getBundle("android:view_registry_state");
        m mVar3 = this.f1874c;
        mVar3.f1973p = mVar3.f1966i.getString("android:target_state");
        m mVar4 = this.f1874c;
        if (mVar4.f1973p != null) {
            mVar4.f1974q = mVar4.f1966i.getInt("android:target_req_state", 0);
        }
        m mVar5 = this.f1874c;
        Boolean bool = mVar5.f1969l;
        if (bool != null) {
            mVar5.O = bool.booleanValue();
            this.f1874c.f1969l = null;
        } else {
            mVar5.O = mVar5.f1966i.getBoolean("android:user_visible_hint", true);
        }
        m mVar6 = this.f1874c;
        if (mVar6.O) {
            return;
        }
        mVar6.N = true;
    }

    public final void n() {
        boolean z10;
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("moveto RESUMED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        m.b bVar = mVar.P;
        View view = bVar == null ? null : bVar.f1998n;
        if (view != null) {
            if (view != mVar.M) {
                ViewParent parent = view.getParent();
                while (true) {
                    if (parent == null) {
                        z10 = false;
                        break;
                    } else {
                        if (parent == this.f1874c.M) {
                            z10 = true;
                            break;
                        }
                        parent = parent.getParent();
                    }
                }
            } else {
                z10 = true;
                break;
            }
            if (z10) {
                boolean zRequestFocus = view.requestFocus();
                if (x.L(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("requestFocus: Restoring focused view ");
                    sb2.append(view);
                    sb2.append(" ");
                    sb2.append(zRequestFocus ? "succeeded" : "failed");
                    sb2.append(" on Fragment ");
                    sb2.append(this.f1874c);
                    sb2.append(" resulting in focused view ");
                    sb2.append(this.f1874c.M.findFocus());
                    Log.v("FragmentManager", sb2.toString());
                }
            }
        }
        this.f1874c.k0(null);
        m mVar2 = this.f1874c;
        mVar2.B.R();
        mVar2.B.z(true);
        mVar2.f1965h = 7;
        mVar2.K = false;
        mVar2.Q();
        if (!mVar2.K) {
            throw new t0("Fragment " + mVar2 + " did not call through to super.onResume()");
        }
        androidx.lifecycle.r rVar = mVar2.U;
        androidx.lifecycle.i.b bVar2 = androidx.lifecycle.i.b.ON_RESUME;
        rVar.f(bVar2);
        if (mVar2.M != null) {
            mVar2.V.b(bVar2);
        }
        y yVar = mVar2.B;
        yVar.B = false;
        yVar.C = false;
        yVar.I.f1822h = false;
        yVar.t(7);
        this.f1872a.i(this.f1874c, false);
        m mVar3 = this.f1874c;
        mVar3.f1966i = null;
        mVar3.f1967j = null;
        mVar3.f1968k = null;
    }

    public final void o() {
        if (this.f1874c.M == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f1874c.M.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f1874c.f1967j = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f1874c.V.f1964j.d(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f1874c.f1968k = bundle;
    }

    public final void p() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("moveto STARTED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        mVar.B.R();
        mVar.B.z(true);
        mVar.f1965h = 5;
        mVar.K = false;
        mVar.S();
        if (!mVar.K) {
            throw new t0("Fragment " + mVar + " did not call through to super.onStart()");
        }
        androidx.lifecycle.r rVar = mVar.U;
        androidx.lifecycle.i.b bVar = androidx.lifecycle.i.b.ON_START;
        rVar.f(bVar);
        if (mVar.M != null) {
            mVar.V.b(bVar);
        }
        y yVar = mVar.B;
        yVar.B = false;
        yVar.C = false;
        yVar.I.f1822h = false;
        yVar.t(5);
        this.f1872a.k(this.f1874c, false);
    }

    public final void q() {
        if (x.L(3)) {
            StringBuilder sbC = a0.b.c("movefrom STARTED: ");
            sbC.append(this.f1874c);
            Log.d("FragmentManager", sbC.toString());
        }
        m mVar = this.f1874c;
        y yVar = mVar.B;
        yVar.C = true;
        yVar.I.f1822h = true;
        yVar.t(4);
        if (mVar.M != null) {
            mVar.V.b(androidx.lifecycle.i.b.ON_STOP);
        }
        mVar.U.f(androidx.lifecycle.i.b.ON_STOP);
        mVar.f1965h = 4;
        mVar.K = false;
        mVar.T();
        if (mVar.K) {
            this.f1872a.l(this.f1874c, false);
            return;
        }
        throw new t0("Fragment " + mVar + " did not call through to super.onStop()");
    }

    public e0(w wVar, f0 f0Var, ClassLoader classLoader, t tVar, d0 d0Var) {
        this.f1872a = wVar;
        this.f1873b = f0Var;
        m mVarA = tVar.a(classLoader, d0Var.f1858h);
        this.f1874c = mVarA;
        Bundle bundle = d0Var.f1867q;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        mVarA.j0(d0Var.f1867q);
        mVarA.f1970m = d0Var.f1859i;
        mVarA.f1978u = d0Var.f1860j;
        mVarA.f1980w = true;
        mVarA.D = d0Var.f1861k;
        mVarA.E = d0Var.f1862l;
        mVarA.F = d0Var.f1863m;
        mVarA.I = d0Var.f1864n;
        mVarA.f1977t = d0Var.f1865o;
        mVarA.H = d0Var.f1866p;
        mVarA.G = d0Var.f1868r;
        mVarA.T = androidx.lifecycle.i.c.values()[d0Var.f1869s];
        Bundle bundle2 = d0Var.f1870t;
        if (bundle2 != null) {
            mVarA.f1966i = bundle2;
        } else {
            mVarA.f1966i = new Bundle();
        }
        if (x.L(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + mVarA);
        }
    }

    public e0(w wVar, f0 f0Var, m mVar, d0 d0Var) {
        this.f1872a = wVar;
        this.f1873b = f0Var;
        this.f1874c = mVar;
        mVar.f1967j = null;
        mVar.f1968k = null;
        mVar.f1982y = 0;
        mVar.f1979v = false;
        mVar.f1976s = false;
        m mVar2 = mVar.f1972o;
        mVar.f1973p = mVar2 != null ? mVar2.f1970m : null;
        mVar.f1972o = null;
        Bundle bundle = d0Var.f1870t;
        if (bundle != null) {
            mVar.f1966i = bundle;
        } else {
            mVar.f1966i = new Bundle();
        }
    }
}
