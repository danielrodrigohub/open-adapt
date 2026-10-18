package t;

/* JADX INFO: compiled from: HorizontalWidgetRun.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int[] f15304k = new int[2];

    public l(s.d dVar) {
        super(dVar);
        this.f15322h.f15294e = 4;
        this.f15323i.f15294e = 5;
        this.f15320f = 0;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0298  */
    /* JADX WARN: Code duplicated, block: B:121:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:70:0x014f  */
    /* JADX WARN: Type inference failed for: r0v100, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v105, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v109, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v113, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v124, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v128, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v139, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v144, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v47, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r1v26, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r1v35, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r2v26, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r2v47, types: [java.util.ArrayList, java.util.List<t.f>] */
    @Override // t.p, t.d
    public final void a(d dVar) {
        int iG;
        int i10;
        int iG2;
        float f10;
        float f11;
        float f12;
        int i11;
        if (q.g.a(this.f15324j) == 3) {
            s.d dVar2 = this.f15316b;
            l(dVar2.J, dVar2.L, 0);
            return;
        }
        g gVar = this.f15319e;
        if (!gVar.f15299j && this.f15318d == 3) {
            s.d dVar3 = this.f15316b;
            int i12 = dVar3.f14886r;
            if (i12 == 2) {
                s.d dVar4 = dVar3.V;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f14859d.f15319e;
                    if (gVar2.f15299j) {
                        gVar.d((int) ((gVar2.f15296g * dVar3.f14891w) + 0.5f));
                    }
                }
            } else if (i12 == 3) {
                int i13 = dVar3.f14887s;
                if (i13 == 0 || i13 == 3) {
                    n nVar = dVar3.f14860e;
                    f fVar = nVar.f15322h;
                    f fVar2 = nVar.f15323i;
                    boolean z10 = dVar3.J.f14840f != null;
                    boolean z11 = dVar3.K.f14840f != null;
                    boolean z12 = dVar3.L.f14840f != null;
                    boolean z13 = dVar3.M.f14840f != null;
                    int i14 = dVar3.Z;
                    if (z10 && z11 && z12 && z13) {
                        float f13 = dVar3.Y;
                        if (fVar.f15299j && fVar2.f15299j) {
                            f fVar3 = this.f15322h;
                            if (fVar3.f15292c && this.f15323i.f15292c) {
                                int i15 = ((f) fVar3.f15301l.get(0)).f15296g + this.f15322h.f15295f;
                                int i16 = ((f) this.f15323i.f15301l.get(0)).f15296g - this.f15323i.f15295f;
                                int i17 = fVar.f15296g + fVar.f15295f;
                                int i18 = fVar2.f15296g - fVar2.f15295f;
                                int[] iArr = f15304k;
                                m(iArr, i15, i16, i17, i18, f13, i14);
                                this.f15319e.d(iArr[0]);
                                this.f15316b.f14860e.f15319e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        f fVar4 = this.f15322h;
                        if (fVar4.f15299j) {
                            f fVar5 = this.f15323i;
                            if (fVar5.f15299j) {
                                if (!fVar.f15292c || !fVar2.f15292c) {
                                    return;
                                }
                                int i19 = fVar4.f15296g + fVar4.f15295f;
                                int i20 = fVar5.f15296g - fVar5.f15295f;
                                int i21 = ((f) fVar.f15301l.get(0)).f15296g + fVar.f15295f;
                                int i22 = ((f) fVar2.f15301l.get(0)).f15296g - fVar2.f15295f;
                                int[] iArr2 = f15304k;
                                m(iArr2, i19, i20, i21, i22, f13, i14);
                                this.f15319e.d(iArr2[0]);
                                this.f15316b.f14860e.f15319e.d(iArr2[1]);
                            }
                        }
                        f fVar6 = this.f15322h;
                        if (!fVar6.f15292c || !this.f15323i.f15292c || !fVar.f15292c || !fVar2.f15292c) {
                            return;
                        }
                        int i23 = ((f) fVar6.f15301l.get(0)).f15296g + this.f15322h.f15295f;
                        int i24 = ((f) this.f15323i.f15301l.get(0)).f15296g - this.f15323i.f15295f;
                        int i25 = ((f) fVar.f15301l.get(0)).f15296g + fVar.f15295f;
                        int i26 = ((f) fVar2.f15301l.get(0)).f15296g - fVar2.f15295f;
                        int[] iArr3 = f15304k;
                        m(iArr3, i23, i24, i25, i26, f13, i14);
                        this.f15319e.d(iArr3[0]);
                        this.f15316b.f14860e.f15319e.d(iArr3[1]);
                    } else if (z10 && z12) {
                        f fVar7 = this.f15322h;
                        if (!fVar7.f15292c || !this.f15323i.f15292c) {
                            return;
                        }
                        float f14 = dVar3.Y;
                        int i27 = ((f) fVar7.f15301l.get(0)).f15296g + this.f15322h.f15295f;
                        int i28 = ((f) this.f15323i.f15301l.get(0)).f15296g - this.f15323i.f15295f;
                        if (i14 == -1 || i14 == 0) {
                            int iG3 = g(i28 - i27, 0);
                            int i29 = (int) ((iG3 * f14) + 0.5f);
                            int iG4 = g(i29, 1);
                            if (i29 != iG4) {
                                iG3 = (int) ((iG4 / f14) + 0.5f);
                            }
                            this.f15319e.d(iG3);
                            this.f15316b.f14860e.f15319e.d(iG4);
                        } else if (i14 == 1) {
                            int iG5 = g(i28 - i27, 0);
                            int i30 = (int) ((iG5 / f14) + 0.5f);
                            int iG6 = g(i30, 1);
                            if (i30 != iG6) {
                                iG5 = (int) ((iG6 * f14) + 0.5f);
                            }
                            this.f15319e.d(iG5);
                            this.f15316b.f14860e.f15319e.d(iG6);
                        }
                    } else if (z11 && z13) {
                        if (!fVar.f15292c || !fVar2.f15292c) {
                            return;
                        }
                        float f15 = dVar3.Y;
                        int i31 = ((f) fVar.f15301l.get(0)).f15296g + fVar.f15295f;
                        int i32 = ((f) fVar2.f15301l.get(0)).f15296g - fVar2.f15295f;
                        if (i14 == -1) {
                            iG = g(i32 - i31, 1);
                            i10 = (int) ((iG / f15) + 0.5f);
                            iG2 = g(i10, 0);
                            if (i10 != iG2) {
                                iG = (int) ((iG2 * f15) + 0.5f);
                            }
                            this.f15319e.d(iG2);
                            this.f15316b.f14860e.f15319e.d(iG);
                        } else if (i14 == 0) {
                            int iG7 = g(i32 - i31, 1);
                            int i33 = (int) ((iG7 * f15) + 0.5f);
                            int iG8 = g(i33, 0);
                            if (i33 != iG8) {
                                iG7 = (int) ((iG8 / f15) + 0.5f);
                            }
                            this.f15319e.d(iG8);
                            this.f15316b.f14860e.f15319e.d(iG7);
                        } else if (i14 == 1) {
                            iG = g(i32 - i31, 1);
                            i10 = (int) ((iG / f15) + 0.5f);
                            iG2 = g(i10, 0);
                            if (i10 != iG2) {
                                iG = (int) ((iG2 * f15) + 0.5f);
                            }
                            this.f15319e.d(iG2);
                            this.f15316b.f14860e.f15319e.d(iG);
                        }
                    }
                } else {
                    int i34 = dVar3.Z;
                    if (i34 != -1) {
                        if (i34 == 0) {
                            f12 = dVar3.f14860e.f15319e.f15296g / dVar3.Y;
                            i11 = (int) (f12 + 0.5f);
                        } else if (i34 != 1) {
                            i11 = 0;
                        } else {
                            f10 = dVar3.f14860e.f15319e.f15296g;
                            f11 = dVar3.Y;
                        }
                        gVar.d(i11);
                    } else {
                        f10 = dVar3.f14860e.f15319e.f15296g;
                        f11 = dVar3.Y;
                    }
                    f12 = f10 * f11;
                    i11 = (int) (f12 + 0.5f);
                    gVar.d(i11);
                }
            }
        }
        f fVar8 = this.f15322h;
        if (fVar8.f15292c) {
            f fVar9 = this.f15323i;
            if (fVar9.f15292c) {
                if (fVar8.f15299j && fVar9.f15299j && this.f15319e.f15299j) {
                    return;
                }
                if (!this.f15319e.f15299j && this.f15318d == 3) {
                    s.d dVar5 = this.f15316b;
                    if (dVar5.f14886r == 0 && !dVar5.y()) {
                        f fVar10 = (f) this.f15322h.f15301l.get(0);
                        f fVar11 = (f) this.f15323i.f15301l.get(0);
                        int i35 = fVar10.f15296g;
                        f fVar12 = this.f15322h;
                        int i36 = i35 + fVar12.f15295f;
                        int i37 = fVar11.f15296g + this.f15323i.f15295f;
                        fVar12.d(i36);
                        this.f15323i.d(i37);
                        this.f15319e.d(i37 - i36);
                        return;
                    }
                }
                if (!this.f15319e.f15299j && this.f15318d == 3 && this.f15315a == 1 && this.f15322h.f15301l.size() > 0 && this.f15323i.f15301l.size() > 0) {
                    int iMin = Math.min((((f) this.f15323i.f15301l.get(0)).f15296g + this.f15323i.f15295f) - (((f) this.f15322h.f15301l.get(0)).f15296g + this.f15322h.f15295f), this.f15319e.f15302m);
                    s.d dVar6 = this.f15316b;
                    int i38 = dVar6.f14890v;
                    int iMax = Math.max(dVar6.f14889u, iMin);
                    if (i38 > 0) {
                        iMax = Math.min(i38, iMax);
                    }
                    this.f15319e.d(iMax);
                }
                if (this.f15319e.f15299j) {
                    f fVar13 = (f) this.f15322h.f15301l.get(0);
                    f fVar14 = (f) this.f15323i.f15301l.get(0);
                    int i39 = fVar13.f15296g;
                    f fVar15 = this.f15322h;
                    int i40 = fVar15.f15295f + i39;
                    int i41 = fVar14.f15296g;
                    int i42 = this.f15323i.f15295f + i41;
                    float f16 = this.f15316b.f14863f0;
                    if (fVar13 == fVar14) {
                        f16 = 0.5f;
                    } else {
                        i39 = i40;
                        i41 = i42;
                    }
                    fVar15.d((int) ((((i41 - i39) - this.f15319e.f15296g) * f16) + i39 + 0.5f));
                    this.f15323i.d(this.f15322h.f15296g + this.f15319e.f15296g);
                }
            }
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // t.p
    public final void d() {
        s.d dVar;
        s.d dVar2;
        s.d dVar3;
        s.d dVar4;
        s.d dVar5 = this.f15316b;
        if (dVar5.f14853a) {
            this.f15319e.d(dVar5.r());
        }
        g gVar = this.f15319e;
        if (!gVar.f15299j) {
            s.d dVar6 = this.f15316b;
            int i10 = dVar6.U[0];
            this.f15318d = i10;
            if (i10 != 3) {
                if (i10 == 4 && (dVar4 = dVar6.V) != null) {
                    int[] iArr = dVar4.U;
                    if (iArr[0] == 1 || iArr[0] == 4) {
                        int iR = (dVar4.r() - this.f15316b.J.d()) - this.f15316b.L.d();
                        b(this.f15322h, dVar4.f14859d.f15322h, this.f15316b.J.d());
                        b(this.f15323i, dVar4.f14859d.f15323i, -this.f15316b.L.d());
                        this.f15319e.d(iR);
                        return;
                    }
                }
                if (i10 == 1) {
                    gVar.d(dVar6.r());
                }
            }
        } else if (this.f15318d == 4 && (dVar2 = (dVar = this.f15316b).V) != null) {
            int[] iArr2 = dVar2.U;
            if (iArr2[0] == 1 || iArr2[0] == 4) {
                b(this.f15322h, dVar2.f14859d.f15322h, dVar.J.d());
                b(this.f15323i, dVar2.f14859d.f15323i, -this.f15316b.L.d());
                return;
            }
        }
        g gVar2 = this.f15319e;
        if (gVar2.f15299j) {
            s.d dVar7 = this.f15316b;
            if (dVar7.f14853a) {
                s.c[] cVarArr = dVar7.R;
                if (cVarArr[0].f14840f != null && cVarArr[1].f14840f != null) {
                    if (dVar7.y()) {
                        this.f15322h.f15295f = this.f15316b.R[0].d();
                        this.f15323i.f15295f = -this.f15316b.R[1].d();
                        return;
                    }
                    f fVarH = h(this.f15316b.R[0]);
                    if (fVarH != null) {
                        b(this.f15322h, fVarH, this.f15316b.R[0].d());
                    }
                    f fVarH2 = h(this.f15316b.R[1]);
                    if (fVarH2 != null) {
                        b(this.f15323i, fVarH2, -this.f15316b.R[1].d());
                    }
                    this.f15322h.f15291b = true;
                    this.f15323i.f15291b = true;
                    return;
                }
                if (cVarArr[0].f14840f != null) {
                    f fVarH3 = h(cVarArr[0]);
                    if (fVarH3 != null) {
                        b(this.f15322h, fVarH3, this.f15316b.R[0].d());
                        b(this.f15323i, this.f15322h, this.f15319e.f15296g);
                        return;
                    }
                    return;
                }
                if (cVarArr[1].f14840f != null) {
                    f fVarH4 = h(cVarArr[1]);
                    if (fVarH4 != null) {
                        b(this.f15323i, fVarH4, -this.f15316b.R[1].d());
                        b(this.f15322h, this.f15323i, -this.f15319e.f15296g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof s.g) || dVar7.V == null || dVar7.h(s.c.a.CENTER).f14840f != null) {
                    return;
                }
                s.d dVar8 = this.f15316b;
                b(this.f15322h, dVar8.V.f14859d.f15322h, dVar8.s());
                b(this.f15323i, this.f15322h, this.f15319e.f15296g);
                return;
            }
        }
        if (this.f15318d == 3) {
            s.d dVar9 = this.f15316b;
            int i11 = dVar9.f14886r;
            if (i11 == 2) {
                s.d dVar10 = dVar9.V;
                if (dVar10 != null) {
                    g gVar3 = dVar10.f14860e.f15319e;
                    gVar2.f15301l.add(gVar3);
                    gVar3.f15300k.add(this.f15319e);
                    g gVar4 = this.f15319e;
                    gVar4.f15291b = true;
                    gVar4.f15300k.add(this.f15322h);
                    this.f15319e.f15300k.add(this.f15323i);
                }
            } else if (i11 == 3) {
                if (dVar9.f14887s == 3) {
                    this.f15322h.f15290a = this;
                    this.f15323i.f15290a = this;
                    n nVar = dVar9.f14860e;
                    nVar.f15322h.f15290a = this;
                    nVar.f15323i.f15290a = this;
                    gVar2.f15290a = this;
                    if (dVar9.z()) {
                        this.f15319e.f15301l.add(this.f15316b.f14860e.f15319e);
                        this.f15316b.f14860e.f15319e.f15300k.add(this.f15319e);
                        n nVar2 = this.f15316b.f14860e;
                        nVar2.f15319e.f15290a = this;
                        this.f15319e.f15301l.add(nVar2.f15322h);
                        this.f15319e.f15301l.add(this.f15316b.f14860e.f15323i);
                        this.f15316b.f14860e.f15322h.f15300k.add(this.f15319e);
                        this.f15316b.f14860e.f15323i.f15300k.add(this.f15319e);
                    } else if (this.f15316b.y()) {
                        this.f15316b.f14860e.f15319e.f15301l.add(this.f15319e);
                        this.f15319e.f15300k.add(this.f15316b.f14860e.f15319e);
                    } else {
                        this.f15316b.f14860e.f15319e.f15301l.add(this.f15319e);
                    }
                } else {
                    g gVar5 = dVar9.f14860e.f15319e;
                    gVar2.f15301l.add(gVar5);
                    gVar5.f15300k.add(this.f15319e);
                    this.f15316b.f14860e.f15322h.f15300k.add(this.f15319e);
                    this.f15316b.f14860e.f15323i.f15300k.add(this.f15319e);
                    g gVar6 = this.f15319e;
                    gVar6.f15291b = true;
                    gVar6.f15300k.add(this.f15322h);
                    this.f15319e.f15300k.add(this.f15323i);
                    this.f15322h.f15301l.add(this.f15319e);
                    this.f15323i.f15301l.add(this.f15319e);
                }
            }
        }
        s.d dVar11 = this.f15316b;
        s.c[] cVarArr2 = dVar11.R;
        if (cVarArr2[0].f14840f != null && cVarArr2[1].f14840f != null) {
            if (dVar11.y()) {
                this.f15322h.f15295f = this.f15316b.R[0].d();
                this.f15323i.f15295f = -this.f15316b.R[1].d();
                return;
            }
            f fVarH5 = h(this.f15316b.R[0]);
            f fVarH6 = h(this.f15316b.R[1]);
            if (fVarH5 != null) {
                fVarH5.b(this);
            }
            if (fVarH6 != null) {
                fVarH6.b(this);
            }
            this.f15324j = 4;
            return;
        }
        if (cVarArr2[0].f14840f != null) {
            f fVarH7 = h(cVarArr2[0]);
            if (fVarH7 != null) {
                b(this.f15322h, fVarH7, this.f15316b.R[0].d());
                c(this.f15323i, this.f15322h, 1, this.f15319e);
                return;
            }
            return;
        }
        if (cVarArr2[1].f14840f != null) {
            f fVarH8 = h(cVarArr2[1]);
            if (fVarH8 != null) {
                b(this.f15323i, fVarH8, -this.f15316b.R[1].d());
                c(this.f15322h, this.f15323i, -1, this.f15319e);
                return;
            }
            return;
        }
        if ((dVar11 instanceof s.g) || (dVar3 = dVar11.V) == null) {
            return;
        }
        b(this.f15322h, dVar3.f14859d.f15322h, dVar11.s());
        c(this.f15323i, this.f15322h, 1, this.f15319e);
    }

    @Override // t.p
    public final void e() {
        f fVar = this.f15322h;
        if (fVar.f15299j) {
            this.f15316b.f14854a0 = fVar.f15296g;
        }
    }

    @Override // t.p
    public final void f() {
        this.f15317c = null;
        this.f15322h.c();
        this.f15323i.c();
        this.f15319e.c();
        this.f15321g = false;
    }

    @Override // t.p
    public final boolean k() {
        return this.f15318d != 3 || this.f15316b.f14886r == 0;
    }

    public final void m(int[] iArr, int i10, int i11, int i12, int i13, float f10, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f10) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f10) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f10) + 0.5f);
        int i18 = (int) ((i15 / f10) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    public final void n() {
        this.f15321g = false;
        this.f15322h.c();
        this.f15322h.f15299j = false;
        this.f15323i.c();
        this.f15323i.f15299j = false;
        this.f15319e.f15299j = false;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("HorizontalRun ");
        sbC.append(this.f15316b.f14871j0);
        return sbC.toString();
    }
}
