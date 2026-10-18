package t;

/* JADX INFO: compiled from: WidgetRun.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s.d f15316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m f15317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g f15319e = new g(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15320f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f15321g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f f15322h = new f(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f15323i = new f(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15324j = 1;

    public p(s.d dVar) {
        this.f15316b = dVar;
    }

    @Override // t.d
    public void a(d dVar) {
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void b(f fVar, f fVar2, int i10) {
        fVar.f15301l.add(fVar2);
        fVar.f15295f = i10;
        fVar2.f15300k.add(fVar);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void c(f fVar, f fVar2, int i10, g gVar) {
        fVar.f15301l.add(fVar2);
        fVar.f15301l.add(this.f15319e);
        fVar.f15297h = i10;
        fVar.f15298i = gVar;
        fVar2.f15300k.add(fVar);
        gVar.f15300k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i10, int i11) {
        int iMax;
        if (i11 == 0) {
            s.d dVar = this.f15316b;
            int i12 = dVar.f14890v;
            iMax = Math.max(dVar.f14889u, i10);
            if (i12 > 0) {
                iMax = Math.min(i12, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        } else {
            s.d dVar2 = this.f15316b;
            int i13 = dVar2.f14893y;
            iMax = Math.max(dVar2.f14892x, i10);
            if (i13 > 0) {
                iMax = Math.min(i13, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        }
        return iMax;
    }

    public final f h(s.c cVar) {
        s.c cVar2 = cVar.f14840f;
        if (cVar2 == null) {
            return null;
        }
        s.d dVar = cVar2.f14838d;
        int iOrdinal = cVar2.f14839e.ordinal();
        if (iOrdinal == 1) {
            return dVar.f14859d.f15322h;
        }
        if (iOrdinal == 2) {
            return dVar.f14860e.f15322h;
        }
        if (iOrdinal == 3) {
            return dVar.f14859d.f15323i;
        }
        if (iOrdinal == 4) {
            return dVar.f14860e.f15323i;
        }
        if (iOrdinal != 5) {
            return null;
        }
        return dVar.f14860e.f15307k;
    }

    public final f i(s.c cVar, int i10) {
        s.c cVar2 = cVar.f14840f;
        if (cVar2 == null) {
            return null;
        }
        s.d dVar = cVar2.f14838d;
        p pVar = i10 == 0 ? dVar.f14859d : dVar.f14860e;
        int iOrdinal = cVar2.f14839e.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2) {
            return pVar.f15322h;
        }
        if (iOrdinal == 3 || iOrdinal == 4) {
            return pVar.f15323i;
        }
        return null;
    }

    public long j() {
        g gVar = this.f15319e;
        if (gVar.f15299j) {
            return gVar.f15296g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code duplicated, block: B:28:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x0069  */
    public final void l(s.c cVar, s.c cVar2, int i10) {
        g gVar;
        float f10;
        int i11;
        f fVarH = h(cVar);
        f fVarH2 = h(cVar2);
        if (fVarH.f15299j && fVarH2.f15299j) {
            int iD = cVar.d() + fVarH.f15296g;
            int iD2 = fVarH2.f15296g - cVar2.d();
            int i12 = iD2 - iD;
            g gVar2 = this.f15319e;
            if (!gVar2.f15299j && this.f15318d == 3) {
                int i13 = this.f15315a;
                if (i13 == 0) {
                    gVar2.d(g(i12, i10));
                } else if (i13 == 1) {
                    this.f15319e.d(Math.min(g(gVar2.f15302m, i10), i12));
                } else if (i13 == 2) {
                    s.d dVar = this.f15316b;
                    s.d dVar2 = dVar.V;
                    if (dVar2 != null) {
                        g gVar3 = (i10 == 0 ? dVar2.f14859d : dVar2.f14860e).f15319e;
                        if (gVar3.f15299j) {
                            gVar2.d(g((int) ((gVar3.f15296g * (i10 == 0 ? dVar.f14891w : dVar.f14894z)) + 0.5f), i10));
                        }
                    }
                } else if (i13 == 3) {
                    s.d dVar3 = this.f15316b;
                    p pVar = dVar3.f14859d;
                    if (pVar.f15318d == 3 && pVar.f15315a == 3) {
                        n nVar = dVar3.f14860e;
                        if (nVar.f15318d != 3 || nVar.f15315a != 3) {
                            if (i10 == 0) {
                                pVar = dVar3.f14860e;
                            }
                            gVar = pVar.f15319e;
                            if (gVar.f15299j) {
                                f10 = dVar3.Y;
                                if (i10 == 1) {
                                    i11 = (int) ((gVar.f15296g / f10) + 0.5f);
                                } else {
                                    i11 = (int) ((f10 * gVar.f15296g) + 0.5f);
                                }
                                gVar2.d(i11);
                            }
                        }
                    } else {
                        if (i10 == 0) {
                            pVar = dVar3.f14860e;
                        }
                        gVar = pVar.f15319e;
                        if (gVar.f15299j) {
                            f10 = dVar3.Y;
                            if (i10 == 1) {
                                i11 = (int) ((gVar.f15296g / f10) + 0.5f);
                            } else {
                                i11 = (int) ((f10 * gVar.f15296g) + 0.5f);
                            }
                            gVar2.d(i11);
                        }
                    }
                }
            }
            g gVar4 = this.f15319e;
            if (gVar4.f15299j) {
                int i14 = gVar4.f15296g;
                if (i14 == i12) {
                    this.f15322h.d(iD);
                    this.f15323i.d(iD2);
                    return;
                }
                s.d dVar4 = this.f15316b;
                float f11 = i10 == 0 ? dVar4.f14863f0 : dVar4.f14865g0;
                if (fVarH == fVarH2) {
                    iD = fVarH.f15296g;
                    iD2 = fVarH2.f15296g;
                    f11 = 0.5f;
                }
                this.f15322h.d((int) ((((iD2 - iD) - i14) * f11) + iD + 0.5f));
                this.f15323i.d(this.f15322h.f15296g + this.f15319e.f15296g);
            }
        }
    }
}
