package s;

/* JADX INFO: compiled from: Barrier.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends h {

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f14814t0 = 0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f14815u0 = true;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f14816v0 = 0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f14817w0 = false;

    @Override // s.d
    public final boolean B() {
        return this.f14817w0;
    }

    @Override // s.d
    public final boolean C() {
        return this.f14817w0;
    }

    public final boolean U() {
        int i10;
        int i11;
        int i12;
        c.a aVar = c.a.BOTTOM;
        c.a aVar2 = c.a.TOP;
        c.a aVar3 = c.a.RIGHT;
        c.a aVar4 = c.a.LEFT;
        int i13 = 0;
        boolean z10 = true;
        while (true) {
            i10 = this.f14910s0;
            if (i13 >= i10) {
                break;
            }
            d dVar = this.f14909r0[i13];
            if ((this.f14815u0 || dVar.d()) && ((((i11 = this.f14814t0) == 0 || i11 == 1) && !dVar.B()) || (((i12 = this.f14814t0) == 2 || i12 == 3) && !dVar.C()))) {
                z10 = false;
            }
            i13++;
        }
        if (!z10 || i10 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z11 = false;
        for (int i14 = 0; i14 < this.f14910s0; i14++) {
            d dVar2 = this.f14909r0[i14];
            if (this.f14815u0 || dVar2.d()) {
                if (!z11) {
                    int i15 = this.f14814t0;
                    if (i15 == 0) {
                        iMax = dVar2.h(aVar4).c();
                    } else if (i15 == 1) {
                        iMax = dVar2.h(aVar3).c();
                    } else if (i15 == 2) {
                        iMax = dVar2.h(aVar2).c();
                    } else if (i15 == 3) {
                        iMax = dVar2.h(aVar).c();
                    }
                    z11 = true;
                }
                int i16 = this.f14814t0;
                if (i16 == 0) {
                    iMax = Math.min(iMax, dVar2.h(aVar4).c());
                } else if (i16 == 1) {
                    iMax = Math.max(iMax, dVar2.h(aVar3).c());
                } else if (i16 == 2) {
                    iMax = Math.min(iMax, dVar2.h(aVar2).c());
                } else if (i16 == 3) {
                    iMax = Math.max(iMax, dVar2.h(aVar).c());
                }
            }
        }
        int i17 = iMax + this.f14816v0;
        int i18 = this.f14814t0;
        if (i18 == 0 || i18 == 1) {
            J(i17, i17);
        } else {
            K(i17, i17);
        }
        this.f14817w0 = true;
        return true;
    }

    public final int V() {
        int i10 = this.f14814t0;
        if (i10 == 0 || i10 == 1) {
            return 0;
        }
        return (i10 == 2 || i10 == 3) ? 1 : -1;
    }

    @Override // s.d
    public final void c(q.d dVar, boolean z10) {
        c[] cVarArr;
        boolean z11;
        int i10;
        int i11;
        c[] cVarArr2 = this.R;
        cVarArr2[0] = this.J;
        cVarArr2[2] = this.K;
        cVarArr2[1] = this.L;
        cVarArr2[3] = this.M;
        int i12 = 0;
        while (true) {
            cVarArr = this.R;
            if (i12 >= cVarArr.length) {
                break;
            }
            cVarArr[i12].f14843i = dVar.l(cVarArr[i12]);
            i12++;
        }
        int i13 = this.f14814t0;
        if (i13 < 0 || i13 >= 4) {
            return;
        }
        c cVar = cVarArr[i13];
        if (!this.f14817w0) {
            U();
        }
        if (this.f14817w0) {
            this.f14817w0 = false;
            int i14 = this.f14814t0;
            if (i14 == 0 || i14 == 1) {
                dVar.e(this.J.f14843i, this.f14854a0);
                dVar.e(this.L.f14843i, this.f14854a0);
                return;
            } else {
                if (i14 == 2 || i14 == 3) {
                    dVar.e(this.K.f14843i, this.f14856b0);
                    dVar.e(this.M.f14843i, this.f14856b0);
                    return;
                }
                return;
            }
        }
        int i15 = 0;
        while (true) {
            if (i15 >= this.f14910s0) {
                z11 = false;
                break;
            }
            d dVar2 = this.f14909r0[i15];
            if ((this.f14815u0 || dVar2.d()) && ((((i11 = this.f14814t0) == 0 || i11 == 1) && dVar2.U[0] == 3 && dVar2.J.f14840f != null && dVar2.L.f14840f != null) || ((i11 == 2 || i11 == 3) && dVar2.U[1] == 3 && dVar2.K.f14840f != null && dVar2.M.f14840f != null))) {
                z11 = true;
                break;
            }
            i15++;
        }
        boolean z12 = this.J.e() || this.L.e();
        boolean z13 = this.K.e() || this.M.e();
        int i16 = !z11 && (((i10 = this.f14814t0) == 0 && z12) || ((i10 == 2 && z13) || ((i10 == 1 && z12) || (i10 == 3 && z13)))) ? 5 : 4;
        for (int i17 = 0; i17 < this.f14910s0; i17++) {
            d dVar3 = this.f14909r0[i17];
            if (this.f14815u0 || dVar3.d()) {
                q.h hVarL = dVar.l(dVar3.R[this.f14814t0]);
                c[] cVarArr3 = dVar3.R;
                int i18 = this.f14814t0;
                cVarArr3[i18].f14843i = hVarL;
                int i19 = (cVarArr3[i18].f14840f == null || cVarArr3[i18].f14840f.f14838d != this) ? 0 : cVarArr3[i18].f14841g + 0;
                if (i18 == 0 || i18 == 2) {
                    q.h hVar = cVar.f14843i;
                    int i20 = this.f14816v0 - i19;
                    q.b bVarM = dVar.m();
                    q.h hVarN = dVar.n();
                    hVarN.f13488k = 0;
                    bVarM.e(hVar, hVarL, hVarN, i20);
                    dVar.c(bVarM);
                } else {
                    q.h hVar2 = cVar.f14843i;
                    int i21 = this.f14816v0 + i19;
                    q.b bVarM2 = dVar.m();
                    q.h hVarN2 = dVar.n();
                    hVarN2.f13488k = 0;
                    bVarM2.d(hVar2, hVarL, hVarN2, i21);
                    dVar.c(bVarM2);
                }
                dVar.d(cVar.f14843i, hVarL, this.f14816v0 + i19, i16);
            }
        }
        int i22 = this.f14814t0;
        if (i22 == 0) {
            dVar.d(this.L.f14843i, this.J.f14843i, 0, 8);
            dVar.d(this.J.f14843i, this.V.L.f14843i, 0, 4);
            dVar.d(this.J.f14843i, this.V.J.f14843i, 0, 0);
            return;
        }
        if (i22 == 1) {
            dVar.d(this.J.f14843i, this.L.f14843i, 0, 8);
            dVar.d(this.J.f14843i, this.V.J.f14843i, 0, 4);
            dVar.d(this.J.f14843i, this.V.L.f14843i, 0, 0);
        } else if (i22 == 2) {
            dVar.d(this.M.f14843i, this.K.f14843i, 0, 8);
            dVar.d(this.K.f14843i, this.V.M.f14843i, 0, 4);
            dVar.d(this.K.f14843i, this.V.K.f14843i, 0, 0);
        } else if (i22 == 3) {
            dVar.d(this.K.f14843i, this.M.f14843i, 0, 8);
            dVar.d(this.K.f14843i, this.V.K.f14843i, 0, 4);
            dVar.d(this.K.f14843i, this.V.M.f14843i, 0, 0);
        }
    }

    @Override // s.d
    public final boolean d() {
        return true;
    }

    @Override // s.d
    public final String toString() {
        String strD = a1.f.d(a0.b.c("[Barrier] "), this.f14871j0, " {");
        for (int i10 = 0; i10 < this.f14910s0; i10++) {
            d dVar = this.f14909r0[i10];
            if (i10 > 0) {
                strD = androidx.recyclerview.widget.d.c(strD, ", ");
            }
            StringBuilder sbC = a0.b.c(strD);
            sbC.append(dVar.f14871j0);
            strD = sbC.toString();
        }
        return androidx.recyclerview.widget.d.c(strD, "}");
    }
}
