package t;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: ChainRun.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList<p> f15280k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15281l;

    public c(s.d dVar, int i10) {
        s.d dVar2;
        super(dVar);
        this.f15280k = new ArrayList<>();
        this.f15320f = i10;
        s.d dVar3 = this.f15316b;
        s.d dVarM = dVar3.m(i10);
        while (true) {
            s.d dVar4 = dVarM;
            dVar2 = dVar3;
            dVar3 = dVar4;
            if (dVar3 == null) {
                break;
            } else {
                dVarM = dVar3.m(this.f15320f);
            }
        }
        this.f15316b = dVar2;
        ArrayList<p> arrayList = this.f15280k;
        int i11 = this.f15320f;
        arrayList.add(i11 == 0 ? dVar2.f14859d : i11 == 1 ? dVar2.f14860e : null);
        s.d dVarL = dVar2.l(this.f15320f);
        while (dVarL != null) {
            ArrayList<p> arrayList2 = this.f15280k;
            int i12 = this.f15320f;
            arrayList2.add(i12 == 0 ? dVarL.f14859d : i12 == 1 ? dVarL.f14860e : null);
            dVarL = dVarL.l(this.f15320f);
        }
        for (p pVar : this.f15280k) {
            int i13 = this.f15320f;
            if (i13 == 0) {
                pVar.f15316b.f14855b = this;
            } else if (i13 == 1) {
                pVar.f15316b.f14857c = this;
            }
        }
        if ((this.f15320f == 0 && ((s.e) this.f15316b.V).f14899w0) && this.f15280k.size() > 1) {
            ArrayList<p> arrayList3 = this.f15280k;
            this.f15316b = arrayList3.get(arrayList3.size() - 1).f15316b;
        }
        this.f15281l = this.f15320f == 0 ? this.f15316b.f14873k0 : this.f15316b.f14875l0;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0194  */
    /* JADX WARN: Code duplicated, block: B:294:0x00e0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d8 A[ADDED_TO_REGION] */
    @Override // t.p, t.d
    public final void a(d dVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f10;
        boolean z10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        float f11;
        f fVar = this.f15322h;
        if (fVar.f15299j) {
            f fVar2 = this.f15323i;
            if (fVar2.f15299j) {
                s.d dVar2 = this.f15316b.V;
                boolean z11 = dVar2 instanceof s.e ? ((s.e) dVar2).f14899w0 : false;
                int i23 = fVar2.f15296g - fVar.f15296g;
                int size = this.f15280k.size();
                int i24 = 0;
                while (true) {
                    i10 = -1;
                    i11 = 8;
                    if (i24 >= size) {
                        i24 = -1;
                        break;
                    } else if (this.f15280k.get(i24).f15316b.f14869i0 != 8) {
                        break;
                    } else {
                        i24++;
                    }
                }
                int i25 = size - 1;
                for (int i26 = i25; i26 >= 0; i26--) {
                    if (this.f15280k.get(i26).f15316b.f14869i0 != 8) {
                        i10 = i26;
                        break;
                    }
                }
                int i27 = 0;
                while (true) {
                    int i28 = 3;
                    if (i27 >= 2) {
                        i12 = 0;
                        i13 = 0;
                        i14 = 0;
                        f10 = 0.0f;
                        break;
                    }
                    int i29 = 0;
                    i14 = 0;
                    int i30 = 0;
                    int i31 = 0;
                    f10 = 0.0f;
                    while (i29 < size) {
                        p pVar = this.f15280k.get(i29);
                        s.d dVar3 = pVar.f15316b;
                        if (dVar3.f14869i0 != i11) {
                            i31++;
                            if (i29 > 0 && i29 >= i24) {
                                i14 += pVar.f15322h.f15295f;
                            }
                            g gVar = pVar.f15319e;
                            int i32 = gVar.f15296g;
                            boolean z12 = pVar.f15318d != i28;
                            if (z12) {
                                int i33 = this.f15320f;
                                if (i33 == 0 && !dVar3.f14859d.f15319e.f15299j) {
                                    return;
                                }
                                if (i33 == 1 && !dVar3.f14860e.f15319e.f15299j) {
                                    return;
                                } else {
                                    i21 = i32;
                                }
                            } else {
                                i21 = i32;
                                if (pVar.f15315a == 1 && i27 == 0) {
                                    i22 = gVar.f15302m;
                                    i30++;
                                } else {
                                    if (gVar.f15299j) {
                                        i22 = i21;
                                    }
                                    if (z12) {
                                        i14 += i22;
                                    } else {
                                        i30++;
                                        f11 = dVar3.f14877m0[this.f15320f];
                                        if (f11 >= 0.0f) {
                                            f10 += f11;
                                        }
                                    }
                                    if (i29 >= i25 && i29 < i10) {
                                        i14 += -pVar.f15323i.f15295f;
                                    }
                                }
                                z12 = true;
                                if (z12) {
                                    i30++;
                                    f11 = dVar3.f14877m0[this.f15320f];
                                    if (f11 >= 0.0f) {
                                        f10 += f11;
                                    }
                                } else {
                                    i14 += i22;
                                }
                                if (i29 >= i25) {
                                }
                            }
                            i22 = i21;
                            if (z12) {
                                i30++;
                                f11 = dVar3.f14877m0[this.f15320f];
                                if (f11 >= 0.0f) {
                                    f10 += f11;
                                }
                            } else {
                                i14 += i22;
                            }
                            if (i29 >= i25) {
                            }
                        }
                        i29++;
                        i11 = 8;
                        i28 = 3;
                    }
                    if (i14 < i23 || i30 == 0) {
                        i12 = i30;
                        i13 = i31;
                        break;
                    } else {
                        i27++;
                        i11 = 8;
                    }
                }
                int i34 = this.f15322h.f15296g;
                if (z11) {
                    i34 = this.f15323i.f15296g;
                }
                if (i14 > i23) {
                    int i35 = (int) (((i14 - i23) / 2.0f) + 0.5f);
                    i34 = z11 ? i34 + i35 : i34 - i35;
                }
                if (i12 > 0) {
                    float f12 = i23 - i14;
                    int i36 = (int) ((f12 / i12) + 0.5f);
                    int i37 = 0;
                    int i38 = 0;
                    while (i37 < size) {
                        p pVar2 = this.f15280k.get(i37);
                        int i39 = i36;
                        s.d dVar4 = pVar2.f15316b;
                        int i40 = i14;
                        int i41 = i34;
                        if (dVar4.f14869i0 != 8 && pVar2.f15318d == 3) {
                            g gVar2 = pVar2.f15319e;
                            if (gVar2.f15299j) {
                                z11 = z11;
                            } else {
                                int i42 = f10 > 0.0f ? (int) (((dVar4.f14877m0[this.f15320f] * f12) / f10) + 0.5f) : i39;
                                if (this.f15320f == 0) {
                                    i19 = dVar4.f14890v;
                                    i20 = dVar4.f14889u;
                                } else {
                                    i19 = dVar4.f14893y;
                                    i20 = dVar4.f14892x;
                                }
                                int iMax = Math.max(i20, pVar2.f15315a == 1 ? Math.min(i42, gVar2.f15302m) : i42);
                                if (i19 > 0) {
                                    iMax = Math.min(i19, iMax);
                                }
                                if (iMax != i42) {
                                    i38++;
                                    i42 = iMax;
                                }
                                pVar2.f15319e.d(i42);
                            }
                        } else {
                            z11 = z11;
                        }
                        i37++;
                        i36 = i39;
                        i14 = i40;
                        i34 = i41;
                        z11 = z11;
                        f12 = f12;
                        i13 = i13;
                    }
                    z10 = z11;
                    i15 = i13;
                    i16 = i34;
                    int i43 = i14;
                    if (i38 > 0) {
                        i12 -= i38;
                        int i44 = 0;
                        for (int i45 = 0; i45 < size; i45++) {
                            p pVar3 = this.f15280k.get(i45);
                            if (pVar3.f15316b.f14869i0 != 8) {
                                if (i45 > 0 && i45 >= i24) {
                                    i44 += pVar3.f15322h.f15295f;
                                }
                                i44 += pVar3.f15319e.f15296g;
                                if (i45 < i25 && i45 < i10) {
                                    i44 += -pVar3.f15323i.f15295f;
                                }
                            }
                        }
                        i14 = i44;
                    } else {
                        i14 = i43;
                    }
                    i18 = 2;
                    if (this.f15281l == 2 && i38 == 0) {
                        i17 = 0;
                        this.f15281l = 0;
                    } else {
                        i17 = 0;
                    }
                } else {
                    z10 = z11;
                    i15 = i13;
                    i16 = i34;
                    i17 = 0;
                    i18 = 2;
                }
                if (i14 > i23) {
                    this.f15281l = i18;
                }
                if (i15 > 0 && i12 == 0 && i24 == i10) {
                    this.f15281l = i18;
                }
                int i46 = this.f15281l;
                if (i46 == 1) {
                    int i47 = i15;
                    int i48 = i47 > 1 ? (i23 - i14) / (i47 - 1) : i47 == 1 ? (i23 - i14) / 2 : i17;
                    if (i12 > 0) {
                        i48 = i17;
                    }
                    int i49 = i16;
                    for (int i50 = i17; i50 < size; i50++) {
                        p pVar4 = this.f15280k.get(z10 ? size - (i50 + 1) : i50);
                        if (pVar4.f15316b.f14869i0 == 8) {
                            pVar4.f15322h.d(i49);
                            pVar4.f15323i.d(i49);
                        } else {
                            if (i50 > 0) {
                                i49 = z10 ? i49 - i48 : i49 + i48;
                            }
                            if (i50 > 0 && i50 >= i24) {
                                i49 = z10 ? i49 - pVar4.f15322h.f15295f : i49 + pVar4.f15322h.f15295f;
                            }
                            if (z10) {
                                pVar4.f15323i.d(i49);
                            } else {
                                pVar4.f15322h.d(i49);
                            }
                            g gVar3 = pVar4.f15319e;
                            int i51 = gVar3.f15296g;
                            if (pVar4.f15318d == 3 && pVar4.f15315a == 1) {
                                i51 = gVar3.f15302m;
                            }
                            i49 = z10 ? i49 - i51 : i49 + i51;
                            if (z10) {
                                pVar4.f15322h.d(i49);
                            } else {
                                pVar4.f15323i.d(i49);
                            }
                            pVar4.f15321g = true;
                            if (i50 < i25 && i50 < i10) {
                                i49 = z10 ? i49 - (-pVar4.f15323i.f15295f) : i49 + (-pVar4.f15323i.f15295f);
                            }
                        }
                    }
                    return;
                }
                int i52 = i15;
                if (i46 == 0) {
                    int i53 = (i23 - i14) / (i52 + 1);
                    if (i12 > 0) {
                        i53 = i17;
                    }
                    int i54 = i16;
                    for (int i55 = i17; i55 < size; i55++) {
                        p pVar5 = this.f15280k.get(z10 ? size - (i55 + 1) : i55);
                        if (pVar5.f15316b.f14869i0 == 8) {
                            pVar5.f15322h.d(i54);
                            pVar5.f15323i.d(i54);
                        } else {
                            int i56 = z10 ? i54 - i53 : i54 + i53;
                            if (i55 > 0 && i55 >= i24) {
                                i56 = z10 ? i56 - pVar5.f15322h.f15295f : i56 + pVar5.f15322h.f15295f;
                            }
                            if (z10) {
                                pVar5.f15323i.d(i56);
                            } else {
                                pVar5.f15322h.d(i56);
                            }
                            g gVar4 = pVar5.f15319e;
                            int iMin = gVar4.f15296g;
                            if (pVar5.f15318d == 3 && pVar5.f15315a == 1) {
                                iMin = Math.min(iMin, gVar4.f15302m);
                            }
                            i54 = z10 ? i56 - iMin : i56 + iMin;
                            if (z10) {
                                pVar5.f15322h.d(i54);
                            } else {
                                pVar5.f15323i.d(i54);
                            }
                            if (i55 < i25 && i55 < i10) {
                                i54 = z10 ? i54 - (-pVar5.f15323i.f15295f) : i54 + (-pVar5.f15323i.f15295f);
                            }
                        }
                    }
                    return;
                }
                if (i46 == 2) {
                    float f13 = this.f15320f == 0 ? this.f15316b.f14863f0 : this.f15316b.f14865g0;
                    if (z10) {
                        f13 = 1.0f - f13;
                    }
                    int i57 = (int) (((i23 - i14) * f13) + 0.5f);
                    if (i57 < 0 || i12 > 0) {
                        i57 = i17;
                    }
                    int i58 = z10 ? i16 - i57 : i16 + i57;
                    for (int i59 = i17; i59 < size; i59++) {
                        p pVar6 = this.f15280k.get(z10 ? size - (i59 + 1) : i59);
                        if (pVar6.f15316b.f14869i0 == 8) {
                            pVar6.f15322h.d(i58);
                            pVar6.f15323i.d(i58);
                        } else {
                            if (i59 > 0 && i59 >= i24) {
                                i58 = z10 ? i58 - pVar6.f15322h.f15295f : i58 + pVar6.f15322h.f15295f;
                            }
                            if (z10) {
                                pVar6.f15323i.d(i58);
                            } else {
                                pVar6.f15322h.d(i58);
                            }
                            g gVar5 = pVar6.f15319e;
                            int i60 = gVar5.f15296g;
                            if (pVar6.f15318d == 3 && pVar6.f15315a == 1) {
                                i60 = gVar5.f15302m;
                            }
                            i58 = z10 ? i58 - i60 : i58 + i60;
                            if (z10) {
                                pVar6.f15322h.d(i58);
                            } else {
                                pVar6.f15323i.d(i58);
                            }
                            if (i59 < i25 && i59 < i10) {
                                i58 = z10 ? i58 - (-pVar6.f15323i.f15295f) : i58 + (-pVar6.f15323i.f15295f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // t.p
    public final void d() {
        Iterator<p> it = this.f15280k.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        int size = this.f15280k.size();
        if (size < 1) {
            return;
        }
        s.d dVar = this.f15280k.get(0).f15316b;
        s.d dVar2 = this.f15280k.get(size - 1).f15316b;
        if (this.f15320f == 0) {
            s.c cVar = dVar.J;
            s.c cVar2 = dVar2.L;
            f fVarI = i(cVar, 0);
            int iD = cVar.d();
            s.d dVarM = m();
            if (dVarM != null) {
                iD = dVarM.J.d();
            }
            if (fVarI != null) {
                b(this.f15322h, fVarI, iD);
            }
            f fVarI2 = i(cVar2, 0);
            int iD2 = cVar2.d();
            s.d dVarN = n();
            if (dVarN != null) {
                iD2 = dVarN.L.d();
            }
            if (fVarI2 != null) {
                b(this.f15323i, fVarI2, -iD2);
            }
        } else {
            s.c cVar3 = dVar.K;
            s.c cVar4 = dVar2.M;
            f fVarI3 = i(cVar3, 1);
            int iD3 = cVar3.d();
            s.d dVarM2 = m();
            if (dVarM2 != null) {
                iD3 = dVarM2.K.d();
            }
            if (fVarI3 != null) {
                b(this.f15322h, fVarI3, iD3);
            }
            f fVarI4 = i(cVar4, 1);
            int iD4 = cVar4.d();
            s.d dVarN2 = n();
            if (dVarN2 != null) {
                iD4 = dVarN2.M.d();
            }
            if (fVarI4 != null) {
                b(this.f15323i, fVarI4, -iD4);
            }
        }
        this.f15322h.f15290a = this;
        this.f15323i.f15290a = this;
    }

    @Override // t.p
    public final void e() {
        for (int i10 = 0; i10 < this.f15280k.size(); i10++) {
            this.f15280k.get(i10).e();
        }
    }

    @Override // t.p
    public final void f() {
        this.f15317c = null;
        Iterator<p> it = this.f15280k.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // t.p
    public final long j() {
        int size = this.f15280k.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            p pVar = this.f15280k.get(i10);
            j10 = ((long) pVar.f15323i.f15295f) + pVar.j() + j10 + ((long) pVar.f15322h.f15295f);
        }
        return j10;
    }

    @Override // t.p
    public final boolean k() {
        int size = this.f15280k.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.f15280k.get(i10).k()) {
                return false;
            }
        }
        return true;
    }

    public final s.d m() {
        for (int i10 = 0; i10 < this.f15280k.size(); i10++) {
            s.d dVar = this.f15280k.get(i10).f15316b;
            if (dVar.f14869i0 != 8) {
                return dVar;
            }
        }
        return null;
    }

    public final s.d n() {
        for (int size = this.f15280k.size() - 1; size >= 0; size--) {
            s.d dVar = this.f15280k.get(size).f15316b;
            if (dVar.f14869i0 != 8) {
                return dVar;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.f15320f == 0 ? "horizontal : " : "vertical : ");
        for (p pVar : this.f15280k) {
            sb2.append("<");
            sb2.append(pVar);
            sb2.append("> ");
        }
        return sb2.toString();
    }
}
