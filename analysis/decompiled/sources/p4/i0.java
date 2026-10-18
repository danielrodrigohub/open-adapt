package p4;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import n3.i1;
import n3.w1;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: ProgressiveMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements v, s3.j, l5.d0.a<a>, l5.d0.e, l0.c {
    public static final Map<String, String> T;
    public static final n3.s0 U;
    public boolean B;
    public boolean C;
    public boolean D;
    public e E;
    public s3.u F;
    public boolean H;
    public boolean J;
    public boolean K;
    public int L;
    public boolean M;
    public long N;
    public boolean P;
    public int Q;
    public boolean R;
    public boolean S;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Uri f13017h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l5.j f13018i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r3.l f13019j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l5.c0 f13020k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final e0.a f13021l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final r3.k.a f13022m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f13023n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final l5.b f13024o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f13025p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f13026q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final h0 f13028s;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public v.a f13033x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public j4.b f13034y;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final l5.d0 f13027r = new l5.d0("ProgressiveMediaPeriod");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final m5.e f13029t = new m5.e();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final y0.x f13030u = new y0.x(this, 1);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final y0.y f13031v = new y0.y(this, 1);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Handler f13032w = m5.g0.l(null);
    public d[] A = new d[0];

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public l0[] f13035z = new l0[0];
    public long O = -9223372036854775807L;
    public long G = -9223372036854775807L;
    public int I = 1;

    /* JADX INFO: compiled from: ProgressiveMediaPeriod.java */
    public final class a implements l5.d0.d, q.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f13037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final l5.i0 f13038c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final h0 f13039d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final s3.j f13040e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final m5.e f13041f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f13043h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f13045j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public s3.w f13047l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f13048m;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final s3.t f13042g = new s3.t();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f13044i = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13036a = r.a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public l5.m f13046k = c(0);

        public a(Uri uri, l5.j jVar, h0 h0Var, s3.j jVar2, m5.e eVar) {
            this.f13037b = uri;
            this.f13038c = new l5.i0(jVar);
            this.f13039d = h0Var;
            this.f13040e = jVar2;
            this.f13041f = eVar;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x011d */
        @Override // l5.d0.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() throws IOException {
            l5.h qVar;
            int i10;
            int iE = 0;
            while (iE == 0 && !this.f13043h) {
                long j10 = this.f13042g.f15076a;
                l5.m mVarC = c(j10);
                this.f13046k = mVarC;
                long jL = this.f13038c.l(mVarC);
                if (jL != -1) {
                    jL += j10;
                    i0 i0Var = i0.this;
                    i0Var.f13032w.post(new y0.s(i0Var, 2));
                }
                long j11 = jL;
                i0.this.f13034y = j4.b.a(this.f13038c.h());
                l5.i0 i0Var2 = this.f13038c;
                j4.b bVar = i0.this.f13034y;
                if (bVar == null || (i10 = bVar.f9269m) == -1) {
                    qVar = i0Var2;
                } else {
                    qVar = new q(i0Var2, i10, this);
                    i0 i0Var3 = i0.this;
                    Objects.requireNonNull(i0Var3);
                    s3.w wVarC = i0Var3.C(new d(0, true));
                    this.f13047l = wVarC;
                    ((l0) wVarC).b(i0.U);
                }
                long jA = j10;
                ((p4.c) this.f13039d).b(qVar, this.f13037b, this.f13038c.h(), j10, j11, this.f13040e);
                if (i0.this.f13034y != null) {
                    s3.h hVar = ((p4.c) this.f13039d).f12933b;
                    if (hVar instanceof z3.d) {
                        ((z3.d) hVar).f19279r = true;
                    }
                }
                if (this.f13044i) {
                    h0 h0Var = this.f13039d;
                    long j12 = this.f13045j;
                    s3.h hVar2 = ((p4.c) h0Var).f12933b;
                    Objects.requireNonNull(hVar2);
                    hVar2.b(jA, j12);
                    this.f13044i = false;
                }
                while (true) {
                    long j13 = jA;
                    while (true) {
                        if (iE != 0 || this.f13043h) {
                            break;
                        }
                        try {
                            m5.e eVar = this.f13041f;
                            synchronized (eVar) {
                                while (!eVar.f10377a) {
                                    try {
                                        eVar.wait();
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                            h0 h0Var2 = this.f13039d;
                            s3.t tVar = this.f13042g;
                            p4.c cVar = (p4.c) h0Var2;
                            s3.h hVar3 = cVar.f12933b;
                            Objects.requireNonNull(hVar3);
                            s3.e eVar2 = cVar.f12934c;
                            Objects.requireNonNull(eVar2);
                            iE = hVar3.e(eVar2, tVar);
                            jA = ((p4.c) this.f13039d).a();
                            if (jA > i0.this.f13026q + j13) {
                                this.f13041f.b();
                                i0 i0Var4 = i0.this;
                                i0Var4.f13032w.post(i0Var4.f13031v);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iE == 1) {
                    iE = 0;
                } else if (((p4.c) this.f13039d).a() != -1) {
                    this.f13042g.f15076a = ((p4.c) this.f13039d).a();
                }
                c3.d.i(this.f13038c);
            }
        }

        @Override // l5.d0.d
        public final void b() {
            this.f13043h = true;
        }

        public final l5.m c(long j10) {
            Collections.emptyMap();
            Uri uri = this.f13037b;
            String str = i0.this.f13025p;
            Map<String, String> map = i0.T;
            m5.a.g(uri, "The uri must be set.");
            return new l5.m(uri, 0L, 1, null, map, j10, -1L, str, 6, null);
        }
    }

    /* JADX INFO: compiled from: ProgressiveMediaPeriod.java */
    public interface b {
    }

    /* JADX INFO: compiled from: ProgressiveMediaPeriod.java */
    public final class c implements m0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f13050h;

        public c(int i10) {
            this.f13050h = i10;
        }

        @Override // p4.m0
        public final void b() throws IOException {
            i0 i0Var = i0.this;
            i0Var.f13035z[this.f13050h].w();
            i0Var.f13027r.e(i0Var.f13020k.c(i0Var.I));
        }

        @Override // p4.m0
        public final boolean isReady() {
            i0 i0Var = i0.this;
            return !i0Var.E() && i0Var.f13035z[this.f13050h].u(i0Var.R);
        }

        @Override // p4.m0
        public final int j(y0.r rVar, q3.g gVar, int i10) {
            i0 i0Var = i0.this;
            int i11 = this.f13050h;
            if (i0Var.E()) {
                return -3;
            }
            i0Var.A(i11);
            int iA = i0Var.f13035z[i11].A(rVar, gVar, i10, i0Var.R);
            if (iA == -3) {
                i0Var.B(i11);
            }
            return iA;
        }

        @Override // p4.m0
        public final int p(long j10) {
            i0 i0Var = i0.this;
            int i10 = this.f13050h;
            if (i0Var.E()) {
                return 0;
            }
            i0Var.A(i10);
            l0 l0Var = i0Var.f13035z[i10];
            int iR = l0Var.r(j10, i0Var.R);
            l0Var.F(iR);
            if (iR != 0) {
                return iR;
            }
            i0Var.B(i10);
            return iR;
        }
    }

    /* JADX INFO: compiled from: ProgressiveMediaPeriod.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f13053b;

        public d(int i10, boolean z10) {
            this.f13052a = i10;
            this.f13053b = z10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f13052a == dVar.f13052a && this.f13053b == dVar.f13053b;
        }

        public final int hashCode() {
            return (this.f13052a * 31) + (this.f13053b ? 1 : 0);
        }
    }

    /* JADX INFO: compiled from: ProgressiveMediaPeriod.java */
    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u0 f13054a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f13055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean[] f13056c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean[] f13057d;

        public e(u0 u0Var, boolean[] zArr) {
            this.f13054a = u0Var;
            this.f13055b = zArr;
            int i10 = u0Var.f13235h;
            this.f13056c = new boolean[i10];
            this.f13057d = new boolean[i10];
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        T = Collections.unmodifiableMap(map);
        n3.s0.a aVar = new n3.s0.a();
        aVar.f11695a = "icy";
        aVar.f11705k = "application/x-icy";
        U = aVar.a();
    }

    public i0(Uri uri, l5.j jVar, h0 h0Var, r3.l lVar, r3.k.a aVar, l5.c0 c0Var, e0.a aVar2, b bVar, l5.b bVar2, String str, int i10) {
        this.f13017h = uri;
        this.f13018i = jVar;
        this.f13019j = lVar;
        this.f13022m = aVar;
        this.f13020k = c0Var;
        this.f13021l = aVar2;
        this.f13023n = bVar;
        this.f13024o = bVar2;
        this.f13025p = str;
        this.f13026q = i10;
        this.f13028s = h0Var;
    }

    public final void A(int i10) {
        v();
        e eVar = this.E;
        boolean[] zArr = eVar.f13057d;
        if (zArr[i10]) {
            return;
        }
        n3.s0 s0Var = eVar.f13054a.b(i10).f13224k[0];
        this.f13021l.b(m5.s.i(s0Var.f11687s), s0Var, 0, null, this.N);
        zArr[i10] = true;
    }

    public final void B(int i10) {
        v();
        boolean[] zArr = this.E.f13055b;
        if (this.P && zArr[i10] && !this.f13035z[i10].u(false)) {
            this.O = 0L;
            this.P = false;
            this.K = true;
            this.N = 0L;
            this.Q = 0;
            for (l0 l0Var : this.f13035z) {
                l0Var.C(false);
            }
            v.a aVar = this.f13033x;
            Objects.requireNonNull(aVar);
            aVar.j(this);
        }
    }

    public final s3.w C(d dVar) {
        int length = this.f13035z.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (dVar.equals(this.A[i10])) {
                return this.f13035z[i10];
            }
        }
        l5.b bVar = this.f13024o;
        r3.l lVar = this.f13019j;
        r3.k.a aVar = this.f13022m;
        Objects.requireNonNull(lVar);
        Objects.requireNonNull(aVar);
        l0 l0Var = new l0(bVar, lVar, aVar);
        l0Var.f13097f = this;
        int i11 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.A, i11);
        dVarArr[length] = dVar;
        int i12 = m5.g0.f10384a;
        this.A = dVarArr;
        l0[] l0VarArr = (l0[]) Arrays.copyOf(this.f13035z, i11);
        l0VarArr[length] = l0Var;
        this.f13035z = l0VarArr;
        return l0Var;
    }

    public final void D() {
        a aVar = new a(this.f13017h, this.f13018i, this.f13028s, this, this.f13029t);
        if (this.C) {
            m5.a.e(y());
            long j10 = this.G;
            if (j10 != -9223372036854775807L && this.O > j10) {
                this.R = true;
                this.O = -9223372036854775807L;
                return;
            }
            s3.u uVar = this.F;
            Objects.requireNonNull(uVar);
            long j11 = uVar.h(this.O).f15077a.f15083b;
            long j12 = this.O;
            aVar.f13042g.f15076a = j11;
            aVar.f13045j = j12;
            aVar.f13044i = true;
            aVar.f13048m = false;
            for (l0 l0Var : this.f13035z) {
                l0Var.f13111t = this.O;
            }
            this.O = -9223372036854775807L;
        }
        this.Q = w();
        this.f13021l.n(new r(aVar.f13036a, aVar.f13046k, this.f13027r.g(aVar, this, this.f13020k.c(this.I))), 1, -1, null, 0, null, aVar.f13045j, this.G);
    }

    public final boolean E() {
        return this.K || y();
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        boolean z10;
        if (this.f13027r.d()) {
            m5.e eVar = this.f13029t;
            synchronized (eVar) {
                z10 = eVar.f10377a;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override // s3.j
    public final void b() {
        this.B = true;
        this.f13032w.post(this.f13030u);
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return e();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        v();
        if (!this.F.f()) {
            return 0L;
        }
        s3.u.a aVarH = this.F.h(j10);
        return w1Var.a(j10, aVarH.f15077a.f15082a, aVarH.f15078b.f15082a);
    }

    @Override // p4.v, p4.n0
    public final long e() {
        long jX;
        boolean z10;
        v();
        if (this.R || this.L == 0) {
            return Long.MIN_VALUE;
        }
        if (y()) {
            return this.O;
        }
        if (this.D) {
            int length = this.f13035z.length;
            jX = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                e eVar = this.E;
                if (eVar.f13055b[i10] && eVar.f13056c[i10]) {
                    l0 l0Var = this.f13035z[i10];
                    synchronized (l0Var) {
                        z10 = l0Var.f13114w;
                    }
                    if (!z10) {
                        jX = Math.min(jX, this.f13035z[i10].o());
                    }
                }
            }
        } else {
            jX = Long.MAX_VALUE;
        }
        if (jX == Long.MAX_VALUE) {
            jX = x(false);
        }
        return jX == Long.MIN_VALUE ? this.N : jX;
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        if (this.R || this.f13027r.c() || this.P) {
            return false;
        }
        if (this.C && this.L == 0) {
            return false;
        }
        boolean zC = this.f13029t.c();
        if (this.f13027r.d()) {
            return zC;
        }
        D();
        return true;
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
    }

    @Override // l5.d0.a
    public final void h(l5.d0.d dVar, long j10, long j11) {
        s3.u uVar;
        a aVar = (a) dVar;
        if (this.G == -9223372036854775807L && (uVar = this.F) != null) {
            boolean zF = uVar.f();
            long jX = x(true);
            long j12 = jX == Long.MIN_VALUE ? 0L : jX + 10000;
            this.G = j12;
            ((j0) this.f13023n).z(j12, zF, this.H);
        }
        l5.i0 i0Var = aVar.f13038c;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f13020k.d();
        this.f13021l.h(rVar, 1, -1, null, 0, null, aVar.f13045j, this.G);
        this.R = true;
        v.a aVar2 = this.f13033x;
        Objects.requireNonNull(aVar2);
        aVar2.j(this);
    }

    @Override // l5.d0.e
    public final void i() {
        for (l0 l0Var : this.f13035z) {
            l0Var.B();
        }
        p4.c cVar = (p4.c) this.f13028s;
        s3.h hVar = cVar.f12933b;
        if (hVar != null) {
            hVar.a();
            cVar.f12933b = null;
        }
        cVar.f12934c = null;
    }

    @Override // s3.j
    public final void j(s3.u uVar) {
        this.f13032w.post(new androidx.lifecycle.c(this, uVar, 2));
    }

    @Override // l5.d0.a
    public final void k(l5.d0.d dVar, long j10, long j11, boolean z10) {
        a aVar = (a) dVar;
        l5.i0 i0Var = aVar.f13038c;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f13020k.d();
        this.f13021l.e(rVar, 1, -1, null, 0, null, aVar.f13045j, this.G);
        if (z10) {
            return;
        }
        for (l0 l0Var : this.f13035z) {
            l0Var.C(false);
        }
        if (this.L > 0) {
            v.a aVar2 = this.f13033x;
            Objects.requireNonNull(aVar2);
            aVar2.j(this);
        }
    }

    @Override // p4.v
    public final long l() {
        if (!this.K) {
            return -9223372036854775807L;
        }
        if (!this.R && w() <= this.Q) {
            return -9223372036854775807L;
        }
        this.K = false;
        return this.N;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0089  */
    /* JADX WARN: Code duplicated, block: B:29:0x0090  */
    @Override // l5.d0.a
    public final l5.d0.b m(l5.d0.d dVar, long j10, long j11, IOException iOException, int i10) {
        l5.d0.b bVar;
        s3.u uVar;
        a aVar = (a) dVar;
        l5.i0 i0Var = aVar.f13038c;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        m5.g0.X(aVar.f13045j);
        m5.g0.X(this.G);
        long jB = this.f13020k.b(new l5.c0.c(iOException, i10));
        if (jB == -9223372036854775807L) {
            bVar = l5.d0.f9991f;
        } else {
            int iW = w();
            boolean z10 = false;
            int i11 = iW > this.Q ? 1 : 0;
            if (this.M || !((uVar = this.F) == null || uVar.i() == -9223372036854775807L)) {
                this.Q = iW;
            } else {
                if (!this.C || E()) {
                    this.K = this.C;
                    this.N = 0L;
                    this.Q = 0;
                    for (l0 l0Var : this.f13035z) {
                        l0Var.C(false);
                    }
                    aVar.f13042g.f15076a = 0L;
                    aVar.f13045j = 0L;
                    aVar.f13044i = true;
                    aVar.f13048m = false;
                } else {
                    this.P = true;
                }
                if (z10) {
                    bVar = new l5.d0.b(i11, jB);
                } else {
                    bVar = l5.d0.f9990e;
                }
            }
            z10 = true;
            if (z10) {
                bVar = new l5.d0.b(i11, jB);
            } else {
                bVar = l5.d0.f9990e;
            }
        }
        boolean z11 = !bVar.a();
        this.f13021l.j(rVar, 1, -1, null, 0, null, aVar.f13045j, this.G, iOException, z11);
        if (z11) {
            this.f13020k.d();
        }
        return bVar;
    }

    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        v();
        e eVar = this.E;
        u0 u0Var = eVar.f13054a;
        boolean[] zArr3 = eVar.f13056c;
        int i10 = this.L;
        int i11 = 0;
        for (int i12 = 0; i12 < lVarArr.length; i12++) {
            if (m0VarArr[i12] != null && (lVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((c) m0VarArr[i12]).f13050h;
                m5.a.e(zArr3[i13]);
                this.L--;
                zArr3[i13] = false;
                m0VarArr[i12] = null;
            }
        }
        boolean z10 = !this.J ? j10 == 0 : i10 != 0;
        for (int i14 = 0; i14 < lVarArr.length; i14++) {
            if (m0VarArr[i14] == null && lVarArr[i14] != null) {
                j5.l lVar = lVarArr[i14];
                m5.a.e(lVar.length() == 1);
                m5.a.e(lVar.i(0) == 0);
                int iC = u0Var.c(lVar.l());
                m5.a.e(!zArr3[iC]);
                this.L++;
                zArr3[iC] = true;
                m0VarArr[i14] = new c(iC);
                zArr2[i14] = true;
                if (!z10) {
                    l0 l0Var = this.f13035z[iC];
                    z10 = (l0Var.D(j10, true) || l0Var.f13108q + l0Var.f13110s == 0) ? false : true;
                }
            }
        }
        if (this.L == 0) {
            this.P = false;
            this.K = false;
            if (this.f13027r.d()) {
                l0[] l0VarArr = this.f13035z;
                int length = l0VarArr.length;
                while (i11 < length) {
                    l0VarArr[i11].j();
                    i11++;
                }
                this.f13027r.a();
            } else {
                for (l0 l0Var2 : this.f13035z) {
                    l0Var2.C(false);
                }
            }
        } else if (z10) {
            j10 = t(j10);
            while (i11 < m0VarArr.length) {
                if (m0VarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.J = true;
        return j10;
    }

    @Override // p4.v
    public final u0 o() {
        v();
        return this.E.f13054a;
    }

    @Override // s3.j
    public final s3.w p(int i10, int i11) {
        return C(new d(i10, false));
    }

    @Override // p4.v
    public final void q() throws IOException {
        this.f13027r.e(this.f13020k.c(this.I));
        if (this.R && !this.C) {
            throw i1.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // p4.l0.c
    public final void r() {
        this.f13032w.post(this.f13030u);
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        v();
        if (y()) {
            return;
        }
        boolean[] zArr = this.E.f13056c;
        int length = this.f13035z.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f13035z[i10].i(j10, z10, zArr[i10]);
        }
    }

    @Override // p4.v
    public final long t(long j10) {
        boolean z10;
        v();
        boolean[] zArr = this.E.f13055b;
        if (!this.F.f()) {
            j10 = 0;
        }
        this.K = false;
        this.N = j10;
        if (y()) {
            this.O = j10;
            return j10;
        }
        if (this.I != 7) {
            int length = this.f13035z.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = true;
                    break;
                }
                if (!this.f13035z[i10].D(j10, false) && (zArr[i10] || !this.D)) {
                    z10 = false;
                    break;
                }
                i10++;
            }
            if (z10) {
                return j10;
            }
        }
        this.P = false;
        this.O = j10;
        this.R = false;
        if (this.f13027r.d()) {
            for (l0 l0Var : this.f13035z) {
                l0Var.j();
            }
            this.f13027r.a();
        } else {
            this.f13027r.f9994c = null;
            for (l0 l0Var2 : this.f13035z) {
                l0Var2.C(false);
            }
        }
        return j10;
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f13033x = aVar;
        this.f13029t.c();
        D();
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    public final void v() {
        m5.a.e(this.C);
        Objects.requireNonNull(this.E);
        Objects.requireNonNull(this.F);
    }

    public final int w() {
        int i10 = 0;
        for (l0 l0Var : this.f13035z) {
            i10 += l0Var.f13108q + l0Var.f13107p;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public final long x(boolean z10) {
        long jMax = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f13035z.length; i10++) {
            if (z10) {
                jMax = Math.max(jMax, this.f13035z[i10].o());
            } else {
                e eVar = this.E;
                Objects.requireNonNull(eVar);
                if (eVar.f13056c[i10]) {
                    jMax = Math.max(jMax, this.f13035z[i10].o());
                }
            }
        }
        return jMax;
    }

    public final boolean y() {
        return this.O != -9223372036854775807L;
    }

    public final void z() {
        if (this.S || this.C || !this.B || this.F == null) {
            return;
        }
        for (l0 l0Var : this.f13035z) {
            if (l0Var.s() == null) {
                return;
            }
        }
        this.f13029t.b();
        int length = this.f13035z.length;
        t0[] t0VarArr = new t0[length];
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            n3.s0 s0VarS = this.f13035z[i10].s();
            Objects.requireNonNull(s0VarS);
            String str = s0VarS.f11687s;
            boolean zK = m5.s.k(str);
            boolean z10 = zK || m5.s.n(str);
            zArr[i10] = z10;
            this.D = z10 | this.D;
            j4.b bVar = this.f13034y;
            if (bVar != null) {
                if (zK || this.A[i10].f13053b) {
                    f4.a aVar = s0VarS.f11685q;
                    f4.a aVar2 = aVar == null ? new f4.a(bVar) : aVar.a(bVar);
                    n3.s0.a aVarB = s0VarS.b();
                    aVarB.f11703i = aVar2;
                    s0VarS = aVarB.a();
                }
                if (zK && s0VarS.f11681m == -1 && s0VarS.f11682n == -1 && bVar.f9264h != -1) {
                    n3.s0.a aVarB2 = s0VarS.b();
                    aVarB2.f11700f = bVar.f9264h;
                    s0VarS = aVarB2.a();
                }
            }
            t0VarArr[i10] = new t0(Integer.toString(i10), s0VarS.c(this.f13019j.e(s0VarS)));
        }
        this.E = new e(new u0(t0VarArr), zArr);
        this.C = true;
        v.a aVar3 = this.f13033x;
        Objects.requireNonNull(aVar3);
        aVar3.i(this);
    }
}
