package r2;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import androidx.fragment.app.r0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: DecodeJob.java */
/* JADX INFO: loaded from: classes.dex */
public final class j<R> implements h.a, Runnable, Comparable<j<?>>, m3.a.d {
    public long A;
    public boolean B;
    public Object C;
    public Thread D;
    public p2.f E;
    public p2.f F;
    public Object G;
    public p2.a H;
    public com.bumptech.glide.load.data.d<?> I;
    public volatile h J;
    public volatile boolean K;
    public volatile boolean L;
    public boolean M;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f14273k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final i0.e<j<?>> f14274l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.e f14277o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public p2.f f14278p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public com.bumptech.glide.g f14279q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public p f14280r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14281s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f14282t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public l f14283u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p2.h f14284v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public a<R> f14285w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14286x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f14287y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14288z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i<R> f14270h = new i<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<Throwable> f14271i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final m3.d.a f14272j = new m3.d.a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final c<?> f14275m = new c<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final e f14276n = new e();

    /* JADX INFO: compiled from: DecodeJob.java */
    public interface a<R> {
    }

    /* JADX INFO: compiled from: DecodeJob.java */
    public final class b<Z> implements k.a<Z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p2.a f14289a;

        public b(p2.a aVar) {
            this.f14289a = aVar;
        }
    }

    /* JADX INFO: compiled from: DecodeJob.java */
    public static class c<Z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public p2.f f14291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public p2.k<Z> f14292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public v<Z> f14293c;
    }

    /* JADX INFO: compiled from: DecodeJob.java */
    public interface d {
    }

    /* JADX INFO: compiled from: DecodeJob.java */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f14294a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14296c;

        public final boolean a() {
            return (this.f14296c || this.f14295b) && this.f14294a;
        }
    }

    public j(d dVar, i0.e<j<?>> eVar) {
        this.f14273k = dVar;
        this.f14274l = eVar;
    }

    @Override // r2.h.a
    public final void b() {
        this.f14288z = 2;
        ((n) this.f14285w).h(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(j<?> jVar) {
        j<?> jVar2 = jVar;
        int iOrdinal = this.f14279q.ordinal() - jVar2.f14279q.ordinal();
        return iOrdinal == 0 ? this.f14286x - jVar2.f14286x : iOrdinal;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // r2.h.a
    public final void g(p2.f fVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, p2.a aVar) {
        dVar.b();
        r rVar = new r("Fetching data failed", Collections.singletonList(exc));
        Class<?> clsA = dVar.a();
        rVar.f14374i = fVar;
        rVar.f14375j = aVar;
        rVar.f14376k = clsA;
        this.f14271i.add(rVar);
        if (Thread.currentThread() == this.D) {
            u();
        } else {
            this.f14288z = 2;
            ((n) this.f14285w).h(this);
        }
    }

    @Override // r2.h.a
    public final void i(p2.f fVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, p2.a aVar, p2.f fVar2) {
        this.E = fVar;
        this.G = obj;
        this.I = dVar;
        this.H = aVar;
        this.F = fVar2;
        this.M = fVar != ((ArrayList) this.f14270h.a()).get(0);
        if (Thread.currentThread() == this.D) {
            m();
        } else {
            this.f14288z = 3;
            ((n) this.f14285w).h(this);
        }
    }

    @Override // m3.a.d
    public final m3.d j() {
        return this.f14272j;
    }

    public final <Data> w<R> k(com.bumptech.glide.load.data.d<?> dVar, Data data, p2.a aVar) throws r {
        if (data == null) {
            dVar.b();
            return null;
        }
        try {
            int i10 = l3.h.f9935b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            w<R> wVarL = l(data, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                p("Decoded result " + wVarL, jElapsedRealtimeNanos, null);
            }
            return wVarL;
        } finally {
            dVar.b();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <Data> w<R> l(Data data, p2.a aVar) throws r {
        u<Data, ?, R> uVarD = this.f14270h.d(data.getClass());
        p2.h hVar = this.f14284v;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z10 = aVar == p2.a.RESOURCE_DISK_CACHE || this.f14270h.f14269r;
            p2.g<Boolean> gVar = y2.n.f18468i;
            Boolean bool = (Boolean) hVar.c(gVar);
            if (bool == null || (bool.booleanValue() && !z10)) {
                hVar = new p2.h();
                hVar.d(this.f14284v);
                hVar.f12648b.put(gVar, Boolean.valueOf(z10));
            }
        }
        p2.h hVar2 = hVar;
        com.bumptech.glide.load.data.e<Data> eVarG = this.f14277o.f4446b.g(data);
        try {
            return uVarD.a(eVarG, hVar2, this.f14281s, this.f14282t, new b(aVar));
        } finally {
            eVarG.b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a8 A[Catch: all -> 0x00c5, TRY_ENTER, TryCatch #1 {, blocks: (B:12:0x0056, B:14:0x005a, B:15:0x0060, B:20:0x006d, B:21:0x0072, B:33:0x00a8, B:34:0x00ab, B:35:0x00ad, B:37:0x00b4, B:39:0x00b7, B:41:0x00bc, B:42:0x00bd, B:45:0x00c1, B:46:0x00c4, B:36:0x00ae, B:22:0x0078, B:26:0x0081, B:28:0x0099, B:30:0x00a0, B:31:0x00a5), top: B:53:0x0056, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b7 A[Catch: all -> 0x00c5, TryCatch #1 {, blocks: (B:12:0x0056, B:14:0x005a, B:15:0x0060, B:20:0x006d, B:21:0x0072, B:33:0x00a8, B:34:0x00ab, B:35:0x00ad, B:37:0x00b4, B:39:0x00b7, B:41:0x00bc, B:42:0x00bd, B:45:0x00c1, B:46:0x00c4, B:36:0x00ae, B:22:0x0078, B:26:0x0081, B:28:0x0099, B:30:0x00a0, B:31:0x00a5), top: B:53:0x0056, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void m() {
        w<R> wVarK;
        e eVar;
        boolean zA;
        if (Log.isLoggable("DecodeJob", 2)) {
            long j10 = this.A;
            StringBuilder sbC = a0.b.c("data: ");
            sbC.append(this.G);
            sbC.append(", cache key: ");
            sbC.append(this.E);
            sbC.append(", fetcher: ");
            sbC.append(this.I);
            p("Retrieved data", j10, sbC.toString());
        }
        v vVarD = null;
        try {
            wVarK = k(this.I, this.G, this.H);
        } catch (r e10) {
            p2.f fVar = this.F;
            p2.a aVar = this.H;
            e10.f14374i = fVar;
            e10.f14375j = aVar;
            e10.f14376k = null;
            this.f14271i.add(e10);
            wVarK = null;
        }
        if (wVarK == null) {
            u();
            return;
        }
        p2.a aVar2 = this.H;
        boolean z10 = this.M;
        if (wVarK instanceof s) {
            ((s) wVarK).initialize();
        }
        if (this.f14275m.f14293c != null) {
            vVarD = v.d(wVarK);
            wVarK = vVarD;
        }
        q(wVarK, aVar2, z10);
        this.f14287y = 5;
        try {
            c<?> cVar = this.f14275m;
            if (!(cVar.f14293c != null)) {
                if (vVarD != null) {
                    vVarD.e();
                }
                eVar = this.f14276n;
                synchronized (eVar) {
                    eVar.f14295b = true;
                    zA = eVar.a();
                    if (zA) {
                        t();
                        return;
                    }
                    return;
                }
            }
            try {
                ((m.c) this.f14273k).a().b(cVar.f14291a, new g(cVar.f14292b, cVar.f14293c, this.f14284v));
                cVar.f14293c.e();
                if (vVarD != null) {
                    vVarD.e();
                }
                eVar = this.f14276n;
                synchronized (eVar) {
                    eVar.f14295b = true;
                    zA = eVar.a();
                }
                if (zA) {
                    t();
                    return;
                }
                return;
            } catch (Throwable th) {
                cVar.f14293c.e();
                throw th;
            }
        } catch (Throwable th2) {
            if (vVarD != null) {
                vVarD.e();
            }
            throw th2;
        }
        throw th;
    }

    public final h n() {
        int iA = q.g.a(this.f14287y);
        if (iA == 1) {
            return new x(this.f14270h, this);
        }
        if (iA == 2) {
            return new r2.e(this.f14270h, this);
        }
        if (iA == 3) {
            return new b0(this.f14270h, this);
        }
        if (iA == 5) {
            return null;
        }
        StringBuilder sbC = a0.b.c("Unrecognized stage: ");
        sbC.append(ed.c.f(this.f14287y));
        throw new IllegalStateException(sbC.toString());
    }

    public final int o(int i10) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            if (this.f14283u.b()) {
                return 2;
            }
            return o(2);
        }
        if (i11 == 1) {
            if (this.f14283u.a()) {
                return 3;
            }
            return o(3);
        }
        if (i11 == 2) {
            return this.B ? 6 : 4;
        }
        if (i11 == 3 || i11 == 5) {
            return 6;
        }
        StringBuilder sbC = a0.b.c("Unrecognized stage: ");
        sbC.append(ed.c.f(i10));
        throw new IllegalArgumentException(sbC.toString());
    }

    public final void p(String str, long j10, String str2) {
        StringBuilder sbH = r0.h(str, " in ");
        sbH.append(l3.h.a(j10));
        sbH.append(", load key: ");
        sbH.append(this.f14280r);
        sbH.append(str2 != null ? androidx.recyclerview.widget.d.c(", ", str2) : "");
        sbH.append(", thread: ");
        sbH.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbH.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void q(w<R> wVar, p2.a aVar, boolean z10) {
        x();
        n<?> nVar = (n) this.f14285w;
        synchronized (nVar) {
            nVar.f14346x = wVar;
            nVar.f14347y = aVar;
            nVar.F = z10;
        }
        synchronized (nVar) {
            nVar.f14331i.a();
            if (nVar.E) {
                nVar.f14346x.c();
                nVar.f();
                return;
            }
            if (nVar.f14330h.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (nVar.f14348z) {
                throw new IllegalStateException("Already have resource");
            }
            n.c cVar = nVar.f14334l;
            w<?> wVar2 = nVar.f14346x;
            boolean z11 = nVar.f14342t;
            p2.f fVar = nVar.f14341s;
            q.a aVar2 = nVar.f14332j;
            Objects.requireNonNull(cVar);
            nVar.C = new q<>(wVar2, z11, true, fVar, aVar2);
            nVar.f14348z = true;
            n.e eVar = nVar.f14330h;
            Objects.requireNonNull(eVar);
            ArrayList<n.d> arrayList = new ArrayList(eVar.f14355h);
            nVar.d(arrayList.size() + 1);
            ((m) nVar.f14335m).e(nVar, nVar.f14341s, nVar.C);
            for (n.d dVar : arrayList) {
                dVar.f14354b.execute(new n.b(dVar.f14353a));
            }
            nVar.c();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.d<?> dVar = this.I;
        try {
            try {
                if (this.L) {
                    s();
                    if (dVar != null) {
                        dVar.b();
                        return;
                    }
                    return;
                }
                w();
                if (dVar != null) {
                    dVar.b();
                }
            } catch (Throwable th) {
                if (dVar != null) {
                    dVar.b();
                }
                throw th;
            }
        } catch (r2.d e10) {
            throw e10;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.L + ", stage: " + ed.c.f(this.f14287y), th2);
            }
            if (this.f14287y != 5) {
                this.f14271i.add(th2);
                s();
            }
            if (!this.L) {
                throw th2;
            }
            throw th2;
        }
    }

    public final void s() {
        boolean zA;
        x();
        r rVar = new r("Failed to load resource", new ArrayList(this.f14271i));
        n<?> nVar = (n) this.f14285w;
        synchronized (nVar) {
            nVar.A = rVar;
        }
        synchronized (nVar) {
            nVar.f14331i.a();
            if (nVar.E) {
                nVar.f();
            } else {
                if (nVar.f14330h.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (nVar.B) {
                    throw new IllegalStateException("Already failed once");
                }
                nVar.B = true;
                p2.f fVar = nVar.f14341s;
                n.e eVar = nVar.f14330h;
                Objects.requireNonNull(eVar);
                ArrayList<n.d> arrayList = new ArrayList(eVar.f14355h);
                nVar.d(arrayList.size() + 1);
                ((m) nVar.f14335m).e(nVar, fVar, null);
                for (n.d dVar : arrayList) {
                    dVar.f14354b.execute(new n.a(dVar.f14353a));
                }
                nVar.c();
            }
        }
        e eVar2 = this.f14276n;
        synchronized (eVar2) {
            eVar2.f14296c = true;
            zA = eVar2.a();
        }
        if (zA) {
            t();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<java.lang.Throwable>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList, java.util.List<v2.n$a<?>>] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList, java.util.List<p2.f>] */
    public final void t() {
        e eVar = this.f14276n;
        synchronized (eVar) {
            eVar.f14295b = false;
            eVar.f14294a = false;
            eVar.f14296c = false;
        }
        c<?> cVar = this.f14275m;
        cVar.f14291a = null;
        cVar.f14292b = null;
        cVar.f14293c = null;
        i<R> iVar = this.f14270h;
        iVar.f14254c = null;
        iVar.f14255d = null;
        iVar.f14265n = null;
        iVar.f14258g = null;
        iVar.f14262k = null;
        iVar.f14260i = null;
        iVar.f14266o = null;
        iVar.f14261j = null;
        iVar.f14267p = null;
        iVar.f14252a.clear();
        iVar.f14263l = false;
        iVar.f14253b.clear();
        iVar.f14264m = false;
        this.K = false;
        this.f14277o = null;
        this.f14278p = null;
        this.f14284v = null;
        this.f14279q = null;
        this.f14280r = null;
        this.f14285w = null;
        this.f14287y = 0;
        this.J = null;
        this.D = null;
        this.E = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.A = 0L;
        this.L = false;
        this.C = null;
        this.f14271i.clear();
        this.f14274l.a(this);
    }

    public final void u() {
        this.D = Thread.currentThread();
        int i10 = l3.h.f9935b;
        this.A = SystemClock.elapsedRealtimeNanos();
        boolean zA = false;
        while (!this.L && this.J != null && !(zA = this.J.a())) {
            this.f14287y = o(this.f14287y);
            this.J = n();
            if (this.f14287y == 4) {
                this.f14288z = 2;
                ((n) this.f14285w).h(this);
                return;
            }
        }
        if ((this.f14287y == 6 || this.L) && !zA) {
            s();
        }
    }

    public final void w() {
        int iA = q.g.a(this.f14288z);
        if (iA == 0) {
            this.f14287y = o(1);
            this.J = n();
            u();
        } else if (iA == 1) {
            u();
        } else if (iA == 2) {
            m();
        } else {
            StringBuilder sbC = a0.b.c("Unrecognized run reason: ");
            sbC.append(d1.c.e(this.f14288z));
            throw new IllegalStateException(sbC.toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<java.lang.Throwable>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<java.lang.Throwable>] */
    public final void x() {
        Throwable th;
        this.f14272j.a();
        if (!this.K) {
            this.K = true;
            return;
        }
        if (this.f14271i.isEmpty()) {
            th = null;
        } else {
            ?? r10 = this.f14271i;
            th = (Throwable) r10.get(r10.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }
}
