package p4;

import java.io.IOException;
import java.util.Objects;
import n3.w1;

/* JADX INFO: compiled from: MaskingMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class s implements v, v.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final x.b f13195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f13196i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l5.b f13197j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public x f13198k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public v f13199l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public v.a f13200m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f13201n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f13202o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f13203p = -9223372036854775807L;

    /* JADX INFO: compiled from: MaskingMediaPeriod.java */
    public interface a {
    }

    public s(x.b bVar, l5.b bVar2, long j10) {
        this.f13195h = bVar;
        this.f13197j = bVar2;
        this.f13196i = j10;
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        v vVar = this.f13199l;
        return vVar != null && vVar.a();
    }

    public final void b(x.b bVar) {
        long j10 = this.f13196i;
        long j11 = this.f13203p;
        if (j11 != -9223372036854775807L) {
            j10 = j11;
        }
        x xVar = this.f13198k;
        Objects.requireNonNull(xVar);
        v vVarQ = xVar.q(bVar, this.f13197j, j10);
        this.f13199l = vVarQ;
        if (this.f13200m != null) {
            vVarQ.u(this, j10);
        }
    }

    @Override // p4.v, p4.n0
    public final long c() {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.c();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.d(j10, w1Var);
    }

    @Override // p4.v, p4.n0
    public final long e() {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.e();
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        v vVar = this.f13199l;
        return vVar != null && vVar.f(j10);
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        vVar.g(j10);
    }

    public final void h() {
        if (this.f13199l != null) {
            x xVar = this.f13198k;
            Objects.requireNonNull(xVar);
            xVar.d(this.f13199l);
        }
    }

    @Override // p4.v.a
    public final void i(v vVar) {
        v.a aVar = this.f13200m;
        int i10 = m5.g0.f10384a;
        aVar.i(this);
        if (this.f13201n != null) {
            throw null;
        }
    }

    @Override // p4.n0.a
    public final void j(n0 n0Var) {
        v.a aVar = this.f13200m;
        int i10 = m5.g0.f10384a;
        aVar.j(this);
    }

    public final void k(x xVar) {
        m5.a.e(this.f13198k == null);
        this.f13198k = xVar;
    }

    @Override // p4.v
    public final long l() {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.l();
    }

    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f13203p;
        if (j12 == -9223372036854775807L || j10 != this.f13196i) {
            j11 = j10;
        } else {
            this.f13203p = -9223372036854775807L;
            j11 = j12;
        }
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.n(lVarArr, zArr, m0VarArr, zArr2, j11);
    }

    @Override // p4.v
    public final u0 o() {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.o();
    }

    @Override // p4.v
    public final void q() throws IOException {
        try {
            v vVar = this.f13199l;
            if (vVar != null) {
                vVar.q();
            } else {
                x xVar = this.f13198k;
                if (xVar != null) {
                    xVar.b();
                }
            }
        } catch (IOException e10) {
            a aVar = this.f13201n;
            if (aVar == null) {
                throw e10;
            }
            if (this.f13202o) {
                return;
            }
            this.f13202o = true;
            Objects.requireNonNull((q4.b.a) aVar);
            x.b bVar = q4.b.f13623r;
            throw null;
        }
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        vVar.s(j10, z10);
    }

    @Override // p4.v
    public final long t(long j10) {
        v vVar = this.f13199l;
        int i10 = m5.g0.f10384a;
        return vVar.t(j10);
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f13200m = aVar;
        v vVar = this.f13199l;
        if (vVar != null) {
            long j11 = this.f13196i;
            long j12 = this.f13203p;
            if (j12 != -9223372036854775807L) {
                j11 = j12;
            }
            vVar.u(this, j11);
        }
    }
}
