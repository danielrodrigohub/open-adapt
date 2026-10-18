package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.transition.Transition;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends p0 {

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ List f1837h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p0.b f1838i;

        public a(List list, p0.b bVar) {
            this.f1837h = list;
            this.f1838i = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1837h.contains(this.f1838i)) {
                this.f1837h.remove(this.f1838i);
                c cVar = c.this;
                p0.b bVar = this.f1838i;
                Objects.requireNonNull(cVar);
                r0.a(bVar.f2019a, bVar.f2021c.M);
            }
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    public static class b extends C0023c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1840c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1841d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public q.a f1842e;

        public b(p0.b bVar, f0.d dVar, boolean z10) {
            super(bVar, dVar);
            this.f1841d = false;
            this.f1840c = z10;
        }

        public final q.a c(Context context) {
            if (this.f1841d) {
                return this.f1842e;
            }
            p0.b bVar = this.f1843a;
            q.a aVarA = q.a(context, bVar.f2021c, bVar.f2019a == 2, this.f1840c);
            this.f1842e = aVarA;
            this.f1841d = true;
            return aVarA;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    public static class C0023c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p0.b f1843a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final f0.d f1844b;

        public C0023c(p0.b bVar, f0.d dVar) {
            this.f1843a = bVar;
            this.f1844b = dVar;
        }

        public final void a() {
            p0.b bVar = this.f1843a;
            if (bVar.f2023e.remove(this.f1844b) && bVar.f2023e.isEmpty()) {
                bVar.c();
            }
        }

        public final boolean b() {
            int iC = r0.c(this.f1843a.f2021c.M);
            int i10 = this.f1843a.f2019a;
            return iC == i10 || !(iC == 2 || i10 == 2);
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    public static class d extends C0023c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f1845c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f1846d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object f1847e;

        public d(p0.b bVar, f0.d dVar, boolean z10, boolean z11) {
            Object objX;
            Object objV;
            super(bVar, dVar);
            if (bVar.f2019a == 2) {
                if (z10) {
                    objV = bVar.f2021c.v();
                } else {
                    Objects.requireNonNull(bVar.f2021c);
                    objV = null;
                }
                this.f1845c = objV;
                if (z10) {
                    m.b bVar2 = bVar.f2021c.P;
                } else {
                    m.b bVar3 = bVar.f2021c.P;
                }
                this.f1846d = true;
            } else {
                if (z10) {
                    objX = bVar.f2021c.x();
                } else {
                    Objects.requireNonNull(bVar.f2021c);
                    objX = null;
                }
                this.f1845c = objX;
                this.f1846d = true;
            }
            if (!z11) {
                this.f1847e = null;
            } else if (z10) {
                this.f1847e = bVar.f2021c.y();
            } else {
                Objects.requireNonNull(bVar.f2021c);
                this.f1847e = null;
            }
        }

        public final k0 c(Object obj) {
            if (obj == null) {
                return null;
            }
            i0 i0Var = h0.f1917b;
            if (obj instanceof Transition) {
                return i0Var;
            }
            k0 k0Var = h0.f1918c;
            if (k0Var != null && k0Var.e(obj)) {
                return k0Var;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f1843a.f2021c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public c(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.p0
    public final void b(List<p0.b> list, boolean z10) {
        ArrayList<b> arrayList;
        String str;
        HashMap map;
        ArrayList<p0.b> arrayList2;
        boolean z11;
        String str2;
        ArrayList<View> arrayList3;
        Object obj;
        d dVar;
        View view;
        Object obj2;
        ArrayList<View> arrayList4;
        Object obj3;
        HashMap map2;
        p0.b bVar;
        ArrayList arrayList5;
        ArrayList<View> arrayList6;
        View view2;
        HashMap map3;
        Object objJ;
        p0.b bVar2;
        ArrayList arrayList7;
        ArrayList<View> arrayList8;
        ArrayList<View> arrayList9;
        Rect rect;
        HashMap map4;
        View view3;
        ArrayList<String> arrayList10;
        ArrayList<String> arrayList11;
        ArrayList<String> arrayList12;
        ArrayList<String> arrayList13;
        int i10;
        boolean z12;
        View view4;
        Rect rect2;
        View view5;
        ArrayList<p0.b> arrayList14 = (ArrayList) list;
        p0.b bVar3 = null;
        p0.b bVar4 = null;
        for (p0.b bVar5 : arrayList14) {
            int iC = r0.c(bVar5.f2021c.M);
            int iA = q.g.a(bVar5.f2019a);
            if (iA != 0) {
                if (iA != 1) {
                    if (iA == 2 || iA == 3) {
                    }
                } else if (iC != 2) {
                    bVar4 = bVar5;
                }
            }
            if (iC == 2 && bVar3 == null) {
                bVar3 = bVar5;
            }
        }
        ArrayList arrayList15 = new ArrayList();
        ArrayList<d> arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList(list);
        for (p0.b bVar6 : arrayList14) {
            f0.d dVar2 = new f0.d();
            bVar6.e();
            bVar6.f2023e.add(dVar2);
            arrayList15.add(new b(bVar6, dVar2, z10));
            f0.d dVar3 = new f0.d();
            bVar6.e();
            bVar6.f2023e.add(dVar3);
            arrayList16.add(new d(bVar6, dVar3, z10, !z10 ? bVar6 != bVar4 : bVar6 != bVar3));
            bVar6.a(new a(arrayList17, bVar6));
        }
        HashMap map5 = new HashMap();
        k0 k0Var = null;
        for (d dVar4 : arrayList16) {
            if (!dVar4.b()) {
                k0 k0VarC = dVar4.c(dVar4.f1845c);
                k0 k0VarC2 = dVar4.c(dVar4.f1847e);
                if (k0VarC != null && k0VarC2 != null && k0VarC != k0VarC2) {
                    StringBuilder sbC = a0.b.c("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    sbC.append(dVar4.f1843a.f2021c);
                    sbC.append(" returned Transition ");
                    sbC.append(dVar4.f1845c);
                    sbC.append(" which uses a different Transition  type than its shared element transition ");
                    sbC.append(dVar4.f1847e);
                    throw new IllegalArgumentException(sbC.toString());
                }
                if (k0VarC == null) {
                    k0VarC = k0VarC2;
                }
                if (k0Var == null) {
                    k0Var = k0VarC;
                } else if (k0VarC != null && k0Var != k0VarC) {
                    StringBuilder sbC2 = a0.b.c("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    sbC2.append(dVar4.f1843a.f2021c);
                    sbC2.append(" returned Transition ");
                    sbC2.append(dVar4.f1845c);
                    sbC2.append(" which uses a different Transition  type than other Fragments.");
                    throw new IllegalArgumentException(sbC2.toString());
                }
            }
        }
        if (k0Var == null) {
            for (d dVar5 : arrayList16) {
                map5.put(dVar5.f1843a, Boolean.FALSE);
                dVar5.a();
            }
            z11 = false;
            map = map5;
            str = "FragmentManager";
            arrayList = arrayList15;
            arrayList2 = arrayList17;
        } else {
            View view6 = new View(this.f2013a.getContext());
            Rect rect3 = new Rect();
            ArrayList<View> arrayList18 = new ArrayList<>();
            ArrayList<View> arrayList19 = new ArrayList<>();
            p.a aVar = new p.a();
            Iterator it = arrayList16.iterator();
            Object obj4 = null;
            String str3 = "FragmentManager";
            arrayList = arrayList15;
            p0.b bVar7 = bVar3;
            p0.b bVar8 = bVar4;
            View view7 = null;
            boolean z13 = false;
            while (it.hasNext()) {
                ArrayList arrayList20 = arrayList17;
                Object obj5 = ((d) it.next()).f1847e;
                if (!(obj5 != null) || bVar7 == null || bVar8 == null) {
                    arrayList7 = arrayList16;
                    arrayList8 = arrayList19;
                    arrayList9 = arrayList18;
                    rect = rect3;
                    View view8 = view6;
                    map4 = map5;
                    view3 = view8;
                } else {
                    Object objT = k0Var.t(k0Var.f(obj5));
                    m.b bVar9 = bVar8.f2021c.P;
                    if (bVar9 == null || (arrayList10 = bVar9.f1992h) == null) {
                        arrayList10 = new ArrayList<>();
                    }
                    arrayList7 = arrayList16;
                    m.b bVar10 = bVar7.f2021c.P;
                    if (bVar10 == null || (arrayList11 = bVar10.f1992h) == null) {
                        arrayList11 = new ArrayList<>();
                    }
                    HashMap map6 = map5;
                    m.b bVar11 = bVar7.f2021c.P;
                    if (bVar11 == null || (arrayList12 = bVar11.f1993i) == null) {
                        arrayList12 = new ArrayList<>();
                    }
                    View view9 = view6;
                    int i11 = 0;
                    Rect rect4 = rect3;
                    while (i11 < arrayList12.size()) {
                        int iIndexOf = arrayList10.indexOf(arrayList12.get(i11));
                        ArrayList<String> arrayList21 = arrayList12;
                        if (iIndexOf != -1) {
                            arrayList10.set(iIndexOf, arrayList11.get(i11));
                        }
                        i11++;
                        arrayList12 = arrayList21;
                    }
                    m.b bVar12 = bVar8.f2021c.P;
                    if (bVar12 == null || (arrayList13 = bVar12.f1993i) == null) {
                        arrayList13 = new ArrayList<>();
                    }
                    if (z10) {
                        Objects.requireNonNull(bVar7.f2021c);
                        Objects.requireNonNull(bVar8.f2021c);
                    } else {
                        Objects.requireNonNull(bVar7.f2021c);
                        Objects.requireNonNull(bVar8.f2021c);
                    }
                    int i12 = 0;
                    for (int size = arrayList10.size(); i12 < size; size = size) {
                        aVar.put(arrayList10.get(i12), arrayList13.get(i12));
                        i12++;
                    }
                    p.a<String, View> aVar2 = new p.a<>();
                    k(aVar2, bVar7.f2021c.M);
                    p.f.k(aVar2, arrayList10);
                    p.f.k(aVar, aVar2.keySet());
                    p.a<String, View> aVar3 = new p.a<>();
                    k(aVar3, bVar8.f2021c.M);
                    p.f.k(aVar3, arrayList13);
                    p.f.k(aVar3, aVar.values());
                    h0.b(aVar, aVar3);
                    l(aVar2, aVar.keySet());
                    l(aVar3, aVar.values());
                    if (aVar.isEmpty()) {
                        arrayList18.clear();
                        arrayList19.clear();
                        obj4 = null;
                        arrayList8 = arrayList19;
                        arrayList9 = arrayList18;
                        rect = rect4;
                        view3 = view9;
                        map4 = map6;
                    } else {
                        h0.a(bVar8.f2021c, bVar7.f2021c, z10);
                        j0.t.a(this.f2013a, new h(bVar4, bVar3, z10, aVar3));
                        arrayList18.addAll(aVar2.values());
                        if (arrayList10.isEmpty()) {
                            i10 = 0;
                            z12 = false;
                            view4 = view7;
                        } else {
                            i10 = 0;
                            String str4 = arrayList10.get(0);
                            z12 = false;
                            view4 = (View) aVar2.getOrDefault(str4, null);
                            k0Var.o(objT, view4);
                        }
                        arrayList19.addAll(aVar3.values());
                        if (arrayList13.isEmpty() || (view5 = (View) aVar3.getOrDefault(arrayList13.get(i10), z12)) == null) {
                            rect2 = rect4;
                        } else {
                            rect2 = rect4;
                            j0.t.a(this.f2013a, new i(k0Var, view5, rect2));
                            z13 = true;
                        }
                        view3 = view9;
                        k0Var.r(objT, view3, arrayList18);
                        arrayList8 = arrayList19;
                        rect = rect2;
                        k0Var.m(objT, null, null, null, null, objT, arrayList8);
                        Boolean bool = Boolean.TRUE;
                        map4 = map6;
                        map4.put(bVar3, bool);
                        map4.put(bVar4, bool);
                        view7 = view4;
                        bVar7 = bVar3;
                        obj4 = objT;
                        arrayList9 = arrayList18;
                        bVar8 = bVar4;
                    }
                }
                rect3 = rect;
                arrayList18 = arrayList9;
                arrayList17 = arrayList20;
                arrayList16 = arrayList7;
                aVar = aVar;
                arrayList19 = arrayList8;
                HashMap map7 = map4;
                view6 = view3;
                map5 = map7;
            }
            ArrayList<d> arrayList22 = arrayList16;
            ArrayList arrayList23 = arrayList17;
            p.a aVar4 = aVar;
            ArrayList<View> arrayList24 = arrayList19;
            ArrayList<View> arrayList25 = arrayList18;
            Rect rect5 = rect3;
            View view10 = view6;
            HashMap map8 = map5;
            View view11 = view10;
            ArrayList arrayList26 = new ArrayList();
            Object obj6 = null;
            Object objJ2 = null;
            for (Iterator it2 = arrayList22.iterator(); it2.hasNext(); it2 = it2) {
                d dVar6 = (d) it2.next();
                if (dVar6.b()) {
                    map8.put(dVar6.f1843a, Boolean.FALSE);
                    dVar6.a();
                    view = view11;
                    bVar2 = bVar8;
                    arrayList4 = arrayList25;
                    obj = obj4;
                    objJ = obj6;
                    map3 = map8;
                    view2 = view7;
                    arrayList5 = arrayList23;
                    arrayList3 = arrayList24;
                } else {
                    Object objF = k0Var.f(dVar6.f1845c);
                    p0.b bVar13 = dVar6.f1843a;
                    boolean z14 = obj4 != null && (bVar13 == bVar7 || bVar13 == bVar8);
                    if (objF == null) {
                        if (!z14) {
                            map8.put(bVar13, Boolean.FALSE);
                            dVar6.a();
                        }
                        view = view11;
                        arrayList4 = arrayList25;
                        obj = obj4;
                        objJ = obj6;
                        map3 = map8;
                        view2 = view7;
                        arrayList5 = arrayList23;
                        arrayList3 = arrayList24;
                    } else {
                        HashMap map9 = map8;
                        ArrayList<View> arrayList27 = new ArrayList<>();
                        Object obj7 = obj4;
                        j(arrayList27, bVar13.f2021c.M);
                        if (!z14) {
                            arrayList3 = arrayList24;
                        } else if (bVar13 == bVar7) {
                            arrayList27.removeAll(arrayList25);
                            arrayList3 = arrayList24;
                        } else {
                            arrayList3 = arrayList24;
                            arrayList27.removeAll(arrayList3);
                        }
                        if (arrayList27.isEmpty()) {
                            k0Var.a(objF, view11);
                            view = view11;
                            arrayList4 = arrayList25;
                            bVar = bVar13;
                            dVar = dVar6;
                            obj2 = objJ2;
                            obj3 = obj6;
                            arrayList6 = arrayList27;
                            obj = obj7;
                            arrayList5 = arrayList23;
                            map2 = map9;
                        } else {
                            k0Var.b(objF, arrayList27);
                            obj = obj7;
                            dVar = dVar6;
                            view = view11;
                            obj2 = objJ2;
                            arrayList4 = arrayList25;
                            obj3 = obj6;
                            map2 = map9;
                            k0Var.m(objF, objF, arrayList27, null, null, null, null);
                            bVar = bVar13;
                            arrayList5 = arrayList23;
                            if (bVar.f2019a == 3) {
                                arrayList5.remove(bVar);
                                arrayList6 = arrayList27;
                                ArrayList<View> arrayList28 = new ArrayList<>(arrayList6);
                                arrayList28.remove(bVar.f2021c.M);
                                k0Var.l(objF, bVar.f2021c.M, arrayList28);
                                j0.t.a(this.f2013a, new j(arrayList6));
                            } else {
                                arrayList6 = arrayList27;
                            }
                        }
                        if (bVar.f2019a == 2) {
                            arrayList26.addAll(arrayList6);
                            if (z13) {
                                k0Var.n(objF, rect5);
                            }
                            view2 = view7;
                        } else {
                            view2 = view7;
                            k0Var.o(objF, view2);
                        }
                        map3 = map2;
                        map3.put(bVar, Boolean.TRUE);
                        if (dVar.f1846d) {
                            objJ2 = k0Var.j(obj2, objF, null);
                            objJ = obj3;
                        } else {
                            objJ = k0Var.j(obj3, objF, null);
                            objJ2 = obj2;
                        }
                    }
                    bVar2 = bVar4;
                }
                arrayList24 = arrayList3;
                view7 = view2;
                arrayList23 = arrayList5;
                obj4 = obj;
                arrayList25 = arrayList4;
                bVar8 = bVar2;
                map8 = map3;
                view11 = view;
                obj6 = objJ;
            }
            ArrayList<View> arrayList29 = arrayList25;
            Object obj8 = obj4;
            Object obj9 = obj6;
            HashMap map10 = map8;
            ArrayList arrayList30 = arrayList23;
            ArrayList<View> arrayList31 = arrayList24;
            Object objI = k0Var.i(objJ2, obj9, obj8);
            for (d dVar7 : arrayList22) {
                if (!dVar7.b()) {
                    Object obj10 = dVar7.f1845c;
                    p0.b bVar14 = dVar7.f1843a;
                    boolean z15 = obj8 != null && (bVar14 == bVar7 || bVar14 == bVar4);
                    if (obj10 != null || z15) {
                        ViewGroup viewGroup = this.f2013a;
                        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                        if (j0.a0.g.c(viewGroup)) {
                            str2 = str3;
                            m mVar = dVar7.f1843a.f2021c;
                            k0Var.p(objI, dVar7.f1844b, new k(dVar7));
                        } else {
                            if (x.L(2)) {
                                StringBuilder sbC3 = a0.b.c("SpecialEffectsController: Container ");
                                sbC3.append(this.f2013a);
                                sbC3.append(" has not been laid out. Completing operation ");
                                sbC3.append(bVar14);
                                str2 = str3;
                                Log.v(str2, sbC3.toString());
                            } else {
                                str2 = str3;
                            }
                            dVar7.a();
                        }
                    } else {
                        str2 = str3;
                    }
                    str3 = str2;
                }
            }
            String str5 = str3;
            ViewGroup viewGroup2 = this.f2013a;
            WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
            if (j0.a0.g.c(viewGroup2)) {
                h0.c(arrayList26, 4);
                ArrayList<String> arrayListK = k0Var.k(arrayList31);
                k0Var.c(this.f2013a, objI);
                str = str5;
                map = map10;
                arrayList2 = arrayList30;
                k0Var.q(this.f2013a, arrayList29, arrayList31, arrayListK, aVar4);
                h0.c(arrayList26, 0);
                k0Var.s(obj8, arrayList29, arrayList31);
                z11 = false;
            } else {
                z11 = false;
                str = str5;
                map = map10;
                arrayList2 = arrayList30;
            }
        }
        boolean zContainsValue = map.containsValue(Boolean.TRUE);
        ViewGroup viewGroup3 = this.f2013a;
        Context context = viewGroup3.getContext();
        ArrayList<b> arrayList32 = new ArrayList();
        for (b bVar15 : arrayList) {
            if (bVar15.b()) {
                bVar15.a();
            } else {
                q.a aVarC = bVar15.c(context);
                if (aVarC == null) {
                    bVar15.a();
                } else {
                    Animator animator = aVarC.f2027b;
                    if (animator == null) {
                        arrayList32.add(bVar15);
                    } else {
                        p0.b bVar16 = bVar15.f1843a;
                        m mVar2 = bVar16.f2021c;
                        if (Boolean.TRUE.equals(map.get(bVar16))) {
                            if (x.L(2)) {
                                Log.v(str, "Ignoring Animator set on " + mVar2 + " as this Fragment was involved in a Transition.");
                            }
                            bVar15.a();
                        } else {
                            boolean z16 = bVar16.f2019a == 3;
                            if (z16) {
                                arrayList2.remove(bVar16);
                            }
                            View view12 = mVar2.M;
                            viewGroup3.startViewTransition(view12);
                            animator.addListener(new androidx.fragment.app.d(viewGroup3, view12, z16, bVar16, bVar15));
                            animator.setTarget(view12);
                            animator.start();
                            bVar15.f1844b.b(new e(animator));
                            z11 = true;
                        }
                    }
                }
            }
        }
        for (b bVar17 : arrayList32) {
            p0.b bVar18 = bVar17.f1843a;
            m mVar3 = bVar18.f2021c;
            if (zContainsValue) {
                if (x.L(2)) {
                    Log.v(str, "Ignoring Animation set on " + mVar3 + " as Animations cannot run alongside Transitions.");
                }
                bVar17.a();
            } else if (z11) {
                if (x.L(2)) {
                    Log.v(str, "Ignoring Animation set on " + mVar3 + " as Animations cannot run alongside Animators.");
                }
                bVar17.a();
            } else {
                View view13 = mVar3.M;
                q.a aVarC2 = bVar17.c(context);
                Objects.requireNonNull(aVarC2);
                Animation animation = aVarC2.f2026a;
                Objects.requireNonNull(animation);
                if (bVar18.f2019a != 1) {
                    view13.startAnimation(animation);
                    bVar17.a();
                } else {
                    viewGroup3.startViewTransition(view13);
                    q.b bVar19 = new q.b(animation, viewGroup3, view13);
                    bVar19.setAnimationListener(new f(viewGroup3, view13, bVar17));
                    view13.startAnimation(bVar19);
                }
                bVar17.f1844b.b(new g(view13, viewGroup3, bVar17));
            }
        }
        for (p0.b bVar20 : arrayList2) {
            r0.a(bVar20.f2019a, bVar20.f2021c.M);
        }
        arrayList2.clear();
    }

    public final void j(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (j0.d0.b(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                j(arrayList, childAt);
            }
        }
    }

    public final void k(Map<String, View> map, View view) {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        String strK = j0.a0.i.k(view);
        if (strK != null) {
            map.put(strK, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    k(map, childAt);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l(p.a<String, View> aVar, Collection<String> collection) {
        Iterator it = ((p.f.b) aVar.entrySet()).iterator();
        while (true) {
            p.f.d dVar = (p.f.d) it;
            if (!dVar.hasNext()) {
                return;
            }
            dVar.next();
            View view = (View) dVar.getValue();
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            if (!collection.contains(j0.a0.i.k(view))) {
                dVar.remove();
            }
        }
    }
}
