package p4;

import java.io.EOFException;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: SampleQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class l0 implements s3.w {
    public n3.s0 A;
    public n3.s0 B;
    public int C;
    public boolean D;
    public boolean E;
    public long F;
    public boolean G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f13092a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r3.l f13095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r3.k.a f13096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c f13097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n3.s0 f13098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public r3.e f13099h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13107p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13108q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13109r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f13110s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f13114w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f13117z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f13093b = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13100i = 1000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f13101j = new int[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long[] f13102k = new long[1000];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long[] f13105n = new long[1000];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f13104m = new int[1000];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f13103l = new int[1000];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public s3.w.a[] f13106o = new s3.w.a[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s0<b> f13094c = new s0<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f13111t = Long.MIN_VALUE;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f13112u = Long.MIN_VALUE;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f13113v = Long.MIN_VALUE;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f13116y = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f13115x = true;

    /* JADX INFO: compiled from: SampleQueue.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f13118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f13119b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public s3.w.a f13120c;
    }

    /* JADX INFO: compiled from: SampleQueue.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n3.s0 f13121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r3.l.b f13122b;

        public b(n3.s0 s0Var, r3.l.b bVar) {
            this.f13121a = s0Var;
            this.f13122b = bVar;
        }
    }

    /* JADX INFO: compiled from: SampleQueue.java */
    public interface c {
        void r();
    }

    public l0(l5.b bVar, r3.l lVar, r3.k.a aVar) {
        this.f13095d = lVar;
        this.f13096e = aVar;
        this.f13092a = new k0(bVar);
    }

    public static l0 g(l5.b bVar) {
        return new l0(bVar, null, null);
    }

    public final int A(y0.r rVar, q3.g gVar, int i10, boolean z10) {
        int i11;
        boolean z11 = (i10 & 2) != 0;
        a aVar = this.f13093b;
        synchronized (this) {
            gVar.f13582k = false;
            i11 = -5;
            if (t()) {
                n3.s0 s0Var = this.f13094c.b(this.f13108q + this.f13110s).f13121a;
                if (z11 || s0Var != this.f13098g) {
                    x(s0Var, rVar);
                } else {
                    int iQ = q(this.f13110s);
                    if (v(iQ)) {
                        gVar.f13555h = this.f13104m[iQ];
                        long j10 = this.f13105n[iQ];
                        gVar.f13583l = j10;
                        if (j10 < this.f13111t) {
                            gVar.k(Integer.MIN_VALUE);
                        }
                        aVar.f13118a = this.f13103l[iQ];
                        aVar.f13119b = this.f13102k[iQ];
                        aVar.f13120c = this.f13106o[iQ];
                        i11 = -4;
                    } else {
                        gVar.f13582k = true;
                        i11 = -3;
                    }
                }
            } else if (z10 || this.f13114w) {
                gVar.f13555h = 4;
                i11 = -4;
            } else {
                n3.s0 s0Var2 = this.B;
                if (s0Var2 == null || (!z11 && s0Var2 == this.f13098g)) {
                    i11 = -3;
                } else {
                    x(s0Var2, rVar);
                }
            }
        }
        if (i11 == -4 && !gVar.l(4)) {
            boolean z12 = (i10 & 1) != 0;
            if ((i10 & 4) == 0) {
                if (z12) {
                    k0 k0Var = this.f13092a;
                    k0.f(k0Var.f13083e, gVar, this.f13093b, k0Var.f13081c);
                } else {
                    k0 k0Var2 = this.f13092a;
                    k0Var2.f13083e = k0.f(k0Var2.f13083e, gVar, this.f13093b, k0Var2.f13081c);
                }
            }
            if (!z12) {
                this.f13110s++;
            }
        }
        return i11;
    }

    public final void B() {
        C(true);
        r3.e eVar = this.f13099h;
        if (eVar != null) {
            eVar.d(this.f13096e);
            this.f13099h = null;
            this.f13098g = null;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void C(boolean z10) {
        k0 k0Var = this.f13092a;
        k0Var.a(k0Var.f13082d);
        k0.a aVar = k0Var.f13082d;
        int i10 = k0Var.f13080b;
        m5.a.e(aVar.f13088c == null);
        aVar.f13086a = 0L;
        aVar.f13087b = ((long) i10) + 0;
        k0.a aVar2 = k0Var.f13082d;
        k0Var.f13083e = aVar2;
        k0Var.f13084f = aVar2;
        k0Var.f13085g = 0L;
        ((l5.n) k0Var.f13079a).a();
        this.f13107p = 0;
        this.f13108q = 0;
        this.f13109r = 0;
        this.f13110s = 0;
        this.f13115x = true;
        this.f13111t = Long.MIN_VALUE;
        this.f13112u = Long.MIN_VALUE;
        this.f13113v = Long.MIN_VALUE;
        this.f13114w = false;
        s0<b> s0Var = this.f13094c;
        for (int i11 = 0; i11 < s0Var.f13205b.size(); i11++) {
            s0Var.f13206c.b((V) s0Var.f13205b.valueAt(i11));
        }
        s0Var.f13204a = -1;
        s0Var.f13205b.clear();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f13116y = true;
        }
    }

    public final synchronized boolean D(long j10, boolean z10) {
        synchronized (this) {
            this.f13110s = 0;
            k0 k0Var = this.f13092a;
            k0Var.f13083e = k0Var.f13082d;
        }
        int iQ = q(0);
        if (t() && j10 >= this.f13105n[iQ] && (j10 <= this.f13113v || z10)) {
            int iM = m(iQ, this.f13107p - this.f13110s, j10, true);
            if (iM == -1) {
                return false;
            }
            this.f13111t = j10;
            this.f13110s += iM;
            return true;
        }
        return false;
    }

    public final void E(long j10) {
        if (this.F != j10) {
            this.F = j10;
            this.f13117z = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void F(int i10) {
        boolean z10;
        if (i10 >= 0) {
            try {
                if (this.f13110s + i10 <= this.f13107p) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z10 = false;
        }
        m5.a.a(z10);
        this.f13110s += i10;
    }

    @Override // s3.w
    public final void a(m5.w wVar, int i10) {
        k0 k0Var = this.f13092a;
        Objects.requireNonNull(k0Var);
        while (i10 > 0) {
            int iC = k0Var.c(i10);
            k0.a aVar = k0Var.f13084f;
            wVar.d(aVar.f13088c.f9966a, aVar.a(k0Var.f13085g), iC);
            i10 -= iC;
            long j10 = k0Var.f13085g + ((long) iC);
            k0Var.f13085g = j10;
            k0.a aVar2 = k0Var.f13084f;
            if (j10 == aVar2.f13087b) {
                k0Var.f13084f = aVar2.f13089d;
            }
        }
    }

    @Override // s3.w
    public final void b(n3.s0 s0Var) {
        n3.s0 s0VarN = n(s0Var);
        boolean z10 = false;
        this.f13117z = false;
        this.A = s0Var;
        synchronized (this) {
            this.f13116y = false;
            if (!m5.g0.a(s0VarN, this.B)) {
                if ((this.f13094c.f13205b.size() == 0) || !this.f13094c.c().f13121a.equals(s0VarN)) {
                    this.B = s0VarN;
                } else {
                    this.B = this.f13094c.c().f13121a;
                }
                n3.s0 s0Var2 = this.B;
                this.D = m5.s.a(s0Var2.f11687s, s0Var2.f11684p);
                this.E = false;
                z10 = true;
            }
        }
        c cVar = this.f13097f;
        if (cVar == null || !z10) {
            return;
        }
        cVar.r();
    }

    @Override // s3.w
    public void c(long j10, int i10, int i11, int i12, s3.w.a aVar) {
        boolean z10;
        if (this.f13117z) {
            n3.s0 s0Var = this.A;
            m5.a.f(s0Var);
            b(s0Var);
        }
        int i13 = i10 & 1;
        boolean z11 = i13 != 0;
        if (this.f13115x) {
            if (!z11) {
                return;
            } else {
                this.f13115x = false;
            }
        }
        long j11 = j10 + this.F;
        if (this.D) {
            if (j11 < this.f13111t) {
                return;
            }
            if (i13 == 0) {
                if (!this.E) {
                    StringBuilder sbC = a0.b.c("Overriding unexpected non-sync sample for format: ");
                    sbC.append(this.B);
                    m5.p.g("SampleQueue", sbC.toString());
                    this.E = true;
                }
                i10 |= 1;
            }
        }
        if (this.G) {
            if (!z11) {
                return;
            }
            synchronized (this) {
                if (this.f13107p == 0) {
                    z10 = j11 > this.f13112u;
                } else {
                    synchronized (this) {
                        long jMax = Math.max(this.f13112u, p(this.f13110s));
                        if (jMax >= j11) {
                            z10 = false;
                        } else {
                            int i14 = this.f13107p;
                            int iQ = q(i14 - 1);
                            while (i14 > this.f13110s && this.f13105n[iQ] >= j11) {
                                i14--;
                                iQ--;
                                if (iQ == -1) {
                                    iQ = this.f13100i - 1;
                                }
                            }
                            k(this.f13108q + i14);
                            z10 = true;
                        }
                    }
                }
            }
            if (!z10) {
                return;
            } else {
                this.G = false;
            }
        }
        long j12 = (this.f13092a.f13085g - ((long) i11)) - ((long) i12);
        synchronized (this) {
            int i15 = this.f13107p;
            if (i15 > 0) {
                int iQ2 = q(i15 - 1);
                m5.a.a(this.f13102k[iQ2] + ((long) this.f13103l[iQ2]) <= j12);
            }
            this.f13114w = (536870912 & i10) != 0;
            this.f13113v = Math.max(this.f13113v, j11);
            int iQ3 = q(this.f13107p);
            this.f13105n[iQ3] = j11;
            this.f13102k[iQ3] = j12;
            this.f13103l[iQ3] = i11;
            this.f13104m[iQ3] = i10;
            this.f13106o[iQ3] = aVar;
            this.f13101j[iQ3] = this.C;
            if ((this.f13094c.f13205b.size() == 0) || !this.f13094c.c().f13121a.equals(this.B)) {
                r3.l lVar = this.f13095d;
                r3.l.b bVarC = lVar != null ? lVar.c(this.f13096e, this.B) : r3.l.b.f14508a;
                s0<b> s0Var2 = this.f13094c;
                int i16 = this.f13108q + this.f13107p;
                n3.s0 s0Var3 = this.B;
                Objects.requireNonNull(s0Var3);
                s0Var2.a(i16, new b(s0Var3, bVarC));
            }
            int i17 = this.f13107p + 1;
            this.f13107p = i17;
            int i18 = this.f13100i;
            if (i17 == i18) {
                int i19 = i18 + 1000;
                int[] iArr = new int[i19];
                long[] jArr = new long[i19];
                long[] jArr2 = new long[i19];
                int[] iArr2 = new int[i19];
                int[] iArr3 = new int[i19];
                s3.w.a[] aVarArr = new s3.w.a[i19];
                int i20 = this.f13109r;
                int i21 = i18 - i20;
                System.arraycopy(this.f13102k, i20, jArr, 0, i21);
                System.arraycopy(this.f13105n, this.f13109r, jArr2, 0, i21);
                System.arraycopy(this.f13104m, this.f13109r, iArr2, 0, i21);
                System.arraycopy(this.f13103l, this.f13109r, iArr3, 0, i21);
                System.arraycopy(this.f13106o, this.f13109r, aVarArr, 0, i21);
                System.arraycopy(this.f13101j, this.f13109r, iArr, 0, i21);
                int i22 = this.f13109r;
                System.arraycopy(this.f13102k, 0, jArr, i21, i22);
                System.arraycopy(this.f13105n, 0, jArr2, i21, i22);
                System.arraycopy(this.f13104m, 0, iArr2, i21, i22);
                System.arraycopy(this.f13103l, 0, iArr3, i21, i22);
                System.arraycopy(this.f13106o, 0, aVarArr, i21, i22);
                System.arraycopy(this.f13101j, 0, iArr, i21, i22);
                this.f13102k = jArr;
                this.f13105n = jArr2;
                this.f13104m = iArr2;
                this.f13103l = iArr3;
                this.f13106o = aVarArr;
                this.f13101j = iArr;
                this.f13109r = 0;
                this.f13100i = i19;
            }
        }
    }

    @Override // s3.w
    public final int e(l5.h hVar, int i10, boolean z10) throws IOException {
        k0 k0Var = this.f13092a;
        int iC = k0Var.c(i10);
        k0.a aVar = k0Var.f13084f;
        int iB = hVar.b(aVar.f13088c.f9966a, aVar.a(k0Var.f13085g), iC);
        if (iB == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        long j10 = k0Var.f13085g + ((long) iB);
        k0Var.f13085g = j10;
        k0.a aVar2 = k0Var.f13084f;
        if (j10 != aVar2.f13087b) {
            return iB;
        }
        k0Var.f13084f = aVar2.f13089d;
        return iB;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final long h(int i10) {
        this.f13112u = Math.max(this.f13112u, p(i10));
        this.f13107p -= i10;
        int i11 = this.f13108q + i10;
        this.f13108q = i11;
        int i12 = this.f13109r + i10;
        this.f13109r = i12;
        int i13 = this.f13100i;
        if (i12 >= i13) {
            this.f13109r = i12 - i13;
        }
        int i14 = this.f13110s - i10;
        this.f13110s = i14;
        int i15 = 0;
        if (i14 < 0) {
            this.f13110s = 0;
        }
        s0<b> s0Var = this.f13094c;
        while (i15 < s0Var.f13205b.size() - 1) {
            int i16 = i15 + 1;
            if (i11 < s0Var.f13205b.keyAt(i16)) {
                break;
            }
            s0Var.f13206c.b((V) s0Var.f13205b.valueAt(i15));
            s0Var.f13205b.removeAt(i15);
            int i17 = s0Var.f13204a;
            if (i17 > 0) {
                s0Var.f13204a = i17 - 1;
            }
            i15 = i16;
        }
        if (this.f13107p != 0) {
            return this.f13102k[this.f13109r];
        }
        int i18 = this.f13109r;
        if (i18 == 0) {
            i18 = this.f13100i;
        }
        int i19 = i18 - 1;
        return this.f13102k[i19] + ((long) this.f13103l[i19]);
    }

    public final void i(long j10, boolean z10, boolean z11) {
        long jH;
        int i10;
        k0 k0Var = this.f13092a;
        synchronized (this) {
            int i11 = this.f13107p;
            jH = -1;
            if (i11 != 0) {
                long[] jArr = this.f13105n;
                int i12 = this.f13109r;
                if (j10 >= jArr[i12]) {
                    if (z11 && (i10 = this.f13110s) != i11) {
                        i11 = i10 + 1;
                    }
                    int iM = m(i12, i11, j10, z10);
                    if (iM != -1) {
                        jH = h(iM);
                    }
                }
            }
        }
        k0Var.b(jH);
    }

    public final void j() {
        long jH;
        k0 k0Var = this.f13092a;
        synchronized (this) {
            int i10 = this.f13107p;
            jH = i10 == 0 ? -1L : h(i10);
        }
        k0Var.b(jH);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final long k(int i10) {
        int i11 = this.f13108q;
        int i12 = this.f13107p;
        int i13 = (i11 + i12) - i10;
        boolean z10 = false;
        m5.a.a(i13 >= 0 && i13 <= i12 - this.f13110s);
        int i14 = this.f13107p - i13;
        this.f13107p = i14;
        this.f13113v = Math.max(this.f13112u, p(i14));
        if (i13 == 0 && this.f13114w) {
            z10 = true;
        }
        this.f13114w = z10;
        s0<b> s0Var = this.f13094c;
        for (int size = s0Var.f13205b.size() - 1; size >= 0 && i10 < s0Var.f13205b.keyAt(size); size--) {
            s0Var.f13206c.b((V) s0Var.f13205b.valueAt(size));
            s0Var.f13205b.removeAt(size);
        }
        s0Var.f13204a = s0Var.f13205b.size() > 0 ? Math.min(s0Var.f13204a, s0Var.f13205b.size() - 1) : -1;
        int i15 = this.f13107p;
        if (i15 == 0) {
            return 0L;
        }
        int iQ = q(i15 - 1);
        return this.f13102k[iQ] + ((long) this.f13103l[iQ]);
    }

    public final void l(int i10) {
        k0 k0Var = this.f13092a;
        long jK = k(i10);
        m5.a.a(jK <= k0Var.f13085g);
        k0Var.f13085g = jK;
        if (jK != 0) {
            k0.a aVar = k0Var.f13082d;
            if (jK != aVar.f13086a) {
                while (k0Var.f13085g > aVar.f13087b) {
                    aVar = aVar.f13089d;
                }
                k0.a aVar2 = aVar.f13089d;
                Objects.requireNonNull(aVar2);
                k0Var.a(aVar2);
                k0.a aVar3 = new k0.a(aVar.f13087b, k0Var.f13080b);
                aVar.f13089d = aVar3;
                if (k0Var.f13085g == aVar.f13087b) {
                    aVar = aVar3;
                }
                k0Var.f13084f = aVar;
                if (k0Var.f13083e == aVar2) {
                    k0Var.f13083e = aVar3;
                    return;
                }
                return;
            }
        }
        k0Var.a(k0Var.f13082d);
        k0.a aVar4 = new k0.a(k0Var.f13085g, k0Var.f13080b);
        k0Var.f13082d = aVar4;
        k0Var.f13083e = aVar4;
        k0Var.f13084f = aVar4;
    }

    public final int m(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long[] jArr = this.f13105n;
            if (jArr[i10] > j10) {
                return i12;
            }
            if (!z10 || (this.f13104m[i10] & 1) != 0) {
                if (jArr[i10] == j10) {
                    return i13;
                }
                i12 = i13;
            }
            i10++;
            if (i10 == this.f13100i) {
                i10 = 0;
            }
        }
        return i12;
    }

    public n3.s0 n(n3.s0 s0Var) {
        if (this.F == 0 || s0Var.f11691w == Long.MAX_VALUE) {
            return s0Var;
        }
        n3.s0.a aVarB = s0Var.b();
        aVarB.f11709o = s0Var.f11691w + this.F;
        return aVarB.a();
    }

    public final synchronized long o() {
        return this.f13113v;
    }

    public final long p(int i10) {
        long jMax = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int iQ = q(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            jMax = Math.max(jMax, this.f13105n[iQ]);
            if ((this.f13104m[iQ] & 1) != 0) {
                break;
            }
            iQ--;
            if (iQ == -1) {
                iQ = this.f13100i - 1;
            }
        }
        return jMax;
    }

    public final int q(int i10) {
        int i11 = this.f13109r + i10;
        int i12 = this.f13100i;
        return i11 < i12 ? i11 : i11 - i12;
    }

    public final synchronized int r(long j10, boolean z10) {
        int iQ = q(this.f13110s);
        if (t() && j10 >= this.f13105n[iQ]) {
            if (j10 > this.f13113v && z10) {
                return this.f13107p - this.f13110s;
            }
            int iM = m(iQ, this.f13107p - this.f13110s, j10, true);
            if (iM == -1) {
                return 0;
            }
            return iM;
        }
        return 0;
    }

    public final synchronized n3.s0 s() {
        return this.f13116y ? null : this.B;
    }

    public final boolean t() {
        return this.f13110s != this.f13107p;
    }

    public final synchronized boolean u(boolean z10) {
        n3.s0 s0Var;
        boolean z11 = true;
        if (t()) {
            if (this.f13094c.b(this.f13108q + this.f13110s).f13121a != this.f13098g) {
                return true;
            }
            return v(q(this.f13110s));
        }
        if (!z10 && !this.f13114w && ((s0Var = this.B) == null || s0Var == this.f13098g)) {
            z11 = false;
        }
        return z11;
    }

    public final boolean v(int i10) {
        r3.e eVar = this.f13099h;
        return eVar == null || eVar.getState() == 4 || ((this.f13104m[i10] & 1073741824) == 0 && this.f13099h.a());
    }

    public final void w() throws IOException {
        r3.e eVar = this.f13099h;
        if (eVar == null || eVar.getState() != 1) {
            return;
        }
        r3.e.a aVarF = this.f13099h.f();
        Objects.requireNonNull(aVarF);
        throw aVarF;
    }

    public final void x(n3.s0 s0Var, y0.r rVar) {
        n3.s0 s0Var2 = this.f13098g;
        boolean z10 = s0Var2 == null;
        r3.d dVar = z10 ? null : s0Var2.f11690v;
        this.f13098g = s0Var;
        r3.d dVar2 = s0Var.f11690v;
        r3.l lVar = this.f13095d;
        rVar.f18272c = lVar != null ? s0Var.c(lVar.e(s0Var)) : s0Var;
        rVar.f18271b = this.f13099h;
        if (this.f13095d == null) {
            return;
        }
        if (z10 || !m5.g0.a(dVar, dVar2)) {
            r3.e eVar = this.f13099h;
            r3.e eVarD = this.f13095d.d(this.f13096e, s0Var);
            this.f13099h = eVarD;
            rVar.f18271b = eVarD;
            if (eVar != null) {
                eVar.d(this.f13096e);
            }
        }
    }

    public final synchronized int y() {
        return t() ? this.f13101j[q(this.f13110s)] : this.C;
    }

    public final void z() {
        j();
        r3.e eVar = this.f13099h;
        if (eVar != null) {
            eVar.d(this.f13096e);
            this.f13099h = null;
            this.f13098g = null;
        }
    }
}
