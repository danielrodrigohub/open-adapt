package p4;

import java.io.IOException;
import java.util.Objects;
import n3.w1;

/* JADX INFO: compiled from: ClippingMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements v, v.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v f12939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public v.a f12940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a[] f12941j = new a[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f12942k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f12943l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f12944m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public e.b f12945n;

    /* JADX INFO: compiled from: ClippingMediaPeriod.java */
    public final class a implements m0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final m0 f12946h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f12947i;

        public a(m0 m0Var) {
            this.f12946h = m0Var;
        }

        @Override // p4.m0
        public final void b() throws IOException {
            this.f12946h.b();
        }

        @Override // p4.m0
        public final boolean isReady() {
            return !d.this.b() && this.f12946h.isReady();
        }

        @Override // p4.m0
        public final int j(y0.r rVar, q3.g gVar, int i10) {
            if (d.this.b()) {
                return -3;
            }
            if (this.f12947i) {
                gVar.f13555h = 4;
                return -4;
            }
            int iJ = this.f12946h.j(rVar, gVar, i10);
            if (iJ != -5) {
                d dVar = d.this;
                long j10 = dVar.f12944m;
                if (j10 == Long.MIN_VALUE || ((iJ != -4 || gVar.f13583l < j10) && !(iJ == -3 && dVar.e() == Long.MIN_VALUE && !gVar.f13582k))) {
                    return iJ;
                }
                gVar.o();
                gVar.f13555h = 4;
                this.f12947i = true;
                return -4;
            }
            n3.s0 s0Var = (n3.s0) rVar.f18272c;
            Objects.requireNonNull(s0Var);
            int i11 = s0Var.I;
            if (i11 != 0 || s0Var.J != 0) {
                d dVar2 = d.this;
                if (dVar2.f12943l != 0) {
                    i11 = 0;
                }
                int i12 = dVar2.f12944m == Long.MIN_VALUE ? s0Var.J : 0;
                n3.s0.a aVarB = s0Var.b();
                aVarB.A = i11;
                aVarB.B = i12;
                rVar.f18272c = aVarB.a();
            }
            return -5;
        }

        @Override // p4.m0
        public final int p(long j10) {
            if (d.this.b()) {
                return -3;
            }
            return this.f12946h.p(j10);
        }
    }

    public d(v vVar, boolean z10, long j10, long j11) {
        this.f12939h = vVar;
        this.f12942k = z10 ? j10 : -9223372036854775807L;
        this.f12943l = j10;
        this.f12944m = j11;
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return this.f12939h.a();
    }

    public final boolean b() {
        return this.f12942k != -9223372036854775807L;
    }

    @Override // p4.v, p4.n0
    public final long c() {
        long jC = this.f12939h.c();
        if (jC != Long.MIN_VALUE) {
            long j10 = this.f12944m;
            if (j10 == Long.MIN_VALUE || jC < j10) {
                return jC;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        long j11 = this.f12943l;
        if (j10 == j11) {
            return j11;
        }
        long j12 = m5.g0.j(w1Var.f11738a, 0L, j10 - j11);
        long j13 = w1Var.f11739b;
        long j14 = this.f12944m;
        long j15 = m5.g0.j(j13, 0L, j14 == Long.MIN_VALUE ? Long.MAX_VALUE : j14 - j10);
        if (j12 != w1Var.f11738a || j15 != w1Var.f11739b) {
            w1Var = new w1(j12, j15);
        }
        return this.f12939h.d(j10, w1Var);
    }

    @Override // p4.v, p4.n0
    public final long e() {
        long jE = this.f12939h.e();
        if (jE != Long.MIN_VALUE) {
            long j10 = this.f12944m;
            if (j10 == Long.MIN_VALUE || jE < j10) {
                return jE;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        return this.f12939h.f(j10);
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
        this.f12939h.g(j10);
    }

    @Override // p4.v.a
    public final void i(v vVar) {
        if (this.f12945n != null) {
            return;
        }
        v.a aVar = this.f12940i;
        Objects.requireNonNull(aVar);
        aVar.i(this);
    }

    @Override // p4.n0.a
    public final void j(n0 n0Var) {
        v.a aVar = this.f12940i;
        Objects.requireNonNull(aVar);
        aVar.j(this);
    }

    @Override // p4.v
    public final long l() {
        if (b()) {
            long j10 = this.f12942k;
            this.f12942k = -9223372036854775807L;
            long jL = l();
            return jL != -9223372036854775807L ? jL : j10;
        }
        long jL2 = this.f12939h.l();
        if (jL2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z10 = true;
        m5.a.e(jL2 >= this.f12943l);
        long j11 = this.f12944m;
        if (j11 != Long.MIN_VALUE && jL2 > j11) {
            z10 = false;
        }
        m5.a.e(z10);
        return jL2;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        long j11;
        boolean z10;
        this.f12941j = new a[m0VarArr.length];
        m0[] m0VarArr2 = new m0[m0VarArr.length];
        int i10 = 0;
        while (true) {
            m0 m0Var = null;
            if (i10 >= m0VarArr.length) {
                break;
            }
            a[] aVarArr = this.f12941j;
            aVarArr[i10] = (a) m0VarArr[i10];
            if (aVarArr[i10] != null) {
                m0Var = aVarArr[i10].f12946h;
            }
            m0VarArr2[i10] = m0Var;
            i10++;
        }
        long jN = this.f12939h.n(lVarArr, zArr, m0VarArr2, zArr2, j10);
        boolean z11 = true;
        if (b()) {
            long j12 = this.f12943l;
            if (j10 != j12) {
                j11 = -9223372036854775807L;
            } else {
                if (j12 == 0) {
                    z10 = false;
                    break;
                }
                int length = lVarArr.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        z10 = false;
                        break;
                    }
                    j5.l lVar = lVarArr[i11];
                    if (lVar != null) {
                        n3.s0 s0VarM = lVar.m();
                        if (!m5.s.a(s0VarM.f11687s, s0VarM.f11684p)) {
                            z10 = true;
                            break;
                        }
                    }
                    i11++;
                }
                if (z10) {
                    j11 = jN;
                } else {
                    j11 = -9223372036854775807L;
                }
            }
        } else {
            j11 = -9223372036854775807L;
        }
        this.f12942k = j11;
        if (jN != j10) {
            if (jN >= this.f12943l) {
                long j13 = this.f12944m;
                if (j13 != Long.MIN_VALUE && jN > j13) {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
        }
        m5.a.e(z11);
        for (int i12 = 0; i12 < m0VarArr.length; i12++) {
            if (m0VarArr2[i12] == null) {
                this.f12941j[i12] = null;
            } else {
                a[] aVarArr2 = this.f12941j;
                if (aVarArr2[i12] == null || aVarArr2[i12].f12946h != m0VarArr2[i12]) {
                    aVarArr2[i12] = new a(m0VarArr2[i12]);
                }
            }
            m0VarArr[i12] = this.f12941j[i12];
        }
        return jN;
    }

    @Override // p4.v
    public final u0 o() {
        return this.f12939h.o();
    }

    @Override // p4.v
    public final void q() throws IOException {
        e.b bVar = this.f12945n;
        if (bVar != null) {
            throw bVar;
        }
        this.f12939h.q();
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        this.f12939h.s(j10, z10);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    @Override // p4.v
    public final long t(long j10) {
        this.f12942k = -9223372036854775807L;
        boolean z10 = false;
        for (a aVar : this.f12941j) {
            if (aVar != null) {
                aVar.f12947i = false;
            }
        }
        long jT = this.f12939h.t(j10);
        if (jT == j10) {
            z10 = true;
        } else if (jT >= this.f12943l) {
            long j11 = this.f12944m;
            if (j11 == Long.MIN_VALUE || jT <= j11) {
                z10 = true;
            }
        }
        m5.a.e(z10);
        return jT;
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f12940i = aVar;
        this.f12939h.u(this, j10);
    }
}
