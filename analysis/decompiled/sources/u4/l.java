package u4;

import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.appcompat.widget.y0;
import j5.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import l5.c0;
import l5.j0;
import m5.g0;
import m5.s;
import n3.i1;
import n3.s0;
import n3.w1;
import o3.v0;
import p4.e0;
import p4.m0;
import p4.n0;
import p4.t0;
import p4.u0;
import p4.v;

/* JADX INFO: compiled from: HlsMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements v, n.b, v4.j.a {
    public n[] A;
    public n[] B;
    public int C;
    public f.p D;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f15789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v4.j f15790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f15791j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final j0 f15792k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final r3.l f15793l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final r3.k.a f15794m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final c0 f15795n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final e0.a f15796o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final l5.b f15797p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final IdentityHashMap<m0, Integer> f15798q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final e2.e f15799r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final p4.h f15800s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f15801t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f15802u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f15803v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final v0 f15804w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public v.a f15805x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f15806y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public u0 f15807z;

    public l(i iVar, v4.j jVar, h hVar, j0 j0Var, r3.l lVar, r3.k.a aVar, c0 c0Var, e0.a aVar2, l5.b bVar, p4.h hVar2, boolean z10, int i10, boolean z11, v0 v0Var) {
        this.f15789h = iVar;
        this.f15790i = jVar;
        this.f15791j = hVar;
        this.f15792k = j0Var;
        this.f15793l = lVar;
        this.f15794m = aVar;
        this.f15795n = c0Var;
        this.f15796o = aVar2;
        this.f15797p = bVar;
        this.f15800s = hVar2;
        this.f15801t = z10;
        this.f15802u = i10;
        this.f15803v = z11;
        this.f15804w = v0Var;
        Objects.requireNonNull(hVar2);
        this.D = new f.p(new n0[0]);
        this.f15798q = new IdentityHashMap<>();
        this.f15799r = new e2.e();
        this.A = new n[0];
        this.B = new n[0];
    }

    public static s0 m(s0 s0Var, s0 s0Var2, boolean z10) {
        String str;
        int i10;
        int i11;
        String str2;
        String str3;
        f4.a aVar;
        int i12;
        if (s0Var2 != null) {
            str2 = s0Var2.f11684p;
            aVar = s0Var2.f11685q;
            int i13 = s0Var2.F;
            i10 = s0Var2.f11679k;
            int i14 = s0Var2.f11680l;
            String str4 = s0Var2.f11678j;
            str3 = s0Var2.f11677i;
            i11 = i13;
            i12 = i14;
            str = str4;
        } else {
            String strS = g0.s(s0Var.f11684p, 1);
            f4.a aVar2 = s0Var.f11685q;
            if (z10) {
                int i15 = s0Var.F;
                int i16 = s0Var.f11679k;
                int i17 = s0Var.f11680l;
                str = s0Var.f11678j;
                str2 = strS;
                str3 = s0Var.f11677i;
                i11 = i15;
                i10 = i16;
                aVar = aVar2;
                i12 = i17;
            } else {
                str = null;
                i10 = 0;
                i11 = -1;
                str2 = strS;
                str3 = null;
                aVar = aVar2;
                i12 = 0;
            }
        }
        String strE = s.e(str2);
        int i18 = z10 ? s0Var.f11681m : -1;
        int i19 = z10 ? s0Var.f11682n : -1;
        s0.a aVar3 = new s0.a();
        aVar3.f11695a = s0Var.f11676h;
        aVar3.f11696b = str3;
        aVar3.f11704j = s0Var.f11686r;
        aVar3.f11705k = strE;
        aVar3.f11702h = str2;
        aVar3.f11703i = aVar;
        aVar3.f11700f = i18;
        aVar3.f11701g = i19;
        aVar3.f11718x = i11;
        aVar3.f11698d = i10;
        aVar3.f11699e = i12;
        aVar3.f11697c = str;
        return aVar3.a();
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return this.D.a();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0083  */
    @Override // v4.j.a
    public final boolean b(Uri uri, c0.c cVar, boolean z10) {
        boolean z11;
        int iT;
        c0.b bVarA;
        boolean z12 = true;
        for (n nVar : this.A) {
            if (g0.k(nVar.f15819k.f15746e, uri)) {
                long j10 = (z10 || (bVarA = nVar.f15824p.a(r.a(nVar.f15819k.f15758q), cVar)) == null || bVarA.f9981a != 2) ? -9223372036854775807L : bVarA.f9982b;
                g gVar = nVar.f15819k;
                int i10 = 0;
                while (true) {
                    Uri[] uriArr = gVar.f15746e;
                    if (i10 >= uriArr.length) {
                        i10 = -1;
                        break;
                    }
                    if (uriArr[i10].equals(uri)) {
                        break;
                    }
                    i10++;
                }
                if (i10 == -1 || (iT = gVar.f15758q.t(i10)) == -1) {
                    z11 = true;
                } else {
                    gVar.f15760s |= uri.equals(gVar.f15756o);
                    if (j10 == -9223372036854775807L || (gVar.f15758q.b(iT, j10) && gVar.f15748g.c(uri, j10))) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                }
                boolean z13 = z11 && j10 != -9223372036854775807L;
                z12 &= z13;
            }
            z12 &= z13;
        }
        this.f15805x.j(this);
        return z12;
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return this.D.c();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        for (n nVar : this.B) {
            if (nVar.H == 2) {
                g gVar = nVar.f15819k;
                int iO = gVar.f15758q.o();
                Uri[] uriArr = gVar.f15746e;
                v4.e eVarJ = (iO >= uriArr.length || iO == -1) ? null : gVar.f15748g.j(uriArr[gVar.f15758q.k()], true);
                if (eVarJ == null || eVarJ.f16276r.isEmpty() || !eVarJ.f16326c) {
                    break;
                    break;
                    break;
                }
                long jO = eVarJ.f16266h - gVar.f15748g.o();
                long j11 = j10 - jO;
                int iC = g0.c(eVarJ.f16276r, Long.valueOf(j11), true);
                long j12 = eVarJ.f16276r.get(iC).f16292l;
                return w1Var.a(j11, j12, iC != eVarJ.f16276r.size() - 1 ? eVarJ.f16276r.get(iC + 1).f16292l : j12) + jO;
            }
        }
        return j10;
    }

    @Override // p4.v, p4.n0
    public final long e() {
        return this.D.e();
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        if (this.f15807z != null) {
            return this.D.f(j10);
        }
        for (n nVar : this.A) {
            if (!nVar.K) {
                nVar.f(nVar.W);
            }
        }
        return false;
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
        this.D.g(j10);
    }

    @Override // v4.j.a
    public final void h() {
        for (n nVar : this.A) {
            if (!nVar.f15829u.isEmpty()) {
                j jVar = (j) g0.n.b(nVar.f15829u);
                int iB = nVar.f15819k.b(jVar);
                if (iB == 1) {
                    jVar.K = true;
                } else if (iB == 2 && !nVar.f15812a0 && nVar.f15825q.d()) {
                    nVar.f15825q.a();
                }
            }
        }
        this.f15805x.j(this);
    }

    @Override // p4.n0.a
    public final void j(n0 n0Var) {
        this.f15805x.j(this);
    }

    public final n k(String str, int i10, Uri[] uriArr, s0[] s0VarArr, s0 s0Var, List<s0> list, Map<String, r3.d> map, long j10) {
        return new n(str, i10, this, new g(this.f15789h, this.f15790i, uriArr, s0VarArr, this.f15791j, this.f15792k, this.f15799r, list, this.f15804w), map, this.f15797p, j10, s0Var, this.f15793l, this.f15794m, this.f15795n, this.f15796o, this.f15802u);
    }

    @Override // p4.v
    public final long l() {
        return -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0243  */
    /* JADX WARN: Code duplicated, block: B:114:0x0264  */
    /* JADX WARN: Code duplicated, block: B:116:0x026a  */
    /* JADX WARN: Code duplicated, block: B:118:0x026e  */
    /* JADX WARN: Code duplicated, block: B:151:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:194:0x0271 A[SYNTHETIC] */
    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        n[] nVarArr;
        int i10;
        j5.l[] lVarArr2;
        n nVar;
        int[] iArr;
        int i11;
        n[] nVarArr2;
        int i12;
        int i13;
        m0[] m0VarArr2;
        byte b10;
        m0[] m0VarArr3;
        boolean z10;
        boolean z11;
        int i14;
        boolean z12;
        boolean z13;
        m0[] m0VarArr4;
        l lVar = this;
        m0[] m0VarArr5 = m0VarArr;
        int[] iArr2 = new int[lVarArr.length];
        int[] iArr3 = new int[lVarArr.length];
        for (int i15 = 0; i15 < lVarArr.length; i15++) {
            iArr2[i15] = m0VarArr5[i15] == null ? -1 : lVar.f15798q.get(m0VarArr5[i15]).intValue();
            iArr3[i15] = -1;
            if (lVarArr[i15] != null) {
                t0 t0VarL = lVarArr[i15].l();
                int i16 = 0;
                while (true) {
                    n[] nVarArr3 = lVar.A;
                    if (i16 >= nVarArr3.length) {
                        break;
                    }
                    n nVar2 = nVarArr3[i16];
                    nVar2.v();
                    if (nVar2.P.c(t0VarL) != -1) {
                        iArr3[i15] = i16;
                        break;
                    }
                    i16++;
                }
            }
        }
        lVar.f15798q.clear();
        int length = lVarArr.length;
        m0[] m0VarArr6 = new m0[length];
        int length2 = lVarArr.length;
        m0[] m0VarArr7 = new m0[length2];
        int length3 = lVarArr.length;
        j5.l[] lVarArr3 = new j5.l[length3];
        n[] nVarArr4 = new n[lVar.A.length];
        int i17 = length;
        int i18 = 0;
        int i19 = 0;
        boolean z14 = false;
        while (i18 < lVar.A.length) {
            int i20 = 0;
            while (true) {
                nVarArr = nVarArr4;
                if (i20 >= lVarArr.length) {
                    break;
                }
                m0VarArr7[i20] = iArr2[i20] == i18 ? m0VarArr5[i20] : null;
                lVarArr3[i20] = iArr3[i20] == i18 ? lVarArr[i20] : null;
                i20++;
                nVarArr4 = nVarArr;
            }
            n nVar3 = lVar.A[i18];
            nVar3.v();
            int i21 = nVar3.L;
            int i22 = 0;
            while (i22 < length3) {
                int i23 = length2;
                m mVar = (m) m0VarArr7[i22];
                if (mVar != null && (lVarArr3[i22] == null || !zArr[i22])) {
                    nVar3.L--;
                    if (mVar.f15810j != -1) {
                        n nVar4 = mVar.f15809i;
                        int i24 = mVar.f15808h;
                        nVar4.v();
                        Objects.requireNonNull(nVar4.R);
                        int i25 = nVar4.R[i24];
                        m5.a.e(nVar4.U[i25]);
                        nVar4.U[i25] = false;
                        mVar.f15810j = -1;
                    }
                    m0VarArr7[i22] = null;
                }
                i22++;
                i18 = i18;
                length2 = i23;
                m0VarArr6 = m0VarArr6;
            }
            int i26 = length2;
            int i27 = i18;
            m0[] m0VarArr8 = m0VarArr6;
            boolean z15 = z14 || (!nVar3.Z ? j10 == nVar3.W : i21 != 0);
            j5.l lVar2 = nVar3.f15819k.f15758q;
            boolean z16 = z15;
            j5.l lVar3 = lVar2;
            for (int i28 = 0; i28 < length3; i28++) {
                j5.l lVar4 = lVarArr3[i28];
                if (lVar4 != null) {
                    int iC = nVar3.P.c(lVar4.l());
                    if (iC == nVar3.S) {
                        nVar3.f15819k.f15758q = lVar4;
                        lVar3 = lVar4;
                    }
                    if (m0VarArr7[i28] == null) {
                        nVar3.L++;
                        m0VarArr7[i28] = new m(nVar3, iC);
                        zArr2[i28] = true;
                        if (nVar3.R != null) {
                            ((m) m0VarArr7[i28]).a();
                            if (!z16) {
                                n.d dVar = nVar3.C[nVar3.R[iC]];
                                z16 = (dVar.D(j10, true) || dVar.f13108q + dVar.f13110s == 0) ? false : true;
                            }
                        }
                    }
                }
            }
            if (nVar3.L == 0) {
                nVar3.f15819k.f15755n = null;
                nVar3.N = null;
                nVar3.Y = true;
                nVar3.f15829u.clear();
                if (nVar3.f15825q.d()) {
                    if (nVar3.J) {
                        for (n.d dVar2 : nVar3.C) {
                            dVar2.j();
                        }
                    }
                    nVar3.f15825q.a();
                } else {
                    nVar3.G();
                }
                i10 = length3;
                lVarArr2 = lVarArr3;
                nVar = nVar3;
                iArr = iArr2;
                i11 = i17;
                nVarArr2 = nVarArr;
                i12 = i27;
                i13 = i26;
                m0VarArr2 = m0VarArr8;
                b10 = -1;
                m0VarArr3 = m0VarArr7;
            } else {
                if (nVar3.f15829u.isEmpty() || g0.a(lVar3, lVar2)) {
                    i10 = length3;
                    lVarArr2 = lVarArr3;
                    nVar = nVar3;
                    iArr = iArr2;
                    i11 = i17;
                    nVarArr2 = nVarArr;
                    i12 = i27;
                    i13 = i26;
                    m0VarArr2 = m0VarArr8;
                    b10 = -1;
                    m0VarArr3 = m0VarArr7;
                } else {
                    if (nVar3.Z) {
                        i10 = length3;
                        lVarArr2 = lVarArr3;
                        nVar = nVar3;
                        iArr = iArr2;
                        i11 = i17;
                        nVarArr2 = nVarArr;
                        i12 = i27;
                        i13 = i26;
                        m0VarArr2 = m0VarArr8;
                        b10 = -1;
                        m0VarArr3 = m0VarArr7;
                    } else {
                        long j11 = j10 < 0 ? -j10 : 0L;
                        j jVarA = nVar3.A();
                        i10 = length3;
                        lVarArr2 = lVarArr3;
                        nVarArr2 = nVarArr;
                        iArr = iArr2;
                        i13 = i26;
                        m0VarArr3 = m0VarArr7;
                        i11 = i17;
                        i12 = i27;
                        m0VarArr2 = m0VarArr8;
                        b10 = -1;
                        nVar = nVar3;
                        lVar3.g(j10, j11, -9223372036854775807L, nVar3.f15830v, nVar3.f15819k.a(jVarA, j10));
                        if (lVar3.k() == nVar.f15819k.f15749h.b(jVarA.f14561d)) {
                            z12 = false;
                        }
                        if (z12) {
                            nVar.Y = true;
                            z10 = true;
                            z11 = true;
                        }
                        if (z11) {
                            nVar.H(j10, z10);
                            for (i14 = 0; i14 < i13; i14++) {
                                if (m0VarArr3[i14] != null) {
                                    zArr2[i14] = true;
                                }
                            }
                        }
                        z16 = z11;
                    }
                    z12 = true;
                    if (z12) {
                        nVar.Y = true;
                        z10 = true;
                        z11 = true;
                    }
                    if (z11) {
                        nVar.H(j10, z10);
                        while (i14 < i13) {
                            if (m0VarArr3[i14] != null) {
                                zArr2[i14] = true;
                            }
                        }
                    }
                    z16 = z11;
                }
                z10 = z14;
                z11 = z16;
                if (z11) {
                    nVar.H(j10, z10);
                    while (i14 < i13) {
                        if (m0VarArr3[i14] != null) {
                            zArr2[i14] = true;
                        }
                    }
                }
                z16 = z11;
            }
            nVar.f15834z.clear();
            for (int i29 = 0; i29 < i13; i29++) {
                m0 m0Var = m0VarArr3[i29];
                if (m0Var != null) {
                    nVar.f15834z.add((m) m0Var);
                }
            }
            boolean z17 = true;
            nVar.Z = true;
            boolean z18 = false;
            int i30 = 0;
            while (i30 < lVarArr.length) {
                m0 m0Var2 = m0VarArr3[i30];
                int i31 = i12;
                if (iArr3[i30] == i31) {
                    Objects.requireNonNull(m0Var2);
                    m0VarArr4 = m0VarArr2;
                    m0VarArr4[i30] = m0Var2;
                    z13 = z17;
                    this.f15798q.put(m0Var2, Integer.valueOf(i31));
                    z18 = z13;
                } else {
                    z13 = z17;
                    m0VarArr4 = m0VarArr2;
                    if (iArr[i30] == i31) {
                        m5.a.e(m0Var2 == null ? z13 : false);
                    }
                }
                i30++;
                m0VarArr2 = m0VarArr4;
                i12 = i31;
                z17 = z13;
            }
            boolean z19 = z17;
            m0[] m0VarArr9 = m0VarArr2;
            int i32 = i12;
            if (z18) {
                int i33 = i19;
                nVarArr2[i33] = nVar;
                i19 = i33 + 1;
                if (i33 == 0) {
                    nVar.f15819k.f15753l = z19;
                    if (z16) {
                        ((SparseArray) this.f15799r.f6302a).clear();
                        z14 = z19;
                    } else {
                        n[] nVarArr5 = this.B;
                        if (nVarArr5.length != 0) {
                            if (nVar != nVarArr5[0]) {
                            }
                        }
                        ((SparseArray) this.f15799r.f6302a).clear();
                        z14 = z19;
                    }
                } else {
                    nVar.f15819k.f15753l = i32 < this.C ? z19 : false;
                }
            }
            i18 = i32 + 1;
            lVar = this;
            m0VarArr6 = m0VarArr9;
            m0VarArr7 = m0VarArr3;
            length3 = i10;
            lVarArr3 = lVarArr2;
            nVarArr4 = nVarArr2;
            iArr2 = iArr;
            i17 = i11;
            length2 = i13;
            m0VarArr5 = m0VarArr;
        }
        l lVar5 = lVar;
        System.arraycopy(m0VarArr6, 0, m0VarArr5, 0, i17);
        n[] nVarArr6 = (n[]) g0.N(nVarArr4, i19);
        lVar5.B = nVarArr6;
        Objects.requireNonNull(lVar5.f15800s);
        lVar5.D = new f.p(nVarArr6);
        return j10;
    }

    @Override // p4.v
    public final u0 o() {
        u0 u0Var = this.f15807z;
        Objects.requireNonNull(u0Var);
        return u0Var;
    }

    public final void p() {
        int i10 = this.f15806y - 1;
        this.f15806y = i10;
        if (i10 > 0) {
            return;
        }
        int i11 = 0;
        for (n nVar : this.A) {
            nVar.v();
            i11 += nVar.P.f13235h;
        }
        t0[] t0VarArr = new t0[i11];
        int i12 = 0;
        for (n nVar2 : this.A) {
            nVar2.v();
            int i13 = nVar2.P.f13235h;
            int i14 = 0;
            while (i14 < i13) {
                nVar2.v();
                t0VarArr[i12] = nVar2.P.b(i14);
                i14++;
                i12++;
            }
        }
        this.f15807z = new u0(t0VarArr);
        this.f15805x.i(this);
    }

    @Override // p4.v
    public final void q() throws IOException {
        for (n nVar : this.A) {
            nVar.E();
            if (nVar.f15812a0 && !nVar.K) {
                throw i1.a("Loading finished before preparation is complete.", null);
            }
        }
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        for (n nVar : this.B) {
            if (nVar.J && !nVar.C()) {
                int length = nVar.C.length;
                for (int i10 = 0; i10 < length; i10++) {
                    nVar.C[i10].i(j10, z10, nVar.U[i10]);
                }
            }
        }
    }

    @Override // p4.v
    public final long t(long j10) {
        n[] nVarArr = this.B;
        if (nVarArr.length > 0) {
            boolean zH = nVarArr[0].H(j10, false);
            int i10 = 1;
            while (true) {
                n[] nVarArr2 = this.B;
                if (i10 >= nVarArr2.length) {
                    break;
                }
                nVarArr2[i10].H(j10, zH);
                i10++;
            }
            if (zH) {
                ((SparseArray) this.f15799r.f6302a).clear();
            }
        }
        return j10;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0267  */
    /* JADX WARN: Code duplicated, block: B:103:0x026e A[LOOP:6: B:102:0x026c->B:103:0x026e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:158:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0110 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x0112  */
    /* JADX WARN: Code duplicated, block: B:58:0x011a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0123  */
    /* JADX WARN: Code duplicated, block: B:78:0x016b  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:86:0x01b3 A[LOOP:4: B:85:0x01b1->B:86:0x01b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:96:0x0233  */
    /* JADX WARN: Code duplicated, block: B:99:0x023a A[LOOP:5: B:97:0x0234->B:99:0x023a, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:99:0x023a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r25v0, types: [u4.l, v4.j$a] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v30, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.Map] */
    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        ?? EmptyMap;
        ?? r21;
        List<v4.f.a> list;
        List<v4.f.a> list2;
        ArrayList arrayList;
        List<v4.f.a> list3;
        HashSet hashSet;
        int i10;
        boolean z10;
        int i11;
        Uri[] uriArr;
        s0[] s0VarArr;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int iR;
        int iR2;
        int i15;
        ?? r22;
        n nVarK;
        ArrayList arrayList2;
        s0[] s0VarArr2;
        int i16;
        int i17;
        s0[] s0VarArr3;
        int i18;
        List<s0> list4;
        int i19;
        int i20;
        String str;
        this.f15805x = aVar;
        this.f15790i.n(this);
        v4.f fVarB = this.f15790i.b();
        Objects.requireNonNull(fVarB);
        boolean z11 = true;
        if (this.f15803v) {
            List<r3.d> list5 = fVarB.f16314m;
            ArrayList arrayList3 = new ArrayList(list5);
            EmptyMap = new HashMap();
            int i21 = 0;
            while (i21 < arrayList3.size()) {
                r3.d dVar = list5.get(i21);
                String str2 = dVar.f14481j;
                i21++;
                int i22 = i21;
                while (i22 < arrayList3.size()) {
                    r3.d dVar2 = (r3.d) arrayList3.get(i22);
                    if (TextUtils.equals(dVar2.f14481j, str2)) {
                        String str3 = dVar.f14481j;
                        m5.a.e(str3 == null || (str = dVar2.f14481j) == null || TextUtils.equals(str3, str));
                        String str4 = dVar.f14481j;
                        if (str4 == null) {
                            str4 = dVar2.f14481j;
                        }
                        r3.d.b[] bVarArr = dVar.f14479h;
                        r3.d.b[] bVarArr2 = dVar2.f14479h;
                        int i23 = g0.f10384a;
                        Object[] objArrCopyOf = Arrays.copyOf(bVarArr, bVarArr.length + bVarArr2.length);
                        System.arraycopy(bVarArr2, 0, objArrCopyOf, bVarArr.length, bVarArr2.length);
                        dVar = new r3.d(str4, true, (r3.d.b[]) objArrCopyOf);
                        arrayList3.remove(i22);
                    } else {
                        i22++;
                    }
                }
                EmptyMap.put(str2, dVar);
            }
        } else {
            EmptyMap = Collections.emptyMap();
        }
        ?? r12 = EmptyMap;
        boolean z12 = !fVarB.f16306e.isEmpty();
        List<v4.f.a> list6 = fVarB.f16308g;
        List<v4.f.a> list7 = fVarB.f16309h;
        this.f15806y = 0;
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        if (z12) {
            int size = fVarB.f16306e.size();
            int[] iArr2 = new int[size];
            int i24 = 0;
            int i25 = 0;
            for (int i26 = 0; i26 < fVarB.f16306e.size(); i26++) {
                s0 s0Var = fVarB.f16306e.get(i26).f16319b;
                if (s0Var.f11693y > 0 || g0.s(s0Var.f11684p, 2) != null) {
                    iArr2[i26] = 2;
                    i24++;
                } else if (g0.s(s0Var.f11684p, 1) != null) {
                    iArr2[i26] = 1;
                    i25++;
                } else {
                    iArr2[i26] = -1;
                }
            }
            if (i24 > 0) {
                size = i24;
            } else {
                if (i25 < size) {
                    z10 = false;
                    i11 = size - i25;
                } else {
                    z11 = false;
                }
                uriArr = new Uri[i11];
                s0VarArr = new s0[i11];
                iArr = new int[i11];
                i12 = 0;
                i13 = 0;
                while (i12 < fVarB.f16306e.size()) {
                    if (z10) {
                        i20 = i11;
                        if (iArr2[i12] == 2) {
                        }
                        i12++;
                        i11 = i20;
                    } else {
                        i20 = i11;
                    }
                    if (z11 || iArr2[i12] != 1) {
                        v4.f.b bVar = fVarB.f16306e.get(i12);
                        uriArr[i13] = bVar.f16318a;
                        s0VarArr[i13] = bVar.f16319b;
                        iArr[i13] = i12;
                        i13++;
                    }
                    i12++;
                    i11 = i20;
                }
                i14 = i11;
                String str5 = s0VarArr[0].f11684p;
                iR = g0.r(str5, 2);
                iR2 = g0.r(str5, 1);
                boolean z13 = (iR2 != 1 || (iR2 == 0 && fVarB.f16308g.isEmpty())) && iR <= 1 && iR2 + iR > 0;
                if (!z10 || iR2 <= 0) {
                    i15 = 0;
                } else {
                    i15 = 1;
                }
                list2 = list7;
                list = list6;
                r22 = r12;
                arrayList = arrayList5;
                nVarK = k("main", i15, uriArr, s0VarArr, fVarB.f16311j, fVarB.f16312k, r12, j10);
                arrayList4.add(nVarK);
                arrayList.add(iArr);
                r21 = r22;
                r21 = r22;
                if (this.f15801t && z13) {
                    arrayList2 = new ArrayList();
                    if (iR > 0) {
                        s0VarArr3 = new s0[i14];
                        for (i18 = 0; i18 < i14; i18++) {
                            s0 s0Var2 = s0VarArr[i18];
                            String strS = g0.s(s0Var2.f11684p, 2);
                            String strE = s.e(strS);
                            s0.a aVar2 = new s0.a();
                            aVar2.f11695a = s0Var2.f11676h;
                            aVar2.f11696b = s0Var2.f11677i;
                            aVar2.f11704j = s0Var2.f11686r;
                            aVar2.f11705k = strE;
                            aVar2.f11702h = strS;
                            aVar2.f11703i = s0Var2.f11685q;
                            aVar2.f11700f = s0Var2.f11681m;
                            aVar2.f11701g = s0Var2.f11682n;
                            aVar2.f11710p = s0Var2.f11692x;
                            aVar2.f11711q = s0Var2.f11693y;
                            aVar2.f11712r = s0Var2.f11694z;
                            aVar2.f11698d = s0Var2.f11679k;
                            aVar2.f11699e = s0Var2.f11680l;
                            s0VarArr3[i18] = new s0(aVar2);
                        }
                        arrayList2.add(new t0("main", s0VarArr3));
                        if (iR2 > 0 && (fVarB.f16311j != null || fVarB.f16308g.isEmpty())) {
                            arrayList2.add(new t0("main:audio", m(s0VarArr[0], fVarB.f16311j, false)));
                        }
                        list4 = fVarB.f16312k;
                        if (list4 != null) {
                            for (i19 = 0; i19 < list4.size(); i19++) {
                                arrayList2.add(new t0("main:cc:" + i19, list4.get(i19)));
                            }
                        }
                        i17 = 1;
                    } else {
                        s0VarArr2 = new s0[i14];
                        for (i16 = 0; i16 < i14; i16++) {
                            s0VarArr2[i16] = m(s0VarArr[i16], fVarB.f16311j, true);
                        }
                        i17 = 1;
                        arrayList2.add(new t0("main", s0VarArr2));
                    }
                    s0[] s0VarArr4 = new s0[i17];
                    s0.a aVar3 = new s0.a();
                    aVar3.f11695a = "ID3";
                    aVar3.f11705k = "application/id3";
                    s0VarArr4[0] = new s0(aVar3);
                    t0 t0Var = new t0("main:id3", s0VarArr4);
                    arrayList2.add(t0Var);
                    nVarK.F((t0[]) arrayList2.toArray(new t0[0]), arrayList2.indexOf(t0Var));
                    r21 = r22;
                }
            }
            i11 = size;
            boolean z14 = z11;
            z11 = false;
            z10 = z14;
            uriArr = new Uri[i11];
            s0VarArr = new s0[i11];
            iArr = new int[i11];
            i12 = 0;
            i13 = 0;
            while (i12 < fVarB.f16306e.size()) {
                if (z10) {
                    i20 = i11;
                    if (iArr2[i12] == 2) {
                    }
                    i12++;
                    i11 = i20;
                } else {
                    i20 = i11;
                }
                if (z11) {
                    v4.f.b bVar2 = fVarB.f16306e.get(i12);
                    uriArr[i13] = bVar2.f16318a;
                    s0VarArr[i13] = bVar2.f16319b;
                    iArr[i13] = i12;
                    i13++;
                } else {
                    v4.f.b bVar3 = fVarB.f16306e.get(i12);
                    uriArr[i13] = bVar3.f16318a;
                    s0VarArr[i13] = bVar3.f16319b;
                    iArr[i13] = i12;
                    i13++;
                }
                i12++;
                i11 = i20;
            }
            i14 = i11;
            String str6 = s0VarArr[0].f11684p;
            iR = g0.r(str6, 2);
            iR2 = g0.r(str6, 1);
            boolean z15 = (iR2 != 1 || (iR2 == 0 && fVarB.f16308g.isEmpty())) && iR <= 1 && iR2 + iR > 0;
            if (z10) {
                i15 = 0;
            } else {
                i15 = 0;
            }
            list2 = list7;
            list = list6;
            r22 = r12;
            arrayList = arrayList5;
            nVarK = k("main", i15, uriArr, s0VarArr, fVarB.f16311j, fVarB.f16312k, r12, j10);
            arrayList4.add(nVarK);
            arrayList.add(iArr);
            r21 = r22;
            r21 = r22;
            if (this.f15801t) {
                arrayList2 = new ArrayList();
                if (iR > 0) {
                    s0VarArr3 = new s0[i14];
                    while (i18 < i14) {
                        s0 s0Var3 = s0VarArr[i18];
                        String strS2 = g0.s(s0Var3.f11684p, 2);
                        String strE2 = s.e(strS2);
                        s0.a aVar4 = new s0.a();
                        aVar4.f11695a = s0Var3.f11676h;
                        aVar4.f11696b = s0Var3.f11677i;
                        aVar4.f11704j = s0Var3.f11686r;
                        aVar4.f11705k = strE2;
                        aVar4.f11702h = strS2;
                        aVar4.f11703i = s0Var3.f11685q;
                        aVar4.f11700f = s0Var3.f11681m;
                        aVar4.f11701g = s0Var3.f11682n;
                        aVar4.f11710p = s0Var3.f11692x;
                        aVar4.f11711q = s0Var3.f11693y;
                        aVar4.f11712r = s0Var3.f11694z;
                        aVar4.f11698d = s0Var3.f11679k;
                        aVar4.f11699e = s0Var3.f11680l;
                        s0VarArr3[i18] = new s0(aVar4);
                    }
                    arrayList2.add(new t0("main", s0VarArr3));
                    if (iR2 > 0) {
                        arrayList2.add(new t0("main:audio", m(s0VarArr[0], fVarB.f16311j, false)));
                    }
                    list4 = fVarB.f16312k;
                    if (list4 != null) {
                        while (i19 < list4.size()) {
                            arrayList2.add(new t0("main:cc:" + i19, list4.get(i19)));
                        }
                    }
                    i17 = 1;
                } else {
                    s0VarArr2 = new s0[i14];
                    while (i16 < i14) {
                        s0VarArr2[i16] = m(s0VarArr[i16], fVarB.f16311j, true);
                    }
                    i17 = 1;
                    arrayList2.add(new t0("main", s0VarArr2));
                }
                s0[] s0VarArr5 = new s0[i17];
                s0.a aVar5 = new s0.a();
                aVar5.f11695a = "ID3";
                aVar5.f11705k = "application/id3";
                s0VarArr5[0] = new s0(aVar5);
                t0 t0Var2 = new t0("main:id3", s0VarArr5);
                arrayList2.add(t0Var2);
                nVarK.F((t0[]) arrayList2.toArray(new t0[0]), arrayList2.indexOf(t0Var2));
                r21 = r22;
            }
        } else {
            r21 = r12;
            list = list6;
            list2 = list7;
            arrayList = arrayList5;
        }
        ArrayList arrayList6 = new ArrayList(list.size());
        ArrayList arrayList7 = new ArrayList(list.size());
        ArrayList arrayList8 = new ArrayList(list.size());
        HashSet hashSet2 = new HashSet();
        int i27 = 0;
        while (i27 < list.size()) {
            List<v4.f.a> list8 = list;
            String str7 = list8.get(i27).f16317c;
            if (hashSet2.add(str7)) {
                arrayList6.clear();
                arrayList7.clear();
                arrayList8.clear();
                boolean z16 = true;
                for (int i28 = 0; i28 < list8.size(); i28++) {
                    if (g0.a(str7, list8.get(i28).f16317c)) {
                        v4.f.a aVar6 = list8.get(i28);
                        arrayList8.add(Integer.valueOf(i28));
                        arrayList6.add(aVar6.f16315a);
                        arrayList7.add(aVar6.f16316b);
                        z16 &= g0.r(aVar6.f16316b.f11684p, 1) == 1;
                    }
                }
                String strC = androidx.recyclerview.widget.d.c("audio:", str7);
                int i29 = g0.f10384a;
                list3 = list8;
                hashSet = hashSet2;
                i10 = i27;
                n nVarK2 = k(strC, 1, (Uri[]) arrayList6.toArray(new Uri[0]), (s0[]) arrayList7.toArray(new s0[0]), null, Collections.emptyList(), r21, j10);
                arrayList.add(w6.a.d(arrayList8));
                arrayList4.add(nVarK2);
                if (this.f15801t && z16) {
                    nVarK2.F(new t0[]{new t0(strC, (s0[]) arrayList7.toArray(new s0[0]))}, new int[0]);
                }
            } else {
                list3 = list8;
                hashSet = hashSet2;
                i10 = i27;
            }
            i27 = i10 + 1;
            list = list3;
            hashSet2 = hashSet;
        }
        this.C = arrayList4.size();
        for (int i30 = 0; i30 < list2.size(); i30++) {
            v4.f.a aVar7 = list2.get(i30);
            StringBuilder sbC = y0.c("subtitle:", i30, ":");
            sbC.append(aVar7.f16317c);
            String string = sbC.toString();
            n nVarK3 = k(string, 3, new Uri[]{aVar7.f16315a}, new s0[]{aVar7.f16316b}, null, Collections.emptyList(), r21, j10);
            arrayList.add(new int[]{i30});
            arrayList4.add(nVarK3);
            nVarK3.F(new t0[]{new t0(string, aVar7.f16316b)}, new int[0]);
        }
        this.A = (n[]) arrayList4.toArray(new n[0]);
        this.f15806y = this.A.length;
        for (int i31 = 0; i31 < this.C; i31++) {
            this.A[i31].f15819k.f15753l = true;
        }
        for (n nVar : this.A) {
            if (!nVar.K) {
                nVar.f(nVar.W);
            }
        }
        this.B = this.A;
    }
}
