package t;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: DependencyGraph.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public s.e f15282a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s.e f15285d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b.InterfaceC0261b f15287f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b.a f15288g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<m> f15289h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15283b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15284c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList<p> f15286e = new ArrayList<>();

    public e(s.e eVar) {
        new ArrayList();
        this.f15287f = null;
        this.f15288g = new b.a();
        this.f15289h = new ArrayList<>();
        this.f15282a = eVar;
        this.f15285d = eVar;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.ArrayList, java.util.List<t.f>] */
    public final void a(f fVar, int i10, int i11, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.f15293d;
        if (pVar.f15317c == null) {
            s.e eVar = this.f15282a;
            if (pVar == eVar.f14859d || pVar == eVar.f14860e) {
                return;
            }
            if (mVar == null) {
                mVar = new m(pVar);
                arrayList.add(mVar);
            }
            pVar.f15317c = mVar;
            mVar.f15306b.add(pVar);
            for (d dVar : pVar.f15322h.f15300k) {
                if (dVar instanceof f) {
                    a((f) dVar, i10, 0, fVar2, arrayList, mVar);
                }
            }
            for (d dVar2 : pVar.f15323i.f15300k) {
                if (dVar2 instanceof f) {
                    a((f) dVar2, i10, 1, fVar2, arrayList, mVar);
                }
            }
            if (i10 == 1 && (pVar instanceof n)) {
                for (d dVar3 : ((n) pVar).f15307k.f15300k) {
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i10, 2, fVar2, arrayList, mVar);
                    }
                }
            }
            Iterator it = pVar.f15322h.f15301l.iterator();
            while (it.hasNext()) {
                a((f) it.next(), i10, 0, fVar2, arrayList, mVar);
            }
            Iterator it2 = pVar.f15323i.f15301l.iterator();
            while (it2.hasNext()) {
                a((f) it2.next(), i10, 1, fVar2, arrayList, mVar);
            }
            if (i10 == 1 && (pVar instanceof n)) {
                Iterator it3 = ((n) pVar).f15307k.f15301l.iterator();
                while (it3.hasNext()) {
                    a((f) it3.next(), i10, 2, fVar2, arrayList, mVar);
                }
            }
        }
    }

    public final void b(s.e eVar) {
        int iR;
        int iK;
        int i10;
        for (s.d dVar : eVar.f14911r0) {
            int[] iArr = dVar.U;
            int i11 = iArr[0];
            int i12 = iArr[1];
            if (dVar.f14869i0 == 8) {
                dVar.f14853a = true;
            } else {
                float f10 = dVar.f14891w;
                if (f10 < 1.0f && i11 == 3) {
                    dVar.f14886r = 2;
                }
                float f11 = dVar.f14894z;
                if (f11 < 1.0f && i12 == 3) {
                    dVar.f14887s = 2;
                }
                if (dVar.Y > 0.0f) {
                    if (i11 == 3 && (i12 == 2 || i12 == 1)) {
                        dVar.f14886r = 3;
                    } else if (i12 == 3 && (i11 == 2 || i11 == 1)) {
                        dVar.f14887s = 3;
                    } else if (i11 == 3 && i12 == 3) {
                        if (dVar.f14886r == 0) {
                            dVar.f14886r = 3;
                        }
                        if (dVar.f14887s == 0) {
                            dVar.f14887s = 3;
                        }
                    }
                }
                if (i11 == 3 && dVar.f14886r == 1 && (dVar.J.f14840f == null || dVar.L.f14840f == null)) {
                    i11 = 2;
                }
                int i13 = (i12 == 3 && dVar.f14887s == 1 && (dVar.K.f14840f == null || dVar.M.f14840f == null)) ? 2 : i12;
                l lVar = dVar.f14859d;
                lVar.f15318d = i11;
                int i14 = dVar.f14886r;
                lVar.f15315a = i14;
                n nVar = dVar.f14860e;
                nVar.f15318d = i13;
                int i15 = dVar.f14887s;
                nVar.f15315a = i15;
                if ((i11 == 4 || i11 == 1 || i11 == 2) && (i13 == 4 || i13 == 1 || i13 == 2)) {
                    int iR2 = dVar.r();
                    if (i11 == 4) {
                        iR = (eVar.r() - dVar.J.f14841g) - dVar.L.f14841g;
                        i11 = 1;
                    } else {
                        iR = iR2;
                    }
                    int iK2 = dVar.k();
                    if (i13 == 4) {
                        iK = (eVar.k() - dVar.K.f14841g) - dVar.M.f14841g;
                        i10 = 1;
                    } else {
                        iK = iK2;
                        i10 = i13;
                    }
                    f(dVar, i11, iR, i10, iK);
                    dVar.f14859d.f15319e.d(dVar.r());
                    dVar.f14860e.f15319e.d(dVar.k());
                    dVar.f14853a = true;
                } else {
                    if (i11 == 3 && (i13 == 2 || i13 == 1)) {
                        if (i14 == 3) {
                            if (i13 == 2) {
                                f(dVar, 2, 0, 2, 0);
                            }
                            int iK3 = dVar.k();
                            f(dVar, 1, (int) ((iK3 * dVar.Y) + 0.5f), 1, iK3);
                            dVar.f14859d.f15319e.d(dVar.r());
                            dVar.f14860e.f15319e.d(dVar.k());
                            dVar.f14853a = true;
                        } else if (i14 == 1) {
                            f(dVar, 2, 0, i13, 0);
                            dVar.f14859d.f15319e.f15302m = dVar.r();
                        } else if (i14 == 2) {
                            int[] iArr2 = eVar.U;
                            if (iArr2[0] == 1 || iArr2[0] == 4) {
                                f(dVar, 1, (int) ((f10 * eVar.r()) + 0.5f), i13, dVar.k());
                                dVar.f14859d.f15319e.d(dVar.r());
                                dVar.f14860e.f15319e.d(dVar.k());
                                dVar.f14853a = true;
                            }
                        } else {
                            s.c[] cVarArr = dVar.R;
                            if (cVarArr[0].f14840f == null || cVarArr[1].f14840f == null) {
                                f(dVar, 2, 0, i13, 0);
                                dVar.f14859d.f15319e.d(dVar.r());
                                dVar.f14860e.f15319e.d(dVar.k());
                                dVar.f14853a = true;
                            }
                        }
                    }
                    if (i13 == 3 && (i11 == 2 || i11 == 1)) {
                        if (i15 == 3) {
                            if (i11 == 2) {
                                f(dVar, 2, 0, 2, 0);
                            }
                            int iR3 = dVar.r();
                            float f12 = dVar.Y;
                            if (dVar.Z == -1) {
                                f12 = 1.0f / f12;
                            }
                            f(dVar, 1, iR3, 1, (int) ((iR3 * f12) + 0.5f));
                            dVar.f14859d.f15319e.d(dVar.r());
                            dVar.f14860e.f15319e.d(dVar.k());
                            dVar.f14853a = true;
                        } else if (i15 == 1) {
                            f(dVar, i11, 0, 2, 0);
                            dVar.f14860e.f15319e.f15302m = dVar.k();
                        } else if (i15 == 2) {
                            int[] iArr3 = eVar.U;
                            if (iArr3[1] == 1 || iArr3[1] == 4) {
                                f(dVar, i11, dVar.r(), 1, (int) ((f11 * eVar.k()) + 0.5f));
                                dVar.f14859d.f15319e.d(dVar.r());
                                dVar.f14860e.f15319e.d(dVar.k());
                                dVar.f14853a = true;
                            }
                        } else {
                            s.c[] cVarArr2 = dVar.R;
                            if (cVarArr2[2].f14840f == null || cVarArr2[3].f14840f == null) {
                                f(dVar, 2, 0, i13, 0);
                                dVar.f14859d.f15319e.d(dVar.r());
                                dVar.f14860e.f15319e.d(dVar.k());
                                dVar.f14853a = true;
                            }
                        }
                    }
                    if (i11 == 3 && i13 == 3) {
                        if (i14 == 1 || i15 == 1) {
                            f(dVar, 2, 0, 2, 0);
                            dVar.f14859d.f15319e.f15302m = dVar.r();
                            dVar.f14860e.f15319e.f15302m = dVar.k();
                        } else if (i15 == 2 && i14 == 2) {
                            int[] iArr4 = eVar.U;
                            if (iArr4[0] == 1 && iArr4[1] == 1) {
                                f(dVar, 1, (int) ((f10 * eVar.r()) + 0.5f), 1, (int) ((f11 * eVar.k()) + 0.5f));
                                dVar.f14859d.f15319e.d(dVar.r());
                                dVar.f14860e.f15319e.d(dVar.k());
                                dVar.f14853a = true;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void c() {
        ArrayList<p> arrayList = this.f15286e;
        arrayList.clear();
        this.f15285d.f14859d.f();
        this.f15285d.f14860e.f();
        arrayList.add(this.f15285d.f14859d);
        arrayList.add(this.f15285d.f14860e);
        HashSet hashSet = null;
        for (s.d dVar : this.f15285d.f14911r0) {
            if (dVar instanceof s.f) {
                arrayList.add(new j(dVar));
            } else {
                if (dVar.y()) {
                    if (dVar.f14855b == null) {
                        dVar.f14855b = new c(dVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f14855b);
                } else {
                    arrayList.add(dVar.f14859d);
                }
                if (dVar.z()) {
                    if (dVar.f14857c == null) {
                        dVar.f14857c = new c(dVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f14857c);
                } else {
                    arrayList.add(dVar.f14860e);
                }
                if (dVar instanceof s.h) {
                    arrayList.add(new k(dVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<p> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        for (p pVar : arrayList) {
            if (pVar.f15316b != this.f15285d) {
                pVar.d();
            }
        }
        this.f15289h.clear();
        e(this.f15282a.f14859d, 0, this.f15289h);
        e(this.f15282a.f14860e, 1, this.f15289h);
        this.f15283b = false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0038 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x003a  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    /* JADX WARN: Code duplicated, block: B:25:0x0064 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:48:0x0109  */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.util.ArrayList, java.util.List<t.f>] */
    public final int d(s.e eVar, int i10) {
        p pVar;
        p pVar2;
        boolean zContains;
        boolean zContains2;
        long j10;
        float f10;
        long j11;
        e eVar2 = this;
        int size = eVar2.f15289h.size();
        long jMax = 0;
        int i11 = 0;
        long j12 = 0;
        while (i11 < size) {
            m mVar = eVar2.f15289h.get(i11);
            p pVar3 = mVar.f15305a;
            if (pVar3 instanceof c) {
                if (((c) pVar3).f15320f == i10) {
                    if (i10 == 0) {
                        pVar = eVar.f14859d;
                    } else {
                        pVar = eVar.f14860e;
                    }
                    f fVar = pVar.f15322h;
                    if (i10 == 0) {
                        pVar2 = eVar.f14859d;
                    } else {
                        pVar2 = eVar.f14860e;
                    }
                    f fVar2 = pVar2.f15323i;
                    zContains = pVar3.f15322h.f15301l.contains(fVar);
                    zContains2 = mVar.f15305a.f15323i.f15301l.contains(fVar2);
                    j10 = mVar.f15305a.j();
                    if (!zContains && zContains2) {
                        long jB = mVar.b(mVar.f15305a.f15322h, j12);
                        long jA = mVar.a(mVar.f15305a.f15323i, j12);
                        long j13 = jB - j10;
                        p pVar4 = mVar.f15305a;
                        int i12 = pVar4.f15323i.f15295f;
                        if (j13 >= (-i12)) {
                            j13 += (long) i12;
                        }
                        long j14 = (-jA) - j10;
                        long j15 = pVar4.f15322h.f15295f;
                        long j16 = j14 - j15;
                        if (j16 >= j15) {
                            j16 -= j15;
                        }
                        s.d dVar = pVar4.f15316b;
                        Objects.requireNonNull(dVar);
                        if (i10 == 0) {
                            f10 = dVar.f14863f0;
                        } else {
                            f10 = i10 == 1 ? dVar.f14865g0 : -1.0f;
                        }
                        if (f10 > 0.0f) {
                            j11 = (long) ((j13 / (1.0f - f10)) + (j16 / f10));
                        } else {
                            j11 = 0;
                        }
                        float f11 = j11;
                        long jC = ((long) ((f11 * f10) + 0.5f)) + j10 + ((long) androidx.appcompat.widget.o.c(1.0f, f10, f11, 0.5f));
                        p pVar5 = mVar.f15305a;
                        j12 = (((long) pVar5.f15322h.f15295f) + jC) - ((long) pVar5.f15323i.f15295f);
                    } else if (zContains) {
                        f fVar3 = mVar.f15305a.f15322h;
                        j12 = Math.max(mVar.b(fVar3, fVar3.f15295f), ((long) mVar.f15305a.f15322h.f15295f) + j10);
                    } else if (zContains2) {
                        f fVar4 = mVar.f15305a.f15323i;
                        j12 = Math.max(-mVar.a(fVar4, fVar4.f15295f), ((long) (-mVar.f15305a.f15323i.f15295f)) + j10);
                    } else {
                        p pVar6 = mVar.f15305a;
                        j12 = (pVar6.j() + ((long) pVar6.f15322h.f15295f)) - ((long) mVar.f15305a.f15323i.f15295f);
                    }
                }
            } else if (i10 == 0) {
                if (pVar3 instanceof l) {
                    if (i10 == 0) {
                        pVar = eVar.f14859d;
                    } else {
                        pVar = eVar.f14860e;
                    }
                    f fVar5 = pVar.f15322h;
                    if (i10 == 0) {
                        pVar2 = eVar.f14859d;
                    } else {
                        pVar2 = eVar.f14860e;
                    }
                    f fVar6 = pVar2.f15323i;
                    zContains = pVar3.f15322h.f15301l.contains(fVar5);
                    zContains2 = mVar.f15305a.f15323i.f15301l.contains(fVar6);
                    j10 = mVar.f15305a.j();
                    if (!zContains) {
                        if (zContains) {
                            f fVar7 = mVar.f15305a.f15322h;
                            j12 = Math.max(mVar.b(fVar7, fVar7.f15295f), ((long) mVar.f15305a.f15322h.f15295f) + j10);
                        } else if (zContains2) {
                            f fVar8 = mVar.f15305a.f15323i;
                            j12 = Math.max(-mVar.a(fVar8, fVar8.f15295f), ((long) (-mVar.f15305a.f15323i.f15295f)) + j10);
                        } else {
                            p pVar7 = mVar.f15305a;
                            j12 = (pVar7.j() + ((long) pVar7.f15322h.f15295f)) - ((long) mVar.f15305a.f15323i.f15295f);
                        }
                    } else if (zContains) {
                        f fVar9 = mVar.f15305a.f15322h;
                        j12 = Math.max(mVar.b(fVar9, fVar9.f15295f), ((long) mVar.f15305a.f15322h.f15295f) + j10);
                    } else if (zContains2) {
                        f fVar10 = mVar.f15305a.f15323i;
                        j12 = Math.max(-mVar.a(fVar10, fVar10.f15295f), ((long) (-mVar.f15305a.f15323i.f15295f)) + j10);
                    } else {
                        p pVar8 = mVar.f15305a;
                        j12 = (pVar8.j() + ((long) pVar8.f15322h.f15295f)) - ((long) mVar.f15305a.f15323i.f15295f);
                    }
                }
            } else if (pVar3 instanceof n) {
                if (i10 == 0) {
                    pVar = eVar.f14859d;
                } else {
                    pVar = eVar.f14860e;
                }
                f fVar11 = pVar.f15322h;
                if (i10 == 0) {
                    pVar2 = eVar.f14859d;
                } else {
                    pVar2 = eVar.f14860e;
                }
                f fVar12 = pVar2.f15323i;
                zContains = pVar3.f15322h.f15301l.contains(fVar11);
                zContains2 = mVar.f15305a.f15323i.f15301l.contains(fVar12);
                j10 = mVar.f15305a.j();
                if (!zContains) {
                    if (zContains) {
                        f fVar13 = mVar.f15305a.f15322h;
                        j12 = Math.max(mVar.b(fVar13, fVar13.f15295f), ((long) mVar.f15305a.f15322h.f15295f) + j10);
                    } else if (zContains2) {
                        f fVar14 = mVar.f15305a.f15323i;
                        j12 = Math.max(-mVar.a(fVar14, fVar14.f15295f), ((long) (-mVar.f15305a.f15323i.f15295f)) + j10);
                    } else {
                        p pVar9 = mVar.f15305a;
                        j12 = (pVar9.j() + ((long) pVar9.f15322h.f15295f)) - ((long) mVar.f15305a.f15323i.f15295f);
                    }
                } else if (zContains) {
                    f fVar15 = mVar.f15305a.f15322h;
                    j12 = Math.max(mVar.b(fVar15, fVar15.f15295f), ((long) mVar.f15305a.f15322h.f15295f) + j10);
                } else if (zContains2) {
                    f fVar16 = mVar.f15305a.f15323i;
                    j12 = Math.max(-mVar.a(fVar16, fVar16.f15295f), ((long) (-mVar.f15305a.f15323i.f15295f)) + j10);
                } else {
                    p pVar10 = mVar.f15305a;
                    j12 = (pVar10.j() + ((long) pVar10.f15322h.f15295f)) - ((long) mVar.f15305a.f15323i.f15295f);
                }
            }
            jMax = Math.max(jMax, j12);
            i11++;
            j12 = 0;
            eVar2 = this;
        }
        return (int) jMax;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.util.ArrayList, java.util.List<t.d>] */
    public final void e(p pVar, int i10, ArrayList<m> arrayList) {
        for (d dVar : pVar.f15322h.f15300k) {
            if (dVar instanceof f) {
                a((f) dVar, i10, 0, pVar.f15323i, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).f15322h, i10, 0, pVar.f15323i, arrayList, null);
            }
        }
        for (d dVar2 : pVar.f15323i.f15300k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i10, 1, pVar.f15322h, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).f15323i, i10, 1, pVar.f15322h, arrayList, null);
            }
        }
        if (i10 == 1) {
            for (d dVar3 : ((n) pVar).f15307k.f15300k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i10, 2, null, arrayList, null);
                }
            }
        }
    }

    public final void f(s.d dVar, int i10, int i11, int i12, int i13) {
        b.a aVar = this.f15288g;
        aVar.f15270a = i10;
        aVar.f15271b = i12;
        aVar.f15272c = i11;
        aVar.f15273d = i13;
        ((ConstraintLayout.b) this.f15287f).b(dVar, aVar);
        dVar.Q(this.f15288g.f15274e);
        dVar.L(this.f15288g.f15275f);
        b.a aVar2 = this.f15288g;
        dVar.E = aVar2.f15277h;
        dVar.I(aVar2.f15276g);
    }

    public final void g() {
        a aVar;
        for (s.d dVar : this.f15282a.f14911r0) {
            if (!dVar.f14853a) {
                int[] iArr = dVar.U;
                boolean z10 = false;
                int i10 = iArr[0];
                int i11 = iArr[1];
                int i12 = dVar.f14886r;
                int i13 = dVar.f14887s;
                boolean z11 = i10 == 2 || (i10 == 3 && i12 == 1);
                if (i11 == 2 || (i11 == 3 && i13 == 1)) {
                    z10 = true;
                }
                g gVar = dVar.f14859d.f15319e;
                boolean z12 = gVar.f15299j;
                g gVar2 = dVar.f14860e.f15319e;
                boolean z13 = gVar2.f15299j;
                if (z12 && z13) {
                    f(dVar, 1, gVar.f15296g, 1, gVar2.f15296g);
                    dVar.f14853a = true;
                } else if (z12 && z10) {
                    f(dVar, 1, gVar.f15296g, 2, gVar2.f15296g);
                    if (i11 == 3) {
                        dVar.f14860e.f15319e.f15302m = dVar.k();
                    } else {
                        dVar.f14860e.f15319e.d(dVar.k());
                        dVar.f14853a = true;
                    }
                } else if (z13 && z11) {
                    f(dVar, 2, gVar.f15296g, 1, gVar2.f15296g);
                    if (i10 == 3) {
                        dVar.f14859d.f15319e.f15302m = dVar.r();
                    } else {
                        dVar.f14859d.f15319e.d(dVar.r());
                        dVar.f14853a = true;
                    }
                }
                if (dVar.f14853a && (aVar = dVar.f14860e.f15308l) != null) {
                    aVar.d(dVar.f14858c0);
                }
            }
        }
    }
}
