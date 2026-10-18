package t;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: Direct.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b.a f15303a = new b.a();

    public static boolean a(s.d dVar) {
        int[] iArr = dVar.U;
        int i10 = iArr[0];
        int i11 = iArr[1];
        s.d dVar2 = dVar.V;
        s.e eVar = dVar2 != null ? (s.e) dVar2 : null;
        if (eVar != null) {
            int i12 = eVar.U[0];
        }
        if (eVar != null) {
            int i13 = eVar.U[1];
        }
        boolean z10 = i10 == 1 || dVar.B() || i10 == 2 || (i10 == 3 && dVar.f14886r == 0 && dVar.Y == 0.0f && dVar.u(0)) || (i10 == 3 && dVar.f14886r == 1 && dVar.v(0, dVar.r()));
        boolean z11 = i11 == 1 || dVar.C() || i11 == 2 || (i11 == 3 && dVar.f14887s == 0 && dVar.Y == 0.0f && dVar.u(1)) || (i11 == 3 && dVar.f14887s == 1 && dVar.v(1, dVar.k()));
        if (dVar.Y <= 0.0f || !(z10 || z11)) {
            return z10 && z11;
        }
        return true;
    }

    public static void b(int i10, s.d dVar, b.InterfaceC0261b interfaceC0261b, boolean z10) {
        s.c cVar;
        s.c cVar2;
        s.c cVar3;
        s.c cVar4;
        if (dVar.f14876m) {
            return;
        }
        if (!(dVar instanceof s.e) && dVar.A() && a(dVar)) {
            s.e.c0(dVar, interfaceC0261b, new b.a());
        }
        s.c cVarH = dVar.h(s.c.a.LEFT);
        s.c cVarH2 = dVar.h(s.c.a.RIGHT);
        int iC = cVarH.c();
        int iC2 = cVarH2.c();
        HashSet<s.c> hashSet = cVarH.f14835a;
        if (hashSet != null && cVarH.f14837c) {
            Iterator<s.c> it = hashSet.iterator();
            while (it.hasNext()) {
                s.c next = it.next();
                s.d dVar2 = next.f14838d;
                int i11 = i10 + 1;
                boolean zA = a(dVar2);
                if (dVar2.A() && zA) {
                    s.e.c0(dVar2, interfaceC0261b, new b.a());
                }
                s.c cVar5 = dVar2.J;
                boolean z11 = (next == cVar5 && (cVar4 = dVar2.L.f14840f) != null && cVar4.f14837c) || (next == dVar2.L && (cVar3 = cVar5.f14840f) != null && cVar3.f14837c);
                int[] iArr = dVar2.U;
                if (iArr[0] != 3 || zA) {
                    if (!dVar2.A()) {
                        s.c cVar6 = dVar2.J;
                        if (next == cVar6 && dVar2.L.f14840f == null) {
                            int iD = cVar6.d() + iC;
                            dVar2.J(iD, dVar2.r() + iD);
                            b(i11, dVar2, interfaceC0261b, z10);
                        } else {
                            s.c cVar7 = dVar2.L;
                            if (next == cVar7 && cVar6.f14840f == null) {
                                int iD2 = iC - cVar7.d();
                                dVar2.J(iD2 - dVar2.r(), iD2);
                                b(i11, dVar2, interfaceC0261b, z10);
                            } else if (z11 && !dVar2.y()) {
                                c(i11, interfaceC0261b, dVar2, z10);
                            }
                        }
                    }
                } else if (iArr[0] == 3 && dVar2.f14890v >= 0 && dVar2.f14889u >= 0 && (dVar2.f14869i0 == 8 || (dVar2.f14886r == 0 && dVar2.Y == 0.0f))) {
                    if (!dVar2.y() && !dVar2.G && z11 && !dVar2.y()) {
                        d(i11, dVar, interfaceC0261b, dVar2, z10);
                    }
                }
            }
        }
        if (dVar instanceof s.f) {
            return;
        }
        HashSet<s.c> hashSet2 = cVarH2.f14835a;
        if (hashSet2 != null && cVarH2.f14837c) {
            Iterator<s.c> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                s.c next2 = it2.next();
                s.d dVar3 = next2.f14838d;
                int i12 = i10 + 1;
                boolean zA2 = a(dVar3);
                if (dVar3.A() && zA2) {
                    s.e.c0(dVar3, interfaceC0261b, new b.a());
                }
                s.c cVar8 = dVar3.J;
                boolean z12 = (next2 == cVar8 && (cVar2 = dVar3.L.f14840f) != null && cVar2.f14837c) || (next2 == dVar3.L && (cVar = cVar8.f14840f) != null && cVar.f14837c);
                int[] iArr2 = dVar3.U;
                if (iArr2[0] != 3 || zA2) {
                    if (!dVar3.A()) {
                        s.c cVar9 = dVar3.J;
                        if (next2 == cVar9 && dVar3.L.f14840f == null) {
                            int iD3 = cVar9.d() + iC2;
                            dVar3.J(iD3, dVar3.r() + iD3);
                            b(i12, dVar3, interfaceC0261b, z10);
                        } else {
                            s.c cVar10 = dVar3.L;
                            if (next2 == cVar10 && cVar9.f14840f == null) {
                                int iD4 = iC2 - cVar10.d();
                                dVar3.J(iD4 - dVar3.r(), iD4);
                                b(i12, dVar3, interfaceC0261b, z10);
                            } else if (z12 && !dVar3.y()) {
                                c(i12, interfaceC0261b, dVar3, z10);
                            }
                        }
                    }
                } else if (iArr2[0] == 3 && dVar3.f14890v >= 0 && dVar3.f14889u >= 0) {
                    if (dVar3.f14869i0 != 8) {
                        if (dVar3.f14886r == 0) {
                            if (dVar3.Y == 0.0f) {
                            }
                        }
                    }
                    if (!dVar3.y() && !dVar3.G && z12 && !dVar3.y()) {
                        d(i12, dVar, interfaceC0261b, dVar3, z10);
                    }
                }
            }
        }
        dVar.f14876m = true;
    }

    public static void c(int i10, b.InterfaceC0261b interfaceC0261b, s.d dVar, boolean z10) {
        float f10 = dVar.f14863f0;
        int iC = dVar.J.f14840f.c();
        int iC2 = dVar.L.f14840f.c();
        int iD = dVar.J.d() + iC;
        int iD2 = iC2 - dVar.L.d();
        if (iC == iC2) {
            f10 = 0.5f;
        } else {
            iC = iD;
            iC2 = iD2;
        }
        int iR = dVar.r();
        int i11 = (iC2 - iC) - iR;
        if (iC > iC2) {
            i11 = (iC - iC2) - iR;
        }
        int i12 = ((int) (i11 > 0 ? (f10 * i11) + 0.5f : f10 * i11)) + iC;
        int i13 = i12 + iR;
        if (iC > iC2) {
            i13 = i12 - iR;
        }
        dVar.J(i12, i13);
        b(i10 + 1, dVar, interfaceC0261b, z10);
    }

    public static void d(int i10, s.d dVar, b.InterfaceC0261b interfaceC0261b, s.d dVar2, boolean z10) {
        float f10 = dVar2.f14863f0;
        int iD = dVar2.J.d() + dVar2.J.f14840f.c();
        int iC = dVar2.L.f14840f.c() - dVar2.L.d();
        if (iC >= iD) {
            int iR = dVar2.r();
            if (dVar2.f14869i0 != 8) {
                int i11 = dVar2.f14886r;
                if (i11 == 2) {
                    iR = (int) (dVar2.f14863f0 * 0.5f * (dVar instanceof s.e ? dVar.r() : dVar.V.r()));
                } else if (i11 == 0) {
                    iR = iC - iD;
                }
                iR = Math.max(dVar2.f14889u, iR);
                int i12 = dVar2.f14890v;
                if (i12 > 0) {
                    iR = Math.min(i12, iR);
                }
            }
            int i13 = iD + ((int) ((f10 * ((iC - iD) - iR)) + 0.5f));
            dVar2.J(i13, iR + i13);
            b(i10 + 1, dVar2, interfaceC0261b, z10);
        }
    }

    public static void e(int i10, b.InterfaceC0261b interfaceC0261b, s.d dVar) {
        float f10 = dVar.f14865g0;
        int iC = dVar.K.f14840f.c();
        int iC2 = dVar.M.f14840f.c();
        int iD = dVar.K.d() + iC;
        int iD2 = iC2 - dVar.M.d();
        if (iC == iC2) {
            f10 = 0.5f;
        } else {
            iC = iD;
            iC2 = iD2;
        }
        int iK = dVar.k();
        int i11 = (iC2 - iC) - iK;
        if (iC > iC2) {
            i11 = (iC - iC2) - iK;
        }
        int i12 = (int) (i11 > 0 ? (f10 * i11) + 0.5f : f10 * i11);
        int i13 = iC + i12;
        int i14 = i13 + iK;
        if (iC > iC2) {
            i13 = iC - i12;
            i14 = i13 - iK;
        }
        dVar.K(i13, i14);
        g(i10 + 1, dVar, interfaceC0261b);
    }

    public static void f(int i10, s.d dVar, b.InterfaceC0261b interfaceC0261b, s.d dVar2) {
        float f10 = dVar2.f14865g0;
        int iD = dVar2.K.d() + dVar2.K.f14840f.c();
        int iC = dVar2.M.f14840f.c() - dVar2.M.d();
        if (iC >= iD) {
            int iK = dVar2.k();
            if (dVar2.f14869i0 != 8) {
                int i11 = dVar2.f14887s;
                if (i11 == 2) {
                    iK = (int) (f10 * 0.5f * (dVar instanceof s.e ? dVar.k() : dVar.V.k()));
                } else if (i11 == 0) {
                    iK = iC - iD;
                }
                iK = Math.max(dVar2.f14892x, iK);
                int i12 = dVar2.f14893y;
                if (i12 > 0) {
                    iK = Math.min(i12, iK);
                }
            }
            int i13 = iD + ((int) ((f10 * ((iC - iD) - iK)) + 0.5f));
            dVar2.K(i13, iK + i13);
            g(i10 + 1, dVar2, interfaceC0261b);
        }
    }

    public static void g(int i10, s.d dVar, b.InterfaceC0261b interfaceC0261b) {
        s.c cVar;
        s.c cVar2;
        s.c cVar3;
        s.c cVar4;
        if (dVar.f14878n) {
            return;
        }
        if (!(dVar instanceof s.e) && dVar.A() && a(dVar)) {
            s.e.c0(dVar, interfaceC0261b, new b.a());
        }
        s.c cVarH = dVar.h(s.c.a.TOP);
        s.c cVarH2 = dVar.h(s.c.a.BOTTOM);
        int iC = cVarH.c();
        int iC2 = cVarH2.c();
        HashSet<s.c> hashSet = cVarH.f14835a;
        if (hashSet != null && cVarH.f14837c) {
            Iterator<s.c> it = hashSet.iterator();
            while (it.hasNext()) {
                s.c next = it.next();
                s.d dVar2 = next.f14838d;
                int i11 = i10 + 1;
                boolean zA = a(dVar2);
                if (dVar2.A() && zA) {
                    s.e.c0(dVar2, interfaceC0261b, new b.a());
                }
                s.c cVar5 = dVar2.K;
                boolean z10 = (next == cVar5 && (cVar4 = dVar2.M.f14840f) != null && cVar4.f14837c) || (next == dVar2.M && (cVar3 = cVar5.f14840f) != null && cVar3.f14837c);
                int[] iArr = dVar2.U;
                if (iArr[1] != 3 || zA) {
                    if (!dVar2.A()) {
                        s.c cVar6 = dVar2.K;
                        if (next == cVar6 && dVar2.M.f14840f == null) {
                            int iD = cVar6.d() + iC;
                            dVar2.K(iD, dVar2.k() + iD);
                            g(i11, dVar2, interfaceC0261b);
                        } else {
                            s.c cVar7 = dVar2.M;
                            if (next == cVar7 && cVar6.f14840f == null) {
                                int iD2 = iC - cVar7.d();
                                dVar2.K(iD2 - dVar2.k(), iD2);
                                g(i11, dVar2, interfaceC0261b);
                            } else if (z10 && !dVar2.z()) {
                                e(i11, interfaceC0261b, dVar2);
                            }
                        }
                    }
                } else if (iArr[1] == 3 && dVar2.f14893y >= 0 && dVar2.f14892x >= 0 && (dVar2.f14869i0 == 8 || (dVar2.f14887s == 0 && dVar2.Y == 0.0f))) {
                    if (!dVar2.z() && !dVar2.G && z10 && !dVar2.z()) {
                        f(i11, dVar, interfaceC0261b, dVar2);
                    }
                }
            }
        }
        if (dVar instanceof s.f) {
            return;
        }
        HashSet<s.c> hashSet2 = cVarH2.f14835a;
        if (hashSet2 != null && cVarH2.f14837c) {
            Iterator<s.c> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                s.c next2 = it2.next();
                s.d dVar3 = next2.f14838d;
                int i12 = i10 + 1;
                boolean zA2 = a(dVar3);
                if (dVar3.A() && zA2) {
                    s.e.c0(dVar3, interfaceC0261b, new b.a());
                }
                s.c cVar8 = dVar3.K;
                boolean z11 = (next2 == cVar8 && (cVar2 = dVar3.M.f14840f) != null && cVar2.f14837c) || (next2 == dVar3.M && (cVar = cVar8.f14840f) != null && cVar.f14837c);
                int[] iArr2 = dVar3.U;
                if (iArr2[1] != 3 || zA2) {
                    if (!dVar3.A()) {
                        s.c cVar9 = dVar3.K;
                        if (next2 == cVar9 && dVar3.M.f14840f == null) {
                            int iD3 = cVar9.d() + iC2;
                            dVar3.K(iD3, dVar3.k() + iD3);
                            g(i12, dVar3, interfaceC0261b);
                        } else {
                            s.c cVar10 = dVar3.M;
                            if (next2 == cVar10 && cVar9.f14840f == null) {
                                int iD4 = iC2 - cVar10.d();
                                dVar3.K(iD4 - dVar3.k(), iD4);
                                g(i12, dVar3, interfaceC0261b);
                            } else if (z11 && !dVar3.z()) {
                                e(i12, interfaceC0261b, dVar3);
                            }
                        }
                    }
                } else if (iArr2[1] == 3 && dVar3.f14893y >= 0 && dVar3.f14892x >= 0) {
                    if (dVar3.f14869i0 != 8) {
                        if (dVar3.f14887s == 0) {
                            if (dVar3.Y == 0.0f) {
                            }
                        }
                    }
                    if (!dVar3.z() && !dVar3.G && z11 && !dVar3.z()) {
                        f(i12, dVar, interfaceC0261b, dVar3);
                    }
                }
            }
        }
        s.c cVarH3 = dVar.h(s.c.a.BASELINE);
        if (cVarH3.f14835a != null && cVarH3.f14837c) {
            int iC3 = cVarH3.c();
            for (s.c cVar11 : cVarH3.f14835a) {
                s.d dVar4 = cVar11.f14838d;
                int i13 = i10 + 1;
                boolean zA3 = a(dVar4);
                if (dVar4.A() && zA3) {
                    s.e.c0(dVar4, interfaceC0261b, new b.a());
                }
                if (dVar4.U[1] != 3 || zA3) {
                    if (!dVar4.A() && cVar11 == dVar4.N) {
                        int iD5 = cVar11.d() + iC3;
                        if (dVar4.E) {
                            int i14 = iD5 - dVar4.f14858c0;
                            int i15 = dVar4.X + i14;
                            dVar4.f14856b0 = i14;
                            dVar4.K.j(i14);
                            dVar4.M.j(i15);
                            dVar4.N.j(iD5);
                            dVar4.f14874l = true;
                        }
                        g(i13, dVar4, interfaceC0261b);
                    }
                }
            }
        }
        dVar.f14878n = true;
    }
}
