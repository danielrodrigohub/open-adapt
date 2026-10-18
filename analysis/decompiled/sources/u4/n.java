package u4;

import android.net.Uri;
import android.os.Handler;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import l5.c0;
import l5.d0;
import l5.i0;
import l5.z;
import m5.g0;
import n3.s0;
import o3.v0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p4.e0;
import p4.l0;
import p4.n0;
import p4.r;
import p4.t0;
import p4.u0;
import s3.u;
import s3.w;
import u6.t;
import u6.v;
import y0.s;
import y0.y;

/* JADX INFO: compiled from: HlsSampleStreamWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements d0.a<r4.e>, d0.e, n0, s3.j, l0.c {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final Set<Integer> f15811f0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    public final Map<String, r3.d> A;
    public r4.e B;
    public d[] C;
    public Set<Integer> E;
    public SparseIntArray F;
    public c G;
    public int H;
    public int I;
    public boolean J;
    public boolean K;
    public int L;
    public s0 M;
    public s0 N;
    public boolean O;
    public u0 P;
    public Set<t0> Q;
    public int[] R;
    public int S;
    public boolean T;
    public boolean[] U;
    public boolean[] V;
    public long W;
    public long X;
    public boolean Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f15812a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f15813b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public long f15814c0;
    public r3.d d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public j f15815e0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f15816h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15817i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b f15818j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final g f15819k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final l5.b f15820l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final s0 f15821m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final r3.l f15822n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final r3.k.a f15823o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final c0 f15824p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final e0.a f15826r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f15827s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList<j> f15829u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final List<j> f15830v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final s f15831w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final androidx.activity.d f15832x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Handler f15833y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ArrayList<m> f15834z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final d0 f15825q = new d0("Loader:HlsSampleStreamWrapper");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final g.b f15828t = new g.b();
    public int[] D = new int[0];

    /* JADX INFO: compiled from: HlsSampleStreamWrapper.java */
    public interface b extends n0.a<n> {
    }

    /* JADX INFO: compiled from: HlsSampleStreamWrapper.java */
    public static class c implements w {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final s0 f15835g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final s0 f15836h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final h4.b f15837a = new h4.b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w f15838b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final s0 f15839c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public s0 f15840d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f15841e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f15842f;

        static {
            s0.a aVar = new s0.a();
            aVar.f11705k = "application/id3";
            f15835g = aVar.a();
            s0.a aVar2 = new s0.a();
            aVar2.f11705k = "application/x-emsg";
            f15836h = aVar2.a();
        }

        public c(w wVar, int i10) {
            this.f15838b = wVar;
            if (i10 == 1) {
                this.f15839c = f15835g;
            } else {
                if (i10 != 3) {
                    throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("Unknown metadataType: ", i10));
                }
                this.f15839c = f15836h;
            }
            this.f15841e = new byte[0];
            this.f15842f = 0;
        }

        @Override // s3.w
        public final void a(m5.w wVar, int i10) {
            int i11 = this.f15842f + i10;
            byte[] bArr = this.f15841e;
            if (bArr.length < i11) {
                this.f15841e = Arrays.copyOf(bArr, (i11 / 2) + i11);
            }
            wVar.d(this.f15841e, this.f15842f, i10);
            this.f15842f += i10;
        }

        @Override // s3.w
        public final void b(s0 s0Var) {
            this.f15840d = s0Var;
            this.f15838b.b(this.f15839c);
        }

        @Override // s3.w
        public final void c(long j10, int i10, int i11, int i12, w.a aVar) {
            Objects.requireNonNull(this.f15840d);
            int i13 = this.f15842f - i12;
            m5.w wVar = new m5.w(Arrays.copyOfRange(this.f15841e, i13 - i11, i13));
            byte[] bArr = this.f15841e;
            System.arraycopy(bArr, i13, bArr, 0, i12);
            this.f15842f = i12;
            if (!g0.a(this.f15840d.f11687s, this.f15839c.f11687s)) {
                if (!"application/x-emsg".equals(this.f15840d.f11687s)) {
                    StringBuilder sbC = a0.b.c("Ignoring sample for unsupported format: ");
                    sbC.append(this.f15840d.f11687s);
                    m5.p.g("HlsSampleStreamWrapper", sbC.toString());
                    return;
                }
                h4.a aVarK = this.f15837a.k(wVar);
                s0 s0VarS = aVarK.s();
                if (!(s0VarS != null && g0.a(this.f15839c.f11687s, s0VarS.f11687s))) {
                    m5.p.g("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f15839c.f11687s, aVarK.s()));
                    return;
                } else {
                    byte[] bArr2 = aVarK.s() != null ? aVarK.f8179l : null;
                    Objects.requireNonNull(bArr2);
                    wVar = new m5.w(bArr2);
                }
            }
            int i14 = wVar.f10477c - wVar.f10476b;
            this.f15838b.f(wVar, i14);
            this.f15838b.c(j10, i10, i14, i12, aVar);
        }

        @Override // s3.w
        public final int e(l5.h hVar, int i10, boolean z10) throws IOException {
            int i11 = this.f15842f + i10;
            byte[] bArr = this.f15841e;
            if (bArr.length < i11) {
                this.f15841e = Arrays.copyOf(bArr, (i11 / 2) + i11);
            }
            int iB = hVar.b(this.f15841e, this.f15842f, i10);
            if (iB != -1) {
                this.f15842f += iB;
                return iB;
            }
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
    }

    /* JADX INFO: compiled from: HlsSampleStreamWrapper.java */
    public static final class d extends l0 {
        public final Map<String, r3.d> H;
        public r3.d I;

        public d(l5.b bVar, r3.l lVar, r3.k.a aVar, Map map, a aVar2) {
            super(bVar, lVar, aVar);
            this.H = map;
        }

        @Override // p4.l0, s3.w
        public final void c(long j10, int i10, int i11, int i12, w.a aVar) {
            super.c(j10, i10, i11, i12, aVar);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001b  */
        @Override // p4.l0
        public final s0 n(s0 s0Var) {
            r3.d dVar;
            r3.d dVar2 = this.I;
            if (dVar2 == null) {
                dVar2 = s0Var.f11690v;
            }
            if (dVar2 != null && (dVar = this.H.get(dVar2.f14481j)) != null) {
                dVar2 = dVar;
            }
            f4.a aVar = s0Var.f11685q;
            if (aVar == null) {
                aVar = null;
            } else {
                int length = aVar.f7052h.length;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        i11 = -1;
                        break;
                    }
                    f4.a.b bVar = aVar.f7052h[i11];
                    if ((bVar instanceof k4.k) && "com.apple.streaming.transportStreamTimestamp".equals(((k4.k) bVar).f9685i)) {
                        break;
                    }
                    i11++;
                }
                if (i11 != -1) {
                    if (length == 1) {
                        aVar = null;
                    } else {
                        f4.a.b[] bVarArr = new f4.a.b[length - 1];
                        while (i10 < length) {
                            if (i10 != i11) {
                                bVarArr[i10 < i11 ? i10 : i10 - 1] = aVar.f7052h[i10];
                            }
                            i10++;
                        }
                        aVar = new f4.a(bVarArr);
                    }
                }
            }
            if (dVar2 != s0Var.f11690v || aVar != s0Var.f11685q) {
                s0.a aVarB = s0Var.b();
                aVarB.f11708n = dVar2;
                aVarB.f11703i = aVar;
                s0Var = aVarB.a();
            }
            return super.n(s0Var);
        }
    }

    public n(String str, int i10, b bVar, g gVar, Map<String, r3.d> map, l5.b bVar2, long j10, s0 s0Var, r3.l lVar, r3.k.a aVar, c0 c0Var, e0.a aVar2, int i11) {
        this.f15816h = str;
        this.f15817i = i10;
        this.f15818j = bVar;
        this.f15819k = gVar;
        this.A = map;
        this.f15820l = bVar2;
        this.f15821m = s0Var;
        this.f15822n = lVar;
        this.f15823o = aVar;
        this.f15824p = c0Var;
        this.f15826r = aVar2;
        this.f15827s = i11;
        Set<Integer> set = f15811f0;
        this.E = new HashSet(set.size());
        this.F = new SparseIntArray(set.size());
        this.C = new d[0];
        this.V = new boolean[0];
        this.U = new boolean[0];
        ArrayList<j> arrayList = new ArrayList<>();
        this.f15829u = arrayList;
        this.f15830v = Collections.unmodifiableList(arrayList);
        this.f15834z = new ArrayList<>();
        this.f15831w = new s(this, 3);
        this.f15832x = new androidx.activity.d(this, 2);
        this.f15833y = g0.l(null);
        this.W = j10;
        this.X = j10;
    }

    public static int B(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 0 : 1;
        }
        return 3;
    }

    public static s3.g w(int i10, int i11) {
        m5.p.g("HlsSampleStreamWrapper", "Unmapped track with id " + i10 + " of type " + i11);
        return new s3.g();
    }

    public static s0 y(s0 s0Var, s0 s0Var2, boolean z10) {
        String strC;
        String strE;
        if (s0Var == null) {
            return s0Var2;
        }
        int i10 = m5.s.i(s0Var2.f11687s);
        if (g0.r(s0Var.f11684p, i10) == 1) {
            strC = g0.s(s0Var.f11684p, i10);
            strE = m5.s.e(strC);
        } else {
            strC = m5.s.c(s0Var.f11684p, s0Var2.f11687s);
            strE = s0Var2.f11687s;
        }
        s0.a aVar = new s0.a(s0Var2);
        aVar.f11695a = s0Var.f11676h;
        aVar.f11696b = s0Var.f11677i;
        aVar.f11697c = s0Var.f11678j;
        aVar.f11698d = s0Var.f11679k;
        aVar.f11699e = s0Var.f11680l;
        aVar.f11700f = z10 ? s0Var.f11681m : -1;
        aVar.f11701g = z10 ? s0Var.f11682n : -1;
        aVar.f11702h = strC;
        if (i10 == 2) {
            aVar.f11710p = s0Var.f11692x;
            aVar.f11711q = s0Var.f11693y;
            aVar.f11712r = s0Var.f11694z;
        }
        if (strE != null) {
            aVar.f11705k = strE;
        }
        int i11 = s0Var.F;
        if (i11 != -1 && i10 == 1) {
            aVar.f11718x = i11;
        }
        f4.a aVarB = s0Var.f11685q;
        if (aVarB != null) {
            f4.a aVar2 = s0Var2.f11685q;
            if (aVar2 != null) {
                aVarB = aVar2.b(aVarB);
            }
            aVar.f11703i = aVarB;
        }
        return new s0(aVar);
    }

    public final j A() {
        ArrayList<j> arrayList = this.f15829u;
        return arrayList.get(arrayList.size() - 1);
    }

    public final boolean C() {
        return this.X != -9223372036854775807L;
    }

    public final void D() {
        s0 s0Var;
        if (!this.O && this.R == null && this.J) {
            for (d dVar : this.C) {
                if (dVar.s() == null) {
                    return;
                }
            }
            u0 u0Var = this.P;
            if (u0Var != null) {
                int i10 = u0Var.f13235h;
                int[] iArr = new int[i10];
                this.R = iArr;
                Arrays.fill(iArr, -1);
                for (int i11 = 0; i11 < i10; i11++) {
                    int i12 = 0;
                    while (true) {
                        d[] dVarArr = this.C;
                        if (i12 >= dVarArr.length) {
                            break;
                        }
                        s0 s0VarS = dVarArr[i12].s();
                        m5.a.f(s0VarS);
                        s0 s0Var2 = this.P.b(i11).f13224k[0];
                        String str = s0VarS.f11687s;
                        String str2 = s0Var2.f11687s;
                        int i13 = m5.s.i(str);
                        if (i13 == 3 ? g0.a(str, str2) && (!("application/cea-608".equals(str) || "application/cea-708".equals(str)) || s0VarS.K == s0Var2.K) : i13 == m5.s.i(str2)) {
                            this.R[i11] = i12;
                            break;
                        }
                        i12++;
                    }
                }
                Iterator<m> it = this.f15834z.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                return;
            }
            int length = this.C.length;
            int i14 = 0;
            int i15 = -1;
            int i16 = -2;
            while (true) {
                int i17 = 2;
                if (i14 >= length) {
                    break;
                }
                s0 s0VarS2 = this.C[i14].s();
                m5.a.f(s0VarS2);
                String str3 = s0VarS2.f11687s;
                if (!m5.s.n(str3)) {
                    i17 = m5.s.k(str3) ? 1 : m5.s.m(str3) ? 3 : -2;
                }
                if (B(i17) > B(i16)) {
                    i15 = i14;
                    i16 = i17;
                } else if (i17 == i16 && i15 != -1) {
                    i15 = -1;
                }
                i14++;
            }
            t0 t0Var = this.f15819k.f15749h;
            int i18 = t0Var.f13221h;
            this.S = -1;
            this.R = new int[length];
            for (int i19 = 0; i19 < length; i19++) {
                this.R[i19] = i19;
            }
            t0[] t0VarArr = new t0[length];
            int i20 = 0;
            while (i20 < length) {
                s0 s0VarS3 = this.C[i20].s();
                m5.a.f(s0VarS3);
                if (i20 == i15) {
                    s0[] s0VarArr = new s0[i18];
                    for (int i21 = 0; i21 < i18; i21++) {
                        s0 s0VarG = t0Var.f13224k[i21];
                        if (i16 == 1 && (s0Var = this.f15821m) != null) {
                            s0VarG = s0VarG.g(s0Var);
                        }
                        s0VarArr[i21] = i18 == 1 ? s0VarS3.g(s0VarG) : y(s0VarG, s0VarS3, true);
                    }
                    t0VarArr[i20] = new t0(this.f15816h, s0VarArr);
                    this.S = i20;
                } else {
                    s0 s0Var3 = (i16 == 2 && m5.s.k(s0VarS3.f11687s)) ? this.f15821m : null;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f15816h);
                    sb2.append(":muxed:");
                    sb2.append(i20 < i15 ? i20 : i20 - 1);
                    t0VarArr[i20] = new t0(sb2.toString(), y(s0Var3, s0VarS3, false));
                }
                i20++;
            }
            this.P = x(t0VarArr);
            m5.a.e(this.Q == null);
            this.Q = Collections.emptySet();
            this.K = true;
            ((l) this.f15818j).p();
        }
    }

    public final void E() throws IOException {
        this.f15825q.b();
        g gVar = this.f15819k;
        p4.b bVar = gVar.f15755n;
        if (bVar != null) {
            throw bVar;
        }
        Uri uri = gVar.f15756o;
        if (uri == null || !gVar.f15760s) {
            return;
        }
        gVar.f15748g.g(uri);
    }

    public final void F(t0[] t0VarArr, int... iArr) {
        this.P = x(t0VarArr);
        this.Q = new HashSet();
        for (int i10 : iArr) {
            this.Q.add(this.P.b(i10));
        }
        this.S = 0;
        Handler handler = this.f15833y;
        b bVar = this.f15818j;
        Objects.requireNonNull(bVar);
        handler.post(new y(bVar, 2));
        this.K = true;
    }

    public final void G() {
        for (d dVar : this.C) {
            dVar.C(this.Y);
        }
        this.Y = false;
    }

    public final boolean H(long j10, boolean z10) {
        boolean z11;
        this.W = j10;
        if (C()) {
            this.X = j10;
            return true;
        }
        if (this.J && !z10) {
            int length = this.C.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z11 = true;
                    break;
                }
                if (!this.C[i10].D(j10, false) && (this.V[i10] || !this.T)) {
                    z11 = false;
                    break;
                }
                i10++;
            }
            if (z11) {
                return false;
            }
        }
        this.X = j10;
        this.f15812a0 = false;
        this.f15829u.clear();
        if (this.f15825q.d()) {
            if (this.J) {
                for (d dVar : this.C) {
                    dVar.j();
                }
            }
            this.f15825q.a();
        } else {
            this.f15825q.f9994c = null;
            G();
        }
        return true;
    }

    public final void I(long j10) {
        if (this.f15814c0 != j10) {
            this.f15814c0 = j10;
            for (d dVar : this.C) {
                dVar.E(j10);
            }
        }
    }

    @Override // p4.n0
    public final boolean a() {
        return this.f15825q.d();
    }

    @Override // s3.j
    public final void b() {
        this.f15813b0 = true;
        this.f15833y.post(this.f15832x);
    }

    @Override // p4.n0
    public final long c() {
        if (C()) {
            return this.X;
        }
        if (this.f15812a0) {
            return Long.MIN_VALUE;
        }
        return A().f14565h;
    }

    @Override // p4.n0
    public final long e() {
        if (this.f15812a0) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.X;
        }
        long jMax = this.W;
        j jVarA = A();
        if (!jVarA.H) {
            if (this.f15829u.size() > 1) {
                ArrayList<j> arrayList = this.f15829u;
                jVarA = arrayList.get(arrayList.size() - 2);
            } else {
                jVarA = null;
            }
        }
        if (jVarA != null) {
            jMax = Math.max(jMax, jVarA.f14565h);
        }
        if (this.J) {
            for (d dVar : this.C) {
                jMax = Math.max(jMax, dVar.o());
            }
        }
        return jMax;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0280  */
    /* JADX WARN: Code duplicated, block: B:110:0x029a  */
    /* JADX WARN: Code duplicated, block: B:114:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:120:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:124:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:131:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:134:0x02de  */
    /* JADX WARN: Code duplicated, block: B:142:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:143:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:152:0x0305  */
    /* JADX WARN: Code duplicated, block: B:155:0x030a  */
    /* JADX WARN: Code duplicated, block: B:157:0x032b  */
    /* JADX WARN: Code duplicated, block: B:158:0x032d  */
    /* JADX WARN: Code duplicated, block: B:161:0x033c  */
    /* JADX WARN: Code duplicated, block: B:162:0x033e  */
    /* JADX WARN: Code duplicated, block: B:165:0x0368  */
    /* JADX WARN: Code duplicated, block: B:166:0x036d  */
    /* JADX WARN: Code duplicated, block: B:169:0x038b  */
    /* JADX WARN: Code duplicated, block: B:170:0x038e  */
    /* JADX WARN: Code duplicated, block: B:172:0x0392  */
    /* JADX WARN: Code duplicated, block: B:173:0x039c  */
    /* JADX WARN: Code duplicated, block: B:175:0x039f  */
    /* JADX WARN: Code duplicated, block: B:176:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:179:0x03b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:180:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:181:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:183:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:184:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:187:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:188:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:190:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:193:0x0407  */
    /* JADX WARN: Code duplicated, block: B:195:0x040b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:203:0x0426  */
    /* JADX WARN: Code duplicated, block: B:206:0x042f  */
    /* JADX WARN: Code duplicated, block: B:209:0x0435  */
    /* JADX WARN: Code duplicated, block: B:212:0x043c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:218:0x044a  */
    /* JADX WARN: Code duplicated, block: B:220:0x0452  */
    /* JADX WARN: Code duplicated, block: B:223:0x047f  */
    /* JADX WARN: Code duplicated, block: B:227:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:229:0x04ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:230:0x04cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:231:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:234:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:236:0x04dd  */
    /* JADX WARN: Code duplicated, block: B:238:0x0503  */
    /* JADX WARN: Code duplicated, block: B:240:0x0516  */
    /* JADX WARN: Code duplicated, block: B:244:0x0533  */
    /* JADX WARN: Code duplicated, block: B:246:0x0540  */
    /* JADX WARN: Code duplicated, block: B:255:0x051f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:0x0543 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:55:0x0110  */
    /* JADX WARN: Code duplicated, block: B:57:0x0122  */
    /* JADX WARN: Code duplicated, block: B:58:0x0128  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:72:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:79:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:86:0x020a  */
    /* JADX WARN: Code duplicated, block: B:88:0x0213  */
    /* JADX WARN: Code duplicated, block: B:89:0x0224  */
    /* JADX WARN: Code duplicated, block: B:91:0x022c  */
    /* JADX WARN: Code duplicated, block: B:92:0x023c  */
    /* JADX WARN: Code duplicated, block: B:94:0x023f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0243  */
    /* JADX WARN: Code duplicated, block: B:97:0x0254  */
    @Override // p4.n0
    public final boolean f(long j10) {
        List<j> listEmptyList;
        long jMax;
        long j11;
        long j12;
        long j13;
        long j14;
        int i10;
        j jVar;
        int iK;
        boolean z10;
        Uri uri;
        v4.e eVarJ;
        long jO;
        long jO2;
        long jLongValue;
        int iIntValue;
        j jVar2;
        long j15;
        int i11;
        v4.e.c cVar;
        int i12;
        g.e eVar;
        g.e eVar2;
        v4.e.c cVar2;
        Uri uriD;
        r4.e eVarD;
        v4.e.d dVar;
        Uri uriD2;
        r4.e eVarD2;
        long j16;
        boolean z11;
        l5.j jVar3;
        e2.e eVar3;
        f fVar;
        byte[] bArr;
        f fVar2;
        byte[] bArr2;
        v4.e.d dVar2;
        int i13;
        boolean z12;
        byte[] bArrF;
        l5.j aVar;
        v4.e.c cVar3;
        l5.m mVar;
        l5.j jVar4;
        boolean z13;
        int i14;
        k4.g gVar;
        m5.w wVar;
        k kVar;
        m5.d0 d0Var;
        l5.m mVar2;
        boolean z14;
        boolean z15;
        k kVar2;
        boolean z16;
        byte[] bArrF2;
        l5.j aVar2;
        v4.e.d dVar3;
        boolean z17;
        String str;
        String str2;
        boolean z18;
        r4.e eVar4;
        Uri uri2;
        j jVar5;
        Object[] objArrCopyOf;
        d[] dVarArr;
        int length;
        int i15;
        int i16;
        int i17;
        int i18;
        if (this.f15812a0 || this.f15825q.d() || this.f15825q.c()) {
            return false;
        }
        if (C()) {
            listEmptyList = Collections.emptyList();
            jMax = this.X;
            for (d dVar4 : this.C) {
                dVar4.f13111t = this.X;
            }
        } else {
            listEmptyList = this.f15830v;
            j jVarA = A();
            jMax = jVarA.H ? jVarA.f14565h : Math.max(this.W, jVarA.f14564g);
        }
        List<j> list = listEmptyList;
        long j17 = jMax;
        g.b bVar = this.f15828t;
        bVar.f15762a = null;
        bVar.f15763b = false;
        bVar.f15764c = null;
        g gVar2 = this.f15819k;
        boolean z19 = this.K || !list.isEmpty();
        g.b bVar2 = this.f15828t;
        Objects.requireNonNull(gVar2);
        j jVar6 = list.isEmpty() ? null : (j) g0.n.b(list);
        int iB = jVar6 == null ? -1 : gVar2.f15749h.b(jVar6.f14561d);
        long jMax2 = j17 - j10;
        long j18 = gVar2.f15759r;
        long jMax3 = (j18 > (-9223372036854775807L) ? 1 : (j18 == (-9223372036854775807L) ? 0 : -1)) != 0 ? j18 - j10 : -9223372036854775807L;
        if (jVar6 != null && !gVar2.f15757p) {
            j12 = j17;
            long j19 = jVar6.f14565h - jVar6.f14564g;
            jMax2 = Math.max(0L, jMax2 - j19);
            j11 = -9223372036854775807L;
            if (jMax3 != -9223372036854775807L) {
                jMax3 = Math.max(0L, jMax3 - j19);
                j14 = j12;
                j13 = jMax2;
            }
            i10 = iB;
            jVar = jVar6;
            gVar2.f15758q.g(j10, j13, jMax3, list, gVar2.a(jVar6, j14));
            iK = gVar2.f15758q.k();
            if (i10 != iK) {
                z10 = true;
            } else {
                z10 = false;
            }
            uri = gVar2.f15746e[iK];
            if (gVar2.f15748g.e(uri)) {
                eVarJ = gVar2.f15748g.j(uri, true);
                Objects.requireNonNull(eVarJ);
                gVar2.f15757p = eVarJ.f16326c;
                if (eVarJ.f16273o) {
                    jO = -9223372036854775807L;
                } else {
                    jO = (eVarJ.f16266h + eVarJ.f16279u) - gVar2.f15748g.o();
                }
                gVar2.f15759r = jO;
                jO2 = eVarJ.f16266h - gVar2.f15748g.o();
                long j20 = j14;
                Pair<Long, Integer> pairC = gVar2.c(jVar, z10, eVarJ, jO2, j20);
                jLongValue = ((Long) pairC.first).longValue();
                iIntValue = ((Integer) pairC.second).intValue();
                if (jLongValue >= eVarJ.f16269k && jVar != null && z10) {
                    uri = gVar2.f15746e[i10];
                    eVarJ = gVar2.f15748g.j(uri, true);
                    Objects.requireNonNull(eVarJ);
                    jO2 = eVarJ.f16266h - gVar2.f15748g.o();
                    jVar2 = jVar;
                    Pair<Long, Integer> pairC2 = gVar2.c(jVar, false, eVarJ, jO2, j20);
                    jLongValue = ((Long) pairC2.first).longValue();
                    iIntValue = ((Integer) pairC2.second).intValue();
                    iK = i10;
                }
                j15 = eVarJ.f16269k;
                if (jLongValue < j15) {
                    gVar2.f15755n = new p4.b();
                } else {
                    i11 = (int) (jLongValue - j15);
                    if (i11 == eVarJ.f16276r.size()) {
                        if (iIntValue == -1) {
                            iIntValue = 0;
                        }
                        if (iIntValue < eVarJ.f16277s.size()) {
                            eVar = new g.e(eVarJ.f16277s.get(iIntValue), jLongValue, iIntValue);
                            eVar2 = eVar;
                        } else {
                            eVar2 = null;
                        }
                    } else {
                        cVar = eVarJ.f16276r.get(i11);
                        if (iIntValue == -1) {
                            eVar = new g.e(cVar, jLongValue, -1);
                        } else if (iIntValue < cVar.f16287t.size()) {
                            eVar = new g.e(cVar.f16287t.get(iIntValue), jLongValue, iIntValue);
                        } else {
                            i12 = i11 + 1;
                            if (i12 < eVarJ.f16276r.size()) {
                                eVar2 = new g.e(eVarJ.f16276r.get(i12), jLongValue + 1, -1);
                            } else if (eVarJ.f16277s.isEmpty()) {
                                eVar2 = null;
                            } else {
                                eVar = new g.e(eVarJ.f16277s.get(0), jLongValue + 1, 0);
                            }
                        }
                        eVar2 = eVar;
                    }
                    if (eVar2 != null) {
                        if (!eVarJ.f16273o) {
                            bVar2.f15764c = uri;
                            gVar2.f15760s &= uri.equals(gVar2.f15756o);
                            gVar2.f15756o = uri;
                        } else if (!z19 || eVarJ.f16276r.isEmpty()) {
                            bVar2.f15763b = true;
                        } else {
                            eVar2 = new g.e((v4.e.d) g0.n.b(eVarJ.f16276r), (eVarJ.f16269k + ((long) eVarJ.f16276r.size())) - 1, -1);
                        }
                    }
                    gVar2.f15760s = false;
                    gVar2.f15756o = null;
                    cVar2 = eVar2.f15768a.f16289i;
                    if (cVar2 != null || (str2 = cVar2.f16294n) == null) {
                        uriD = null;
                    } else {
                        uriD = m5.e0.d(eVarJ.f16324a, str2);
                    }
                    eVarD = gVar2.d(uriD, iK);
                    bVar2.f15762a = eVarD;
                    if (eVarD == null) {
                        dVar = eVar2.f15768a;
                        if (dVar != null || (str = dVar.f16294n) == null) {
                            uriD2 = null;
                        } else {
                            uriD2 = m5.e0.d(eVarJ.f16324a, str);
                        }
                        eVarD2 = gVar2.d(uriD2, iK);
                        bVar2.f15762a = eVarD2;
                        if (eVarD2 == null) {
                            AtomicInteger atomicInteger = j.L;
                            if (jVar2 == null && !(uri.equals(jVar2.f15775m) && jVar2.H)) {
                                dVar3 = eVar2.f15768a;
                                long j21 = jO2;
                                long j22 = dVar3.f16292l + j21;
                                if (dVar3 instanceof v4.e.a) {
                                    z17 = eVarJ.f16326c;
                                } else if (!((v4.e.a) dVar3).f16281s || (eVar2.f15770c == 0 && eVarJ.f16326c)) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                                j16 = j21;
                                z11 = z17 || j22 < jVar2.f14565h;
                                if (z11 || !eVar2.f15771d) {
                                    i iVar = gVar2.f15742a;
                                    jVar3 = gVar2.f15743b;
                                    s0 s0Var = gVar2.f15747f[iK];
                                    List<s0> list2 = gVar2.f15750i;
                                    int iN = gVar2.f15758q.n();
                                    Object objQ = gVar2.f15758q.q();
                                    boolean z20 = gVar2.f15753l;
                                    eVar3 = gVar2.f15745d;
                                    fVar = gVar2.f15751j;
                                    Objects.requireNonNull(fVar);
                                    if (uriD2 == null) {
                                        bArr = null;
                                    } else {
                                        bArr = fVar.f15741a.get(uriD2);
                                    }
                                    fVar2 = gVar2.f15751j;
                                    Objects.requireNonNull(fVar2);
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = fVar2.f15741a.get(uriD);
                                    }
                                    v0 v0Var = gVar2.f15752k;
                                    dVar2 = eVar2.f15768a;
                                    Map mapEmptyMap = Collections.emptyMap();
                                    Uri uriD3 = m5.e0.d(eVarJ.f16324a, dVar2.f16288h);
                                    long j23 = dVar2.f16296p;
                                    long j24 = dVar2.f16297q;
                                    if (eVar2.f15771d) {
                                        i13 = 8;
                                    } else {
                                        i13 = 0;
                                    }
                                    m5.a.g(uriD3, "The uri must be set.");
                                    l5.m mVar3 = new l5.m(uriD3, 0L, 1, null, mapEmptyMap, j23, j24, null, i13, null);
                                    if (bArr != null) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12) {
                                        String str3 = dVar2.f16295o;
                                        Objects.requireNonNull(str3);
                                        bArrF = j.f(str3);
                                    } else {
                                        bArrF = null;
                                    }
                                    if (bArr != null) {
                                        Objects.requireNonNull(bArrF);
                                        aVar = new u4.a(jVar3, bArr, bArrF);
                                    } else {
                                        aVar = jVar3;
                                    }
                                    cVar3 = dVar2.f16289i;
                                    if (cVar3 != null) {
                                        if (bArr2 != null) {
                                            z16 = true;
                                        } else {
                                            z16 = false;
                                        }
                                        if (z16) {
                                            String str4 = cVar3.f16295o;
                                            Objects.requireNonNull(str4);
                                            bArrF2 = j.f(str4);
                                        } else {
                                            bArrF2 = null;
                                        }
                                        boolean z21 = z16;
                                        mVar = new l5.m(m5.e0.d(eVarJ.f16324a, cVar3.f16288h), cVar3.f16296p, cVar3.f16297q);
                                        if (bArr2 != null) {
                                            Objects.requireNonNull(bArrF2);
                                            aVar2 = new u4.a(jVar3, bArr2, bArrF2);
                                        } else {
                                            aVar2 = jVar3;
                                        }
                                        z13 = z21;
                                        jVar4 = aVar2;
                                    } else {
                                        mVar = null;
                                        jVar4 = null;
                                        z13 = false;
                                    }
                                    long j25 = j16 + dVar2.f16292l;
                                    long j26 = j25 + dVar2.f16290j;
                                    i14 = eVarJ.f16268j + dVar2.f16291k;
                                    if (jVar2 != null) {
                                        mVar2 = jVar2.f15779q;
                                        if (mVar != mVar2 || (mVar != null && mVar2 != null && mVar.f10071a.equals(mVar2.f10071a) && mVar.f10076f == jVar2.f15779q.f10076f)) {
                                            z14 = true;
                                        } else {
                                            z14 = false;
                                        }
                                        if (uri.equals(jVar2.f15775m) || !jVar2.H) {
                                            z15 = false;
                                        } else {
                                            z15 = true;
                                        }
                                        k4.g gVar3 = jVar2.f15787y;
                                        m5.w wVar2 = jVar2.f15788z;
                                        if (z14 || !z15 || jVar2.J || jVar2.f15774l != i14) {
                                            kVar2 = null;
                                        } else {
                                            kVar2 = jVar2.C;
                                        }
                                        gVar = gVar3;
                                        wVar = wVar2;
                                        kVar = kVar2;
                                    } else {
                                        gVar = new k4.g();
                                        wVar = new m5.w(10);
                                        kVar = null;
                                    }
                                    long j27 = eVar2.f15769b;
                                    int i19 = eVar2.f15770c;
                                    boolean z22 = !eVar2.f15771d;
                                    boolean z23 = dVar2.f16298r;
                                    d0Var = (m5.d0) ((SparseArray) eVar3.f6302a).get(i14);
                                    if (d0Var == null) {
                                        d0Var = new m5.d0(9223372036854775806L);
                                        ((SparseArray) eVar3.f6302a).put(i14, d0Var);
                                    }
                                    bVar2.f15762a = new j(iVar, aVar, mVar3, s0Var, z12, jVar4, mVar, z13, uri, list2, iN, objQ, j25, j26, j27, i19, z22, i14, z23, z20, d0Var, dVar2.f16293m, kVar, gVar, wVar, z11, v0Var);
                                }
                            } else {
                                j16 = jO2;
                            }
                            if (z11) {
                                i iVar2 = gVar2.f15742a;
                                jVar3 = gVar2.f15743b;
                                s0 s0Var2 = gVar2.f15747f[iK];
                                List<s0> list3 = gVar2.f15750i;
                                int iN2 = gVar2.f15758q.n();
                                Object objQ2 = gVar2.f15758q.q();
                                boolean z24 = gVar2.f15753l;
                                eVar3 = gVar2.f15745d;
                                fVar = gVar2.f15751j;
                                Objects.requireNonNull(fVar);
                                if (uriD2 == null) {
                                    bArr = null;
                                } else {
                                    bArr = fVar.f15741a.get(uriD2);
                                }
                                fVar2 = gVar2.f15751j;
                                Objects.requireNonNull(fVar2);
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = fVar2.f15741a.get(uriD);
                                }
                                v0 v0Var2 = gVar2.f15752k;
                                dVar2 = eVar2.f15768a;
                                Map mapEmptyMap2 = Collections.emptyMap();
                                Uri uriD4 = m5.e0.d(eVarJ.f16324a, dVar2.f16288h);
                                long j28 = dVar2.f16296p;
                                long j29 = dVar2.f16297q;
                                if (eVar2.f15771d) {
                                    i13 = 8;
                                } else {
                                    i13 = 0;
                                }
                                m5.a.g(uriD4, "The uri must be set.");
                                l5.m mVar4 = new l5.m(uriD4, 0L, 1, null, mapEmptyMap2, j28, j29, null, i13, null);
                                if (bArr != null) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                if (z12) {
                                    String str5 = dVar2.f16295o;
                                    Objects.requireNonNull(str5);
                                    bArrF = j.f(str5);
                                } else {
                                    bArrF = null;
                                }
                                if (bArr != null) {
                                    Objects.requireNonNull(bArrF);
                                    aVar = new u4.a(jVar3, bArr, bArrF);
                                } else {
                                    aVar = jVar3;
                                }
                                cVar3 = dVar2.f16289i;
                                if (cVar3 != null) {
                                    if (bArr2 != null) {
                                        z16 = true;
                                    } else {
                                        z16 = false;
                                    }
                                    if (z16) {
                                        String str6 = cVar3.f16295o;
                                        Objects.requireNonNull(str6);
                                        bArrF2 = j.f(str6);
                                    } else {
                                        bArrF2 = null;
                                    }
                                    boolean z25 = z16;
                                    mVar = new l5.m(m5.e0.d(eVarJ.f16324a, cVar3.f16288h), cVar3.f16296p, cVar3.f16297q);
                                    if (bArr2 != null) {
                                        Objects.requireNonNull(bArrF2);
                                        aVar2 = new u4.a(jVar3, bArr2, bArrF2);
                                    } else {
                                        aVar2 = jVar3;
                                    }
                                    z13 = z25;
                                    jVar4 = aVar2;
                                } else {
                                    mVar = null;
                                    jVar4 = null;
                                    z13 = false;
                                }
                                long j210 = j16 + dVar2.f16292l;
                                long j211 = j210 + dVar2.f16290j;
                                i14 = eVarJ.f16268j + dVar2.f16291k;
                                if (jVar2 != null) {
                                    mVar2 = jVar2.f15779q;
                                    if (mVar != mVar2) {
                                        z14 = true;
                                    } else {
                                        z14 = true;
                                    }
                                    if (uri.equals(jVar2.f15775m)) {
                                        z15 = false;
                                    } else {
                                        z15 = false;
                                    }
                                    k4.g gVar4 = jVar2.f15787y;
                                    m5.w wVar3 = jVar2.f15788z;
                                    if (z14) {
                                        kVar2 = null;
                                    } else {
                                        kVar2 = null;
                                    }
                                    gVar = gVar4;
                                    wVar = wVar3;
                                    kVar = kVar2;
                                } else {
                                    gVar = new k4.g();
                                    wVar = new m5.w(10);
                                    kVar = null;
                                }
                                long j212 = eVar2.f15769b;
                                int i110 = eVar2.f15770c;
                                boolean z26 = !eVar2.f15771d;
                                boolean z27 = dVar2.f16298r;
                                d0Var = (m5.d0) ((SparseArray) eVar3.f6302a).get(i14);
                                if (d0Var == null) {
                                    d0Var = new m5.d0(9223372036854775806L);
                                    ((SparseArray) eVar3.f6302a).put(i14, d0Var);
                                }
                                bVar2.f15762a = new j(iVar2, aVar, mVar4, s0Var2, z12, jVar4, mVar, z13, uri, list3, iN2, objQ2, j210, j211, j212, i110, z26, i14, z27, z24, d0Var, dVar2.f16293m, kVar, gVar, wVar, z11, v0Var2);
                            } else {
                                i iVar3 = gVar2.f15742a;
                                jVar3 = gVar2.f15743b;
                                s0 s0Var3 = gVar2.f15747f[iK];
                                List<s0> list4 = gVar2.f15750i;
                                int iN3 = gVar2.f15758q.n();
                                Object objQ3 = gVar2.f15758q.q();
                                boolean z28 = gVar2.f15753l;
                                eVar3 = gVar2.f15745d;
                                fVar = gVar2.f15751j;
                                Objects.requireNonNull(fVar);
                                if (uriD2 == null) {
                                    bArr = null;
                                } else {
                                    bArr = fVar.f15741a.get(uriD2);
                                }
                                fVar2 = gVar2.f15751j;
                                Objects.requireNonNull(fVar2);
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = fVar2.f15741a.get(uriD);
                                }
                                v0 v0Var3 = gVar2.f15752k;
                                dVar2 = eVar2.f15768a;
                                Map mapEmptyMap3 = Collections.emptyMap();
                                Uri uriD5 = m5.e0.d(eVarJ.f16324a, dVar2.f16288h);
                                long j213 = dVar2.f16296p;
                                long j214 = dVar2.f16297q;
                                if (eVar2.f15771d) {
                                    i13 = 8;
                                } else {
                                    i13 = 0;
                                }
                                m5.a.g(uriD5, "The uri must be set.");
                                l5.m mVar5 = new l5.m(uriD5, 0L, 1, null, mapEmptyMap3, j213, j214, null, i13, null);
                                if (bArr != null) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                if (z12) {
                                    String str7 = dVar2.f16295o;
                                    Objects.requireNonNull(str7);
                                    bArrF = j.f(str7);
                                } else {
                                    bArrF = null;
                                }
                                if (bArr != null) {
                                    Objects.requireNonNull(bArrF);
                                    aVar = new u4.a(jVar3, bArr, bArrF);
                                } else {
                                    aVar = jVar3;
                                }
                                cVar3 = dVar2.f16289i;
                                if (cVar3 != null) {
                                    if (bArr2 != null) {
                                        z16 = true;
                                    } else {
                                        z16 = false;
                                    }
                                    if (z16) {
                                        String str8 = cVar3.f16295o;
                                        Objects.requireNonNull(str8);
                                        bArrF2 = j.f(str8);
                                    } else {
                                        bArrF2 = null;
                                    }
                                    boolean z29 = z16;
                                    mVar = new l5.m(m5.e0.d(eVarJ.f16324a, cVar3.f16288h), cVar3.f16296p, cVar3.f16297q);
                                    if (bArr2 != null) {
                                        Objects.requireNonNull(bArrF2);
                                        aVar2 = new u4.a(jVar3, bArr2, bArrF2);
                                    } else {
                                        aVar2 = jVar3;
                                    }
                                    z13 = z29;
                                    jVar4 = aVar2;
                                } else {
                                    mVar = null;
                                    jVar4 = null;
                                    z13 = false;
                                }
                                long j215 = j16 + dVar2.f16292l;
                                long j216 = j215 + dVar2.f16290j;
                                i14 = eVarJ.f16268j + dVar2.f16291k;
                                if (jVar2 != null) {
                                    mVar2 = jVar2.f15779q;
                                    if (mVar != mVar2) {
                                        z14 = true;
                                    } else {
                                        z14 = true;
                                    }
                                    if (uri.equals(jVar2.f15775m)) {
                                        z15 = false;
                                    } else {
                                        z15 = false;
                                    }
                                    k4.g gVar5 = jVar2.f15787y;
                                    m5.w wVar4 = jVar2.f15788z;
                                    if (z14) {
                                        kVar2 = null;
                                    } else {
                                        kVar2 = null;
                                    }
                                    gVar = gVar5;
                                    wVar = wVar4;
                                    kVar = kVar2;
                                } else {
                                    gVar = new k4.g();
                                    wVar = new m5.w(10);
                                    kVar = null;
                                }
                                long j217 = eVar2.f15769b;
                                int i111 = eVar2.f15770c;
                                boolean z210 = !eVar2.f15771d;
                                boolean z211 = dVar2.f16298r;
                                d0Var = (m5.d0) ((SparseArray) eVar3.f6302a).get(i14);
                                if (d0Var == null) {
                                    d0Var = new m5.d0(9223372036854775806L);
                                    ((SparseArray) eVar3.f6302a).put(i14, d0Var);
                                }
                                bVar2.f15762a = new j(iVar3, aVar, mVar5, s0Var3, z12, jVar4, mVar, z13, uri, list4, iN3, objQ3, j215, j216, j217, i111, z210, i14, z211, z28, d0Var, dVar2.f16293m, kVar, gVar, wVar, z11, v0Var3);
                            }
                        }
                    }
                }
            } else {
                bVar2.f15764c = uri;
                gVar2.f15760s &= uri.equals(gVar2.f15756o);
                gVar2.f15756o = uri;
            }
            g.b bVar3 = this.f15828t;
            z18 = bVar3.f15763b;
            eVar4 = bVar3.f15762a;
            uri2 = bVar3.f15764c;
            if (z18) {
                this.X = -9223372036854775807L;
                this.f15812a0 = true;
                return true;
            }
            if (eVar4 == null) {
                if (uri2 != null) {
                    return false;
                }
                ((l) this.f15818j).f15790i.i(uri2);
                return false;
            }
            if (eVar4 instanceof j) {
                jVar5 = (j) eVar4;
                this.f15815e0 = jVar5;
                this.M = jVar5.f14561d;
                this.X = -9223372036854775807L;
                this.f15829u.add(jVar5);
                u6.a aVar3 = v.f16002i;
                u6.h.b(4, "initialCapacity");
                objArrCopyOf = new Object[4];
                dVarArr = this.C;
                length = dVarArr.length;
                i15 = 0;
                i16 = 0;
                while (i16 < length) {
                    d dVar5 = dVarArr[i16];
                    Integer numValueOf = Integer.valueOf(dVar5.f13108q + dVar5.f13107p);
                    Objects.requireNonNull(numValueOf);
                    i18 = i15 + 1;
                    if (objArrCopyOf.length < i18) {
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i18));
                    }
                    objArrCopyOf[i15] = numValueOf;
                    i16++;
                    i15 = i18;
                }
                v<Integer> vVarQ = v.q(objArrCopyOf, i15);
                jVar5.D = this;
                jVar5.I = vVarQ;
                for (d dVar6 : this.C) {
                    Objects.requireNonNull(dVar6);
                    dVar6.C = jVar5.f15773k;
                    if (jVar5.f15776n) {
                        dVar6.G = true;
                    }
                }
            }
            this.B = eVar4;
            this.f15826r.n(new r(eVar4.f14558a, eVar4.f14559b, this.f15825q.g(eVar4, this, this.f15824p.c(eVar4.f14560c))), eVar4.f14560c, this.f15817i, eVar4.f14561d, eVar4.f14562e, eVar4.f14563f, eVar4.f14564g, eVar4.f14565h);
            return true;
        }
        j11 = -9223372036854775807L;
        j12 = j17;
        j13 = jMax2;
        j14 = j12;
        i10 = iB;
        jVar = jVar6;
        gVar2.f15758q.g(j10, j13, jMax3, list, gVar2.a(jVar6, j14));
        iK = gVar2.f15758q.k();
        if (i10 != iK) {
            z10 = true;
        } else {
            z10 = false;
        }
        uri = gVar2.f15746e[iK];
        if (gVar2.f15748g.e(uri)) {
            bVar2.f15764c = uri;
            gVar2.f15760s &= uri.equals(gVar2.f15756o);
            gVar2.f15756o = uri;
        } else {
            eVarJ = gVar2.f15748g.j(uri, true);
            Objects.requireNonNull(eVarJ);
            gVar2.f15757p = eVarJ.f16326c;
            if (eVarJ.f16273o) {
                jO = -9223372036854775807L;
            } else {
                jO = (eVarJ.f16266h + eVarJ.f16279u) - gVar2.f15748g.o();
            }
            gVar2.f15759r = jO;
            jO2 = eVarJ.f16266h - gVar2.f15748g.o();
            long j218 = j14;
            Pair<Long, Integer> pairC3 = gVar2.c(jVar, z10, eVarJ, jO2, j218);
            jLongValue = ((Long) pairC3.first).longValue();
            iIntValue = ((Integer) pairC3.second).intValue();
            jVar2 = jLongValue >= eVarJ.f16269k ? jVar : jVar;
            j15 = eVarJ.f16269k;
            if (jLongValue < j15) {
                gVar2.f15755n = new p4.b();
            } else {
                i11 = (int) (jLongValue - j15);
                if (i11 == eVarJ.f16276r.size()) {
                    if (iIntValue == -1) {
                        iIntValue = 0;
                    }
                    if (iIntValue < eVarJ.f16277s.size()) {
                        eVar = new g.e(eVarJ.f16277s.get(iIntValue), jLongValue, iIntValue);
                        eVar2 = eVar;
                    } else {
                        eVar2 = null;
                    }
                } else {
                    cVar = eVarJ.f16276r.get(i11);
                    if (iIntValue == -1) {
                        eVar = new g.e(cVar, jLongValue, -1);
                    } else if (iIntValue < cVar.f16287t.size()) {
                        eVar = new g.e(cVar.f16287t.get(iIntValue), jLongValue, iIntValue);
                    } else {
                        i12 = i11 + 1;
                        if (i12 < eVarJ.f16276r.size()) {
                            eVar2 = new g.e(eVarJ.f16276r.get(i12), jLongValue + 1, -1);
                        } else if (eVarJ.f16277s.isEmpty()) {
                            eVar = new g.e(eVarJ.f16277s.get(0), jLongValue + 1, 0);
                        } else {
                            eVar2 = null;
                        }
                    }
                    eVar2 = eVar;
                }
                if (eVar2 != null) {
                    if (!eVarJ.f16273o) {
                        bVar2.f15764c = uri;
                        gVar2.f15760s &= uri.equals(gVar2.f15756o);
                        gVar2.f15756o = uri;
                    } else {
                        if (z19) {
                        }
                        bVar2.f15763b = true;
                    }
                }
                gVar2.f15760s = false;
                gVar2.f15756o = null;
                cVar2 = eVar2.f15768a.f16289i;
                if (cVar2 != null) {
                    uriD = null;
                } else {
                    uriD = null;
                }
                eVarD = gVar2.d(uriD, iK);
                bVar2.f15762a = eVarD;
                if (eVarD == null) {
                    dVar = eVar2.f15768a;
                    if (dVar != null) {
                        uriD2 = null;
                    } else {
                        uriD2 = null;
                    }
                    eVarD2 = gVar2.d(uriD2, iK);
                    bVar2.f15762a = eVarD2;
                    if (eVarD2 == null) {
                        AtomicInteger atomicInteger2 = j.L;
                        if (jVar2 == null) {
                            j16 = jO2;
                        } else {
                            dVar3 = eVar2.f15768a;
                            long j219 = jO2;
                            long j220 = dVar3.f16292l + j219;
                            if (dVar3 instanceof v4.e.a) {
                                z17 = eVarJ.f16326c;
                            } else if (((v4.e.a) dVar3).f16281s) {
                                z17 = true;
                            } else {
                                z17 = true;
                            }
                            j16 = j219;
                            if (z17) {
                            }
                        }
                        if (z11) {
                            i iVar4 = gVar2.f15742a;
                            jVar3 = gVar2.f15743b;
                            s0 s0Var4 = gVar2.f15747f[iK];
                            List<s0> list5 = gVar2.f15750i;
                            int iN4 = gVar2.f15758q.n();
                            Object objQ4 = gVar2.f15758q.q();
                            boolean z212 = gVar2.f15753l;
                            eVar3 = gVar2.f15745d;
                            fVar = gVar2.f15751j;
                            Objects.requireNonNull(fVar);
                            if (uriD2 == null) {
                                bArr = null;
                            } else {
                                bArr = fVar.f15741a.get(uriD2);
                            }
                            fVar2 = gVar2.f15751j;
                            Objects.requireNonNull(fVar2);
                            if (uriD == null) {
                                bArr2 = null;
                            } else {
                                bArr2 = fVar2.f15741a.get(uriD);
                            }
                            v0 v0Var4 = gVar2.f15752k;
                            dVar2 = eVar2.f15768a;
                            Map mapEmptyMap4 = Collections.emptyMap();
                            Uri uriD6 = m5.e0.d(eVarJ.f16324a, dVar2.f16288h);
                            long j2110 = dVar2.f16296p;
                            long j2111 = dVar2.f16297q;
                            if (eVar2.f15771d) {
                                i13 = 8;
                            } else {
                                i13 = 0;
                            }
                            m5.a.g(uriD6, "The uri must be set.");
                            l5.m mVar6 = new l5.m(uriD6, 0L, 1, null, mapEmptyMap4, j2110, j2111, null, i13, null);
                            if (bArr != null) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            if (z12) {
                                String str9 = dVar2.f16295o;
                                Objects.requireNonNull(str9);
                                bArrF = j.f(str9);
                            } else {
                                bArrF = null;
                            }
                            if (bArr != null) {
                                Objects.requireNonNull(bArrF);
                                aVar = new u4.a(jVar3, bArr, bArrF);
                            } else {
                                aVar = jVar3;
                            }
                            cVar3 = dVar2.f16289i;
                            if (cVar3 != null) {
                                if (bArr2 != null) {
                                    z16 = true;
                                } else {
                                    z16 = false;
                                }
                                if (z16) {
                                    String str10 = cVar3.f16295o;
                                    Objects.requireNonNull(str10);
                                    bArrF2 = j.f(str10);
                                } else {
                                    bArrF2 = null;
                                }
                                boolean z213 = z16;
                                mVar = new l5.m(m5.e0.d(eVarJ.f16324a, cVar3.f16288h), cVar3.f16296p, cVar3.f16297q);
                                if (bArr2 != null) {
                                    Objects.requireNonNull(bArrF2);
                                    aVar2 = new u4.a(jVar3, bArr2, bArrF2);
                                } else {
                                    aVar2 = jVar3;
                                }
                                z13 = z213;
                                jVar4 = aVar2;
                            } else {
                                mVar = null;
                                jVar4 = null;
                                z13 = false;
                            }
                            long j2112 = j16 + dVar2.f16292l;
                            long j2113 = j2112 + dVar2.f16290j;
                            i14 = eVarJ.f16268j + dVar2.f16291k;
                            if (jVar2 != null) {
                                mVar2 = jVar2.f15779q;
                                if (mVar != mVar2) {
                                    z14 = true;
                                } else {
                                    z14 = true;
                                }
                                if (uri.equals(jVar2.f15775m)) {
                                    z15 = false;
                                } else {
                                    z15 = false;
                                }
                                k4.g gVar6 = jVar2.f15787y;
                                m5.w wVar5 = jVar2.f15788z;
                                if (z14) {
                                    kVar2 = null;
                                } else {
                                    kVar2 = null;
                                }
                                gVar = gVar6;
                                wVar = wVar5;
                                kVar = kVar2;
                            } else {
                                gVar = new k4.g();
                                wVar = new m5.w(10);
                                kVar = null;
                            }
                            long j2114 = eVar2.f15769b;
                            int i112 = eVar2.f15770c;
                            boolean z214 = !eVar2.f15771d;
                            boolean z215 = dVar2.f16298r;
                            d0Var = (m5.d0) ((SparseArray) eVar3.f6302a).get(i14);
                            if (d0Var == null) {
                                d0Var = new m5.d0(9223372036854775806L);
                                ((SparseArray) eVar3.f6302a).put(i14, d0Var);
                            }
                            bVar2.f15762a = new j(iVar4, aVar, mVar6, s0Var4, z12, jVar4, mVar, z13, uri, list5, iN4, objQ4, j2112, j2113, j2114, i112, z214, i14, z215, z212, d0Var, dVar2.f16293m, kVar, gVar, wVar, z11, v0Var4);
                        } else {
                            i iVar5 = gVar2.f15742a;
                            jVar3 = gVar2.f15743b;
                            s0 s0Var5 = gVar2.f15747f[iK];
                            List<s0> list6 = gVar2.f15750i;
                            int iN5 = gVar2.f15758q.n();
                            Object objQ5 = gVar2.f15758q.q();
                            boolean z216 = gVar2.f15753l;
                            eVar3 = gVar2.f15745d;
                            fVar = gVar2.f15751j;
                            Objects.requireNonNull(fVar);
                            if (uriD2 == null) {
                                bArr = null;
                            } else {
                                bArr = fVar.f15741a.get(uriD2);
                            }
                            fVar2 = gVar2.f15751j;
                            Objects.requireNonNull(fVar2);
                            if (uriD == null) {
                                bArr2 = null;
                            } else {
                                bArr2 = fVar2.f15741a.get(uriD);
                            }
                            v0 v0Var5 = gVar2.f15752k;
                            dVar2 = eVar2.f15768a;
                            Map mapEmptyMap5 = Collections.emptyMap();
                            Uri uriD7 = m5.e0.d(eVarJ.f16324a, dVar2.f16288h);
                            long j2115 = dVar2.f16296p;
                            long j2116 = dVar2.f16297q;
                            if (eVar2.f15771d) {
                                i13 = 8;
                            } else {
                                i13 = 0;
                            }
                            m5.a.g(uriD7, "The uri must be set.");
                            l5.m mVar7 = new l5.m(uriD7, 0L, 1, null, mapEmptyMap5, j2115, j2116, null, i13, null);
                            if (bArr != null) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            if (z12) {
                                String str11 = dVar2.f16295o;
                                Objects.requireNonNull(str11);
                                bArrF = j.f(str11);
                            } else {
                                bArrF = null;
                            }
                            if (bArr != null) {
                                Objects.requireNonNull(bArrF);
                                aVar = new u4.a(jVar3, bArr, bArrF);
                            } else {
                                aVar = jVar3;
                            }
                            cVar3 = dVar2.f16289i;
                            if (cVar3 != null) {
                                if (bArr2 != null) {
                                    z16 = true;
                                } else {
                                    z16 = false;
                                }
                                if (z16) {
                                    String str12 = cVar3.f16295o;
                                    Objects.requireNonNull(str12);
                                    bArrF2 = j.f(str12);
                                } else {
                                    bArrF2 = null;
                                }
                                boolean z217 = z16;
                                mVar = new l5.m(m5.e0.d(eVarJ.f16324a, cVar3.f16288h), cVar3.f16296p, cVar3.f16297q);
                                if (bArr2 != null) {
                                    Objects.requireNonNull(bArrF2);
                                    aVar2 = new u4.a(jVar3, bArr2, bArrF2);
                                } else {
                                    aVar2 = jVar3;
                                }
                                z13 = z217;
                                jVar4 = aVar2;
                            } else {
                                mVar = null;
                                jVar4 = null;
                                z13 = false;
                            }
                            long j2117 = j16 + dVar2.f16292l;
                            long j2118 = j2117 + dVar2.f16290j;
                            i14 = eVarJ.f16268j + dVar2.f16291k;
                            if (jVar2 != null) {
                                mVar2 = jVar2.f15779q;
                                if (mVar != mVar2) {
                                    z14 = true;
                                } else {
                                    z14 = true;
                                }
                                if (uri.equals(jVar2.f15775m)) {
                                    z15 = false;
                                } else {
                                    z15 = false;
                                }
                                k4.g gVar7 = jVar2.f15787y;
                                m5.w wVar6 = jVar2.f15788z;
                                if (z14) {
                                    kVar2 = null;
                                } else {
                                    kVar2 = null;
                                }
                                gVar = gVar7;
                                wVar = wVar6;
                                kVar = kVar2;
                            } else {
                                gVar = new k4.g();
                                wVar = new m5.w(10);
                                kVar = null;
                            }
                            long j2119 = eVar2.f15769b;
                            int i113 = eVar2.f15770c;
                            boolean z218 = !eVar2.f15771d;
                            boolean z219 = dVar2.f16298r;
                            d0Var = (m5.d0) ((SparseArray) eVar3.f6302a).get(i14);
                            if (d0Var == null) {
                                d0Var = new m5.d0(9223372036854775806L);
                                ((SparseArray) eVar3.f6302a).put(i14, d0Var);
                            }
                            bVar2.f15762a = new j(iVar5, aVar, mVar7, s0Var5, z12, jVar4, mVar, z13, uri, list6, iN5, objQ5, j2117, j2118, j2119, i113, z218, i14, z219, z216, d0Var, dVar2.f16293m, kVar, gVar, wVar, z11, v0Var5);
                        }
                    }
                }
            }
        }
        g.b bVar4 = this.f15828t;
        z18 = bVar4.f15763b;
        eVar4 = bVar4.f15762a;
        uri2 = bVar4.f15764c;
        if (z18) {
            this.X = -9223372036854775807L;
            this.f15812a0 = true;
            return true;
        }
        if (eVar4 == null) {
            if (uri2 != null) {
                return false;
            }
            ((l) this.f15818j).f15790i.i(uri2);
            return false;
        }
        if (eVar4 instanceof j) {
            jVar5 = (j) eVar4;
            this.f15815e0 = jVar5;
            this.M = jVar5.f14561d;
            this.X = -9223372036854775807L;
            this.f15829u.add(jVar5);
            u6.a aVar4 = v.f16002i;
            u6.h.b(4, "initialCapacity");
            objArrCopyOf = new Object[4];
            dVarArr = this.C;
            length = dVarArr.length;
            i15 = 0;
            i16 = 0;
            while (i16 < length) {
                d dVar7 = dVarArr[i16];
                Integer numValueOf2 = Integer.valueOf(dVar7.f13108q + dVar7.f13107p);
                Objects.requireNonNull(numValueOf2);
                i18 = i15 + 1;
                if (objArrCopyOf.length < i18) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i18));
                }
                objArrCopyOf[i15] = numValueOf2;
                i16++;
                i15 = i18;
            }
            v<Integer> vVarQ2 = v.q(objArrCopyOf, i15);
            jVar5.D = this;
            jVar5.I = vVarQ2;
            while (i17 < r4) {
                Objects.requireNonNull(dVar6);
                dVar6.C = jVar5.f15773k;
                if (jVar5.f15776n) {
                    dVar6.G = true;
                }
            }
        }
        this.B = eVar4;
        this.f15826r.n(new r(eVar4.f14558a, eVar4.f14559b, this.f15825q.g(eVar4, this, this.f15824p.c(eVar4.f14560c))), eVar4.f14560c, this.f15817i, eVar4.f14561d, eVar4.f14562e, eVar4.f14563f, eVar4.f14564g, eVar4.f14565h);
        return true;
    }

    @Override // p4.n0
    public final void g(long j10) {
        if (this.f15825q.c() || C()) {
            return;
        }
        if (this.f15825q.d()) {
            Objects.requireNonNull(this.B);
            g gVar = this.f15819k;
            if (gVar.f15755n != null ? false : gVar.f15758q.h(j10, this.B, this.f15830v)) {
                this.f15825q.a();
                return;
            }
            return;
        }
        int size = this.f15830v.size();
        while (size > 0) {
            int i10 = size - 1;
            if (this.f15819k.b(this.f15830v.get(i10)) != 2) {
                break;
            } else {
                size = i10;
            }
        }
        if (size < this.f15830v.size()) {
            z(size);
        }
        g gVar2 = this.f15819k;
        List<j> list = this.f15830v;
        int size2 = (gVar2.f15755n != null || gVar2.f15758q.length() < 2) ? list.size() : gVar2.f15758q.j(j10, list);
        if (size2 < this.f15829u.size()) {
            z(size2);
        }
    }

    @Override // l5.d0.a
    public final void h(d0.d dVar, long j10, long j11) {
        r4.e eVar = (r4.e) dVar;
        this.B = null;
        g gVar = this.f15819k;
        Objects.requireNonNull(gVar);
        if (eVar instanceof g.a) {
            g.a aVar = (g.a) eVar;
            gVar.f15754m = aVar.f14599j;
            f fVar = gVar.f15751j;
            Uri uri = aVar.f14559b.f10071a;
            byte[] bArr = aVar.f15761l;
            Objects.requireNonNull(bArr);
            LinkedHashMap<Uri, byte[]> linkedHashMap = fVar.f15741a;
            Objects.requireNonNull(uri);
            linkedHashMap.put(uri, bArr);
        }
        long j12 = eVar.f14558a;
        i0 i0Var = eVar.f14566i;
        Uri uri2 = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f15824p.d();
        this.f15826r.h(rVar, eVar.f14560c, this.f15817i, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h);
        if (this.K) {
            ((l) this.f15818j).j(this);
        } else {
            f(this.W);
        }
    }

    @Override // l5.d0.e
    public final void i() {
        for (d dVar : this.C) {
            dVar.B();
        }
    }

    @Override // s3.j
    public final void j(u uVar) {
    }

    @Override // l5.d0.a
    public final void k(d0.d dVar, long j10, long j11, boolean z10) {
        r4.e eVar = (r4.e) dVar;
        this.B = null;
        long j12 = eVar.f14558a;
        i0 i0Var = eVar.f14566i;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f15824p.d();
        this.f15826r.e(rVar, eVar.f14560c, this.f15817i, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h);
        if (z10) {
            return;
        }
        if (C() || this.L == 0) {
            G();
        }
        if (this.L > 0) {
            ((l) this.f15818j).j(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:44:0x0102  */
    @Override // l5.d0.a
    public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
        boolean zB;
        d0.b bVar;
        d0.b bVar2;
        boolean z10;
        int i11;
        r4.e eVar = (r4.e) dVar;
        boolean z11 = eVar instanceof j;
        if (z11 && !((j) eVar).K && (iOException instanceof z) && ((i11 = ((z) iOException).f10153k) == 410 || i11 == 404)) {
            return d0.f9989d;
        }
        long j12 = eVar.f14566i.f10052b;
        i0 i0Var = eVar.f14566i;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        g0.X(eVar.f14564g);
        g0.X(eVar.f14565h);
        c0.c cVar = new c0.c(iOException, i10);
        c0.b bVarA = this.f15824p.a(j5.r.a(this.f15819k.f15758q), cVar);
        if (bVarA == null || bVarA.f9981a != 2) {
            zB = false;
        } else {
            g gVar = this.f15819k;
            long j13 = bVarA.f9982b;
            j5.l lVar = gVar.f15758q;
            zB = lVar.b(lVar.t(gVar.f15749h.b(eVar.f14561d)), j13);
        }
        if (!zB) {
            long jB = this.f15824p.b(cVar);
            if (jB != -9223372036854775807L) {
                bVar2 = new d0.b(0, jB);
            } else {
                bVar = d0.f9991f;
            }
            z10 = !bVar2.a();
            this.f15826r.j(rVar, eVar.f14560c, this.f15817i, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h, iOException, z10);
            if (z10) {
                this.B = null;
                this.f15824p.d();
            }
            if (zB) {
                if (this.K) {
                    ((l) this.f15818j).j(this);
                } else {
                    f(this.W);
                }
            }
            return bVar2;
        }
        if (z11 && j12 == 0) {
            ArrayList<j> arrayList = this.f15829u;
            m5.a.e(arrayList.remove(arrayList.size() - 1) == eVar);
            if (this.f15829u.isEmpty()) {
                this.X = this.W;
            } else {
                ((j) g0.n.b(this.f15829u)).J = true;
            }
        }
        bVar = d0.f9990e;
        bVar2 = bVar;
        z10 = !bVar2.a();
        this.f15826r.j(rVar, eVar.f14560c, this.f15817i, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h, iOException, z10);
        if (z10) {
            this.B = null;
            this.f15824p.d();
        }
        if (zB) {
            if (this.K) {
                f(this.W);
            } else {
                ((l) this.f15818j).j(this);
            }
        }
        return bVar2;
    }

    /* JADX WARN: Type inference failed for: r11v11, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    @Override // s3.j
    public final w p(int i10, int i11) {
        w wVarW;
        Set<Integer> set = f15811f0;
        if (!set.contains(Integer.valueOf(i11))) {
            int i12 = 0;
            while (true) {
                w[] wVarArr = this.C;
                if (i12 >= wVarArr.length) {
                    wVarW = null;
                    break;
                }
                if (this.D[i12] == i10) {
                    wVarW = wVarArr[i12];
                    break;
                }
                i12++;
            }
        } else {
            m5.a.a(set.contains(Integer.valueOf(i11)));
            int i13 = this.F.get(i11, -1);
            if (i13 == -1) {
                wVarW = null;
                break;
            }
            if (this.E.add(Integer.valueOf(i11))) {
                this.D[i13] = i10;
            }
            wVarW = this.D[i13] == i10 ? this.C[i13] : w(i10, i11);
        }
        if (wVarW == null) {
            if (this.f15813b0) {
                return w(i10, i11);
            }
            int length = this.C.length;
            boolean z10 = i11 == 1 || i11 == 2;
            d dVar = new d(this.f15820l, this.f15822n, this.f15823o, this.A, null);
            dVar.f13111t = this.W;
            if (z10) {
                dVar.I = this.d0;
                dVar.f13117z = true;
            }
            dVar.E(this.f15814c0);
            j jVar = this.f15815e0;
            if (jVar != null) {
                dVar.C = jVar.f15773k;
            }
            dVar.f13097f = this;
            int i14 = length + 1;
            int[] iArrCopyOf = Arrays.copyOf(this.D, i14);
            this.D = iArrCopyOf;
            iArrCopyOf[length] = i10;
            d[] dVarArr = this.C;
            int i15 = g0.f10384a;
            Object[] objArrCopyOf = Arrays.copyOf(dVarArr, dVarArr.length + 1);
            objArrCopyOf[dVarArr.length] = dVar;
            this.C = (d[]) objArrCopyOf;
            boolean[] zArrCopyOf = Arrays.copyOf(this.V, i14);
            this.V = zArrCopyOf;
            zArrCopyOf[length] = z10;
            this.T = zArrCopyOf[length] | this.T;
            this.E.add(Integer.valueOf(i11));
            this.F.append(i11, length);
            if (B(i11) > B(this.H)) {
                this.I = length;
                this.H = i11;
            }
            this.U = Arrays.copyOf(this.U, i14);
            wVarW = dVar;
        }
        if (i11 != 5) {
            return wVarW;
        }
        if (this.G == null) {
            this.G = new c(wVarW, this.f15827s);
        }
        return this.G;
    }

    @Override // p4.l0.c
    public final void r() {
        this.f15833y.post(this.f15831w);
    }

    @EnsuresNonNull({"trackGroups", "optionalTrackGroups"})
    public final void v() {
        m5.a.e(this.K);
        Objects.requireNonNull(this.P);
        Objects.requireNonNull(this.Q);
    }

    public final u0 x(t0[] t0VarArr) {
        for (int i10 = 0; i10 < t0VarArr.length; i10++) {
            t0 t0Var = t0VarArr[i10];
            s0[] s0VarArr = new s0[t0Var.f13221h];
            for (int i11 = 0; i11 < t0Var.f13221h; i11++) {
                s0 s0Var = t0Var.f13224k[i11];
                s0VarArr[i11] = s0Var.c(this.f15822n.e(s0Var));
            }
            t0VarArr[i10] = new t0(t0Var.f13222i, s0VarArr);
        }
        return new u0(t0VarArr);
    }

    public final void z(int i10) {
        boolean z10;
        m5.a.e(!this.f15825q.d());
        while (true) {
            if (i10 >= this.f15829u.size()) {
                i10 = -1;
                break;
            }
            int i11 = i10;
            while (true) {
                if (i11 >= this.f15829u.size()) {
                    j jVar = this.f15829u.get(i10);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= this.C.length) {
                            z10 = true;
                            break;
                        }
                        int iG = jVar.g(i12);
                        d dVar = this.C[i12];
                        if (dVar.f13108q + dVar.f13110s <= iG) {
                            i12++;
                        }
                    }
                } else if (!this.f15829u.get(i11).f15776n) {
                    i11++;
                }
                z10 = false;
                break;
            }
            if (z10) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = A().f14565h;
        j jVar2 = this.f15829u.get(i10);
        ArrayList<j> arrayList = this.f15829u;
        g0.Q(arrayList, i10, arrayList.size());
        for (int i13 = 0; i13 < this.C.length; i13++) {
            this.C[i13].l(jVar2.g(i13));
        }
        if (this.f15829u.isEmpty()) {
            this.X = this.W;
        } else {
            ((j) g0.n.b(this.f15829u)).J = true;
        }
        this.f15812a0 = false;
        this.f15826r.p(this.H, jVar2.f14564g, j10);
    }
}
