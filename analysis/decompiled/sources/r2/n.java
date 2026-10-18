package r2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: EngineJob.java */
/* JADX INFO: loaded from: classes.dex */
public final class n<R> implements j.a<R>, m3.a.d {
    public static final c G = new c();
    public r A;
    public boolean B;
    public q<?> C;
    public j<R> D;
    public volatile boolean E;
    public boolean F;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f14330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m3.d.a f14331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final q.a f14332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i0.e<n<?>> f14333k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final c f14334l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final o f14335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final u2.a f14336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final u2.a f14337o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final u2.a f14338p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final u2.a f14339q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AtomicInteger f14340r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public p2.f f14341s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f14342t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f14343u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f14344v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f14345w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public w<?> f14346x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public p2.a f14347y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f14348z;

    /* JADX INFO: compiled from: EngineJob.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final h3.h f14349h;

        public a(h3.h hVar) {
            this.f14349h = hVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            h3.i iVar = (h3.i) this.f14349h;
            iVar.f8141b.a();
            synchronized (iVar.f8142c) {
                synchronized (n.this) {
                    if (n.this.f14330h.f14355h.contains(new d(this.f14349h, l3.e.f9931b))) {
                        n nVar = n.this;
                        h3.h hVar = this.f14349h;
                        Objects.requireNonNull(nVar);
                        try {
                            ((h3.i) hVar).o(nVar.A, 5);
                        } catch (Throwable th) {
                            throw new r2.d(th);
                        }
                    }
                    n.this.c();
                }
            }
        }
    }

    /* JADX INFO: compiled from: EngineJob.java */
    public class b implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final h3.h f14351h;

        public b(h3.h hVar) {
            this.f14351h = hVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            h3.i iVar = (h3.i) this.f14351h;
            iVar.f8141b.a();
            synchronized (iVar.f8142c) {
                synchronized (n.this) {
                    if (n.this.f14330h.f14355h.contains(new d(this.f14351h, l3.e.f9931b))) {
                        n.this.C.d();
                        n nVar = n.this;
                        h3.h hVar = this.f14351h;
                        Objects.requireNonNull(nVar);
                        try {
                            ((h3.i) hVar).q(nVar.C, nVar.f14347y, nVar.F);
                            n.this.g(this.f14351h);
                        } catch (Throwable th) {
                            throw new r2.d(th);
                        }
                    }
                    n.this.c();
                }
            }
        }
    }

    /* JADX INFO: compiled from: EngineJob.java */
    public static class c {
    }

    /* JADX INFO: compiled from: EngineJob.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final h3.h f14353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f14354b;

        public d(h3.h hVar, Executor executor) {
            this.f14353a = hVar;
            this.f14354b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f14353a.equals(((d) obj).f14353a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f14353a.hashCode();
        }
    }

    /* JADX INFO: compiled from: EngineJob.java */
    public static final class e implements Iterable<d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List<d> f14355h = new ArrayList(2);

        public final boolean isEmpty() {
            return this.f14355h.isEmpty();
        }

        @Override // java.lang.Iterable
        public final Iterator<d> iterator() {
            return this.f14355h.iterator();
        }
    }

    public n(u2.a aVar, u2.a aVar2, u2.a aVar3, u2.a aVar4, o oVar, q.a aVar5, i0.e<n<?>> eVar) {
        c cVar = G;
        this.f14330h = new e();
        this.f14331i = new m3.d.a();
        this.f14340r = new AtomicInteger();
        this.f14336n = aVar;
        this.f14337o = aVar2;
        this.f14338p = aVar3;
        this.f14339q = aVar4;
        this.f14335m = oVar;
        this.f14332j = aVar5;
        this.f14333k = eVar;
        this.f14334l = cVar;
    }

    public final synchronized void a(h3.h hVar, Executor executor) {
        this.f14331i.a();
        this.f14330h.f14355h.add(new d(hVar, executor));
        boolean z10 = true;
        if (this.f14348z) {
            d(1);
            executor.execute(new b(hVar));
        } else if (this.B) {
            d(1);
            executor.execute(new a(hVar));
        } else {
            if (this.E) {
                z10 = false;
            }
            c3.d.e(z10, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    public final void b() {
        if (e()) {
            return;
        }
        this.E = true;
        j<R> jVar = this.D;
        jVar.L = true;
        h hVar = jVar.J;
        if (hVar != null) {
            hVar.cancel();
        }
        o oVar = this.f14335m;
        p2.f fVar = this.f14341s;
        m mVar = (m) oVar;
        synchronized (mVar) {
            t tVar = mVar.f14306a;
            Objects.requireNonNull(tVar);
            Map<p2.f, n<?>> mapA = tVar.a(this.f14345w);
            if (equals(mapA.get(fVar))) {
                mapA.remove(fVar);
            }
        }
    }

    public final void c() {
        q<?> qVar;
        synchronized (this) {
            this.f14331i.a();
            c3.d.e(e(), "Not yet complete!");
            int iDecrementAndGet = this.f14340r.decrementAndGet();
            c3.d.e(iDecrementAndGet >= 0, "Can't decrement below 0");
            if (iDecrementAndGet == 0) {
                qVar = this.C;
                f();
            } else {
                qVar = null;
            }
        }
        if (qVar != null) {
            qVar.e();
        }
    }

    public final synchronized void d(int i10) {
        q<?> qVar;
        c3.d.e(e(), "Not yet complete!");
        if (this.f14340r.getAndAdd(i10) == 0 && (qVar = this.C) != null) {
            qVar.d();
        }
    }

    public final boolean e() {
        return this.B || this.f14348z || this.E;
    }

    public final synchronized void f() {
        boolean zA;
        if (this.f14341s == null) {
            throw new IllegalArgumentException();
        }
        this.f14330h.f14355h.clear();
        this.f14341s = null;
        this.C = null;
        this.f14346x = null;
        this.B = false;
        this.E = false;
        this.f14348z = false;
        this.F = false;
        j<R> jVar = this.D;
        j.e eVar = jVar.f14276n;
        synchronized (eVar) {
            eVar.f14294a = true;
            zA = eVar.a();
        }
        if (zA) {
            jVar.t();
        }
        this.D = null;
        this.A = null;
        this.f14347y = null;
        this.f14333k.a(this);
    }

    public final synchronized void g(h3.h hVar) {
        this.f14331i.a();
        this.f14330h.f14355h.remove(new d(hVar, l3.e.f9931b));
        if (this.f14330h.isEmpty()) {
            b();
            if ((this.f14348z || this.B) && this.f14340r.get() == 0) {
                f();
            }
        }
    }

    public final void h(j<?> jVar) {
        u2.a aVar;
        if (this.f14343u) {
            aVar = this.f14338p;
        } else {
            aVar = this.f14344v ? this.f14339q : this.f14337o;
        }
        aVar.execute(jVar);
    }

    @Override // m3.a.d
    public final m3.d j() {
        return this.f14331i;
    }
}
