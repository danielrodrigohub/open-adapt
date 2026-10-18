package n3;

import android.os.Handler;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;

/* JADX INFO: compiled from: MediaSourceList.java */
/* JADX INFO: loaded from: classes.dex */
public final class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o3.v0 f11401a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f11405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p4.e0.a f11406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r3.k.a f11407g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap<c, b> f11408h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Set<c> f11409i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f11411k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public l5.j0 f11412l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p4.o0 f11410j = new p4.o0.a(new Random());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IdentityHashMap<p4.v, c> f11403c = new IdentityHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Object, c> f11404d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<c> f11402b = new ArrayList();

    /* JADX INFO: compiled from: MediaSourceList.java */
    public final class a implements p4.e0, r3.k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final c f11413h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public p4.e0.a f11414i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public r3.k.a f11415j;

        public a(c cVar) {
            this.f11414i = h1.this.f11406f;
            this.f11415j = h1.this.f11407g;
            this.f11413h = cVar;
        }

        @Override // p4.e0
        public final void H(int i10, p4.x.b bVar, p4.u uVar) {
            if (b(i10, bVar)) {
                this.f11414i.c(uVar);
            }
        }

        @Override // r3.k
        public final void J(int i10, p4.x.b bVar) {
            if (b(i10, bVar)) {
                this.f11415j.f();
            }
        }

        @Override // p4.e0
        public final void M(int i10, p4.x.b bVar, p4.u uVar) {
            if (b(i10, bVar)) {
                this.f11414i.q(uVar);
            }
        }

        @Override // p4.e0
        public final void O(int i10, p4.x.b bVar, p4.r rVar, p4.u uVar) {
            if (b(i10, bVar)) {
                this.f11414i.o(rVar, uVar);
            }
        }

        @Override // p4.e0
        public final void P(int i10, p4.x.b bVar, p4.r rVar, p4.u uVar, IOException iOException, boolean z10) {
            if (b(i10, bVar)) {
                this.f11414i.l(rVar, uVar, iOException, z10);
            }
        }

        @Override // p4.e0
        public final void Q(int i10, p4.x.b bVar, p4.r rVar, p4.u uVar) {
            if (b(i10, bVar)) {
                this.f11414i.f(rVar, uVar);
            }
        }

        @Override // r3.k
        public final void T(int i10, p4.x.b bVar) {
            if (b(i10, bVar)) {
                this.f11415j.c();
            }
        }

        @Override // p4.e0
        public final void Y(int i10, p4.x.b bVar, p4.r rVar, p4.u uVar) {
            if (b(i10, bVar)) {
                this.f11414i.i(rVar, uVar);
            }
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
        public final boolean b(int i10, p4.x.b bVar) {
            p4.x.b bVarB = null;
            if (bVar != null) {
                c cVar = this.f11413h;
                for (int i11 = 0; i11 < cVar.f11422c.size(); i11++) {
                    if (((p4.x.b) cVar.f11422c.get(i11)).f13241d == bVar.f13241d) {
                        Object obj = bVar.f13238a;
                        Object obj2 = cVar.f11421b;
                        int i12 = n3.a.f11218l;
                        bVarB = bVar.b(Pair.create(obj2, obj));
                        break;
                    }
                }
                if (bVarB == null) {
                    return false;
                }
            }
            int i13 = i10 + this.f11413h.f11423d;
            p4.e0.a aVar = this.f11414i;
            if (aVar.f12968a != i13 || !m5.g0.a(aVar.f12969b, bVarB)) {
                this.f11414i = h1.this.f11406f.r(i13, bVarB, 0L);
            }
            r3.k.a aVar2 = this.f11415j;
            if (aVar2.f14502a == i13 && m5.g0.a(aVar2.f14503b, bVarB)) {
                return true;
            }
            this.f11415j = h1.this.f11407g.g(i13, bVarB);
            return true;
        }

        @Override // r3.k
        public final void d0(int i10, p4.x.b bVar, Exception exc) {
            if (b(i10, bVar)) {
                this.f11415j.e(exc);
            }
        }

        @Override // r3.k
        public final void i0(int i10, p4.x.b bVar) {
            if (b(i10, bVar)) {
                this.f11415j.b();
            }
        }

        @Override // r3.k
        public final void k0(int i10, p4.x.b bVar, int i11) {
            if (b(i10, bVar)) {
                this.f11415j.d(i11);
            }
        }

        @Override // r3.k
        public final void p0(int i10, p4.x.b bVar) {
            if (b(i10, bVar)) {
                this.f11415j.a();
            }
        }
    }

    /* JADX INFO: compiled from: MediaSourceList.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p4.x f11417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final p4.x.c f11418b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f11419c;

        public b(p4.x xVar, p4.x.c cVar, a aVar) {
            this.f11417a = xVar;
            this.f11418b = cVar;
            this.f11419c = aVar;
        }
    }

    /* JADX INFO: compiled from: MediaSourceList.java */
    public static final class c implements f1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p4.t f11420a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f11423d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f11424e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<p4.x.b> f11422c = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f11421b = new Object();

        public c(p4.x xVar, boolean z10) {
            this.f11420a = new p4.t(xVar, z10);
        }

        @Override // n3.f1
        public final Object a() {
            return this.f11421b;
        }

        @Override // n3.f1
        public final b2 b() {
            return this.f11420a.f13211v;
        }
    }

    /* JADX INFO: compiled from: MediaSourceList.java */
    public interface d {
    }

    public h1(d dVar, o3.a aVar, Handler handler, o3.v0 v0Var) {
        this.f11401a = v0Var;
        this.f11405e = dVar;
        p4.e0.a aVar2 = new p4.e0.a();
        this.f11406f = aVar2;
        r3.k.a aVar3 = new r3.k.a();
        this.f11407g = aVar3;
        this.f11408h = new HashMap<>();
        this.f11409i = new HashSet();
        Objects.requireNonNull(aVar);
        aVar2.f12970c.add(new p4.e0.a.C0229a(handler, aVar));
        aVar3.f14504c.add(new r3.k.a.C0249a(handler, aVar));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.HashSet, java.util.Set<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.HashMap, java.util.Map<java.lang.Object, n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    public final b2 a(int i10, List<c> list, p4.o0 o0Var) {
        if (!list.isEmpty()) {
            this.f11410j = o0Var;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = (c) this.f11402b.get(i11 - 1);
                    cVar.f11423d = cVar2.f11420a.f13211v.r() + cVar2.f11423d;
                    cVar.f11424e = false;
                    cVar.f11422c.clear();
                } else {
                    cVar.f11423d = 0;
                    cVar.f11424e = false;
                    cVar.f11422c.clear();
                }
                b(i11, cVar.f11420a.f13211v.r());
                this.f11402b.add(i11, cVar);
                this.f11404d.put(cVar.f11421b, cVar);
                if (this.f11411k) {
                    g(cVar);
                    if (this.f11403c.isEmpty()) {
                        this.f11409i.add(cVar);
                    } else {
                        b bVar = this.f11408h.get(cVar);
                        if (bVar != null) {
                            bVar.f11417a.l(bVar.f11418b);
                        }
                    }
                }
            }
        }
        return c();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    public final void b(int i10, int i11) {
        while (i10 < this.f11402b.size()) {
            ((c) this.f11402b.get(i10)).f11423d += i11;
            i10++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    public final b2 c() {
        if (this.f11402b.isEmpty()) {
            return b2.f11293h;
        }
        int iR = 0;
        for (int i10 = 0; i10 < this.f11402b.size(); i10++) {
            c cVar = (c) this.f11402b.get(i10);
            cVar.f11423d = iR;
            iR += cVar.f11420a.f13211v.r();
        }
        return new q1(this.f11402b, this.f11410j);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
    public final void d() {
        Iterator it = this.f11409i.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f11422c.isEmpty()) {
                b bVar = this.f11408h.get(cVar);
                if (bVar != null) {
                    bVar.f11417a.l(bVar.f11418b);
                }
                it.remove();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    public final int e() {
        return this.f11402b.size();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.HashSet, java.util.Set<n3.h1$c>] */
    public final void f(c cVar) {
        if (cVar.f11424e && cVar.f11422c.isEmpty()) {
            b bVarRemove = this.f11408h.remove(cVar);
            Objects.requireNonNull(bVarRemove);
            bVarRemove.f11417a.g(bVarRemove.f11418b);
            bVarRemove.f11417a.j(bVarRemove.f11419c);
            bVarRemove.f11417a.n(bVarRemove.f11419c);
            this.f11409i.remove(cVar);
        }
    }

    public final void g(c cVar) {
        p4.t tVar = cVar.f11420a;
        p4.x.c cVar2 = new p4.x.c() { // from class: n3.g1
            @Override // p4.x.c
            public final void a(p4.x xVar, b2 b2Var) {
                ((o0) this.f11398a.f11405e).f11564o.e(22);
            }
        };
        a aVar = new a(cVar);
        this.f11408h.put(cVar, new b(tVar, cVar2, aVar));
        tVar.f(new Handler(m5.g0.t(), null), aVar);
        tVar.p(new Handler(m5.g0.t(), null), aVar);
        tVar.c(cVar2, this.f11412l, this.f11401a);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
    public final void h(p4.v vVar) {
        c cVarRemove = this.f11403c.remove(vVar);
        Objects.requireNonNull(cVarRemove);
        cVarRemove.f11420a.d(vVar);
        cVarRemove.f11422c.remove(((p4.s) vVar).f13195h);
        if (!this.f11403c.isEmpty()) {
            d();
        }
        f(cVarRemove);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashMap, java.util.Map<java.lang.Object, n3.h1$c>] */
    public final void i(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c cVar = (c) this.f11402b.remove(i12);
            this.f11404d.remove(cVar.f11421b);
            b(i12, -cVar.f11420a.f13211v.r());
            cVar.f11424e = true;
            if (this.f11411k) {
                f(cVar);
            }
        }
    }
}
