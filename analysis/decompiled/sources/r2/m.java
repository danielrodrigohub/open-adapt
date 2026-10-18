package r2;

import android.os.SystemClock;
import android.util.Log;
import androidx.fragment.app.r0;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Engine.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements o, t2.h.a, q.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f14305h = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f14306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m6.e f14307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t2.h f14308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f14309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final z f14310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f14311f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r2.c f14312g;

    /* JADX INFO: compiled from: Engine.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j.d f14313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final i0.e<j<?>> f14314b = (m3.a.c) m3.a.a(150, new C0246a());

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14315c;

        /* JADX INFO: renamed from: r2.m$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Engine.java */
        public class C0246a implements m3.a.b<j<?>> {
            public C0246a() {
            }

            @Override // m3.a.b
            public final j<?> create() {
                a aVar = a.this;
                return new j<>(aVar.f14313a, aVar.f14314b);
            }
        }

        public a(j.d dVar) {
            this.f14313a = dVar;
        }
    }

    /* JADX INFO: compiled from: Engine.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.a f14317a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final u2.a f14318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final u2.a f14319c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final u2.a f14320d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final o f14321e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final q.a f14322f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final i0.e<n<?>> f14323g = (m3.a.c) m3.a.a(150, new a());

        /* JADX INFO: compiled from: Engine.java */
        public class a implements m3.a.b<n<?>> {
            public a() {
            }

            @Override // m3.a.b
            public final n<?> create() {
                b bVar = b.this;
                return new n<>(bVar.f14317a, bVar.f14318b, bVar.f14319c, bVar.f14320d, bVar.f14321e, bVar.f14322f, bVar.f14323g);
            }
        }

        public b(u2.a aVar, u2.a aVar2, u2.a aVar3, u2.a aVar4, o oVar, q.a aVar5) {
            this.f14317a = aVar;
            this.f14318b = aVar2;
            this.f14319c = aVar3;
            this.f14320d = aVar4;
            this.f14321e = oVar;
            this.f14322f = aVar5;
        }
    }

    /* JADX INFO: compiled from: Engine.java */
    public static class c implements j.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t2.a.InterfaceC0262a f14325a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile t2.a f14326b;

        public c(t2.a.InterfaceC0262a interfaceC0262a) {
            this.f14325a = interfaceC0262a;
        }

        public final t2.a a() {
            if (this.f14326b == null) {
                synchronized (this) {
                    if (this.f14326b == null) {
                        this.f14326b = this.f14325a.a();
                    }
                    if (this.f14326b == null) {
                        this.f14326b = new t2.b();
                    }
                }
            }
            return this.f14326b;
        }
    }

    /* JADX INFO: compiled from: Engine.java */
    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n<?> f14327a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final h3.h f14328b;

        public d(h3.h hVar, n<?> nVar) {
            this.f14328b = hVar;
            this.f14327a = nVar;
        }
    }

    public m(t2.h hVar, t2.a.InterfaceC0262a interfaceC0262a, u2.a aVar, u2.a aVar2, u2.a aVar3, u2.a aVar4) {
        this.f14308c = hVar;
        c cVar = new c(interfaceC0262a);
        r2.c cVar2 = new r2.c();
        this.f14312g = cVar2;
        synchronized (this) {
            synchronized (cVar2) {
                cVar2.f14234d = this;
            }
        }
        this.f14307b = new m6.e();
        this.f14306a = new t();
        this.f14309d = new b(aVar, aVar2, aVar3, aVar4, this, this);
        this.f14311f = new a(cVar);
        this.f14310e = new z();
        ((t2.g) hVar).f15397d = this;
    }

    public static void d(String str, long j10, p2.f fVar) {
        StringBuilder sbH = r0.h(str, " in ");
        sbH.append(l3.h.a(j10));
        sbH.append("ms, key: ");
        sbH.append(fVar);
        Log.v("Engine", sbH.toString());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<p2.f, r2.c$a>] */
    @Override // r2.q.a
    public final void a(p2.f fVar, q<?> qVar) {
        r2.c cVar = this.f14312g;
        synchronized (cVar) {
            r2.c.a aVar = (r2.c.a) cVar.f14232b.remove(fVar);
            if (aVar != null) {
                aVar.f14237c = null;
                aVar.clear();
            }
        }
        if (qVar.f14365h) {
            ((t2.g) this.f14308c).d(fVar, qVar);
        } else {
            this.f14310e.a(qVar, false);
        }
    }

    public final <R> d b(com.bumptech.glide.e eVar, Object obj, p2.f fVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, l lVar, Map<Class<?>, p2.l<?>> map, boolean z10, boolean z11, p2.h hVar, boolean z12, boolean z13, boolean z14, boolean z15, h3.h hVar2, Executor executor) {
        long jElapsedRealtimeNanos;
        if (f14305h) {
            int i12 = l3.h.f9935b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        long j10 = jElapsedRealtimeNanos;
        Objects.requireNonNull(this.f14307b);
        p pVar = new p(obj, fVar, i10, i11, map, cls, cls2, hVar);
        synchronized (this) {
            q<?> qVarC = c(pVar, z12, j10);
            if (qVarC == null) {
                return g(eVar, obj, fVar, i10, i11, cls, cls2, gVar, lVar, map, z10, z11, hVar, z12, z13, z14, z15, hVar2, executor, pVar, j10);
            }
            ((h3.i) hVar2).q(qVarC, p2.a.MEMORY_CACHE, false);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<p2.f, r2.c$a>] */
    public final q<?> c(p pVar, boolean z10, long j10) {
        q<?> qVar;
        Object obj;
        q<?> qVar2;
        if (!z10) {
            return null;
        }
        r2.c cVar = this.f14312g;
        synchronized (cVar) {
            r2.c.a aVar = (r2.c.a) cVar.f14232b.get(pVar);
            if (aVar == null) {
                qVar = null;
            } else {
                qVar = aVar.get();
                if (qVar == null) {
                    cVar.b(aVar);
                }
            }
        }
        if (qVar != null) {
            qVar.d();
        }
        if (qVar != null) {
            if (f14305h) {
                d("Loaded resource from active resources", j10, pVar);
            }
            return qVar;
        }
        t2.g gVar = (t2.g) this.f14308c;
        synchronized (gVar) {
            l3.i.a aVar2 = (l3.i.a) gVar.f9936a.remove(pVar);
            if (aVar2 == null) {
                obj = null;
            } else {
                gVar.f9938c -= (long) aVar2.f9940b;
                obj = aVar2.f9939a;
            }
        }
        w wVar = (w) obj;
        if (wVar == null) {
            qVar2 = null;
        } else {
            qVar2 = wVar instanceof q ? (q) wVar : new q<>(wVar, true, true, pVar, this);
        }
        if (qVar2 != null) {
            qVar2.d();
            this.f14312g.a(pVar, qVar2);
        }
        if (qVar2 == null) {
            return null;
        }
        if (f14305h) {
            d("Loaded resource from cache", j10, pVar);
        }
        return qVar2;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0021 A[Catch: all -> 0x0026, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000c, B:9:0x0021), top: B:15:0x0003 }] */
    public final synchronized void e(n<?> nVar, p2.f fVar, q<?> qVar) {
        Map<p2.f, n<?>> mapA;
        if (qVar != null) {
            if (qVar.f14365h) {
                this.f14312g.a(fVar, qVar);
            }
            t tVar = this.f14306a;
            Objects.requireNonNull(tVar);
            mapA = tVar.a(nVar.f14345w);
            if (nVar.equals(mapA.get(fVar))) {
                mapA.remove(fVar);
            }
        } else {
            t tVar2 = this.f14306a;
            Objects.requireNonNull(tVar2);
            mapA = tVar2.a(nVar.f14345w);
            if (nVar.equals(mapA.get(fVar))) {
                mapA.remove(fVar);
            }
        }
        throw th;
    }

    public final void f(w<?> wVar) {
        if (!(wVar instanceof q)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((q) wVar).e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> d g(com.bumptech.glide.e eVar, Object obj, p2.f fVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, l lVar, Map<Class<?>, p2.l<?>> map, boolean z10, boolean z11, p2.h hVar, boolean z12, boolean z13, boolean z14, boolean z15, h3.h hVar2, Executor executor, p pVar, long j10) {
        u2.a aVar;
        n<?> nVar = this.f14306a.a(z15).get(pVar);
        if (nVar != null) {
            nVar.a(hVar2, executor);
            if (f14305h) {
                d("Added to existing load", j10, pVar);
            }
            return new d(hVar2, nVar);
        }
        n<?> nVarB = this.f14309d.f14323g.b();
        Objects.requireNonNull(nVarB, "Argument must not be null");
        synchronized (nVarB) {
            nVarB.f14341s = pVar;
            nVarB.f14342t = z12;
            nVarB.f14343u = z13;
            nVarB.f14344v = z14;
            nVarB.f14345w = z15;
        }
        a aVar2 = this.f14311f;
        j<R> jVar = (j) aVar2.f14314b.b();
        Objects.requireNonNull(jVar, "Argument must not be null");
        int i12 = aVar2.f14315c;
        aVar2.f14315c = i12 + 1;
        i<R> iVar = jVar.f14270h;
        j.d dVar = jVar.f14273k;
        iVar.f14254c = eVar;
        iVar.f14255d = obj;
        iVar.f14265n = fVar;
        iVar.f14256e = i10;
        iVar.f14257f = i11;
        iVar.f14267p = lVar;
        iVar.f14258g = cls;
        iVar.f14259h = dVar;
        iVar.f14262k = cls2;
        iVar.f14266o = gVar;
        iVar.f14260i = hVar;
        iVar.f14261j = map;
        iVar.f14268q = z10;
        iVar.f14269r = z11;
        jVar.f14277o = eVar;
        jVar.f14278p = fVar;
        jVar.f14279q = gVar;
        jVar.f14280r = pVar;
        jVar.f14281s = i10;
        jVar.f14282t = i11;
        jVar.f14283u = lVar;
        jVar.B = z15;
        jVar.f14284v = hVar;
        jVar.f14285w = nVarB;
        jVar.f14286x = i12;
        boolean z16 = true;
        jVar.f14288z = 1;
        jVar.C = obj;
        t tVar = this.f14306a;
        Objects.requireNonNull(tVar);
        tVar.a(nVarB.f14345w).put(pVar, nVarB);
        nVarB.a(hVar2, executor);
        synchronized (nVarB) {
            nVarB.D = jVar;
            int iO = jVar.o(1);
            if (iO != 2 && iO != 3) {
                z16 = false;
            }
            if (z16) {
                aVar = nVarB.f14336n;
            } else if (nVarB.f14343u) {
                aVar = nVarB.f14338p;
            } else {
                aVar = nVarB.f14344v ? nVarB.f14339q : nVarB.f14337o;
            }
            aVar.execute(jVar);
        }
        if (f14305h) {
            d("Started new load", j10, pVar);
        }
        return new d(hVar2, nVarB);
    }
}
