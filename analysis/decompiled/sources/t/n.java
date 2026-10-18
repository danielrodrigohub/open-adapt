package t;

/* JADX INFO: compiled from: VerticalWidgetRun.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f15307k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f15308l;

    public n(s.d dVar) {
        super(dVar);
        f fVar = new f(this);
        this.f15307k = fVar;
        this.f15308l = null;
        this.f15322h.f15294e = 6;
        this.f15323i.f15294e = 7;
        fVar.f15294e = 8;
        this.f15320f = 1;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v18, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v21, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v33, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v36, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v39, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r9v49, types: [java.util.ArrayList, java.util.List<t.f>] */
    @Override // t.p, t.d
    public final void a(d dVar) {
        float f10;
        float f11;
        float f12;
        int i10;
        if (q.g.a(this.f15324j) == 3) {
            s.d dVar2 = this.f15316b;
            l(dVar2.K, dVar2.M, 1);
            return;
        }
        g gVar = this.f15319e;
        if (gVar.f15292c && !gVar.f15299j && this.f15318d == 3) {
            s.d dVar3 = this.f15316b;
            int i11 = dVar3.f14887s;
            if (i11 == 2) {
                s.d dVar4 = dVar3.V;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f14860e.f15319e;
                    if (gVar2.f15299j) {
                        gVar.d((int) ((gVar2.f15296g * dVar3.f14894z) + 0.5f));
                    }
                }
            } else if (i11 == 3) {
                g gVar3 = dVar3.f14859d.f15319e;
                if (gVar3.f15299j) {
                    int i12 = dVar3.Z;
                    if (i12 != -1) {
                        if (i12 == 0) {
                            f12 = gVar3.f15296g * dVar3.Y;
                            i10 = (int) (f12 + 0.5f);
                        } else if (i12 != 1) {
                            i10 = 0;
                        } else {
                            f10 = gVar3.f15296g;
                            f11 = dVar3.Y;
                        }
                        gVar.d(i10);
                    } else {
                        f10 = gVar3.f15296g;
                        f11 = dVar3.Y;
                    }
                    f12 = f10 / f11;
                    i10 = (int) (f12 + 0.5f);
                    gVar.d(i10);
                }
            }
        }
        f fVar = this.f15322h;
        if (fVar.f15292c) {
            f fVar2 = this.f15323i;
            if (fVar2.f15292c) {
                if (fVar.f15299j && fVar2.f15299j && this.f15319e.f15299j) {
                    return;
                }
                if (!this.f15319e.f15299j && this.f15318d == 3) {
                    s.d dVar5 = this.f15316b;
                    if (dVar5.f14886r == 0 && !dVar5.z()) {
                        f fVar3 = (f) this.f15322h.f15301l.get(0);
                        f fVar4 = (f) this.f15323i.f15301l.get(0);
                        int i13 = fVar3.f15296g;
                        f fVar5 = this.f15322h;
                        int i14 = i13 + fVar5.f15295f;
                        int i15 = fVar4.f15296g + this.f15323i.f15295f;
                        fVar5.d(i14);
                        this.f15323i.d(i15);
                        this.f15319e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.f15319e.f15299j && this.f15318d == 3 && this.f15315a == 1 && this.f15322h.f15301l.size() > 0 && this.f15323i.f15301l.size() > 0) {
                    f fVar6 = (f) this.f15322h.f15301l.get(0);
                    int i16 = (((f) this.f15323i.f15301l.get(0)).f15296g + this.f15323i.f15295f) - (fVar6.f15296g + this.f15322h.f15295f);
                    g gVar4 = this.f15319e;
                    int i17 = gVar4.f15302m;
                    if (i16 < i17) {
                        gVar4.d(i16);
                    } else {
                        gVar4.d(i17);
                    }
                }
                if (this.f15319e.f15299j && this.f15322h.f15301l.size() > 0 && this.f15323i.f15301l.size() > 0) {
                    f fVar7 = (f) this.f15322h.f15301l.get(0);
                    f fVar8 = (f) this.f15323i.f15301l.get(0);
                    int i18 = fVar7.f15296g;
                    f fVar9 = this.f15322h;
                    int i19 = fVar9.f15295f + i18;
                    int i20 = fVar8.f15296g;
                    int i21 = this.f15323i.f15295f + i20;
                    float f13 = this.f15316b.f14865g0;
                    if (fVar7 == fVar8) {
                        f13 = 0.5f;
                    } else {
                        i18 = i19;
                        i20 = i21;
                    }
                    fVar9.d((int) ((((i20 - i18) - this.f15319e.f15296g) * f13) + i18 + 0.5f));
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
            this.f15319e.d(dVar5.k());
        }
        if (!this.f15319e.f15299j) {
            s.d dVar6 = this.f15316b;
            this.f15318d = dVar6.U[1];
            if (dVar6.E) {
                this.f15308l = new a(this);
            }
            int i10 = this.f15318d;
            if (i10 != 3) {
                if (i10 == 4 && (dVar4 = this.f15316b.V) != null && dVar4.U[1] == 1) {
                    int iK = (dVar4.k() - this.f15316b.K.d()) - this.f15316b.M.d();
                    b(this.f15322h, dVar4.f14860e.f15322h, this.f15316b.K.d());
                    b(this.f15323i, dVar4.f14860e.f15323i, -this.f15316b.M.d());
                    this.f15319e.d(iK);
                    return;
                }
                if (i10 == 1) {
                    this.f15319e.d(this.f15316b.k());
                }
            }
        } else if (this.f15318d == 4 && (dVar2 = (dVar = this.f15316b).V) != null && dVar2.U[1] == 1) {
            b(this.f15322h, dVar2.f14860e.f15322h, dVar.K.d());
            b(this.f15323i, dVar2.f14860e.f15323i, -this.f15316b.M.d());
            return;
        }
        g gVar = this.f15319e;
        boolean z10 = gVar.f15299j;
        if (z10) {
            s.d dVar7 = this.f15316b;
            if (dVar7.f14853a) {
                s.c[] cVarArr = dVar7.R;
                if (cVarArr[2].f14840f != null && cVarArr[3].f14840f != null) {
                    if (dVar7.z()) {
                        this.f15322h.f15295f = this.f15316b.R[2].d();
                        this.f15323i.f15295f = -this.f15316b.R[3].d();
                    } else {
                        f fVarH = h(this.f15316b.R[2]);
                        if (fVarH != null) {
                            b(this.f15322h, fVarH, this.f15316b.R[2].d());
                        }
                        f fVarH2 = h(this.f15316b.R[3]);
                        if (fVarH2 != null) {
                            b(this.f15323i, fVarH2, -this.f15316b.R[3].d());
                        }
                        this.f15322h.f15291b = true;
                        this.f15323i.f15291b = true;
                    }
                    s.d dVar8 = this.f15316b;
                    if (dVar8.E) {
                        b(this.f15307k, this.f15322h, dVar8.f14858c0);
                        return;
                    }
                    return;
                }
                if (cVarArr[2].f14840f != null) {
                    f fVarH3 = h(cVarArr[2]);
                    if (fVarH3 != null) {
                        b(this.f15322h, fVarH3, this.f15316b.R[2].d());
                        b(this.f15323i, this.f15322h, this.f15319e.f15296g);
                        s.d dVar9 = this.f15316b;
                        if (dVar9.E) {
                            b(this.f15307k, this.f15322h, dVar9.f14858c0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (cVarArr[3].f14840f != null) {
                    f fVarH4 = h(cVarArr[3]);
                    if (fVarH4 != null) {
                        b(this.f15323i, fVarH4, -this.f15316b.R[3].d());
                        b(this.f15322h, this.f15323i, -this.f15319e.f15296g);
                    }
                    s.d dVar10 = this.f15316b;
                    if (dVar10.E) {
                        b(this.f15307k, this.f15322h, dVar10.f14858c0);
                        return;
                    }
                    return;
                }
                if (cVarArr[4].f14840f != null) {
                    f fVarH5 = h(cVarArr[4]);
                    if (fVarH5 != null) {
                        b(this.f15307k, fVarH5, 0);
                        b(this.f15322h, this.f15307k, -this.f15316b.f14858c0);
                        b(this.f15323i, this.f15322h, this.f15319e.f15296g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof s.g) || dVar7.V == null || dVar7.h(s.c.a.CENTER).f14840f != null) {
                    return;
                }
                s.d dVar11 = this.f15316b;
                b(this.f15322h, dVar11.V.f14860e.f15322h, dVar11.t());
                b(this.f15323i, this.f15322h, this.f15319e.f15296g);
                s.d dVar12 = this.f15316b;
                if (dVar12.E) {
                    b(this.f15307k, this.f15322h, dVar12.f14858c0);
                    return;
                }
                return;
            }
        }
        if (z10 || this.f15318d != 3) {
            gVar.b(this);
        } else {
            s.d dVar13 = this.f15316b;
            int i11 = dVar13.f14887s;
            if (i11 == 2) {
                s.d dVar14 = dVar13.V;
                if (dVar14 != null) {
                    g gVar2 = dVar14.f14860e.f15319e;
                    gVar.f15301l.add(gVar2);
                    gVar2.f15300k.add(this.f15319e);
                    g gVar3 = this.f15319e;
                    gVar3.f15291b = true;
                    gVar3.f15300k.add(this.f15322h);
                    this.f15319e.f15300k.add(this.f15323i);
                }
            } else if (i11 == 3 && !dVar13.z()) {
                s.d dVar15 = this.f15316b;
                if (dVar15.f14886r != 3) {
                    g gVar4 = dVar15.f14859d.f15319e;
                    this.f15319e.f15301l.add(gVar4);
                    gVar4.f15300k.add(this.f15319e);
                    g gVar5 = this.f15319e;
                    gVar5.f15291b = true;
                    gVar5.f15300k.add(this.f15322h);
                    this.f15319e.f15300k.add(this.f15323i);
                }
            }
        }
        s.d dVar16 = this.f15316b;
        s.c[] cVarArr2 = dVar16.R;
        if (cVarArr2[2].f14840f != null && cVarArr2[3].f14840f != null) {
            if (dVar16.z()) {
                this.f15322h.f15295f = this.f15316b.R[2].d();
                this.f15323i.f15295f = -this.f15316b.R[3].d();
            } else {
                f fVarH6 = h(this.f15316b.R[2]);
                f fVarH7 = h(this.f15316b.R[3]);
                if (fVarH6 != null) {
                    fVarH6.b(this);
                }
                if (fVarH7 != null) {
                    fVarH7.b(this);
                }
                this.f15324j = 4;
            }
            if (this.f15316b.E) {
                c(this.f15307k, this.f15322h, 1, this.f15308l);
            }
        } else if (cVarArr2[2].f14840f != null) {
            f fVarH8 = h(cVarArr2[2]);
            if (fVarH8 != null) {
                b(this.f15322h, fVarH8, this.f15316b.R[2].d());
                c(this.f15323i, this.f15322h, 1, this.f15319e);
                if (this.f15316b.E) {
                    c(this.f15307k, this.f15322h, 1, this.f15308l);
                }
                if (this.f15318d == 3) {
                    s.d dVar17 = this.f15316b;
                    if (dVar17.Y > 0.0f) {
                        l lVar = dVar17.f14859d;
                        if (lVar.f15318d == 3) {
                            lVar.f15319e.f15300k.add(this.f15319e);
                            this.f15319e.f15301l.add(this.f15316b.f14859d.f15319e);
                            this.f15319e.f15290a = this;
                        }
                    }
                }
            }
        } else if (cVarArr2[3].f14840f != null) {
            f fVarH9 = h(cVarArr2[3]);
            if (fVarH9 != null) {
                b(this.f15323i, fVarH9, -this.f15316b.R[3].d());
                c(this.f15322h, this.f15323i, -1, this.f15319e);
                if (this.f15316b.E) {
                    c(this.f15307k, this.f15322h, 1, this.f15308l);
                }
            }
        } else if (cVarArr2[4].f14840f != null) {
            f fVarH10 = h(cVarArr2[4]);
            if (fVarH10 != null) {
                b(this.f15307k, fVarH10, 0);
                c(this.f15322h, this.f15307k, -1, this.f15308l);
                c(this.f15323i, this.f15322h, 1, this.f15319e);
            }
        } else if (!(dVar16 instanceof s.g) && (dVar3 = dVar16.V) != null) {
            b(this.f15322h, dVar3.f14860e.f15322h, dVar16.t());
            c(this.f15323i, this.f15322h, 1, this.f15319e);
            if (this.f15316b.E) {
                c(this.f15307k, this.f15322h, 1, this.f15308l);
            }
            if (this.f15318d == 3) {
                s.d dVar18 = this.f15316b;
                if (dVar18.Y > 0.0f) {
                    l lVar2 = dVar18.f14859d;
                    if (lVar2.f15318d == 3) {
                        lVar2.f15319e.f15300k.add(this.f15319e);
                        this.f15319e.f15301l.add(this.f15316b.f14859d.f15319e);
                        this.f15319e.f15290a = this;
                    }
                }
            }
        }
        if (this.f15319e.f15301l.size() == 0) {
            this.f15319e.f15292c = true;
        }
    }

    @Override // t.p
    public final void e() {
        f fVar = this.f15322h;
        if (fVar.f15299j) {
            this.f15316b.f14856b0 = fVar.f15296g;
        }
    }

    @Override // t.p
    public final void f() {
        this.f15317c = null;
        this.f15322h.c();
        this.f15323i.c();
        this.f15307k.c();
        this.f15319e.c();
        this.f15321g = false;
    }

    @Override // t.p
    public final boolean k() {
        return this.f15318d != 3 || this.f15316b.f14887s == 0;
    }

    public final void m() {
        this.f15321g = false;
        this.f15322h.c();
        this.f15322h.f15299j = false;
        this.f15323i.c();
        this.f15323i.f15299j = false;
        this.f15307k.c();
        this.f15307k.f15299j = false;
        this.f15319e.f15299j = false;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("VerticalRun ");
        sbC.append(this.f15316b.f14871j0);
        return sbC.toString();
    }
}
