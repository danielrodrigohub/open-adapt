package com.google.android.exoplayer2.source.dash;

import a4.e;
import android.os.SystemClock;
import j5.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import l5.c0;
import l5.e0;
import l5.j;
import l5.j0;
import l5.z;
import m5.g0;
import m5.s;
import n3.s0;
import n3.t0;
import n3.w1;
import o3.v0;
import r4.f;
import r4.g;
import r4.m;
import r4.n;
import r4.o;
import s3.h;
import s3.u;
import t4.i;
import u6.v;

/* JADX INFO: compiled from: DefaultDashChunkSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements com.google.android.exoplayer2.source.dash.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f4585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s4.b f4586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f4587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final j f4589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f4590f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4591g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d.c f4592h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b[] f4593i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public l f4594j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public t4.c f4595k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4596l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public p4.b f4597m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4598n;

    /* JADX INFO: compiled from: DefaultDashChunkSource.java */
    public static final class a implements com.google.android.exoplayer2.source.dash.a.InterfaceC0080a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j.a f4599a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f.a f4601c = r4.d.f14540q;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f4600b = 1;

        public a(j.a aVar) {
            this.f4599a = aVar;
        }

        @Override // com.google.android.exoplayer2.source.dash.a.InterfaceC0080a
        public final com.google.android.exoplayer2.source.dash.a a(e0 e0Var, t4.c cVar, s4.b bVar, int i10, int[] iArr, l lVar, int i11, long j10, boolean z10, List<s0> list, d.c cVar2, j0 j0Var, v0 v0Var) {
            j jVarA = this.f4599a.a();
            if (j0Var != null) {
                jVarA.j(j0Var);
            }
            return new c(this.f4601c, e0Var, cVar, bVar, i10, iArr, lVar, i11, jVarA, j10, this.f4600b, z10, list, cVar2);
        }
    }

    /* JADX INFO: compiled from: DefaultDashChunkSource.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f f4602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t4.j f4603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final t4.b f4604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final s4.d f4605d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f4606e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f4607f;

        public b(long j10, t4.j jVar, t4.b bVar, f fVar, long j11, s4.d dVar) {
            this.f4606e = j10;
            this.f4603b = jVar;
            this.f4604c = bVar;
            this.f4607f = j11;
            this.f4602a = fVar;
            this.f4605d = dVar;
        }

        public final b a(long j10, t4.j jVar) throws p4.b {
            long jD;
            long jD2;
            s4.d dVarB = this.f4603b.b();
            s4.d dVarB2 = jVar.b();
            if (dVarB == null) {
                return new b(j10, jVar, this.f4604c, this.f4602a, this.f4607f, dVarB);
            }
            if (!dVarB.i()) {
                return new b(j10, jVar, this.f4604c, this.f4602a, this.f4607f, dVarB2);
            }
            long jK = dVarB.k(j10);
            if (jK == 0) {
                return new b(j10, jVar, this.f4604c, this.f4602a, this.f4607f, dVarB2);
            }
            long j11 = dVarB.j();
            long jC = dVarB.c(j11);
            long j12 = (jK + j11) - 1;
            long jE = dVarB.e(j12, j10) + dVarB.c(j12);
            long j13 = dVarB2.j();
            long jC2 = dVarB2.c(j13);
            long j14 = this.f4607f;
            if (jE != jC2) {
                if (jE < jC2) {
                    throw new p4.b();
                }
                if (jC2 < jC) {
                    jD2 = j14 - (dVarB2.d(jC, j10) - j11);
                } else {
                    jD = dVarB.d(jC2, j10);
                }
                return new b(j10, jVar, this.f4604c, this.f4602a, jD2, dVarB2);
            }
            jD = j12 + 1;
            jD2 = (jD - j13) + j14;
            return new b(j10, jVar, this.f4604c, this.f4602a, jD2, dVarB2);
        }

        public final long b(long j10) {
            return this.f4605d.f(this.f4606e, j10) + this.f4607f;
        }

        public final long c(long j10) {
            return (this.f4605d.l(this.f4606e, j10) + b(j10)) - 1;
        }

        public final long d() {
            return this.f4605d.k(this.f4606e);
        }

        public final long e(long j10) {
            return this.f4605d.e(j10 - this.f4607f, this.f4606e) + f(j10);
        }

        public final long f(long j10) {
            return this.f4605d.c(j10 - this.f4607f);
        }

        public final boolean g(long j10, long j11) {
            return this.f4605d.i() || j11 == -9223372036854775807L || e(j10) <= j11;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.dash.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultDashChunkSource.java */
    public static final class C0081c extends r4.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final b f4608e;

        public C0081c(b bVar, long j10, long j11) {
            super(j10, j11);
            this.f4608e = bVar;
        }

        @Override // r4.n
        public final long a() {
            c();
            return this.f4608e.e(this.f14537d);
        }

        @Override // r4.n
        public final long b() {
            c();
            return this.f4608e.f(this.f14537d);
        }
    }

    public c(f.a aVar, e0 e0Var, t4.c cVar, s4.b bVar, int i10, int[] iArr, l lVar, int i11, j jVar, long j10, int i12, boolean z10, List list, d.c cVar2) {
        h eVar;
        r4.d dVar;
        this.f4585a = e0Var;
        this.f4595k = cVar;
        this.f4586b = bVar;
        this.f4587c = iArr;
        this.f4594j = lVar;
        this.f4588d = i11;
        this.f4589e = jVar;
        this.f4596l = i10;
        this.f4590f = j10;
        this.f4591g = i12;
        this.f4592h = cVar2;
        long jE = cVar.e(i10);
        ArrayList<t4.j> arrayListM = m();
        this.f4593i = new b[lVar.length()];
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f4593i.length) {
            t4.j jVar2 = arrayListM.get(lVar.i(i14));
            t4.b bVarD = bVar.d(jVar2.f15490b);
            b[] bVarArr = this.f4593i;
            t4.b bVar2 = bVarD == null ? jVar2.f15490b.get(i13) : bVarD;
            s0 s0Var = jVar2.f15489a;
            Objects.requireNonNull((t0) aVar);
            t0 t0Var = r4.d.f14540q;
            String str = s0Var.f11686r;
            if (s.m(str)) {
                dVar = null;
            } else {
                if (((str != null && (str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm") || str.startsWith("video/x-matroska") || str.startsWith("audio/x-matroska") || str.startsWith("application/x-matroska"))) ? 1 : i13) != 0) {
                    eVar = new y3.d(1);
                } else {
                    eVar = new e(z10 ? 4 : i13, null, null, list, cVar2);
                }
                dVar = new r4.d(eVar, i11, s0Var);
            }
            int i15 = i14;
            bVarArr[i15] = new b(jE, jVar2, bVar2, dVar, 0L, jVar2.b());
            i14 = i15 + 1;
            i13 = 0;
        }
    }

    @Override // r4.i
    public final void a() {
        for (b bVar : this.f4593i) {
            f fVar = bVar.f4602a;
            if (fVar != null) {
                ((r4.d) fVar).f14542h.a();
            }
        }
    }

    @Override // r4.i
    public final void b() throws IOException {
        p4.b bVar = this.f4597m;
        if (bVar != null) {
            throw bVar;
        }
        this.f4585a.b();
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public final void c(l lVar) {
        this.f4594j = lVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0046  */
    @Override // r4.i
    public final long d(long j10, w1 w1Var) {
        long jF;
        long j11;
        for (b bVar : this.f4593i) {
            s4.d dVar = bVar.f4605d;
            if (dVar != null) {
                long jD = dVar.d(j10, bVar.f4606e) + bVar.f4607f;
                long jF2 = bVar.f(jD);
                long jD2 = bVar.d();
                if (jF2 >= j10) {
                    jF = jF2;
                } else {
                    if (jD2 != -1) {
                        long j12 = bVar.f4605d.j() + bVar.f4607f + jD2;
                        j11 = 1;
                        if (jD >= j12 - 1) {
                            jF = jF2;
                        }
                    } else {
                        j11 = 1;
                    }
                    jF = bVar.f(jD + j11);
                }
                return w1Var.a(j10, jF2, jF);
            }
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public final void f(t4.c cVar, int i10) {
        try {
            this.f4595k = cVar;
            this.f4596l = i10;
            long jE = cVar.e(i10);
            ArrayList<t4.j> arrayListM = m();
            for (int i11 = 0; i11 < this.f4593i.length; i11++) {
                t4.j jVar = arrayListM.get(this.f4594j.i(i11));
                b[] bVarArr = this.f4593i;
                bVarArr[i11] = bVarArr[i11].a(jE, jVar);
            }
        } catch (p4.b e10) {
            this.f4597m = e10;
        }
    }

    @Override // r4.i
    public final boolean g(long j10, r4.e eVar, List<? extends m> list) {
        if (this.f4597m != null) {
            return false;
        }
        return this.f4594j.h(j10, eVar, list);
    }

    @Override // r4.i
    public final int h(long j10, List<? extends m> list) {
        return (this.f4597m != null || this.f4594j.length() < 2) ? list.size() : this.f4594j.j(j10, list);
    }

    @Override // r4.i
    public final void i(long j10, long j11, List<? extends m> list, g gVar) {
        r4.e jVar;
        g gVar2;
        int i10;
        n[] nVarArr;
        int i11;
        long j12;
        long j13;
        boolean z10;
        if (this.f4597m != null) {
            return;
        }
        long j14 = j11 - j10;
        long jL = g0.L(this.f4595k.b(this.f4596l).f15477b) + g0.L(this.f4595k.f15442a) + j11;
        d.c cVar = this.f4592h;
        if (cVar != null) {
            d dVar = d.this;
            t4.c cVar2 = dVar.f4614m;
            if (!cVar2.f15445d) {
                z10 = false;
            } else if (dVar.f4616o) {
                z10 = true;
            } else {
                Map.Entry<Long, Long> entryCeilingEntry = dVar.f4613l.ceilingEntry(Long.valueOf(cVar2.f15449h));
                if (entryCeilingEntry == null || entryCeilingEntry.getValue().longValue() >= jL) {
                    z10 = false;
                } else {
                    long jLongValue = entryCeilingEntry.getKey().longValue();
                    DashMediaSource dashMediaSource = DashMediaSource.this;
                    long j15 = dashMediaSource.U;
                    if (j15 == -9223372036854775807L || j15 < jLongValue) {
                        dashMediaSource.U = jLongValue;
                    }
                    z10 = true;
                }
                if (z10) {
                    dVar.a();
                }
            }
            if (z10) {
                return;
            }
        }
        long jL2 = g0.L(g0.x(this.f4590f));
        long jL3 = l(jL2);
        m mVar = list.isEmpty() ? null : list.get(list.size() - 1);
        int length = this.f4594j.length();
        n[] nVarArr2 = new n[length];
        int i12 = 0;
        while (i12 < length) {
            b bVar = this.f4593i[i12];
            if (bVar.f4605d == null) {
                nVarArr2[i12] = n.f14606a;
                i10 = i12;
                nVarArr = nVarArr2;
                i11 = length;
                j12 = jL3;
                j13 = jL2;
            } else {
                long jB = bVar.b(jL2);
                long jC = bVar.c(jL2);
                i10 = i12;
                nVarArr = nVarArr2;
                i11 = length;
                j12 = jL3;
                j13 = jL2;
                long jN = n(bVar, mVar, j11, jB, jC);
                if (jN < jB) {
                    nVarArr[i10] = n.f14606a;
                } else {
                    nVarArr[i10] = new C0081c(o(i10), jN, jC);
                }
            }
            i12 = i10 + 1;
            jL2 = j13;
            nVarArr2 = nVarArr;
            length = i11;
            jL3 = j12;
        }
        long j16 = jL3;
        long j17 = jL2;
        this.f4594j.g(j10, j14, !this.f4595k.f15445d ? -9223372036854775807L : Math.max(0L, Math.min(l(j17), this.f4593i[0].e(this.f4593i[0].c(j17))) - j10), list, nVarArr2);
        b bVarO = o(this.f4594j.o());
        f fVar = bVarO.f4602a;
        if (fVar != null) {
            t4.j jVar2 = bVarO.f4603b;
            i iVar = ((r4.d) fVar).f14550p == null ? jVar2.f15495g : null;
            i iVarM = bVarO.f4605d == null ? jVar2.m() : null;
            if (iVar != null || iVarM != null) {
                j jVar3 = this.f4589e;
                s0 s0VarM = this.f4594j.m();
                int iN = this.f4594j.n();
                Object objQ = this.f4594j.q();
                t4.j jVar4 = bVarO.f4603b;
                if (iVar == null || (iVarM = iVar.a(iVarM, bVarO.f4604c.f15438a)) != null) {
                    iVar = iVarM;
                }
                gVar.f14567a = new r4.l(jVar3, s4.e.a(jVar4, bVarO.f4604c.f15438a, iVar, 0), s0VarM, iN, objQ, bVarO.f4602a);
                return;
            }
        }
        long j18 = bVarO.f4606e;
        boolean z11 = j18 != -9223372036854775807L;
        if (bVarO.d() == 0) {
            gVar.f14568b = z11;
            return;
        }
        long jB2 = bVarO.b(j17);
        long jC2 = bVarO.c(j17);
        boolean z12 = z11;
        long jN2 = n(bVarO, mVar, j11, jB2, jC2);
        if (jN2 < jB2) {
            this.f4597m = new p4.b();
            return;
        }
        if (jN2 > jC2 || (this.f4598n && jN2 >= jC2)) {
            gVar.f14568b = z12;
            return;
        }
        if (z12 && bVarO.f(jN2) >= j18) {
            gVar.f14568b = true;
            return;
        }
        int iMin = (int) Math.min(this.f4591g, (jC2 - jN2) + 1);
        int i13 = 1;
        if (j18 != -9223372036854775807L) {
            while (iMin > 1 && bVarO.f((((long) iMin) + jN2) - 1) >= j18) {
                iMin--;
            }
        }
        long j19 = list.isEmpty() ? j11 : -9223372036854775807L;
        j jVar5 = this.f4589e;
        int i14 = this.f4588d;
        s0 s0VarM2 = this.f4594j.m();
        int iN2 = this.f4594j.n();
        Object objQ2 = this.f4594j.q();
        t4.j jVar6 = bVarO.f4603b;
        long jF = bVarO.f(jN2);
        i iVarH = bVarO.f4605d.h(jN2 - bVarO.f4607f);
        if (bVarO.f4602a == null) {
            jVar = new o(jVar5, s4.e.a(jVar6, bVarO.f4604c.f15438a, iVarH, bVarO.g(jN2, j16) ? 0 : 8), s0VarM2, iN2, objQ2, jF, bVarO.e(jN2), jN2, i14, s0VarM2);
            gVar2 = gVar;
        } else {
            int i15 = 1;
            while (i13 < iMin) {
                int i16 = iMin;
                i iVarA = iVarH.a(bVarO.f4605d.h((((long) i13) + jN2) - bVarO.f4607f), bVarO.f4604c.f15438a);
                if (iVarA == null) {
                    break;
                }
                i15++;
                i13++;
                iVarH = iVarA;
                iMin = i16;
            }
            long j20 = (((long) i15) + jN2) - 1;
            long jE = bVarO.e(j20);
            long j21 = bVarO.f4606e;
            jVar = new r4.j(jVar5, s4.e.a(jVar6, bVarO.f4604c.f15438a, iVarH, bVarO.g(j20, j16) ? 0 : 8), s0VarM2, iN2, objQ2, jF, jE, j19, (j21 == -9223372036854775807L || j21 > jE) ? -9223372036854775807L : j21, jN2, i15, -jVar6.f15491c, bVarO.f4602a);
            gVar2 = gVar;
        }
        gVar2.f14567a = jVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0032  */
    @Override // r4.i
    public final boolean j(r4.e eVar, boolean z10, c0.c cVar, c0 c0Var) {
        c0.b bVarA;
        boolean z11;
        if (!z10) {
            return false;
        }
        d.c cVar2 = this.f4592h;
        if (cVar2 != null) {
            long j10 = cVar2.f4623d;
            boolean z12 = j10 != -9223372036854775807L && j10 < eVar.f14564g;
            d dVar = d.this;
            if (dVar.f4614m.f15445d) {
                if (!dVar.f4616o) {
                    if (z12) {
                        dVar.a();
                    } else {
                        z11 = false;
                    }
                }
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                return true;
            }
        }
        if (!this.f4595k.f15445d && (eVar instanceof m)) {
            IOException iOException = cVar.f9983a;
            if ((iOException instanceof z) && ((z) iOException).f10153k == 404) {
                b bVar = this.f4593i[this.f4594j.a(eVar.f14561d)];
                long jD = bVar.d();
                if (jD != -1 && jD != 0) {
                    if (((m) eVar).c() > ((bVar.f4605d.j() + bVar.f4607f) + jD) - 1) {
                        this.f4598n = true;
                        return true;
                    }
                }
            }
        }
        b bVar2 = this.f4593i[this.f4594j.a(eVar.f14561d)];
        t4.b bVarD = this.f4586b.d(bVar2.f4603b.f15490b);
        if (bVarD != null && !bVar2.f4604c.equals(bVarD)) {
            return true;
        }
        l lVar = this.f4594j;
        v<t4.b> vVar = bVar2.f4603b.f15490b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = lVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (lVar.c(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        HashSet hashSet = new HashSet();
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            hashSet.add(Integer.valueOf(vVar.get(i12).f15440c));
        }
        int size = hashSet.size();
        s4.b bVar3 = this.f4586b;
        Objects.requireNonNull(bVar3);
        HashSet hashSet2 = new HashSet();
        List<t4.b> listB = bVar3.b(vVar);
        int i13 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) listB;
            if (i13 >= arrayList.size()) {
                break;
            }
            hashSet2.add(Integer.valueOf(((t4.b) arrayList.get(i13)).f15440c));
            i13++;
        }
        c0.a aVar = new c0.a(size, size - hashSet2.size(), length, i10);
        if ((!aVar.a(2) && !aVar.a(1)) || (bVarA = c0Var.a(aVar, cVar)) == null || !aVar.a(bVarA.f9981a)) {
            return false;
        }
        int i14 = bVarA.f9981a;
        if (i14 == 2) {
            l lVar2 = this.f4594j;
            return lVar2.b(lVar2.a(eVar.f14561d), bVarA.f9982b);
        }
        if (i14 != 1) {
            return false;
        }
        s4.b bVar4 = this.f4586b;
        t4.b bVar5 = bVar2.f4604c;
        long j11 = bVarA.f9982b;
        Objects.requireNonNull(bVar4);
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() + j11;
        s4.b.a(bVar5.f15439b, jElapsedRealtime2, bVar4.f15113a);
        int i15 = bVar5.f15440c;
        if (i15 != Integer.MIN_VALUE) {
            s4.b.a(Integer.valueOf(i15), jElapsedRealtime2, bVar4.f15114b);
        }
        return true;
    }

    @Override // r4.i
    public final void k(r4.e eVar) {
        if (eVar instanceof r4.l) {
            int iA = this.f4594j.a(((r4.l) eVar).f14561d);
            b[] bVarArr = this.f4593i;
            b bVar = bVarArr[iA];
            if (bVar.f4605d == null) {
                f fVar = bVar.f4602a;
                u uVar = ((r4.d) fVar).f14549o;
                s3.c cVar = uVar instanceof s3.c ? (s3.c) uVar : null;
                if (cVar != null) {
                    t4.j jVar = bVar.f4603b;
                    bVarArr[iA] = new b(bVar.f4606e, jVar, bVar.f4604c, fVar, bVar.f4607f, new s4.f(cVar, jVar.f15491c));
                }
            }
        }
        d.c cVar2 = this.f4592h;
        if (cVar2 != null) {
            long j10 = cVar2.f4623d;
            if (j10 == -9223372036854775807L || eVar.f14565h > j10) {
                cVar2.f4623d = eVar.f14565h;
            }
            d.this.f4615n = true;
        }
    }

    public final long l(long j10) {
        t4.c cVar = this.f4595k;
        long j11 = cVar.f15442a;
        if (j11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j10 - g0.L(j11 + cVar.b(this.f4596l).f15477b);
    }

    public final ArrayList<t4.j> m() {
        List<t4.a> list = this.f4595k.b(this.f4596l).f15478c;
        ArrayList<t4.j> arrayList = new ArrayList<>();
        for (int i10 : this.f4587c) {
            arrayList.addAll(list.get(i10).f15434c);
        }
        return arrayList;
    }

    public final long n(b bVar, m mVar, long j10, long j11, long j12) {
        return mVar != null ? mVar.c() : g0.j(bVar.f4605d.d(j10, bVar.f4606e) + bVar.f4607f, j11, j12);
    }

    public final b o(int i10) {
        b bVar = this.f4593i[i10];
        t4.b bVarD = this.f4586b.d(bVar.f4603b.f15490b);
        if (bVarD == null || bVarD.equals(bVar.f4604c)) {
            return bVar;
        }
        b bVar2 = new b(bVar.f4606e, bVar.f4603b, bVarD, bVar.f4602a, bVar.f4607f, bVar.f4605d);
        this.f4593i[i10] = bVar2;
        return bVar2;
    }
}
