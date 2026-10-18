package androidx.lifecycle;

import android.annotation.SuppressLint;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LifecycleRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WeakReference<q> f2232d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public m.a<p, a> f2230b = new m.a<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2233e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2234f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2235g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<i.c> f2236h = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i.c f2231c = i.c.INITIALIZED;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f2237i = true;

    /* JADX INFO: compiled from: LifecycleRegistry.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public i.c f2238a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public n f2239b;

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.util.List<java.lang.reflect.Constructor<? extends androidx.lifecycle.f>>>] */
        public a(p pVar, i.c cVar) {
            n reflectiveGenericLifecycleObserver;
            Map<Class<?>, Integer> map = u.f2241a;
            boolean z10 = pVar instanceof n;
            boolean z11 = pVar instanceof e;
            if (z10 && z11) {
                reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((e) pVar, (n) pVar);
            } else if (z11) {
                reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((e) pVar, null);
            } else if (z10) {
                reflectiveGenericLifecycleObserver = (n) pVar;
            } else {
                Class<?> cls = pVar.getClass();
                if (u.c(cls) == 2) {
                    List list = (List) u.f2242b.get(cls);
                    if (list.size() == 1) {
                        reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(u.a((Constructor) list.get(0), pVar));
                    } else {
                        f[] fVarArr = new f[list.size()];
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            fVarArr[i10] = u.a((Constructor) list.get(i10), pVar);
                        }
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(fVarArr);
                    }
                } else {
                    reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(pVar);
                }
            }
            this.f2239b = reflectiveGenericLifecycleObserver;
            this.f2238a = cVar;
        }

        public final void a(q qVar, i.b bVar) {
            i.c cVarG = bVar.g();
            this.f2238a = r.g(this.f2238a, cVarG);
            this.f2239b.a(qVar, bVar);
            this.f2238a = cVarG;
        }
    }

    public r(q qVar) {
        this.f2232d = new WeakReference<>(qVar);
    }

    public static i.c g(i.c cVar, i.c cVar2) {
        return (cVar2 == null || cVar2.compareTo(cVar) >= 0) ? cVar : cVar2;
    }

    @Override // androidx.lifecycle.i
    public final void a(p pVar) {
        q qVar;
        e("addObserver");
        i.c cVar = this.f2231c;
        i.c cVar2 = i.c.DESTROYED;
        if (cVar != cVar2) {
            cVar2 = i.c.INITIALIZED;
        }
        a aVar = new a(pVar, cVar2);
        if (this.f2230b.m(pVar, aVar) == null && (qVar = this.f2232d.get()) != null) {
            boolean z10 = this.f2233e != 0 || this.f2234f;
            i.c cVarD = d(pVar);
            this.f2233e++;
            while (aVar.f2238a.compareTo(cVarD) < 0 && this.f2230b.contains(pVar)) {
                j(aVar.f2238a);
                i.b bVarI = i.b.i(aVar.f2238a);
                if (bVarI == null) {
                    StringBuilder sbC = a0.b.c("no event up from ");
                    sbC.append(aVar.f2238a);
                    throw new IllegalStateException(sbC.toString());
                }
                aVar.a(qVar, bVarI);
                i();
                cVarD = d(pVar);
            }
            if (!z10) {
                l();
            }
            this.f2233e--;
        }
    }

    @Override // androidx.lifecycle.i
    public final i.c b() {
        return this.f2231c;
    }

    @Override // androidx.lifecycle.i
    public final void c(p pVar) {
        e("removeObserver");
        this.f2230b.n(pVar);
    }

    public final i.c d(p pVar) {
        m.a<p, a> aVar = this.f2230b;
        i.c cVar = null;
        m.b.c<p, a> cVar2 = aVar.contains(pVar) ? aVar.f10244l.get(pVar).f10252k : null;
        i.c cVar3 = cVar2 != null ? cVar2.f10250i.f2238a : null;
        if (!this.f2236h.isEmpty()) {
            ArrayList<i.c> arrayList = this.f2236h;
            cVar = arrayList.get(arrayList.size() - 1);
        }
        return g(g(this.f2231c, cVar3), cVar);
    }

    @SuppressLint({"RestrictedApi"})
    public final void e(String str) {
        if (this.f2237i && !l.a.c().d()) {
            throw new IllegalStateException(a0.d.c("Method ", str, " must be called on the main thread"));
        }
    }

    public final void f(i.b bVar) {
        e("handleLifecycleEvent");
        h(bVar.g());
    }

    public final void h(i.c cVar) {
        i.c cVar2 = i.c.DESTROYED;
        i.c cVar3 = this.f2231c;
        if (cVar3 == cVar) {
            return;
        }
        if (cVar3 == i.c.INITIALIZED && cVar == cVar2) {
            StringBuilder sbC = a0.b.c("no event down from ");
            sbC.append(this.f2231c);
            throw new IllegalStateException(sbC.toString());
        }
        this.f2231c = cVar;
        if (this.f2234f || this.f2233e != 0) {
            this.f2235g = true;
            return;
        }
        this.f2234f = true;
        l();
        this.f2234f = false;
        if (this.f2231c == cVar2) {
            this.f2230b = new m.a<>();
        }
    }

    public final void i() {
        ArrayList<i.c> arrayList = this.f2236h;
        arrayList.remove(arrayList.size() - 1);
    }

    public final void j(i.c cVar) {
        this.f2236h.add(cVar);
    }

    public final void k() {
        i.c cVar = i.c.CREATED;
        e("setCurrentState");
        h(cVar);
    }

    public final void l() {
        q qVar = this.f2232d.get();
        if (qVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            m.a<p, a> aVar = this.f2230b;
            boolean z10 = true;
            if (aVar.f10248k != 0) {
                i.c cVar = aVar.f10245h.getValue().f2238a;
                i.c cVar2 = this.f2230b.f10246i.getValue().f2238a;
                if (cVar != cVar2 || this.f2231c != cVar2) {
                    z10 = false;
                }
            }
            if (z10) {
                this.f2235g = false;
                return;
            }
            this.f2235g = false;
            if (this.f2231c.compareTo(this.f2230b.f10245h.f10250i.f2238a) < 0) {
                m.a<p, a> aVar2 = this.f2230b;
                m.b.C0200b c0200b = new m.b.C0200b(aVar2.f10246i, aVar2.f10245h);
                aVar2.f10247j.put(c0200b, Boolean.FALSE);
                while (c0200b.hasNext() && !this.f2235g) {
                    Map.Entry entry = (Map.Entry) c0200b.next();
                    a aVar3 = (a) entry.getValue();
                    while (aVar3.f2238a.compareTo(this.f2231c) > 0 && !this.f2235g && this.f2230b.contains((p) entry.getKey())) {
                        i.b bVarB = i.b.b(aVar3.f2238a);
                        if (bVarB == null) {
                            StringBuilder sbC = a0.b.c("no event down from ");
                            sbC.append(aVar3.f2238a);
                            throw new IllegalStateException(sbC.toString());
                        }
                        j(bVarB.g());
                        aVar3.a(qVar, bVarB);
                        i();
                    }
                }
            }
            m.b.c<p, a> cVar3 = this.f2230b.f10246i;
            if (!this.f2235g && cVar3 != null && this.f2231c.compareTo(cVar3.f10250i.f2238a) > 0) {
                m.b<p, a>.d dVarK = this.f2230b.k();
                while (dVarK.hasNext() && !this.f2235g) {
                    Map.Entry entry2 = (Map.Entry) dVarK.next();
                    a aVar4 = (a) entry2.getValue();
                    while (aVar4.f2238a.compareTo(this.f2231c) < 0 && !this.f2235g && this.f2230b.contains((p) entry2.getKey())) {
                        j(aVar4.f2238a);
                        i.b bVarI = i.b.i(aVar4.f2238a);
                        if (bVarI == null) {
                            StringBuilder sbC2 = a0.b.c("no event up from ");
                            sbC2.append(aVar4.f2238a);
                            throw new IllegalStateException(sbC2.toString());
                        }
                        aVar4.a(qVar, bVarI);
                        i();
                    }
                }
            }
        }
    }
}
