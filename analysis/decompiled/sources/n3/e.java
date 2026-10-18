package n3;

import java.util.Collections;

/* JADX INFO: compiled from: BasePlayer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class e implements o1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b2.d f11362a = new b2.d();

    @Override // n3.o1
    public final boolean D(int i10) {
        return o().f11601h.a(i10);
    }

    @Override // n3.o1
    public final boolean F() {
        return e() != -1;
    }

    @Override // n3.o1
    public final boolean K() {
        b2 b2VarO = O();
        return !b2VarO.s() && b2VarO.p(C(), this.f11362a).f11316p;
    }

    @Override // n3.o1
    public final void R(long j10) {
        n(C(), j10);
    }

    @Override // n3.o1
    public final void T() {
        if (O().s() || j()) {
            return;
        }
        if (a() != -1) {
            int iA = a();
            if (iA != -1) {
                f(iA);
                return;
            }
            return;
        }
        if (d0() && K()) {
            f(C());
        }
    }

    @Override // n3.o1
    public final void U() {
        e0(k());
    }

    @Override // n3.o1
    public final void W() {
        e0(-c0());
    }

    @Override // n3.o1
    public final void Z() {
        int iE;
        if (O().s() || j()) {
            return;
        }
        boolean z10 = e() != -1;
        if (d0() && !q()) {
            if (!z10 || (iE = e()) == -1) {
                return;
            }
            f(iE);
            return;
        }
        if (z10) {
            long jB0 = b0();
            u();
            if (jB0 <= 3000) {
                int iE2 = e();
                if (iE2 != -1) {
                    f(iE2);
                    return;
                }
                return;
            }
        }
        R(0L);
    }

    public final int a() {
        b2 b2VarO = O();
        if (b2VarO.s()) {
            return -1;
        }
        int iC = C();
        int iM = M();
        if (iM == 1) {
            iM = 0;
        }
        return b2VarO.g(iC, iM, Q());
    }

    @Override // n3.o1
    public final void c() {
        i(false);
    }

    @Override // n3.o1
    public final boolean d0() {
        b2 b2VarO = O();
        return !b2VarO.s() && b2VarO.p(C(), this.f11362a).d();
    }

    public final int e() {
        b2 b2VarO = O();
        if (b2VarO.s()) {
            return -1;
        }
        int iC = C();
        int iM = M();
        if (iM == 1) {
            iM = 0;
        }
        return b2VarO.n(iC, iM, Q());
    }

    public final void e0(long j10) {
        long jB0 = b0() + j10;
        long jN = N();
        if (jN != -9223372036854775807L) {
            jB0 = Math.min(jB0, jN);
        }
        R(Math.max(jB0, 0L));
    }

    public final void f(int i10) {
        n(i10, -9223372036854775807L);
    }

    public final void f0(y0 y0Var) {
        Y(Collections.singletonList(y0Var));
    }

    @Override // n3.o1
    public final void g() {
        i(true);
    }

    @Override // n3.o1
    public final boolean q() {
        b2 b2VarO = O();
        return !b2VarO.s() && b2VarO.p(C(), this.f11362a).f11315o;
    }

    @Override // n3.o1
    public final boolean v() {
        return a() != -1;
    }

    @Override // n3.o1
    public final boolean w() {
        return s() == 3 && p() && L() == 0;
    }
}
