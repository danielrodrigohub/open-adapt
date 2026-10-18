package s;

/* JADX INFO: compiled from: Guideline.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends d {

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public float f14903r0 = -1.0f;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f14904s0 = -1;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f14905t0 = -1;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public c f14906u0 = this.K;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f14907v0 = 0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f14908w0;

    public f() {
        this.S.clear();
        this.S.add(this.f14906u0);
        int length = this.R.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.R[i10] = this.f14906u0;
        }
    }

    @Override // s.d
    public final boolean B() {
        return this.f14908w0;
    }

    @Override // s.d
    public final boolean C() {
        return this.f14908w0;
    }

    @Override // s.d
    public final void S(q.d dVar, boolean z10) {
        if (this.V == null) {
            return;
        }
        int iO = dVar.o(this.f14906u0);
        if (this.f14907v0 == 1) {
            this.f14854a0 = iO;
            this.f14856b0 = 0;
            L(this.V.k());
            Q(0);
            return;
        }
        this.f14854a0 = 0;
        this.f14856b0 = iO;
        Q(this.V.r());
        L(0);
    }

    public final void T(int i10) {
        this.f14906u0.j(i10);
        this.f14908w0 = true;
    }

    public final void U(int i10) {
        if (this.f14907v0 == i10) {
            return;
        }
        this.f14907v0 = i10;
        this.S.clear();
        if (this.f14907v0 == 1) {
            this.f14906u0 = this.J;
        } else {
            this.f14906u0 = this.K;
        }
        this.S.add(this.f14906u0);
        int length = this.R.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.R[i11] = this.f14906u0;
        }
    }

    @Override // s.d
    public final void c(q.d dVar, boolean z10) {
        e eVar = (e) this.V;
        if (eVar == null) {
            return;
        }
        Object objH = eVar.h(c.a.LEFT);
        Object objH2 = eVar.h(c.a.RIGHT);
        d dVar2 = this.V;
        boolean z11 = dVar2 != null && dVar2.U[0] == 2;
        if (this.f14907v0 == 0) {
            objH = eVar.h(c.a.TOP);
            objH2 = eVar.h(c.a.BOTTOM);
            d dVar3 = this.V;
            z11 = dVar3 != null && dVar3.U[1] == 2;
        }
        if (this.f14908w0) {
            c cVar = this.f14906u0;
            if (cVar.f14837c) {
                q.h hVarL = dVar.l(cVar);
                dVar.e(hVarL, this.f14906u0.c());
                if (this.f14904s0 != -1) {
                    if (z11) {
                        dVar.f(dVar.l(objH2), hVarL, 0, 5);
                    }
                } else if (this.f14905t0 != -1 && z11) {
                    q.h hVarL2 = dVar.l(objH2);
                    dVar.f(hVarL, dVar.l(objH), 0, 5);
                    dVar.f(hVarL2, hVarL, 0, 5);
                }
                this.f14908w0 = false;
                return;
            }
        }
        if (this.f14904s0 != -1) {
            q.h hVarL3 = dVar.l(this.f14906u0);
            dVar.d(hVarL3, dVar.l(objH), this.f14904s0, 8);
            if (z11) {
                dVar.f(dVar.l(objH2), hVarL3, 0, 5);
                return;
            }
            return;
        }
        if (this.f14905t0 != -1) {
            q.h hVarL4 = dVar.l(this.f14906u0);
            q.h hVarL5 = dVar.l(objH2);
            dVar.d(hVarL4, hVarL5, -this.f14905t0, 8);
            if (z11) {
                dVar.f(hVarL4, dVar.l(objH), 0, 5);
                dVar.f(hVarL5, hVarL4, 0, 5);
                return;
            }
            return;
        }
        if (this.f14903r0 != -1.0f) {
            q.h hVarL6 = dVar.l(this.f14906u0);
            q.h hVarL7 = dVar.l(objH2);
            float f10 = this.f14903r0;
            q.b bVarM = dVar.m();
            bVarM.f13453d.d(hVarL6, -1.0f);
            bVarM.f13453d.d(hVarL7, f10);
            dVar.c(bVarM);
        }
    }

    @Override // s.d
    public final boolean d() {
        return true;
    }

    @Override // s.d
    public final c h(c.a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        return null;
                    }
                }
            }
            if (this.f14907v0 == 0) {
                return this.f14906u0;
            }
            return null;
        }
        if (this.f14907v0 == 1) {
            return this.f14906u0;
        }
        return null;
    }
}
