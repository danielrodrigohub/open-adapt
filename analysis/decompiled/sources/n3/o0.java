package n3;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: ExoPlayerImplInternal.java */
/* JADX INFO: loaded from: classes.dex */
public final class o0 implements Handler.Callback, p4.v.a, j5.s.a, h1.d, l.a, p1.a {
    public final h1 A;
    public final w0 B;
    public final long C;
    public w1 D;
    public l1 E;
    public d F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public int L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public int Q;
    public g R;
    public long S;
    public int T;
    public boolean U;
    public q V;
    public long W = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s1[] f11557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Set<s1> f11558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final t1[] f11559j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final j5.s f11560k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final j5.t f11561l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final x0 f11562m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final l5.e f11563n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final m5.l f11564o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final HandlerThread f11565p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Looper f11566q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final b2.d f11567r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final b2.b f11568s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f11569t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f11570u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final l f11571v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ArrayList<c> f11572w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final m5.c f11573x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final e f11574y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final e1 f11575z;

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<h1.c> f11576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final p4.o0 f11577b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11578c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f11579d;

        public a(List list, p4.o0 o0Var, int i10, long j10, n0 n0Var) {
            this.f11576a = list;
            this.f11577b = o0Var;
            this.f11578c = i10;
            this.f11579d = j10;
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public static class b {
    }

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public static final class c implements Comparable<c> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final p1 f11580h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11581i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f11582j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Object f11583k;

        public final void b(int i10, long j10, Object obj) {
            this.f11581i = i10;
            this.f11582j = j10;
            this.f11583k = obj;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0017  */
        @Override // java.lang.Comparable
        public final int compareTo(c cVar) {
            c cVar2 = cVar;
            Object obj = this.f11583k;
            int i10 = 1;
            if ((obj == null) != (cVar2.f11583k == null)) {
                if (obj != null) {
                    i10 = -1;
                }
            } else {
                if (obj == null) {
                    return 0;
                }
                int i11 = this.f11581i - cVar2.f11581i;
                if (i11 != 0) {
                    return i11;
                }
                long j10 = this.f11582j;
                long j11 = cVar2.f11582j;
                int i12 = m5.g0.f10384a;
                if (j10 < j11) {
                    i10 = -1;
                } else if (j10 == j11) {
                    i10 = 0;
                }
            }
            return i10;
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f11584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public l1 f11585b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11586c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f11587d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11588e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f11589f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f11590g;

        public d(l1 l1Var) {
            this.f11585b = l1Var;
        }

        public final void a(int i10) {
            this.f11584a |= i10 > 0;
            this.f11586c += i10;
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public interface e {
    }

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p4.x.b f11591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f11592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f11593c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f11594d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f11595e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f11596f;

        public f(p4.x.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f11591a = bVar;
            this.f11592b = j10;
            this.f11593c = j11;
            this.f11594d = z10;
            this.f11595e = z11;
            this.f11596f = z12;
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImplInternal.java */
    public static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b2 f11597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f11599c;

        public g(b2 b2Var, int i10, long j10) {
            this.f11597a = b2Var;
            this.f11598b = i10;
            this.f11599c = j10;
        }
    }

    public o0(s1[] s1VarArr, j5.s sVar, j5.t tVar, x0 x0Var, l5.e eVar, int i10, boolean z10, o3.a aVar, w1 w1Var, w0 w0Var, long j10, boolean z11, Looper looper, m5.c cVar, e eVar2, o3.v0 v0Var) {
        this.f11574y = eVar2;
        this.f11557h = s1VarArr;
        this.f11560k = sVar;
        this.f11561l = tVar;
        this.f11562m = x0Var;
        this.f11563n = eVar;
        this.L = i10;
        this.M = z10;
        this.D = w1Var;
        this.B = w0Var;
        this.C = j10;
        this.H = z11;
        this.f11573x = cVar;
        this.f11569t = x0Var.g();
        this.f11570u = x0Var.a();
        l1 l1VarH = l1.h(tVar);
        this.E = l1VarH;
        this.F = new d(l1VarH);
        this.f11559j = new t1[s1VarArr.length];
        for (int i11 = 0; i11 < s1VarArr.length; i11++) {
            s1VarArr[i11].i(i11, v0Var);
            this.f11559j[i11] = s1VarArr[i11].v();
        }
        this.f11571v = new l(this, cVar);
        this.f11572w = new ArrayList<>();
        this.f11558i = u6.v0.e();
        this.f11567r = new b2.d();
        this.f11568s = new b2.b();
        sVar.f9435a = this;
        sVar.f9436b = eVar;
        this.U = true;
        Handler handler = new Handler(looper);
        this.f11575z = new e1(aVar, handler);
        this.A = new h1(this, aVar, handler, v0Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f11565p = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f11566q = looper2;
        this.f11564o = cVar.b(looper2, this);
    }

    public static boolean J(c cVar, b2 b2Var, b2 b2Var2, int i10, boolean z10, b2.d dVar, b2.b bVar) {
        Object obj = cVar.f11583k;
        if (obj == null) {
            Objects.requireNonNull(cVar.f11580h);
            Objects.requireNonNull(cVar.f11580h);
            long jL = m5.g0.L(-9223372036854775807L);
            p1 p1Var = cVar.f11580h;
            Pair<Object, Long> pairL = L(b2Var, new g(p1Var.f11625d, p1Var.f11629h, jL), false, i10, z10, dVar, bVar);
            if (pairL == null) {
                return false;
            }
            cVar.b(b2Var.d(pairL.first), ((Long) pairL.second).longValue(), pairL.first);
            Objects.requireNonNull(cVar.f11580h);
            return true;
        }
        int iD = b2Var.d(obj);
        if (iD == -1) {
            return false;
        }
        Objects.requireNonNull(cVar.f11580h);
        cVar.f11581i = iD;
        b2Var2.j(cVar.f11583k, bVar);
        if (bVar.f11300m && b2Var2.p(bVar.f11297j, dVar).f11322v == b2Var2.d(cVar.f11583k)) {
            Pair<Object, Long> pairL2 = b2Var.l(dVar, bVar, b2Var.j(cVar.f11583k, bVar).f11297j, cVar.f11582j + bVar.f11299l);
            cVar.b(b2Var.d(pairL2.first), ((Long) pairL2.second).longValue(), pairL2.first);
        }
        return true;
    }

    public static Pair<Object, Long> L(b2 b2Var, g gVar, boolean z10, int i10, boolean z11, b2.d dVar, b2.b bVar) {
        Object objM;
        b2 b2Var2 = gVar.f11597a;
        if (b2Var.s()) {
            return null;
        }
        b2 b2Var3 = b2Var2.s() ? b2Var : b2Var2;
        try {
            Pair<Object, Long> pairL = b2Var3.l(dVar, bVar, gVar.f11598b, gVar.f11599c);
            if (b2Var.equals(b2Var3)) {
                return pairL;
            }
            if (b2Var.d(pairL.first) != -1) {
                return (b2Var3.j(pairL.first, bVar).f11300m && b2Var3.p(bVar.f11297j, dVar).f11322v == b2Var3.d(pairL.first)) ? b2Var.l(dVar, bVar, b2Var.j(pairL.first, bVar).f11297j, gVar.f11599c) : pairL;
            }
            if (z10 && (objM = M(dVar, bVar, i10, z11, pairL.first, b2Var3, b2Var)) != null) {
                return b2Var.l(dVar, bVar, b2Var.j(objM, bVar).f11297j, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static Object M(b2.d dVar, b2.b bVar, int i10, boolean z10, Object obj, b2 b2Var, b2 b2Var2) {
        int iD = b2Var.d(obj);
        int iK = b2Var.k();
        int iF = iD;
        int iD2 = -1;
        for (int i11 = 0; i11 < iK && iD2 == -1; i11++) {
            iF = b2Var.f(iF, bVar, dVar, i10, z10);
            if (iF == -1) {
                break;
            }
            iD2 = b2Var2.d(b2Var.o(iF));
        }
        if (iD2 == -1) {
            return null;
        }
        return b2Var2.o(iD2);
    }

    public static s0[] g(j5.l lVar) {
        int length = lVar != null ? lVar.length() : 0;
        s0[] s0VarArr = new s0[length];
        for (int i10 = 0; i10 < length; i10++) {
            s0VarArr[i10] = lVar.e(i10);
        }
        return s0VarArr;
    }

    public static boolean v(s1 s1Var) {
        return s1Var.getState() != 0;
    }

    public static boolean x(l1 l1Var, b2.b bVar) {
        p4.x.b bVar2 = l1Var.f11517b;
        b2 b2Var = l1Var.f11516a;
        return b2Var.s() || b2Var.j(bVar2.f13238a, bVar).f11300m;
    }

    public final void A() throws q {
        q(this.A.c(), true);
    }

    public final void B(b bVar) throws q {
        this.F.a(1);
        h1 h1Var = this.A;
        Objects.requireNonNull(bVar);
        Objects.requireNonNull(h1Var);
        m5.a.a(h1Var.e() >= 0);
        h1Var.f11410j = null;
        q(h1Var.c(), false);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.HashSet, java.util.Set<n3.h1$c>] */
    public final void C() {
        this.F.a(1);
        G(false, false, false, true);
        this.f11562m.i();
        e0(this.E.f11516a.s() ? 4 : 2);
        h1 h1Var = this.A;
        l5.j0 j0VarA = this.f11563n.a();
        m5.a.e(!h1Var.f11411k);
        h1Var.f11412l = j0VarA;
        for (int i10 = 0; i10 < h1Var.f11402b.size(); i10++) {
            h1.c cVar = (h1.c) h1Var.f11402b.get(i10);
            h1Var.g(cVar);
            h1Var.f11409i.add(cVar);
        }
        h1Var.f11411k = true;
        this.f11564o.e(2);
    }

    public final void D() {
        G(true, false, true, false);
        this.f11562m.c();
        e0(1);
        this.f11565p.quit();
        synchronized (this) {
            this.G = true;
            notifyAll();
        }
    }

    public final void E(int i10, int i11, p4.o0 o0Var) throws q {
        this.F.a(1);
        h1 h1Var = this.A;
        Objects.requireNonNull(h1Var);
        m5.a.a(i10 >= 0 && i10 <= i11 && i11 <= h1Var.e());
        h1Var.f11410j = o0Var;
        h1Var.i(i10, i11);
        q(h1Var.c(), false);
    }

    public final void F() throws q {
        boolean z10;
        float f10 = this.f11571v.d().f11539h;
        e1 e1Var = this.f11575z;
        b1 b1Var = e1Var.f11373h;
        b1 b1Var2 = e1Var.f11374i;
        boolean z11 = true;
        for (b1 b1Var3 = b1Var; b1Var3 != null && b1Var3.f11281d; b1Var3 = b1Var3.f11289l) {
            j5.t tVarI = b1Var3.i(f10, this.E.f11516a);
            j5.t tVar = b1Var3.f11291n;
            if (tVar == null || tVar.f9439c.length != tVarI.f9439c.length) {
                z10 = false;
                break;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= tVarI.f9439c.length) {
                    z10 = true;
                    break;
                } else {
                    if (!tVarI.a(tVar, i10)) {
                        z10 = false;
                        break;
                    }
                    i10++;
                }
            }
            if (!z10) {
                if (z11) {
                    e1 e1Var2 = this.f11575z;
                    b1 b1Var4 = e1Var2.f11373h;
                    boolean zN = e1Var2.n(b1Var4);
                    boolean[] zArr = new boolean[this.f11557h.length];
                    long jA = b1Var4.a(tVarI, this.E.f11533r, zN, zArr);
                    l1 l1Var = this.E;
                    boolean z12 = (l1Var.f11520e == 4 || jA == l1Var.f11533r) ? false : true;
                    l1 l1Var2 = this.E;
                    this.E = t(l1Var2.f11517b, jA, l1Var2.f11518c, l1Var2.f11519d, z12, 5);
                    if (z12) {
                        I(jA);
                    }
                    boolean[] zArr2 = new boolean[this.f11557h.length];
                    int i11 = 0;
                    while (true) {
                        s1[] s1VarArr = this.f11557h;
                        if (i11 >= s1VarArr.length) {
                            break;
                        }
                        s1 s1Var = s1VarArr[i11];
                        zArr2[i11] = v(s1Var);
                        p4.m0 m0Var = b1Var4.f11280c[i11];
                        if (zArr2[i11]) {
                            if (m0Var != s1Var.m()) {
                                c(s1Var);
                            } else if (zArr[i11]) {
                                s1Var.q(this.S);
                            }
                        }
                        i11++;
                    }
                    f(zArr2);
                } else {
                    this.f11575z.n(b1Var3);
                    if (b1Var3.f11281d) {
                        b1Var3.a(tVarI, Math.max(b1Var3.f11283f.f11329b, this.S - b1Var3.f11292o), false, new boolean[b1Var3.f11286i.length]);
                    }
                }
                p(true);
                if (this.E.f11520e != 4) {
                    y();
                    l0();
                    this.f11564o.e(2);
                    return;
                }
                return;
            }
            if (b1Var3 == b1Var2) {
                z11 = false;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00af A[PHI: r4 r5 r7
      0x00af: PHI (r4v4 p4.x$b) = (r4v3 p4.x$b), (r4v11 p4.x$b) binds: [B:33:0x0086, B:35:0x00ab] A[DONT_GENERATE, DONT_INLINE]
      0x00af: PHI (r5v2 long) = (r5v1 long), (r5v8 long) binds: [B:33:0x0086, B:35:0x00ab] A[DONT_GENERATE, DONT_INLINE]
      0x00af: PHI (r7v3 long) = (r7v2 long), (r7v6 long) binds: [B:33:0x0086, B:35:0x00ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.HashSet, java.util.Set<n3.h1$c>] */
    public final void G(boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        List list;
        this.f11564o.h();
        this.V = null;
        this.J = false;
        l lVar = this.f11571v;
        lVar.f11512m = false;
        m5.z zVar = lVar.f11507h;
        if (zVar.f10488i) {
            zVar.a(zVar.w());
            zVar.f10488i = false;
        }
        this.S = 1000000000000L;
        for (s1 s1Var : this.f11557h) {
            try {
                c(s1Var);
            } catch (RuntimeException | q e10) {
                m5.p.d("ExoPlayerImplInternal", "Disable failed.", e10);
            }
        }
        if (z10) {
            for (s1 s1Var2 : this.f11557h) {
                if (this.f11558i.remove(s1Var2)) {
                    try {
                        s1Var2.e();
                    } catch (RuntimeException e11) {
                        m5.p.d("ExoPlayerImplInternal", "Reset failed.", e11);
                    }
                }
            }
        }
        this.Q = 0;
        l1 l1Var = this.E;
        p4.x.b bVar = l1Var.f11517b;
        long jLongValue = l1Var.f11533r;
        long j10 = (this.E.f11517b.a() || x(this.E, this.f11568s)) ? this.E.f11518c : this.E.f11533r;
        if (z11) {
            this.R = null;
            Pair<p4.x.b, Long> pairL = l(this.E.f11516a);
            bVar = (p4.x.b) pairL.first;
            jLongValue = ((Long) pairL.second).longValue();
            j10 = -9223372036854775807L;
            if (bVar.equals(this.E.f11517b)) {
                z14 = false;
            } else {
                z14 = true;
            }
        } else {
            z14 = false;
        }
        p4.x.b bVar2 = bVar;
        long j11 = jLongValue;
        this.f11575z.b();
        this.K = false;
        l1 l1Var2 = this.E;
        b2 b2Var = l1Var2.f11516a;
        int i10 = l1Var2.f11520e;
        q qVar = z13 ? null : l1Var2.f11521f;
        p4.u0 u0Var = z14 ? p4.u0.f13233k : l1Var2.f11523h;
        j5.t tVar = z14 ? this.f11561l : l1Var2.f11524i;
        if (z14) {
            u6.a aVar = u6.v.f16002i;
            list = u6.p0.f15967l;
        } else {
            list = l1Var2.f11525j;
        }
        this.E = new l1(b2Var, bVar2, j10, j11, i10, qVar, false, u0Var, tVar, list, bVar2, l1Var2.f11527l, l1Var2.f11528m, l1Var2.f11529n, j11, 0L, j11, false);
        if (z12) {
            h1 h1Var = this.A;
            for (h1.b bVar3 : h1Var.f11408h.values()) {
                try {
                    bVar3.f11417a.g(bVar3.f11418b);
                } catch (RuntimeException e12) {
                    m5.p.d("MediaSourceList", "Failed to release child source.", e12);
                }
                bVar3.f11417a.j(bVar3.f11419c);
                bVar3.f11417a.n(bVar3.f11419c);
            }
            h1Var.f11408h.clear();
            h1Var.f11409i.clear();
            h1Var.f11411k = false;
        }
    }

    public final void H() {
        b1 b1Var = this.f11575z.f11373h;
        this.I = b1Var != null && b1Var.f11283f.f11335h && this.H;
    }

    public final void I(long j10) throws q {
        b1 b1Var = this.f11575z.f11373h;
        long j11 = j10 + (b1Var == null ? 1000000000000L : b1Var.f11292o);
        this.S = j11;
        this.f11571v.f11507h.a(j11);
        for (s1 s1Var : this.f11557h) {
            if (v(s1Var)) {
                s1Var.q(this.S);
            }
        }
        for (b1 b1Var2 = this.f11575z.f11373h; b1Var2 != null; b1Var2 = b1Var2.f11289l) {
            for (j5.l lVar : b1Var2.f11291n.f9439c) {
                if (lVar != null) {
                    lVar.r();
                }
            }
        }
    }

    public final void K(b2 b2Var, b2 b2Var2) {
        if (b2Var.s() && b2Var2.s()) {
            return;
        }
        int size = this.f11572w.size();
        while (true) {
            size--;
            if (size < 0) {
                Collections.sort(this.f11572w);
                return;
            } else if (!J(this.f11572w.get(size), b2Var, b2Var2, this.L, this.M, this.f11567r, this.f11568s)) {
                this.f11572w.get(size).f11580h.b(false);
                this.f11572w.remove(size);
            }
        }
    }

    public final void N(long j10, long j11) {
        this.f11564o.b(j10 + j11);
    }

    public final void O(boolean z10) throws q {
        p4.x.b bVar = this.f11575z.f11373h.f11283f.f11328a;
        long jR = R(bVar, this.E.f11533r, true, false);
        if (jR != this.E.f11533r) {
            l1 l1Var = this.E;
            this.E = t(bVar, jR, l1Var.f11518c, l1Var.f11519d, z10, 5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d1, B:40:0x00d9, B:42:0x00e3, B:44:0x00f3, B:48:0x00fd, B:52:0x010f, B:56:0x0118), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00af  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b2 A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d1, B:40:0x00d9, B:42:0x00e3, B:44:0x00f3, B:48:0x00fd, B:52:0x010f, B:56:0x0118), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b8 A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d1, B:40:0x00d9, B:42:0x00e3, B:44:0x00f3, B:48:0x00fd, B:52:0x010f, B:56:0x0118), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00c1 A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d1, B:40:0x00d9, B:42:0x00e3, B:44:0x00f3, B:48:0x00fd, B:52:0x010f, B:56:0x0118), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00cb A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d1, B:40:0x00d9, B:42:0x00e3, B:44:0x00f3, B:48:0x00fd, B:52:0x010f, B:56:0x0118), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:51:0x010e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0115  */
    /* JADX WARN: Code duplicated, block: B:55:0x0117  */
    /* JADX WARN: Code duplicated, block: B:60:0x0121  */
    public final void P(g gVar) throws Throwable {
        long jLongValue;
        long j10;
        boolean z10;
        p4.x.b bVar;
        long j11;
        long j12;
        long j13;
        long jD;
        boolean z11;
        long jQ;
        boolean z12;
        long j14;
        b1 b1Var;
        l1 l1Var;
        int i10;
        this.F.a(1);
        Pair<Object, Long> pairL = L(this.E.f11516a, gVar, true, this.L, this.M, this.f11567r, this.f11568s);
        try {
            if (pairL != null) {
                Object obj = pairL.first;
                jLongValue = ((Long) pairL.second).longValue();
                long j15 = gVar.f11599c == -9223372036854775807L ? -9223372036854775807L : jLongValue;
                p4.x.b bVarP = this.f11575z.p(this.E.f11516a, obj, jLongValue);
                if (bVarP.a()) {
                    this.E.f11516a.j(bVarP.f13238a, this.f11568s);
                    j11 = this.f11568s.g(bVarP.f13239b) == bVarP.f13240c ? this.f11568s.f11301n.f13611j : 0L;
                    j12 = j15;
                    bVar = bVarP;
                    z10 = true;
                } else {
                    j10 = j15;
                    z10 = gVar.f11599c == -9223372036854775807L;
                    bVar = bVarP;
                }
                if (this.E.f11516a.s()) {
                    if (pairL == null) {
                        if (this.E.f11520e != 1) {
                            e0(4);
                        }
                        G(false, true, false, true);
                    } else {
                        if (bVar.equals(this.E.f11517b)) {
                            b1Var = this.f11575z.f11373h;
                            if (b1Var == null && b1Var.f11281d && j11 != 0) {
                                jD = b1Var.f11278a.d(j11, this.D);
                            } else {
                                jD = j11;
                            }
                            if (m5.g0.X(jD) == m5.g0.X(this.E.f11533r) && ((i10 = (l1Var = this.E).f11520e) == 2 || i10 == 3)) {
                                long j16 = l1Var.f11533r;
                                this.E = t(bVar, j16, j12, j16, z10, 2);
                                return;
                            }
                        } else {
                            jD = j11;
                        }
                        if (this.E.f11520e == 4) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        jQ = Q(bVar, jD, z11);
                        z12 = (j11 != jQ) | z10;
                        try {
                            l1 l1Var2 = this.E;
                            b2 b2Var = l1Var2.f11516a;
                            m0(b2Var, bVar, b2Var, l1Var2.f11517b, j12);
                            z10 = z12;
                            j14 = jQ;
                        } catch (Throwable th) {
                            th = th;
                            z10 = z12;
                            j13 = jQ;
                            this.E = t(bVar, j13, j12, j13, z10, 2);
                            throw th;
                        }
                    }
                    this.E = t(bVar, j14, j12, j14, z10, 2);
                    return;
                }
                this.R = gVar;
                j14 = j11;
                this.E = t(bVar, j14, j12, j14, z10, 2);
                return;
            }
            Pair<p4.x.b, Long> pairL2 = l(this.E.f11516a);
            bVar = (p4.x.b) pairL2.first;
            jLongValue = ((Long) pairL2.second).longValue();
            z10 = !this.E.f11516a.s();
            j10 = -9223372036854775807L;
            if (this.E.f11516a.s()) {
                if (pairL == null) {
                    if (this.E.f11520e != 1) {
                        e0(4);
                    }
                    G(false, true, false, true);
                } else {
                    if (bVar.equals(this.E.f11517b)) {
                        b1Var = this.f11575z.f11373h;
                        if (b1Var == null) {
                            jD = j11;
                        } else {
                            jD = j11;
                        }
                        if (m5.g0.X(jD) == m5.g0.X(this.E.f11533r)) {
                            long j17 = l1Var.f11533r;
                            this.E = t(bVar, j17, j12, j17, z10, 2);
                            return;
                        }
                    } else {
                        jD = j11;
                    }
                    if (this.E.f11520e == 4) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    jQ = Q(bVar, jD, z11);
                    z12 = (j11 != jQ) | z10;
                    l1 l1Var3 = this.E;
                    b2 b2Var2 = l1Var3.f11516a;
                    m0(b2Var2, bVar, b2Var2, l1Var3.f11517b, j12);
                    z10 = z12;
                    j14 = jQ;
                }
                this.E = t(bVar, j14, j12, j14, z10, 2);
                return;
            }
            this.R = gVar;
            j14 = j11;
            this.E = t(bVar, j14, j12, j14, z10, 2);
            return;
        } catch (Throwable th2) {
            th = th2;
            j13 = j11;
        }
        j11 = jLongValue;
        j12 = j10;
    }

    public final long Q(p4.x.b bVar, long j10, boolean z10) throws q {
        e1 e1Var = this.f11575z;
        return R(bVar, j10, e1Var.f11373h != e1Var.f11374i, z10);
    }

    public final long R(p4.x.b bVar, long j10, boolean z10, boolean z11) throws q {
        e1 e1Var;
        j0();
        this.J = false;
        if (z11 || this.E.f11520e == 3) {
            e0(2);
        }
        b1 b1Var = this.f11575z.f11373h;
        b1 b1Var2 = b1Var;
        while (b1Var2 != null && !bVar.equals(b1Var2.f11283f.f11328a)) {
            b1Var2 = b1Var2.f11289l;
        }
        if (z10 || b1Var != b1Var2 || (b1Var2 != null && b1Var2.f11292o + j10 < 0)) {
            for (s1 s1Var : this.f11557h) {
                c(s1Var);
            }
            if (b1Var2 != null) {
                while (true) {
                    e1Var = this.f11575z;
                    if (e1Var.f11373h == b1Var2) {
                        break;
                    }
                    e1Var.a();
                }
                e1Var.n(b1Var2);
                b1Var2.f11292o = 1000000000000L;
                e();
            }
        }
        if (b1Var2 != null) {
            this.f11575z.n(b1Var2);
            if (!b1Var2.f11281d) {
                b1Var2.f11283f = b1Var2.f11283f.b(j10);
            } else if (b1Var2.f11282e) {
                long jT = b1Var2.f11278a.t(j10);
                b1Var2.f11278a.s(jT - this.f11569t, this.f11570u);
                j10 = jT;
            }
            I(j10);
            y();
        } else {
            this.f11575z.b();
            I(j10);
        }
        p(false);
        this.f11564o.e(2);
        return j10;
    }

    public final void S(p1 p1Var) throws q {
        if (p1Var.f11628g != this.f11566q) {
            ((m5.b0.a) this.f11564o.g(15, p1Var)).b();
            return;
        }
        b(p1Var);
        int i10 = this.E.f11520e;
        if (i10 == 3 || i10 == 2) {
            this.f11564o.e(2);
        }
    }

    public final void T(p1 p1Var) {
        Looper looper = p1Var.f11628g;
        if (looper.getThread().isAlive()) {
            this.f11573x.b(looper, null).i(new y0.v(this, p1Var, 2));
        } else {
            m5.p.g("TAG", "Trying to send message on a dead thread.");
            p1Var.b(false);
        }
    }

    public final void U(s1 s1Var, long j10) {
        s1Var.n();
        if (s1Var instanceof z4.o) {
            z4.o oVar = (z4.o) s1Var;
            m5.a.e(oVar.f11391r);
            oVar.H = j10;
        }
    }

    public final void V(boolean z10, AtomicBoolean atomicBoolean) {
        if (this.N != z10) {
            this.N = z10;
            if (!z10) {
                for (s1 s1Var : this.f11557h) {
                    if (!v(s1Var) && this.f11558i.remove(s1Var)) {
                        s1Var.e();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<n3.h1$c>] */
    public final void W(a aVar) throws q {
        this.F.a(1);
        if (aVar.f11578c != -1) {
            this.R = new g(new q1(aVar.f11576a, aVar.f11577b), aVar.f11578c, aVar.f11579d);
        }
        h1 h1Var = this.A;
        List<h1.c> list = aVar.f11576a;
        p4.o0 o0Var = aVar.f11577b;
        h1Var.i(0, h1Var.f11402b.size());
        q(h1Var.a(h1Var.f11402b.size(), list, o0Var), false);
    }

    public final void X(boolean z10) {
        if (z10 == this.P) {
            return;
        }
        this.P = z10;
        if (z10 || !this.E.f11530o) {
            return;
        }
        this.f11564o.e(2);
    }

    public final void Y(boolean z10) throws q {
        this.H = z10;
        H();
        if (this.I) {
            e1 e1Var = this.f11575z;
            if (e1Var.f11374i != e1Var.f11373h) {
                O(true);
                p(false);
            }
        }
    }

    public final void Z(boolean z10, int i10, boolean z11, int i11) throws q {
        this.F.a(z11 ? 1 : 0);
        d dVar = this.F;
        dVar.f11584a = true;
        dVar.f11589f = true;
        dVar.f11590g = i11;
        this.E = this.E.c(z10, i10);
        this.J = false;
        for (b1 b1Var = this.f11575z.f11373h; b1Var != null; b1Var = b1Var.f11289l) {
            for (j5.l lVar : b1Var.f11291n.f9439c) {
                if (lVar != null) {
                    lVar.d(z10);
                }
            }
        }
        if (!f0()) {
            j0();
            l0();
            return;
        }
        int i12 = this.E.f11520e;
        if (i12 == 3) {
            h0();
            this.f11564o.e(2);
        } else if (i12 == 2) {
            this.f11564o.e(2);
        }
    }

    public final void a(a aVar, int i10) throws q {
        this.F.a(1);
        h1 h1Var = this.A;
        if (i10 == -1) {
            i10 = h1Var.e();
        }
        q(h1Var.a(i10, aVar.f11576a, aVar.f11577b), false);
    }

    public final void a0(m1 m1Var) throws q {
        this.f11571v.f(m1Var);
        m1 m1VarD = this.f11571v.d();
        s(m1VarD, m1VarD.f11539h, true, true);
    }

    public final void b(p1 p1Var) throws q {
        synchronized (p1Var) {
        }
        try {
            p1Var.f11622a.l(p1Var.f11626e, p1Var.f11627f);
        } finally {
            p1Var.b(true);
        }
    }

    public final void b0(int i10) throws q {
        this.L = i10;
        e1 e1Var = this.f11575z;
        b2 b2Var = this.E.f11516a;
        e1Var.f11371f = i10;
        if (!e1Var.q(b2Var)) {
            O(true);
        }
        p(false);
    }

    public final void c(s1 s1Var) throws q {
        if (s1Var.getState() != 0) {
            l lVar = this.f11571v;
            if (s1Var == lVar.f11509j) {
                lVar.f11510k = null;
                lVar.f11509j = null;
                lVar.f11511l = true;
            }
            if (s1Var.getState() == 2) {
                s1Var.stop();
            }
            s1Var.disable();
            this.Q--;
        }
    }

    public final void c0(boolean z10) throws q {
        this.M = z10;
        e1 e1Var = this.f11575z;
        b2 b2Var = this.E.f11516a;
        e1Var.f11372g = z10;
        if (!e1Var.q(b2Var)) {
            O(true);
        }
        p(false);
    }

    /* JADX WARN: Code duplicated, block: B:205:0x0326  */
    /* JADX WARN: Code duplicated, block: B:306:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:312:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:322:0x04db  */
    /* JADX WARN: Code duplicated, block: B:324:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:326:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:328:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:334:0x0506  */
    /* JADX WARN: Code duplicated, block: B:359:0x055f  */
    /* JADX WARN: Code duplicated, block: B:440:0x04f0 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [int] */
    /* JADX WARN: Type inference failed for: r2v63 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20, types: [int] */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [int] */
    public final void d() throws q, IOException {
        boolean z10;
        boolean z11;
        b1 b1Var;
        j jVar;
        long j10;
        long j11;
        j5.l[] lVarArr;
        int length;
        ?? r10;
        j5.l lVar;
        boolean zW;
        boolean z12;
        int i10;
        boolean z13;
        b1 b1Var2;
        b1 b1Var3;
        boolean z14;
        long jA = this.f11573x.a();
        this.f11564o.h();
        boolean z15 = true;
        boolean z16 = false;
        if (!this.E.f11516a.s() && this.A.f11411k) {
            this.f11575z.m(this.S);
            e1 e1Var = this.f11575z;
            b1 b1Var4 = e1Var.f11375j;
            if (b1Var4 == null || (!b1Var4.f11283f.f11336i && b1Var4.f() && e1Var.f11375j.f11283f.f11332e != -9223372036854775807L && e1Var.f11376k < 100)) {
                e1 e1Var2 = this.f11575z;
                long j12 = this.S;
                l1 l1Var = this.E;
                b1 b1Var5 = e1Var2.f11375j;
                c1 c1VarD = b1Var5 == null ? e1Var2.d(l1Var.f11516a, l1Var.f11517b, l1Var.f11518c, l1Var.f11533r) : e1Var2.c(l1Var.f11516a, b1Var5, j12);
                if (c1VarD != null) {
                    e1 e1Var3 = this.f11575z;
                    t1[] t1VarArr = this.f11559j;
                    j5.s sVar = this.f11560k;
                    l5.b bVarE = this.f11562m.e();
                    h1 h1Var = this.A;
                    j5.t tVar = this.f11561l;
                    b1 b1Var6 = e1Var3.f11375j;
                    b1 b1Var7 = new b1(t1VarArr, b1Var6 == null ? 1000000000000L : (b1Var6.f11292o + b1Var6.f11283f.f11332e) - c1VarD.f11329b, sVar, bVarE, h1Var, c1VarD, tVar);
                    b1 b1Var8 = e1Var3.f11375j;
                    if (b1Var8 == null) {
                        e1Var3.f11373h = b1Var7;
                        e1Var3.f11374i = b1Var7;
                    } else if (b1Var7 != b1Var8.f11289l) {
                        b1Var8.b();
                        b1Var8.f11289l = b1Var7;
                        b1Var8.c();
                    }
                    e1Var3.f11377l = null;
                    e1Var3.f11375j = b1Var7;
                    e1Var3.f11376k++;
                    e1Var3.l();
                    b1Var7.f11278a.u(this, c1VarD.f11329b);
                    if (this.f11575z.f11373h == b1Var7) {
                        I(c1VarD.f11329b);
                    }
                    p(false);
                }
            }
            if (this.K) {
                this.K = u();
                k0();
            } else {
                y();
            }
            b1 b1Var9 = this.f11575z.f11374i;
            if (b1Var9 != null) {
                if (b1Var9.f11289l != null && !this.I) {
                    if (!b1Var9.f11281d) {
                        z14 = false;
                        break;
                    }
                    int i11 = 0;
                    while (true) {
                        s1[] s1VarArr = this.f11557h;
                        if (i11 >= s1VarArr.length) {
                            z14 = true;
                            break;
                        }
                        s1 s1Var = s1VarArr[i11];
                        p4.m0 m0Var = b1Var9.f11280c[i11];
                        if (s1Var.m() == m0Var) {
                            if (m0Var != null && !s1Var.h()) {
                                b1 b1Var10 = b1Var9.f11289l;
                                if (!(b1Var9.f11283f.f11333f && b1Var10.f11281d && ((s1Var instanceof z4.o) || (s1Var instanceof f4.f) || s1Var.p() >= b1Var10.e()))) {
                                }
                            }
                            i11++;
                        }
                        z14 = false;
                        break;
                    }
                    if (z14) {
                        b1 b1Var11 = b1Var9.f11289l;
                        if (b1Var11.f11281d || this.S >= b1Var11.e()) {
                            j5.t tVar2 = b1Var9.f11291n;
                            e1 e1Var4 = this.f11575z;
                            b1 b1Var12 = e1Var4.f11374i;
                            m5.a.e((b1Var12 == null || b1Var12.f11289l == null) ? false : true);
                            e1Var4.f11374i = e1Var4.f11374i.f11289l;
                            e1Var4.l();
                            b1 b1Var13 = e1Var4.f11374i;
                            j5.t tVar3 = b1Var13.f11291n;
                            b2 b2Var = this.E.f11516a;
                            m0(b2Var, b1Var13.f11283f.f11328a, b2Var, b1Var9.f11283f.f11328a, -9223372036854775807L);
                            if (!b1Var13.f11281d || b1Var13.f11278a.l() == -9223372036854775807L) {
                                for (int i12 = 0; i12 < this.f11557h.length; i12++) {
                                    boolean zB = tVar2.b(i12);
                                    boolean zB2 = tVar3.b(i12);
                                    if (zB && !this.f11557h[i12].r()) {
                                        boolean z17 = ((n3.f) this.f11559j[i12]).f11381h == -2;
                                        u1 u1Var = tVar2.f9438b[i12];
                                        u1 u1Var2 = tVar3.f9438b[i12];
                                        if (!zB2 || !u1Var2.equals(u1Var) || z17) {
                                            U(this.f11557h[i12], b1Var13.e());
                                        }
                                    }
                                }
                            } else {
                                long jE = b1Var13.e();
                                for (s1 s1Var2 : this.f11557h) {
                                    if (s1Var2.m() != null) {
                                        U(s1Var2, jE);
                                    }
                                }
                            }
                        }
                    }
                } else if (b1Var9.f11283f.f11336i || this.I) {
                    int i13 = 0;
                    while (true) {
                        s1[] s1VarArr2 = this.f11557h;
                        if (i13 >= s1VarArr2.length) {
                            break;
                        }
                        s1 s1Var3 = s1VarArr2[i13];
                        p4.m0 m0Var2 = b1Var9.f11280c[i13];
                        if (m0Var2 != null && s1Var3.m() == m0Var2 && s1Var3.h()) {
                            long j13 = b1Var9.f11283f.f11332e;
                            U(s1Var3, (j13 == -9223372036854775807L || j13 == Long.MIN_VALUE) ? -9223372036854775807L : j13 + b1Var9.f11292o);
                        }
                        i13++;
                    }
                }
            }
            e1 e1Var5 = this.f11575z;
            b1 b1Var14 = e1Var5.f11374i;
            if (b1Var14 != null && e1Var5.f11373h != b1Var14 && !b1Var14.f11284g) {
                j5.t tVar4 = b1Var14.f11291n;
                int i14 = 0;
                boolean z18 = false;
                while (true) {
                    s1[] s1VarArr3 = this.f11557h;
                    if (i14 >= s1VarArr3.length) {
                        break;
                    }
                    s1 s1Var4 = s1VarArr3[i14];
                    if (v(s1Var4)) {
                        boolean z19 = s1Var4.m() != b1Var14.f11280c[i14];
                        if (!tVar4.b(i14) || z19) {
                            if (!s1Var4.r()) {
                                s1Var4.g(g(tVar4.f9439c[i14]), b1Var14.f11280c[i14], b1Var14.e(), b1Var14.f11292o);
                            } else if (s1Var4.b()) {
                                c(s1Var4);
                            } else {
                                z18 = true;
                            }
                        }
                    }
                    i14++;
                }
                if (!z18) {
                    e();
                }
            }
            boolean z20 = false;
            while (true) {
                if (!((f0() && !this.I && (b1Var2 = this.f11575z.f11373h) != null && (b1Var3 = b1Var2.f11289l) != null && this.S >= b1Var3.e() && b1Var3.f11284g) ? z15 : z16)) {
                    break;
                }
                if (z20) {
                    z();
                }
                b1 b1VarA = this.f11575z.a();
                Objects.requireNonNull(b1VarA);
                if (this.E.f11517b.f13238a.equals(b1VarA.f11283f.f11328a.f13238a)) {
                    p4.x.b bVar = this.E.f11517b;
                    if (bVar.f13239b == -1) {
                        p4.x.b bVar2 = b1VarA.f11283f.f11328a;
                        if (bVar2.f13239b != -1 || bVar.f13242e == bVar2.f13242e) {
                            z13 = z16;
                        } else {
                            z13 = z15;
                        }
                    } else {
                        z13 = z16;
                    }
                } else {
                    z13 = z16;
                }
                c1 c1Var = b1VarA.f11283f;
                p4.x.b bVar3 = c1Var.f11328a;
                long j14 = c1Var.f11329b;
                this.E = t(bVar3, j14, c1Var.f11330c, j14, !z13, 0);
                H();
                l0();
                z16 = z16;
                z20 = z15;
                z15 = z20;
            }
        }
        boolean z21 = z16;
        boolean z22 = z15;
        int i15 = this.E.f11520e;
        if (i15 == z22 || i15 == 4) {
            return;
        }
        b1 b1Var15 = this.f11575z.f11373h;
        if (b1Var15 == null) {
            N(jA, 10L);
            return;
        }
        i0.b.d("doSomeWork");
        l0();
        if (b1Var15.f11281d) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            b1Var15.f11278a.s(this.E.f11533r - this.f11569t, this.f11570u);
            ?? r11 = z21;
            z10 = true;
            z11 = true;
            while (true) {
                s1[] s1VarArr4 = this.f11557h;
                if (r11 >= s1VarArr4.length) {
                    break;
                }
                s1 s1Var5 = s1VarArr4[r11];
                if (v(s1Var5)) {
                    s1Var5.k(this.S, jElapsedRealtime);
                    z11 = (z11 && s1Var5.b()) ? true : z21;
                    boolean z23 = b1Var15.f11280c[r11] != s1Var5.m() ? true : z21;
                    boolean z24 = (z23 || ((z23 || !s1Var5.h()) ? z21 : true) || s1Var5.isReady() || s1Var5.b()) ? true : z21;
                    z10 = (z10 && z24) ? true : z21;
                    if (!z24) {
                        s1Var5.o();
                    }
                }
                r11++;
            }
        } else {
            b1Var15.f11278a.q();
            z10 = true;
            z11 = true;
        }
        long j15 = b1Var15.f11283f.f11332e;
        boolean z25 = (z11 && b1Var15.f11281d && (j15 == -9223372036854775807L || j15 <= this.E.f11533r)) ? true : z21;
        if (z25 && this.I) {
            this.I = z21;
            Z(z21, this.E.f11528m, z21, 5);
        }
        if (z25 && b1Var15.f11283f.f11336i) {
            e0(4);
            j0();
        } else {
            l1 l1Var2 = this.E;
            if (l1Var2.f11520e == 2) {
                if (this.Q == 0) {
                    zW = w();
                } else if (z10) {
                    if (l1Var2.f11522g) {
                        long j16 = g0(l1Var2.f11516a, this.f11575z.f11373h.f11283f.f11328a) ? ((j) this.B).f11442i : -9223372036854775807L;
                        b1 b1Var16 = this.f11575z.f11375j;
                        boolean z26 = (b1Var16.f() && b1Var16.f11283f.f11336i) ? true : z21;
                        boolean z27 = (!b1Var16.f11283f.f11328a.a() || b1Var16.f11281d) ? z21 : true;
                        if (!z26 && !z27 && !this.f11562m.d(m(), this.f11571v.d().f11539h, this.J, j16)) {
                            zW = z21;
                        }
                    }
                    zW = true;
                } else {
                    zW = z21;
                }
                if (zW) {
                    e0(3);
                    this.V = null;
                    if (f0()) {
                        h0();
                    }
                } else if (this.E.f11520e == 3) {
                    this.J = f0();
                    e0(2);
                    if (this.J) {
                        for (b1Var = this.f11575z.f11373h; b1Var != null; b1Var = b1Var.f11289l) {
                            lVarArr = b1Var.f11291n.f9439c;
                            length = lVarArr.length;
                            for (r10 = z21; r10 < length; r10++) {
                                lVar = lVarArr[r10];
                                if (lVar != null) {
                                    lVar.s();
                                }
                            }
                        }
                        jVar = (j) this.B;
                        j10 = jVar.f11442i;
                        if (j10 != -9223372036854775807L) {
                            long j17 = j10 + jVar.f11435b;
                            jVar.f11442i = j17;
                            j11 = jVar.f11441h;
                            if (j11 != -9223372036854775807L) {
                                jVar.f11442i = j11;
                            }
                            jVar.f11446m = -9223372036854775807L;
                        }
                    }
                    j0();
                }
            } else if (this.E.f11520e == 3 && (this.Q != 0 ? !z10 : !w())) {
                this.J = f0();
                e0(2);
                if (this.J) {
                    while (b1Var != null) {
                        lVarArr = b1Var.f11291n.f9439c;
                        length = lVarArr.length;
                        while (r10 < length) {
                            lVar = lVarArr[r10];
                            if (lVar != null) {
                                lVar.s();
                            }
                        }
                    }
                    jVar = (j) this.B;
                    j10 = jVar.f11442i;
                    if (j10 != -9223372036854775807L) {
                        long j18 = j10 + jVar.f11435b;
                        jVar.f11442i = j18;
                        j11 = jVar.f11441h;
                        if (j11 != -9223372036854775807L && j18 > j11) {
                            jVar.f11442i = j11;
                        }
                        jVar.f11446m = -9223372036854775807L;
                    }
                }
                j0();
            }
        }
        if (this.E.f11520e == 2) {
            ?? r12 = z21;
            while (true) {
                s1[] s1VarArr5 = this.f11557h;
                if (r12 >= s1VarArr5.length) {
                    break;
                }
                if (v(s1VarArr5[r12]) && this.f11557h[r12].m() == b1Var15.f11280c[r12]) {
                    this.f11557h[r12].o();
                }
                r12++;
            }
            l1 l1Var3 = this.E;
            if (l1Var3.f11522g || l1Var3.f11532q >= 500000 || !u()) {
                z12 = z21;
            } else {
                z12 = true;
            }
        } else {
            z12 = z21;
        }
        if (!z12) {
            this.W = -9223372036854775807L;
        } else if (this.W == -9223372036854775807L) {
            this.W = this.f11573x.d();
        } else if (this.f11573x.d() - this.W >= 4000) {
            throw new IllegalStateException("Playback stuck buffering and not loading");
        }
        boolean z28 = (f0() && this.E.f11520e == 3) ? true : z21;
        boolean z29 = (this.P && this.O && z28) ? true : z21;
        l1 l1Var4 = this.E;
        if (l1Var4.f11530o != z29) {
            this.E = new l1(l1Var4.f11516a, l1Var4.f11517b, l1Var4.f11518c, l1Var4.f11519d, l1Var4.f11520e, l1Var4.f11521f, l1Var4.f11522g, l1Var4.f11523h, l1Var4.f11524i, l1Var4.f11525j, l1Var4.f11526k, l1Var4.f11527l, l1Var4.f11528m, l1Var4.f11529n, l1Var4.f11531p, l1Var4.f11532q, l1Var4.f11533r, z29);
        }
        this.O = z21;
        if (z29 || (i10 = this.E.f11520e) == 4) {
            return;
        }
        if (z28 || i10 == 2) {
            N(jA, 10L);
        } else if (i10 == 3 && this.Q != 0) {
            N(jA, 1000L);
        }
        i0.b.g();
    }

    public final void d0(p4.o0 o0Var) throws q {
        this.F.a(1);
        h1 h1Var = this.A;
        int iE = h1Var.e();
        if (o0Var.a() != iE) {
            o0Var = o0Var.h().d(iE);
        }
        h1Var.f11410j = o0Var;
        q(h1Var.c(), false);
    }

    public final void e() throws q {
        f(new boolean[this.f11557h.length]);
    }

    public final void e0(int i10) {
        l1 l1Var = this.E;
        if (l1Var.f11520e != i10) {
            if (i10 != 2) {
                this.W = -9223372036854775807L;
            }
            this.E = l1Var.f(i10);
        }
    }

    public final void f(boolean[] zArr) throws q {
        m5.r rVar;
        b1 b1Var = this.f11575z.f11374i;
        j5.t tVar = b1Var.f11291n;
        for (int i10 = 0; i10 < this.f11557h.length; i10++) {
            if (!tVar.b(i10) && this.f11558i.remove(this.f11557h[i10])) {
                this.f11557h[i10].e();
            }
        }
        for (int i11 = 0; i11 < this.f11557h.length; i11++) {
            if (tVar.b(i11)) {
                boolean z10 = zArr[i11];
                s1 s1Var = this.f11557h[i11];
                if (v(s1Var)) {
                    continue;
                } else {
                    e1 e1Var = this.f11575z;
                    b1 b1Var2 = e1Var.f11374i;
                    boolean z11 = b1Var2 == e1Var.f11373h;
                    j5.t tVar2 = b1Var2.f11291n;
                    u1 u1Var = tVar2.f9438b[i11];
                    s0[] s0VarArrG = g(tVar2.f9439c[i11]);
                    boolean z12 = f0() && this.E.f11520e == 3;
                    boolean z13 = !z10 && z12;
                    this.Q++;
                    this.f11558i.add(s1Var);
                    s1Var.t(u1Var, s0VarArrG, b1Var2.f11280c[i11], this.S, z13, z11, b1Var2.e(), b1Var2.f11292o);
                    s1Var.l(11, new n0(this));
                    l lVar = this.f11571v;
                    Objects.requireNonNull(lVar);
                    m5.r rVarS = s1Var.s();
                    if (rVarS != null && rVarS != (rVar = lVar.f11510k)) {
                        if (rVar != null) {
                            throw q.d(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
                        }
                        lVar.f11510k = rVarS;
                        lVar.f11509j = s1Var;
                        rVarS.f(lVar.f11507h.f10491l);
                    }
                    if (z12) {
                        s1Var.start();
                    }
                }
            }
        }
        b1Var.f11284g = true;
    }

    public final boolean f0() {
        l1 l1Var = this.E;
        return l1Var.f11527l && l1Var.f11528m == 0;
    }

    public final boolean g0(b2 b2Var, p4.x.b bVar) {
        if (bVar.a() || b2Var.s()) {
            return false;
        }
        b2Var.p(b2Var.j(bVar.f13238a, this.f11568s).f11297j, this.f11567r);
        if (!this.f11567r.d()) {
            return false;
        }
        b2.d dVar = this.f11567r;
        return dVar.f11316p && dVar.f11313m != -9223372036854775807L;
    }

    public final long h(b2 b2Var, Object obj, long j10) {
        b2Var.p(b2Var.j(obj, this.f11568s).f11297j, this.f11567r);
        b2.d dVar = this.f11567r;
        if (dVar.f11313m != -9223372036854775807L && dVar.d()) {
            b2.d dVar2 = this.f11567r;
            if (dVar2.f11316p) {
                return m5.g0.L(m5.g0.x(dVar2.f11314n) - this.f11567r.f11313m) - (j10 + this.f11568s.f11299l);
            }
        }
        return -9223372036854775807L;
    }

    public final void h0() throws q {
        this.J = false;
        l lVar = this.f11571v;
        lVar.f11512m = true;
        lVar.f11507h.b();
        for (s1 s1Var : this.f11557h) {
            if (v(s1Var)) {
                s1Var.start();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        b1 b1Var;
        int i10;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 0:
                    C();
                    break;
                case 1:
                    Z(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    d();
                    break;
                case 3:
                    P((g) message.obj);
                    break;
                case 4:
                    a0((m1) message.obj);
                    break;
                case 5:
                    this.D = (w1) message.obj;
                    break;
                case 6:
                    i0(false, true);
                    break;
                case 7:
                    D();
                    return true;
                case 8:
                    r((p4.v) message.obj);
                    break;
                case 9:
                    n((p4.v) message.obj);
                    break;
                case 10:
                    F();
                    break;
                case 11:
                    b0(message.arg1);
                    break;
                case 12:
                    c0(message.arg1 != 0);
                    break;
                case 13:
                    V(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    p1 p1Var = (p1) message.obj;
                    Objects.requireNonNull(p1Var);
                    S(p1Var);
                    break;
                case 15:
                    T((p1) message.obj);
                    break;
                case 16:
                    m1 m1Var = (m1) message.obj;
                    s(m1Var, m1Var.f11539h, true, false);
                    break;
                case 17:
                    W((a) message.obj);
                    break;
                case 18:
                    a((a) message.obj, message.arg1);
                    break;
                case 19:
                    B((b) message.obj);
                    break;
                case 20:
                    E(message.arg1, message.arg2, (p4.o0) message.obj);
                    break;
                case 21:
                    d0((p4.o0) message.obj);
                    break;
                case 22:
                    A();
                    break;
                case 23:
                    Y(message.arg1 != 0);
                    break;
                case 24:
                    X(message.arg1 == 1);
                    break;
                case 25:
                    O(true);
                    break;
                default:
                    return false;
            }
        } catch (p4.b e10) {
            o(e10, 1002);
        } catch (IOException e11) {
            o(e11, ActivityTrace.MAX_TRACES);
        } catch (RuntimeException e12) {
            q qVarD = q.d(e12, ((e12 instanceof IllegalStateException) || (e12 instanceof IllegalArgumentException)) ? 1004 : 1000);
            m5.p.d("ExoPlayerImplInternal", "Playback error", qVarD);
            i0(true, false);
            this.E = this.E.d(qVarD);
        } catch (l5.k e13) {
            o(e13, e13.f10056h);
        } catch (i1 e14) {
            int i12 = e14.f11433i;
            if (i12 == 1) {
                i10 = e14.f11432h ? 3001 : 3003;
            } else {
                if (i12 == 4) {
                    i10 = e14.f11432h ? 3002 : 3004;
                }
                o(e14, i11);
            }
            i11 = i10;
            o(e14, i11);
        } catch (q e15) {
            e = e15;
            if (e.f11633j == 1 && (b1Var = this.f11575z.f11374i) != null) {
                e = e.c(b1Var.f11283f.f11328a);
            }
            if (e.f11639p && this.V == null) {
                m5.p.h("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.V = e;
                m5.l lVar = this.f11564o;
                lVar.f(lVar.g(25, e));
            } else {
                q qVar = this.V;
                if (qVar != null) {
                    qVar.addSuppressed(e);
                    e = this.V;
                }
                m5.p.d("ExoPlayerImplInternal", "Playback error", e);
                i0(true, false);
                this.E = this.E.d(e);
            }
        } catch (r3.e.a e16) {
            o(e16, e16.f14488h);
        }
        z();
        return true;
    }

    @Override // p4.v.a
    public final void i(p4.v vVar) {
        ((m5.b0.a) this.f11564o.g(8, vVar)).b();
    }

    public final void i0(boolean z10, boolean z11) {
        G(z10 || !this.N, false, true, false);
        this.F.a(z11 ? 1 : 0);
        this.f11562m.f();
        e0(1);
    }

    @Override // p4.n0.a
    public final void j(p4.n0 n0Var) {
        ((m5.b0.a) this.f11564o.g(9, (p4.v) n0Var)).b();
    }

    public final void j0() throws q {
        l lVar = this.f11571v;
        lVar.f11512m = false;
        m5.z zVar = lVar.f11507h;
        if (zVar.f10488i) {
            zVar.a(zVar.w());
            zVar.f10488i = false;
        }
        for (s1 s1Var : this.f11557h) {
            if (v(s1Var) && s1Var.getState() == 2) {
                s1Var.stop();
            }
        }
    }

    public final long k() {
        b1 b1Var = this.f11575z.f11374i;
        if (b1Var == null) {
            return 0L;
        }
        long jMax = b1Var.f11292o;
        if (!b1Var.f11281d) {
            return jMax;
        }
        int i10 = 0;
        while (true) {
            s1[] s1VarArr = this.f11557h;
            if (i10 >= s1VarArr.length) {
                return jMax;
            }
            if (v(s1VarArr[i10]) && this.f11557h[i10].m() == b1Var.f11280c[i10]) {
                long jP = this.f11557h[i10].p();
                if (jP == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jMax = Math.max(jP, jMax);
            }
            i10++;
        }
    }

    public final void k0() {
        b1 b1Var = this.f11575z.f11375j;
        boolean z10 = this.K || (b1Var != null && b1Var.f11278a.a());
        l1 l1Var = this.E;
        if (z10 != l1Var.f11522g) {
            this.E = new l1(l1Var.f11516a, l1Var.f11517b, l1Var.f11518c, l1Var.f11519d, l1Var.f11520e, l1Var.f11521f, z10, l1Var.f11523h, l1Var.f11524i, l1Var.f11525j, l1Var.f11526k, l1Var.f11527l, l1Var.f11528m, l1Var.f11529n, l1Var.f11531p, l1Var.f11532q, l1Var.f11533r, l1Var.f11530o);
        }
    }

    public final Pair<p4.x.b, Long> l(b2 b2Var) {
        if (b2Var.s()) {
            p4.x.b bVar = l1.f11515s;
            return Pair.create(l1.f11515s, 0L);
        }
        Pair<Object, Long> pairL = b2Var.l(this.f11567r, this.f11568s, b2Var.c(this.M), -9223372036854775807L);
        p4.x.b bVarP = this.f11575z.p(b2Var, pairL.first, 0L);
        long jLongValue = ((Long) pairL.second).longValue();
        if (bVarP.a()) {
            b2Var.j(bVarP.f13238a, this.f11568s);
            jLongValue = bVarP.f13240c == this.f11568s.g(bVarP.f13239b) ? this.f11568s.f11301n.f13611j : 0L;
        }
        return Pair.create(bVarP, Long.valueOf(jLongValue));
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00bd  */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x015c, code lost:
    
        r6 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l0() throws q {
        m1 m1VarD;
        long j10;
        o0 o0Var;
        c cVar;
        b1 b1Var = this.f11575z.f11373h;
        if (b1Var == null) {
            return;
        }
        long jL = b1Var.f11281d ? b1Var.f11278a.l() : -9223372036854775807L;
        if (jL != -9223372036854775807L) {
            I(jL);
            if (jL != this.E.f11533r) {
                l1 l1Var = this.E;
                this.E = t(l1Var.f11517b, jL, l1Var.f11518c, jL, true, 5);
            }
        } else {
            l lVar = this.f11571v;
            boolean z10 = b1Var != this.f11575z.f11374i;
            s1 s1Var = lVar.f11509j;
            if (s1Var == null || s1Var.b() || (!lVar.f11509j.isReady() && (z10 || lVar.f11509j.h()))) {
                lVar.f11511l = true;
                if (lVar.f11512m) {
                    lVar.f11507h.b();
                }
            } else {
                m5.r rVar = lVar.f11510k;
                Objects.requireNonNull(rVar);
                long jW = rVar.w();
                if (!lVar.f11511l) {
                    lVar.f11507h.a(jW);
                    m1VarD = rVar.d();
                    if (!m1VarD.equals(lVar.f11507h.f10491l)) {
                        lVar.f11507h.f(m1VarD);
                        ((m5.b0.a) ((o0) lVar.f11508i).f11564o.g(16, m1VarD)).b();
                    }
                } else if (jW < lVar.f11507h.w()) {
                    m5.z zVar = lVar.f11507h;
                    if (zVar.f10488i) {
                        zVar.a(zVar.w());
                        zVar.f10488i = false;
                    }
                } else {
                    lVar.f11511l = false;
                    if (lVar.f11512m) {
                        lVar.f11507h.b();
                    }
                    lVar.f11507h.a(jW);
                    m1VarD = rVar.d();
                    if (!m1VarD.equals(lVar.f11507h.f10491l)) {
                        lVar.f11507h.f(m1VarD);
                        ((m5.b0.a) ((o0) lVar.f11508i).f11564o.g(16, m1VarD)).b();
                    }
                }
            }
            long jW2 = lVar.w();
            this.S = jW2;
            long j11 = jW2 - b1Var.f11292o;
            long j12 = this.E.f11533r;
            if (!this.f11572w.isEmpty() && !this.E.f11517b.a()) {
                if (this.U) {
                    j12--;
                    this.U = false;
                }
                l1 l1Var2 = this.E;
                int iD = l1Var2.f11516a.d(l1Var2.f11517b.f13238a);
                int iMin = Math.min(this.T, this.f11572w.size());
                if (iMin > 0) {
                    cVar = this.f11572w.get(iMin - 1);
                    j10 = j11;
                    o0Var = this;
                } else {
                    j10 = j11;
                    o0Var = this;
                    cVar = null;
                }
                while (cVar != null) {
                    int i10 = cVar.f11581i;
                    if (i10 <= iD && (i10 != iD || cVar.f11582j <= j12)) {
                        break;
                    }
                    iMin--;
                    if (iMin > 0) {
                        cVar = o0Var.f11572w.get(iMin - 1);
                    } else {
                        j10 = j10;
                        o0Var = o0Var;
                        cVar = null;
                    }
                }
                if (iMin < o0Var.f11572w.size()) {
                    c cVar2 = o0Var.f11572w.get(iMin);
                    while (cVar2 != null && cVar2.f11583k != null) {
                        int i11 = cVar2.f11581i;
                        if (i11 >= iD && (i11 != iD || cVar2.f11582j > j12)) {
                            break;
                        }
                        iMin++;
                        cVar2 = iMin < o0Var.f11572w.size() ? o0Var.f11572w.get(iMin) : null;
                    }
                    while (cVar2 != null && cVar2.f11583k != null && cVar2.f11581i == iD) {
                        long j13 = cVar2.f11582j;
                        if (j13 <= j12 || j13 > j10) {
                            break;
                        }
                        try {
                            o0Var.S(cVar2.f11580h);
                            Objects.requireNonNull(cVar2.f11580h);
                            o0Var.f11572w.remove(iMin);
                            cVar2 = iMin < o0Var.f11572w.size() ? o0Var.f11572w.get(iMin) : null;
                        } catch (Throwable th) {
                            Objects.requireNonNull(cVar2.f11580h);
                            o0Var.f11572w.remove(iMin);
                            throw th;
                        }
                    }
                    o0Var.T = iMin;
                }
            }
            this.E.f11533r = j11;
        }
        this.E.f11531p = this.f11575z.f11375j.d();
        this.E.f11532q = m();
        l1 l1Var3 = this.E;
        if (l1Var3.f11527l && l1Var3.f11520e == 3 && g0(l1Var3.f11516a, l1Var3.f11517b)) {
            l1 l1Var4 = this.E;
            float f10 = 1.0f;
            if (l1Var4.f11529n.f11539h == 1.0f) {
                w0 w0Var = this.B;
                long jH = h(l1Var4.f11516a, l1Var4.f11517b.f13238a, l1Var4.f11533r);
                long jM = m();
                j jVar = (j) w0Var;
                if (jVar.f11437d != -9223372036854775807L) {
                    long j14 = jH - jM;
                    long j15 = jVar.f11447n;
                    if (j15 == -9223372036854775807L) {
                        jVar.f11447n = j14;
                        jVar.f11448o = 0L;
                    } else {
                        float f11 = jVar.f11436c;
                        long jMax = Math.max(j14, (long) (((1.0f - f11) * j14) + (j15 * f11)));
                        jVar.f11447n = jMax;
                        long jAbs = Math.abs(j14 - jMax);
                        long j16 = jVar.f11448o;
                        float f12 = jVar.f11436c;
                        jVar.f11448o = (long) (((1.0f - f12) * jAbs) + (j16 * f12));
                    }
                    if (jVar.f11446m == -9223372036854775807L || SystemClock.elapsedRealtime() - jVar.f11446m >= 1000) {
                        jVar.f11446m = SystemClock.elapsedRealtime();
                        long j17 = (jVar.f11448o * 3) + jVar.f11447n;
                        if (jVar.f11442i > j17) {
                            float fL = m5.g0.L(1000L);
                            long[] jArr = {j17, jVar.f11439f, jVar.f11442i - (((long) ((jVar.f11445l - 1.0f) * fL)) + ((long) ((jVar.f11443j - 1.0f) * fL)))};
                            long j18 = jArr[0];
                            for (int i12 = 1; i12 < 3; i12++) {
                                if (jArr[i12] > j18) {
                                    j18 = jArr[i12];
                                }
                            }
                            jVar.f11442i = j18;
                        } else {
                            long j19 = m5.g0.j(jH - ((long) (Math.max(0.0f, jVar.f11445l - 1.0f) / 1.0E-7f)), jVar.f11442i, j17);
                            jVar.f11442i = j19;
                            long j20 = jVar.f11441h;
                            if (j20 != -9223372036854775807L && j19 > j20) {
                                jVar.f11442i = j20;
                            }
                        }
                        long j21 = jH - jVar.f11442i;
                        if (Math.abs(j21) < jVar.f11434a) {
                            jVar.f11445l = 1.0f;
                        } else {
                            jVar.f11445l = m5.g0.h((1.0E-7f * j21) + 1.0f, jVar.f11444k, jVar.f11443j);
                        }
                        f10 = jVar.f11445l;
                    } else {
                        f10 = jVar.f11445l;
                    }
                }
                if (this.f11571v.d().f11539h != f10) {
                    this.f11571v.f(new m1(f10, this.E.f11529n.f11540i));
                    s(this.E.f11529n, this.f11571v.d().f11539h, false, false);
                }
            }
        }
    }

    public final long m() {
        long j10 = this.E.f11531p;
        b1 b1Var = this.f11575z.f11375j;
        if (b1Var == null) {
            return 0L;
        }
        return Math.max(0L, j10 - (this.S - b1Var.f11292o));
    }

    public final void m0(b2 b2Var, p4.x.b bVar, b2 b2Var2, p4.x.b bVar2, long j10) {
        if (!g0(b2Var, bVar)) {
            m1 m1Var = bVar.a() ? m1.f11538k : this.E.f11529n;
            if (this.f11571v.d().equals(m1Var)) {
                return;
            }
            this.f11571v.f(m1Var);
            return;
        }
        b2Var.p(b2Var.j(bVar.f13238a, this.f11568s).f11297j, this.f11567r);
        w0 w0Var = this.B;
        y0.f fVar = this.f11567r.f11318r;
        int i10 = m5.g0.f10384a;
        j jVar = (j) w0Var;
        Objects.requireNonNull(jVar);
        jVar.f11437d = m5.g0.L(fVar.f11795h);
        jVar.f11440g = m5.g0.L(fVar.f11796i);
        jVar.f11441h = m5.g0.L(fVar.f11797j);
        float f10 = fVar.f11798k;
        if (f10 == -3.4028235E38f) {
            f10 = 0.97f;
        }
        jVar.f11444k = f10;
        float f11 = fVar.f11799l;
        if (f11 == -3.4028235E38f) {
            f11 = 1.03f;
        }
        jVar.f11443j = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            jVar.f11437d = -9223372036854775807L;
        }
        jVar.a();
        if (j10 != -9223372036854775807L) {
            j jVar2 = (j) this.B;
            jVar2.f11438e = h(b2Var, bVar.f13238a, j10);
            jVar2.a();
        } else {
            if (m5.g0.a(b2Var2.s() ? null : b2Var2.p(b2Var2.j(bVar2.f13238a, this.f11568s).f11297j, this.f11567r).f11308h, this.f11567r.f11308h)) {
                return;
            }
            j jVar3 = (j) this.B;
            jVar3.f11438e = -9223372036854775807L;
            jVar3.a();
        }
    }

    public final void n(p4.v vVar) {
        e1 e1Var = this.f11575z;
        b1 b1Var = e1Var.f11375j;
        if (b1Var != null && b1Var.f11278a == vVar) {
            e1Var.m(this.S);
            y();
        }
    }

    public final synchronized void n0(t6.o<Boolean> oVar, long j10) {
        long jD = this.f11573x.d() + j10;
        boolean z10 = false;
        while (!((Boolean) ((s) oVar).get()).booleanValue() && j10 > 0) {
            try {
                this.f11573x.c();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = jD - this.f11573x.d();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public final void o(IOException iOException, int i10) {
        q qVar = new q(0, iOException, i10, null, -1, null, 4, false);
        b1 b1Var = this.f11575z.f11373h;
        if (b1Var != null) {
            qVar = qVar.c(b1Var.f11283f.f11328a);
        }
        m5.p.d("ExoPlayerImplInternal", "Playback error", qVar);
        i0(false, false);
        this.E = this.E.d(qVar);
    }

    public final void p(boolean z10) {
        b1 b1Var = this.f11575z.f11375j;
        p4.x.b bVar = b1Var == null ? this.E.f11517b : b1Var.f11283f.f11328a;
        boolean z11 = !this.E.f11526k.equals(bVar);
        if (z11) {
            this.E = this.E.a(bVar);
        }
        l1 l1Var = this.E;
        l1Var.f11531p = b1Var == null ? l1Var.f11533r : b1Var.d();
        this.E.f11532q = m();
        if ((z11 || z10) && b1Var != null && b1Var.f11281d) {
            this.f11562m.h(this.f11557h, b1Var.f11291n.f9439c);
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 9951. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final void q(n3.b2 r40, boolean r41) throws n3.q {
        /*
            Method dump skipped, instruction units count: 995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n3.o0.q(n3.b2, boolean):void");
    }

    public final void r(p4.v vVar) throws q {
        b1 b1Var = this.f11575z.f11375j;
        if (b1Var != null && b1Var.f11278a == vVar) {
            float f10 = this.f11571v.d().f11539h;
            b2 b2Var = this.E.f11516a;
            b1Var.f11281d = true;
            b1Var.f11290m = b1Var.f11278a.o();
            j5.t tVarI = b1Var.i(f10, b2Var);
            c1 c1Var = b1Var.f11283f;
            long jMax = c1Var.f11329b;
            long j10 = c1Var.f11332e;
            if (j10 != -9223372036854775807L && jMax >= j10) {
                jMax = Math.max(0L, j10 - 1);
            }
            long jA = b1Var.a(tVarI, jMax, false, new boolean[b1Var.f11286i.length]);
            long j11 = b1Var.f11292o;
            c1 c1Var2 = b1Var.f11283f;
            b1Var.f11292o = (c1Var2.f11329b - jA) + j11;
            b1Var.f11283f = c1Var2.b(jA);
            this.f11562m.h(this.f11557h, b1Var.f11291n.f9439c);
            if (b1Var == this.f11575z.f11373h) {
                I(b1Var.f11283f.f11329b);
                e();
                l1 l1Var = this.E;
                p4.x.b bVar = l1Var.f11517b;
                long j12 = b1Var.f11283f.f11329b;
                this.E = t(bVar, j12, l1Var.f11518c, j12, false, 5);
            }
            y();
        }
    }

    public final void s(m1 m1Var, float f10, boolean z10, boolean z11) throws q {
        int i10;
        if (z10) {
            if (z11) {
                this.F.a(1);
            }
            this.E = this.E.e(m1Var);
        }
        float f11 = m1Var.f11539h;
        b1 b1Var = this.f11575z.f11373h;
        while (true) {
            i10 = 0;
            if (b1Var == null) {
                break;
            }
            j5.l[] lVarArr = b1Var.f11291n.f9439c;
            int length = lVarArr.length;
            while (i10 < length) {
                j5.l lVar = lVarArr[i10];
                if (lVar != null) {
                    lVar.p(f11);
                }
                i10++;
            }
            b1Var = b1Var.f11289l;
        }
        s1[] s1VarArr = this.f11557h;
        int length2 = s1VarArr.length;
        while (i10 < length2) {
            s1 s1Var = s1VarArr[i10];
            if (s1Var != null) {
                s1Var.x(f10, m1Var.f11539h);
            }
            i10++;
        }
    }

    public final l1 t(p4.x.b bVar, long j10, long j11, long j12, boolean z10, int i10) {
        p4.u0 u0Var;
        j5.t tVar;
        List<f4.a> list;
        u6.v<Object> vVarE;
        this.U = (!this.U && j10 == this.E.f11533r && bVar.equals(this.E.f11517b)) ? false : true;
        H();
        l1 l1Var = this.E;
        p4.u0 u0Var2 = l1Var.f11523h;
        j5.t tVar2 = l1Var.f11524i;
        List<f4.a> list2 = l1Var.f11525j;
        if (this.A.f11411k) {
            b1 b1Var = this.f11575z.f11373h;
            p4.u0 u0Var3 = b1Var == null ? p4.u0.f13233k : b1Var.f11290m;
            j5.t tVar3 = b1Var == null ? this.f11561l : b1Var.f11291n;
            j5.l[] lVarArr = tVar3.f9439c;
            u6.v.a aVar = new u6.v.a();
            boolean z11 = false;
            for (j5.l lVar : lVarArr) {
                if (lVar != null) {
                    f4.a aVar2 = lVar.e(0).f11685q;
                    if (aVar2 == null) {
                        aVar.c(new f4.a(new f4.a.b[0]));
                    } else {
                        aVar.c(aVar2);
                        z11 = true;
                    }
                }
            }
            if (z11) {
                vVarE = aVar.e();
            } else {
                u6.a aVar3 = u6.v.f16002i;
                vVarE = u6.p0.f15967l;
            }
            if (b1Var != null) {
                c1 c1Var = b1Var.f11283f;
                if (c1Var.f11330c != j11) {
                    b1Var.f11283f = c1Var.a(j11);
                }
            }
            list = vVarE;
            u0Var = u0Var3;
            tVar = tVar3;
        } else if (bVar.equals(l1Var.f11517b)) {
            u0Var = u0Var2;
            tVar = tVar2;
            list = list2;
        } else {
            u0Var = p4.u0.f13233k;
            tVar = this.f11561l;
            list = u6.p0.f15967l;
        }
        if (z10) {
            d dVar = this.F;
            if (!dVar.f11587d || dVar.f11588e == 5) {
                dVar.f11584a = true;
                dVar.f11587d = true;
                dVar.f11588e = i10;
            } else {
                m5.a.a(i10 == 5);
            }
        }
        return this.E.b(bVar, j10, j11, j12, m(), u0Var, tVar, list);
    }

    public final boolean u() {
        b1 b1Var = this.f11575z.f11375j;
        if (b1Var == null) {
            return false;
        }
        return (!b1Var.f11281d ? 0L : b1Var.f11278a.c()) != Long.MIN_VALUE;
    }

    public final boolean w() {
        b1 b1Var = this.f11575z.f11373h;
        long j10 = b1Var.f11283f.f11332e;
        return b1Var.f11281d && (j10 == -9223372036854775807L || this.E.f11533r < j10 || !f0());
    }

    public final void y() {
        boolean zB;
        if (u()) {
            b1 b1Var = this.f11575z.f11375j;
            long jC = !b1Var.f11281d ? 0L : b1Var.f11278a.c();
            b1 b1Var2 = this.f11575z.f11375j;
            long jMax = b1Var2 != null ? Math.max(0L, jC - (this.S - b1Var2.f11292o)) : 0L;
            if (b1Var != this.f11575z.f11373h) {
                long j10 = b1Var.f11283f.f11329b;
            }
            zB = this.f11562m.b(jMax, this.f11571v.d().f11539h);
        } else {
            zB = false;
        }
        this.K = zB;
        if (zB) {
            b1 b1Var3 = this.f11575z.f11375j;
            long j11 = this.S;
            m5.a.e(b1Var3.g());
            b1Var3.f11278a.f(j11 - b1Var3.f11292o);
        }
        k0();
    }

    public final void z() {
        d dVar = this.F;
        l1 l1Var = this.E;
        int i10 = 1;
        boolean z10 = dVar.f11584a | (dVar.f11585b != l1Var);
        dVar.f11584a = z10;
        dVar.f11585b = l1Var;
        if (z10) {
            k0 k0Var = (k0) ((a0) this.f11574y).f11222b;
            k0Var.f11476i.i(new y0.v(k0Var, dVar, i10));
            this.F = new d(this.E);
        }
    }
}
