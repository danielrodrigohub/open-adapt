package n3;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: BaseRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements s1, t1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11381h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public u1 f11383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11384k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o3.v0 f11385l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11386m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p4.m0 f11387n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public s0[] f11388o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f11389p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f11391r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f11392s;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final y0.r f11382i = new y0.r(2);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f11390q = Long.MIN_VALUE;

    public f(int i10) {
        this.f11381h = i10;
    }

    public final y0.r A() {
        this.f11382i.a();
        return this.f11382i;
    }

    public abstract void B();

    public void C(boolean z10) throws q {
    }

    public abstract void D(long j10, boolean z10) throws q;

    public void E() {
    }

    public void F() throws q {
    }

    public void G() {
    }

    public abstract void H(s0[] s0VarArr, long j10, long j11) throws q;

    public final int I(y0.r rVar, q3.g gVar, int i10) {
        p4.m0 m0Var = this.f11387n;
        Objects.requireNonNull(m0Var);
        int iJ = m0Var.j(rVar, gVar, i10);
        if (iJ == -4) {
            if (gVar.l(4)) {
                this.f11390q = Long.MIN_VALUE;
                return this.f11391r ? -4 : -3;
            }
            long j10 = gVar.f13583l + this.f11389p;
            gVar.f13583l = j10;
            this.f11390q = Math.max(this.f11390q, j10);
        } else if (iJ == -5) {
            s0 s0Var = (s0) rVar.f18272c;
            Objects.requireNonNull(s0Var);
            if (s0Var.f11691w != Long.MAX_VALUE) {
                s0.a aVarB = s0Var.b();
                aVarB.f11709o = s0Var.f11691w + this.f11389p;
                rVar.f18272c = aVarB.a();
            }
        }
        return iJ;
    }

    @Override // n3.s1
    public final void disable() {
        m5.a.e(this.f11386m == 1);
        this.f11382i.a();
        this.f11386m = 0;
        this.f11387n = null;
        this.f11388o = null;
        this.f11391r = false;
        B();
    }

    @Override // n3.s1
    public final void e() {
        m5.a.e(this.f11386m == 0);
        this.f11382i.a();
        E();
    }

    @Override // n3.s1
    public final void g(s0[] s0VarArr, p4.m0 m0Var, long j10, long j11) throws q {
        m5.a.e(!this.f11391r);
        this.f11387n = m0Var;
        if (this.f11390q == Long.MIN_VALUE) {
            this.f11390q = j10;
        }
        this.f11388o = s0VarArr;
        this.f11389p = j11;
        H(s0VarArr, j10, j11);
    }

    @Override // n3.s1
    public final int getState() {
        return this.f11386m;
    }

    @Override // n3.s1
    public final boolean h() {
        return this.f11390q == Long.MIN_VALUE;
    }

    @Override // n3.s1
    public final void i(int i10, o3.v0 v0Var) {
        this.f11384k = i10;
        this.f11385l = v0Var;
    }

    public int j() throws q {
        return 0;
    }

    @Override // n3.p1.b
    public void l(int i10, Object obj) throws q {
    }

    @Override // n3.s1
    public final p4.m0 m() {
        return this.f11387n;
    }

    @Override // n3.s1
    public final void n() {
        this.f11391r = true;
    }

    @Override // n3.s1
    public final void o() throws IOException {
        p4.m0 m0Var = this.f11387n;
        Objects.requireNonNull(m0Var);
        m0Var.b();
    }

    @Override // n3.s1
    public final long p() {
        return this.f11390q;
    }

    @Override // n3.s1
    public final void q(long j10) throws q {
        this.f11391r = false;
        this.f11390q = j10;
        D(j10, false);
    }

    @Override // n3.s1
    public final boolean r() {
        return this.f11391r;
    }

    @Override // n3.s1
    public m5.r s() {
        return null;
    }

    @Override // n3.s1
    public final void start() throws q {
        m5.a.e(this.f11386m == 1);
        this.f11386m = 2;
        F();
    }

    @Override // n3.s1
    public final void stop() {
        m5.a.e(this.f11386m == 2);
        this.f11386m = 1;
        G();
    }

    @Override // n3.s1
    public final void t(u1 u1Var, s0[] s0VarArr, p4.m0 m0Var, long j10, boolean z10, boolean z11, long j11, long j12) throws q {
        m5.a.e(this.f11386m == 0);
        this.f11383j = u1Var;
        this.f11386m = 1;
        C(z11);
        g(s0VarArr, m0Var, j11, j12);
        this.f11391r = false;
        this.f11390q = j10;
        D(j10, z10);
    }

    @Override // n3.s1
    public final int u() {
        return this.f11381h;
    }

    @Override // n3.s1
    public final t1 v() {
        return this;
    }

    public final q y(Throwable th, s0 s0Var) {
        return z(th, s0Var, false, 4002);
    }

    public final q z(Throwable th, s0 s0Var, boolean z10, int i10) {
        int iA;
        if (s0Var == null || this.f11392s) {
            iA = 4;
        } else {
            this.f11392s = true;
            try {
                iA = a(s0Var) & 7;
                this.f11392s = false;
            } catch (q unused) {
                this.f11392s = false;
                iA = 4;
            } catch (Throwable th2) {
                this.f11392s = false;
                throw th2;
            }
        }
        return new q(1, th, i10, getName(), this.f11384k, s0Var, s0Var == null ? 4 : iA, z10);
    }
}
