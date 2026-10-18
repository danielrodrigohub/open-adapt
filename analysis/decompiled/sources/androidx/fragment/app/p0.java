package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: SpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f2013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList<b> f2014b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<b> f2015c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2016d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2017e = false;

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    public static class a extends b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final e0 f2018h;

        public a(int i10, int i11, e0 e0Var, f0.d dVar) {
            super(i10, i11, e0Var.f1874c, dVar);
            this.f2018h = e0Var;
        }

        @Override // androidx.fragment.app.p0.b
        public final void c() {
            super.c();
            this.f2018h.k();
        }

        @Override // androidx.fragment.app.p0.b
        public final void e() {
            if (this.f2020b == 2) {
                m mVar = this.f2018h.f1874c;
                View viewFindFocus = mVar.M.findFocus();
                if (viewFindFocus != null) {
                    mVar.k0(viewFindFocus);
                    if (x.L(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + mVar);
                    }
                }
                View viewG0 = this.f2021c.g0();
                if (viewG0.getParent() == null) {
                    this.f2018h.b();
                    viewG0.setAlpha(0.0f);
                }
                if (viewG0.getAlpha() == 0.0f && viewG0.getVisibility() == 0) {
                    viewG0.setVisibility(4);
                }
                m.b bVar = mVar.P;
                viewG0.setAlpha(bVar == null ? 1.0f : bVar.f1997m);
            }
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final m f2021c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<Runnable> f2022d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final HashSet<f0.d> f2023e = new HashSet<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2024f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f2025g = false;

        public b(int i10, int i11, m mVar, f0.d dVar) {
            this.f2019a = i10;
            this.f2020b = i11;
            this.f2021c = mVar;
            dVar.b(new q0(this));
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<java.lang.Runnable>] */
        public final void a(Runnable runnable) {
            this.f2022d.add(runnable);
        }

        public final void b() {
            if (this.f2024f) {
                return;
            }
            this.f2024f = true;
            if (this.f2023e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.f2023e).iterator();
            while (it.hasNext()) {
                ((f0.d) it.next()).a();
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<java.lang.Runnable>] */
        public void c() {
            if (this.f2025g) {
                return;
            }
            if (x.L(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f2025g = true;
            Iterator it = this.f2022d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        public final void d(int i10, int i11) {
            if (i11 == 0) {
                throw null;
            }
            int i12 = i11 - 1;
            if (i12 == 0) {
                if (this.f2019a != 1) {
                    if (x.L(2)) {
                        StringBuilder sbC = a0.b.c("SpecialEffectsController: For fragment ");
                        sbC.append(this.f2021c);
                        sbC.append(" mFinalState = ");
                        sbC.append(r0.k(this.f2019a));
                        sbC.append(" -> ");
                        sbC.append(r0.k(i10));
                        sbC.append(". ");
                        Log.v("FragmentManager", sbC.toString());
                    }
                    this.f2019a = i10;
                    return;
                }
                return;
            }
            if (i12 == 1) {
                if (this.f2019a == 1) {
                    if (x.L(2)) {
                        StringBuilder sbC2 = a0.b.c("SpecialEffectsController: For fragment ");
                        sbC2.append(this.f2021c);
                        sbC2.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                        sbC2.append(a1.f.e(this.f2020b));
                        sbC2.append(" to ADDING.");
                        Log.v("FragmentManager", sbC2.toString());
                    }
                    this.f2019a = 2;
                    this.f2020b = 2;
                    return;
                }
                return;
            }
            if (i12 != 2) {
                return;
            }
            if (x.L(2)) {
                StringBuilder sbC3 = a0.b.c("SpecialEffectsController: For fragment ");
                sbC3.append(this.f2021c);
                sbC3.append(" mFinalState = ");
                sbC3.append(r0.k(this.f2019a));
                sbC3.append(" -> REMOVED. mLifecycleImpact  = ");
                sbC3.append(a1.f.e(this.f2020b));
                sbC3.append(" to REMOVING.");
                Log.v("FragmentManager", sbC3.toString());
            }
            this.f2019a = 1;
            this.f2020b = 3;
        }

        public void e() {
        }

        public final String toString() {
            StringBuilder sbH = r0.h("Operation ", "{");
            sbH.append(Integer.toHexString(System.identityHashCode(this)));
            sbH.append("} ");
            sbH.append("{");
            sbH.append("mFinalState = ");
            sbH.append(r0.k(this.f2019a));
            sbH.append("} ");
            sbH.append("{");
            sbH.append("mLifecycleImpact = ");
            sbH.append(a1.f.e(this.f2020b));
            sbH.append("} ");
            sbH.append("{");
            sbH.append("mFragment = ");
            sbH.append(this.f2021c);
            sbH.append("}");
            return sbH.toString();
        }
    }

    public p0(ViewGroup viewGroup) {
        this.f2013a = viewGroup;
    }

    public static p0 f(ViewGroup viewGroup, x xVar) {
        return g(viewGroup, xVar.J());
    }

    public static p0 g(ViewGroup viewGroup, s0 s0Var) {
        int i10 = R.id.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i10);
        if (tag instanceof p0) {
            return (p0) tag;
        }
        Objects.requireNonNull((x.f) s0Var);
        c cVar = new c(viewGroup);
        viewGroup.setTag(i10, cVar);
        return cVar;
    }

    public final void a(int i10, int i11, e0 e0Var) {
        synchronized (this.f2014b) {
            f0.d dVar = new f0.d();
            b bVarD = d(e0Var.f1874c);
            if (bVarD != null) {
                bVarD.d(i10, i11);
                return;
            }
            a aVar = new a(i10, i11, e0Var, dVar);
            this.f2014b.add(aVar);
            aVar.a(new n0(this, aVar));
            aVar.a(new o0(this, aVar));
        }
    }

    public abstract void b(List<b> list, boolean z10);

    public final void c() {
        if (this.f2017e) {
            return;
        }
        ViewGroup viewGroup = this.f2013a;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        if (!j0.a0.g.b(viewGroup)) {
            e();
            this.f2016d = false;
            return;
        }
        synchronized (this.f2014b) {
            if (!this.f2014b.isEmpty()) {
                ArrayList<b> arrayList = new ArrayList(this.f2015c);
                this.f2015c.clear();
                for (b bVar : arrayList) {
                    if (x.L(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + bVar);
                    }
                    bVar.b();
                    if (!bVar.f2025g) {
                        this.f2015c.add(bVar);
                    }
                }
                i();
                ArrayList arrayList2 = new ArrayList(this.f2014b);
                this.f2014b.clear();
                this.f2015c.addAll(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).e();
                }
                b(arrayList2, this.f2016d);
                this.f2016d = false;
            }
        }
    }

    public final b d(m mVar) {
        for (b bVar : this.f2014b) {
            if (bVar.f2021c.equals(mVar) && !bVar.f2024f) {
                return bVar;
            }
        }
        return null;
    }

    public final void e() {
        ViewGroup viewGroup = this.f2013a;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        boolean zB = j0.a0.g.b(viewGroup);
        synchronized (this.f2014b) {
            i();
            Iterator<b> it = this.f2014b.iterator();
            while (it.hasNext()) {
                it.next().e();
            }
            for (b bVar : new ArrayList(this.f2015c)) {
                if (x.L(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    sb2.append(zB ? "" : "Container " + this.f2013a + " is not attached to window. ");
                    sb2.append("Cancelling running operation ");
                    sb2.append(bVar);
                    Log.v("FragmentManager", sb2.toString());
                }
                bVar.b();
            }
            for (b bVar2 : new ArrayList(this.f2014b)) {
                if (x.L(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("SpecialEffectsController: ");
                    sb3.append(zB ? "" : "Container " + this.f2013a + " is not attached to window. ");
                    sb3.append("Cancelling pending operation ");
                    sb3.append(bVar2);
                    Log.v("FragmentManager", sb3.toString());
                }
                bVar2.b();
            }
        }
    }

    public final void h() {
        synchronized (this.f2014b) {
            i();
            this.f2017e = false;
            int size = this.f2014b.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                b bVar = this.f2014b.get(size);
                int iC = r0.c(bVar.f2021c.M);
                if (bVar.f2019a == 2 && iC != 2) {
                    Objects.requireNonNull(bVar.f2021c);
                    this.f2017e = false;
                    break;
                }
            }
        }
    }

    public final void i() {
        for (b bVar : this.f2014b) {
            if (bVar.f2020b == 2) {
                bVar.d(r0.b(bVar.f2021c.g0().getVisibility()), 1);
            }
        }
    }
}
