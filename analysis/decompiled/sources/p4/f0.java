package p4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import n3.w1;

/* JADX INFO: compiled from: MergingMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements v, v.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v[] f12976h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IdentityHashMap<m0, Integer> f12977i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f12978j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList<v> f12979k = new ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap<t0, t0> f12980l = new HashMap<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public v.a f12981m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public u0 f12982n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public v[] f12983o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public f.p f12984p;

    /* JADX INFO: compiled from: MergingMediaPeriod.java */
    public static final class a implements j5.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j5.l f12985a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t0 f12986b;

        public a(j5.l lVar, t0 t0Var) {
            this.f12985a = lVar;
            this.f12986b = t0Var;
        }

        @Override // j5.o
        public final int a(n3.s0 s0Var) {
            return this.f12985a.a(s0Var);
        }

        @Override // j5.l
        public final boolean b(int i10, long j10) {
            return this.f12985a.b(i10, j10);
        }

        @Override // j5.l
        public final boolean c(int i10, long j10) {
            return this.f12985a.c(i10, j10);
        }

        @Override // j5.l
        public final void d(boolean z10) {
            this.f12985a.d(z10);
        }

        @Override // j5.l
        public final void disable() {
            this.f12985a.disable();
        }

        @Override // j5.o
        public final n3.s0 e(int i10) {
            return this.f12985a.e(i10);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f12985a.equals(aVar.f12985a) && this.f12986b.equals(aVar.f12986b);
        }

        @Override // j5.l
        public final void f() {
            this.f12985a.f();
        }

        @Override // j5.l
        public final void g(long j10, long j11, long j12, List<? extends r4.m> list, r4.n[] nVarArr) {
            this.f12985a.g(j10, j11, j12, list, nVarArr);
        }

        @Override // j5.l
        public final boolean h(long j10, r4.e eVar, List<? extends r4.m> list) {
            return this.f12985a.h(j10, eVar, list);
        }

        public final int hashCode() {
            return this.f12985a.hashCode() + ((this.f12986b.hashCode() + 527) * 31);
        }

        @Override // j5.o
        public final int i(int i10) {
            return this.f12985a.i(i10);
        }

        @Override // j5.l
        public final int j(long j10, List<? extends r4.m> list) {
            return this.f12985a.j(j10, list);
        }

        @Override // j5.l
        public final int k() {
            return this.f12985a.k();
        }

        @Override // j5.o
        public final t0 l() {
            return this.f12986b;
        }

        @Override // j5.o
        public final int length() {
            return this.f12985a.length();
        }

        @Override // j5.l
        public final n3.s0 m() {
            return this.f12985a.m();
        }

        @Override // j5.l
        public final int n() {
            return this.f12985a.n();
        }

        @Override // j5.l
        public final int o() {
            return this.f12985a.o();
        }

        @Override // j5.l
        public final void p(float f10) {
            this.f12985a.p(f10);
        }

        @Override // j5.l
        public final Object q() {
            return this.f12985a.q();
        }

        @Override // j5.l
        public final void r() {
            this.f12985a.r();
        }

        @Override // j5.l
        public final void s() {
            this.f12985a.s();
        }

        @Override // j5.o
        public final int t(int i10) {
            return this.f12985a.t(i10);
        }
    }

    /* JADX INFO: compiled from: MergingMediaPeriod.java */
    public static final class b implements v, v.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final v f12987h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f12988i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public v.a f12989j;

        public b(v vVar, long j10) {
            this.f12987h = vVar;
            this.f12988i = j10;
        }

        @Override // p4.v, p4.n0
        public final boolean a() {
            return this.f12987h.a();
        }

        @Override // p4.v, p4.n0
        public final long c() {
            long jC = this.f12987h.c();
            if (jC == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f12988i + jC;
        }

        @Override // p4.v
        public final long d(long j10, w1 w1Var) {
            return this.f12987h.d(j10 - this.f12988i, w1Var) + this.f12988i;
        }

        @Override // p4.v, p4.n0
        public final long e() {
            long jE = this.f12987h.e();
            if (jE == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f12988i + jE;
        }

        @Override // p4.v, p4.n0
        public final boolean f(long j10) {
            return this.f12987h.f(j10 - this.f12988i);
        }

        @Override // p4.v, p4.n0
        public final void g(long j10) {
            this.f12987h.g(j10 - this.f12988i);
        }

        @Override // p4.v.a
        public final void i(v vVar) {
            v.a aVar = this.f12989j;
            Objects.requireNonNull(aVar);
            aVar.i(this);
        }

        @Override // p4.n0.a
        public final void j(n0 n0Var) {
            v.a aVar = this.f12989j;
            Objects.requireNonNull(aVar);
            aVar.j(this);
        }

        @Override // p4.v
        public final long l() {
            long jL = this.f12987h.l();
            if (jL == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f12988i + jL;
        }

        @Override // p4.v
        public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
            m0[] m0VarArr2 = new m0[m0VarArr.length];
            int i10 = 0;
            while (true) {
                m0 m0Var = null;
                if (i10 >= m0VarArr.length) {
                    break;
                }
                c cVar = (c) m0VarArr[i10];
                if (cVar != null) {
                    m0Var = cVar.f12990h;
                }
                m0VarArr2[i10] = m0Var;
                i10++;
            }
            long jN = this.f12987h.n(lVarArr, zArr, m0VarArr2, zArr2, j10 - this.f12988i);
            for (int i11 = 0; i11 < m0VarArr.length; i11++) {
                m0 m0Var2 = m0VarArr2[i11];
                if (m0Var2 == null) {
                    m0VarArr[i11] = null;
                } else if (m0VarArr[i11] == null || ((c) m0VarArr[i11]).f12990h != m0Var2) {
                    m0VarArr[i11] = new c(m0Var2, this.f12988i);
                }
            }
            return jN + this.f12988i;
        }

        @Override // p4.v
        public final u0 o() {
            return this.f12987h.o();
        }

        @Override // p4.v
        public final void q() throws IOException {
            this.f12987h.q();
        }

        @Override // p4.v
        public final void s(long j10, boolean z10) {
            this.f12987h.s(j10 - this.f12988i, z10);
        }

        @Override // p4.v
        public final long t(long j10) {
            return this.f12987h.t(j10 - this.f12988i) + this.f12988i;
        }

        @Override // p4.v
        public final void u(v.a aVar, long j10) {
            this.f12989j = aVar;
            this.f12987h.u(this, j10 - this.f12988i);
        }
    }

    /* JADX INFO: compiled from: MergingMediaPeriod.java */
    public static final class c implements m0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final m0 f12990h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f12991i;

        public c(m0 m0Var, long j10) {
            this.f12990h = m0Var;
            this.f12991i = j10;
        }

        @Override // p4.m0
        public final void b() throws IOException {
            this.f12990h.b();
        }

        @Override // p4.m0
        public final boolean isReady() {
            return this.f12990h.isReady();
        }

        @Override // p4.m0
        public final int j(y0.r rVar, q3.g gVar, int i10) {
            int iJ = this.f12990h.j(rVar, gVar, i10);
            if (iJ == -4) {
                gVar.f13583l = Math.max(0L, gVar.f13583l + this.f12991i);
            }
            return iJ;
        }

        @Override // p4.m0
        public final int p(long j10) {
            return this.f12990h.p(j10 - this.f12991i);
        }
    }

    public f0(h hVar, long[] jArr, v... vVarArr) {
        this.f12978j = hVar;
        this.f12976h = vVarArr;
        Objects.requireNonNull(hVar);
        this.f12984p = new f.p(new n0[0]);
        this.f12977i = new IdentityHashMap<>();
        this.f12983o = new v[0];
        for (int i10 = 0; i10 < vVarArr.length; i10++) {
            if (jArr[i10] != 0) {
                this.f12976h[i10] = new b(vVarArr[i10], jArr[i10]);
            }
        }
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return this.f12984p.a();
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return this.f12984p.c();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        v[] vVarArr = this.f12983o;
        return (vVarArr.length > 0 ? vVarArr[0] : this.f12976h[0]).d(j10, w1Var);
    }

    @Override // p4.v, p4.n0
    public final long e() {
        return this.f12984p.e();
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        if (this.f12979k.isEmpty()) {
            return this.f12984p.f(j10);
        }
        int size = this.f12979k.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f12979k.get(i10).f(j10);
        }
        return false;
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
        this.f12984p.g(j10);
    }

    @Override // p4.v.a
    public final void i(v vVar) {
        this.f12979k.remove(vVar);
        if (!this.f12979k.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (v vVar2 : this.f12976h) {
            i10 += vVar2.o().f13235h;
        }
        t0[] t0VarArr = new t0[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            v[] vVarArr = this.f12976h;
            if (i11 >= vVarArr.length) {
                this.f12982n = new u0(t0VarArr);
                v.a aVar = this.f12981m;
                Objects.requireNonNull(aVar);
                aVar.i(this);
                return;
            }
            u0 u0VarO = vVarArr[i11].o();
            int i13 = u0VarO.f13235h;
            int i14 = 0;
            while (i14 < i13) {
                t0 t0VarB = u0VarO.b(i14);
                t0 t0Var = new t0(i11 + ":" + t0VarB.f13222i, t0VarB.f13224k);
                this.f12980l.put(t0Var, t0VarB);
                t0VarArr[i12] = t0Var;
                i14++;
                i12++;
            }
            i11++;
        }
    }

    @Override // p4.n0.a
    public final void j(n0 n0Var) {
        v.a aVar = this.f12981m;
        Objects.requireNonNull(aVar);
        aVar.j(this);
    }

    @Override // p4.v
    public final long l() {
        long j10 = -9223372036854775807L;
        for (v vVar : this.f12983o) {
            long jL = vVar.l();
            if (jL == -9223372036854775807L) {
                if (j10 != -9223372036854775807L && vVar.t(j10) != j10) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j10 == -9223372036854775807L) {
                for (v vVar2 : this.f12983o) {
                    if (vVar2 == vVar) {
                        break;
                    }
                    if (vVar2.t(jL) != jL) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j10 = jL;
            } else if (jL != j10) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        Integer num;
        int[] iArr = new int[lVarArr.length];
        int[] iArr2 = new int[lVarArr.length];
        int i10 = 0;
        while (true) {
            num = null;
            if (i10 >= lVarArr.length) {
                break;
            }
            num = m0VarArr[i10] != null ? this.f12977i.get(m0VarArr[i10]) : null;
            iArr[i10] = num == null ? -1 : num.intValue();
            iArr2[i10] = -1;
            if (lVarArr[i10] != null) {
                t0 t0Var = this.f12980l.get(lVarArr[i10].l());
                Objects.requireNonNull(t0Var);
                int i11 = 0;
                while (true) {
                    v[] vVarArr = this.f12976h;
                    if (i11 >= vVarArr.length) {
                        break;
                    }
                    if (vVarArr[i11].o().c(t0Var) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
            i10++;
        }
        this.f12977i.clear();
        int length = lVarArr.length;
        m0[] m0VarArr2 = new m0[length];
        m0[] m0VarArr3 = new m0[lVarArr.length];
        Object[] objArr = new j5.l[lVarArr.length];
        ArrayList arrayList = new ArrayList(this.f12976h.length);
        long j11 = j10;
        int i12 = 0;
        while (i12 < this.f12976h.length) {
            for (int i13 = 0; i13 < lVarArr.length; i13++) {
                m0VarArr3[i13] = iArr[i13] == i12 ? m0VarArr[i13] : num;
                if (iArr2[i13] == i12) {
                    j5.l lVar = lVarArr[i13];
                    Objects.requireNonNull(lVar);
                    t0 t0Var2 = this.f12980l.get(lVar.l());
                    Objects.requireNonNull(t0Var2);
                    objArr[i13] = new a(lVar, t0Var2);
                } else {
                    objArr[i13] = num;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jN = this.f12976h[i12].n(objArr, zArr, m0VarArr3, zArr2, j11);
            if (i14 == 0) {
                j11 = jN;
            } else if (jN != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i15 = 0; i15 < lVarArr.length; i15++) {
                if (iArr2[i15] == i14) {
                    Object[] objArr3 = m0VarArr3[i15];
                    Objects.requireNonNull(objArr3);
                    m0VarArr2[i15] = m0VarArr3[i15];
                    this.f12977i.put((m0) objArr3, Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i15] == i14) {
                    m5.a.e(m0VarArr3[i15] == 0);
                }
            }
            if (z10) {
                arrayList2.add(this.f12976h[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            num = null;
        }
        System.arraycopy(m0VarArr2, 0, m0VarArr, 0, length);
        v[] vVarArr2 = (v[]) arrayList.toArray(new v[0]);
        this.f12983o = vVarArr2;
        Objects.requireNonNull(this.f12978j);
        this.f12984p = new f.p(vVarArr2);
        return j11;
    }

    @Override // p4.v
    public final u0 o() {
        u0 u0Var = this.f12982n;
        Objects.requireNonNull(u0Var);
        return u0Var;
    }

    @Override // p4.v
    public final void q() throws IOException {
        for (v vVar : this.f12976h) {
            vVar.q();
        }
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        for (v vVar : this.f12983o) {
            vVar.s(j10, z10);
        }
    }

    @Override // p4.v
    public final long t(long j10) {
        long jT = this.f12983o[0].t(j10);
        int i10 = 1;
        while (true) {
            v[] vVarArr = this.f12983o;
            if (i10 >= vVarArr.length) {
                return jT;
            }
            if (vVarArr[i10].t(jT) != jT) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f12981m = aVar;
        Collections.addAll(this.f12979k, this.f12976h);
        for (v vVar : this.f12976h) {
            vVar.u(this, j10);
        }
    }
}
