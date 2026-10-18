package i2;

import android.graphics.Path;
import android.graphics.PointF;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: compiled from: ContentModelParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2.c.a f8681a = j2.c.a.a(TracePayload.PAYLOAD_TYPE_KEY, TracePayload.DATA_KEY);

    /* JADX WARN: Code duplicated, block: B:162:0x0236  */
    /* JADX WARN: Code duplicated, block: B:457:0x07c5 A[LOOP:1: B:455:0x07bf->B:457:0x07c5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:97:0x011b  */
    public static f2.b a(j2.c cVar, y1.i iVar) throws IOException {
        String strN0;
        byte b10;
        f2.b aVar;
        byte b11;
        cVar.Y();
        int iL0 = 2;
        while (true) {
            if (!cVar.i0()) {
                strN0 = null;
                break;
            }
            int iQ0 = cVar.q0(f8681a);
            if (iQ0 == 0) {
                strN0 = cVar.n0();
                break;
            }
            if (iQ0 != 1) {
                cVar.r0();
                cVar.s0();
            } else {
                iL0 = cVar.l0();
            }
        }
        if (strN0 == null) {
            return null;
        }
        int iHashCode = strN0.hashCode();
        boolean zJ0 = false;
        boolean zJ1 = false;
        int i10 = 0;
        if (iHashCode != 3239) {
            if (iHashCode != 3270) {
                if (iHashCode != 3295) {
                    if (iHashCode != 3488) {
                        if (iHashCode != 3646) {
                            if (iHashCode != 3669) {
                                if (iHashCode != 3679) {
                                    if (iHashCode != 3681) {
                                        if (iHashCode != 3705) {
                                            if (iHashCode != 3710) {
                                                if (iHashCode != 3307) {
                                                    if (iHashCode != 3308) {
                                                        if (iHashCode != 3633) {
                                                            if (iHashCode == 3634 && strN0.equals("rd")) {
                                                                b10 = 7;
                                                            } else {
                                                                b10 = -1;
                                                            }
                                                        } else if (strN0.equals("rc")) {
                                                            b10 = 6;
                                                        } else {
                                                            b10 = -1;
                                                        }
                                                    } else if (strN0.equals("gs")) {
                                                        b10 = 4;
                                                    } else {
                                                        b10 = -1;
                                                    }
                                                } else if (strN0.equals("gr")) {
                                                    b10 = 3;
                                                } else {
                                                    b10 = -1;
                                                }
                                            } else if (strN0.equals(TracePayload.TRACE_ID_KEY)) {
                                                b10 = 13;
                                            } else {
                                                b10 = -1;
                                            }
                                        } else if (strN0.equals("tm")) {
                                            b10 = 12;
                                        } else {
                                            b10 = -1;
                                        }
                                    } else if (strN0.equals("st")) {
                                        b10 = 11;
                                    } else {
                                        b10 = -1;
                                    }
                                } else if (strN0.equals("sr")) {
                                    b10 = 10;
                                } else {
                                    b10 = -1;
                                }
                            } else if (strN0.equals("sh")) {
                                b10 = 9;
                            } else {
                                b10 = -1;
                            }
                        } else if (strN0.equals("rp")) {
                            b10 = 8;
                        } else {
                            b10 = -1;
                        }
                    } else if (strN0.equals("mm")) {
                        b10 = 5;
                    } else {
                        b10 = -1;
                    }
                } else if (strN0.equals("gf")) {
                    b10 = 2;
                } else {
                    b10 = -1;
                }
            } else if (strN0.equals("fl")) {
                b10 = 1;
            } else {
                b10 = -1;
            }
        } else if (strN0.equals("el")) {
            b10 = 0;
        } else {
            b10 = -1;
        }
        switch (b10) {
            case 0:
                j2.c.a aVar2 = f.f8676a;
                boolean z10 = iL0 == 3;
                String strN1 = null;
                e2.l<PointF, PointF> lVarB = null;
                e2.f fVarE = null;
                boolean zJ2 = false;
                while (cVar.i0()) {
                    int iQ1 = cVar.q0(f.f8676a);
                    if (iQ1 == 0) {
                        strN1 = cVar.n0();
                    } else if (iQ1 == 1) {
                        lVarB = a.b(cVar, iVar);
                    } else if (iQ1 == 2) {
                        fVarE = d.e(cVar, iVar);
                    } else if (iQ1 == 3) {
                        zJ2 = cVar.j0();
                    } else if (iQ1 != 4) {
                        cVar.r0();
                        cVar.s0();
                    } else {
                        z10 = cVar.l0() == 3;
                    }
                }
                aVar = new f2.a(strN1, lVarB, fVarE, z10, zJ2);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 1:
                j2.c.a aVar3 = g0.f8680a;
                e2.d dVar = null;
                String strN2 = null;
                int iL1 = 1;
                e2.a aVarB = null;
                boolean zJ3 = false;
                boolean zJ4 = false;
                while (cVar.i0()) {
                    int iQ2 = cVar.q0(g0.f8680a);
                    if (iQ2 == 0) {
                        strN2 = cVar.n0();
                    } else if (iQ2 == 1) {
                        aVarB = d.b(cVar, iVar);
                    } else if (iQ2 == 2) {
                        dVar = d.d(cVar, iVar);
                    } else if (iQ2 == 3) {
                        zJ3 = cVar.j0();
                    } else if (iQ2 == 4) {
                        iL1 = cVar.l0();
                    } else if (iQ2 != 5) {
                        cVar.r0();
                        cVar.s0();
                    } else {
                        zJ4 = cVar.j0();
                    }
                }
                if (dVar == null) {
                    dVar = new e2.d(Collections.singletonList(new l2.a(100)));
                }
                aVar = new f2.m(strN2, zJ3, iL1 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVarB, dVar, zJ4);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 2:
                j2.c.a aVar4 = p.f8706a;
                e2.d dVarD = null;
                Path.FillType fillType = Path.FillType.WINDING;
                String strN3 = null;
                e2.c cVar2 = null;
                e2.f fVarE2 = null;
                e2.f fVarE3 = null;
                int i11 = 0;
                boolean zJ5 = false;
                while (cVar.i0()) {
                    switch (cVar.q0(p.f8706a)) {
                        case 0:
                            strN3 = cVar.n0();
                            break;
                        case 1:
                            cVar.Y();
                            int iL2 = -1;
                            while (cVar.i0()) {
                                int iQ3 = cVar.q0(p.f8707b);
                                if (iQ3 == 0) {
                                    iL2 = cVar.l0();
                                } else if (iQ3 != 1) {
                                    cVar.r0();
                                    cVar.s0();
                                } else {
                                    cVar2 = new e2.c(d.a(cVar, iVar, new o(iL2)));
                                }
                            }
                            cVar.g0();
                            break;
                        case 2:
                            dVarD = d.d(cVar, iVar);
                            break;
                        case 3:
                            i11 = cVar.l0() != 1 ? 2 : 1;
                            break;
                        case 4:
                            fVarE2 = d.e(cVar, iVar);
                            break;
                        case 5:
                            fVarE3 = d.e(cVar, iVar);
                            break;
                        case 6:
                            fillType = cVar.l0() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                            break;
                        case 7:
                            zJ5 = cVar.j0();
                            break;
                        default:
                            cVar.r0();
                            cVar.s0();
                            break;
                    }
                }
                aVar = new f2.d(strN3, i11, fillType, cVar2, dVarD == null ? new e2.d(Collections.singletonList(new l2.a(100))) : dVarD, fVarE2, fVarE3, zJ5);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 3:
                j2.c.a aVar5 = h0.f8682a;
                ArrayList arrayList = new ArrayList();
                String strN4 = null;
                while (cVar.i0()) {
                    int iQ4 = cVar.q0(h0.f8682a);
                    if (iQ4 == 0) {
                        strN4 = cVar.n0();
                    } else if (iQ4 == 1) {
                        zJ0 = cVar.j0();
                    } else if (iQ4 != 2) {
                        cVar.s0();
                    } else {
                        cVar.x();
                        while (cVar.i0()) {
                            f2.b bVarA = a(cVar, iVar);
                            if (bVarA != null) {
                                arrayList.add(bVarA);
                            }
                        }
                        cVar.f0();
                    }
                }
                aVar = new f2.n(strN4, arrayList, zJ0);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 4:
                j2.c.a aVar6 = q.f8708a;
                ArrayList arrayList2 = new ArrayList();
                e2.d dVarD2 = null;
                e2.c cVar3 = null;
                e2.f fVarE4 = null;
                int i12 = 0;
                int i13 = 0;
                boolean zJ6 = false;
                float fK0 = 0.0f;
                e2.f fVarE5 = null;
                e2.b bVarC = null;
                e2.b bVar = null;
                String strN5 = null;
                int i14 = 0;
                while (cVar.i0()) {
                    switch (cVar.q0(q.f8708a)) {
                        case 0:
                            strN5 = cVar.n0();
                            break;
                        case 1:
                            cVar.Y();
                            int iL3 = -1;
                            while (cVar.i0()) {
                                int iQ5 = cVar.q0(q.f8709b);
                                if (iQ5 == 0) {
                                    iL3 = cVar.l0();
                                } else if (iQ5 != 1) {
                                    cVar.r0();
                                    cVar.s0();
                                } else {
                                    cVar3 = new e2.c(d.a(cVar, iVar, new o(iL3)));
                                }
                            }
                            cVar.g0();
                            break;
                        case 2:
                            dVarD2 = d.d(cVar, iVar);
                            break;
                        case 3:
                            i14 = cVar.l0() != 1 ? 2 : 1;
                            break;
                        case 4:
                            fVarE4 = d.e(cVar, iVar);
                            break;
                        case 5:
                            fVarE5 = d.e(cVar, iVar);
                            break;
                        case 6:
                            bVarC = d.c(cVar, iVar, true);
                            break;
                        case 7:
                            i12 = q.g.b(3)[cVar.l0() - 1];
                            break;
                        case 8:
                            i13 = q.g.b(3)[cVar.l0() - 1];
                            break;
                        case 9:
                            fK0 = (float) cVar.k0();
                            break;
                        case 10:
                            zJ6 = cVar.j0();
                            break;
                        case 11:
                            cVar.x();
                            while (cVar.i0()) {
                                cVar.Y();
                                e2.b bVarC2 = null;
                                String strN6 = null;
                                while (cVar.i0()) {
                                    int iQ6 = cVar.q0(q.f8710c);
                                    if (iQ6 == 0) {
                                        strN6 = cVar.n0();
                                    } else if (iQ6 != 1) {
                                        cVar.r0();
                                        cVar.s0();
                                    } else {
                                        bVarC2 = d.c(cVar, iVar, true);
                                    }
                                }
                                cVar.g0();
                                if (strN6.equals("o")) {
                                    bVar = bVarC2;
                                } else if (strN6.equals(TracePayload.DATA_KEY) || strN6.equals("g")) {
                                    iVar.f18345n = true;
                                    arrayList2.add(bVarC2);
                                }
                            }
                            cVar.f0();
                            if (arrayList2.size() == 1) {
                                arrayList2.add((e2.b) arrayList2.get(0));
                            }
                            break;
                        default:
                            cVar.r0();
                            cVar.s0();
                            break;
                    }
                }
                aVar = new f2.e(strN5, i14, cVar3, dVarD2 == null ? new e2.d(Collections.singletonList(new l2.a(100))) : dVarD2, fVarE4, fVarE5, bVarC, i12, i13, fK0, arrayList2, bVar, zJ6);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 5:
                j2.c.a aVar7 = x.f8725a;
                String strN7 = null;
                boolean zJ7 = false;
                while (cVar.i0()) {
                    int iQ7 = cVar.q0(x.f8725a);
                    if (iQ7 == 0) {
                        strN7 = cVar.n0();
                    } else if (iQ7 == 1) {
                        int iL4 = cVar.l0();
                        if (iL4 != 1) {
                            if (iL4 == 2) {
                                i10 = 2;
                            } else if (iL4 == 3) {
                                i10 = 3;
                            } else if (iL4 == 4) {
                                i10 = 4;
                            } else if (iL4 == 5) {
                                i10 = 5;
                            }
                        }
                        i10 = 1;
                    } else if (iQ7 != 2) {
                        cVar.r0();
                        cVar.s0();
                    } else {
                        zJ7 = cVar.j0();
                    }
                }
                f2.g gVar = new f2.g(strN7, i10, zJ7);
                iVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                aVar = gVar;
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 6:
                j2.c.a aVar8 = b0.f8668a;
                String strN8 = null;
                e2.l<PointF, PointF> lVarB2 = null;
                e2.f fVarE6 = null;
                e2.b bVarC3 = null;
                boolean zJ8 = false;
                while (cVar.i0()) {
                    int iQ8 = cVar.q0(b0.f8668a);
                    if (iQ8 == 0) {
                        strN8 = cVar.n0();
                    } else if (iQ8 == 1) {
                        lVarB2 = a.b(cVar, iVar);
                    } else if (iQ8 == 2) {
                        fVarE6 = d.e(cVar, iVar);
                    } else if (iQ8 == 3) {
                        bVarC3 = d.c(cVar, iVar, true);
                    } else if (iQ8 != 4) {
                        cVar.s0();
                    } else {
                        zJ8 = cVar.j0();
                    }
                }
                aVar = new f2.i(strN8, lVarB2, fVarE6, bVarC3, zJ8);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 7:
                j2.c.a aVar9 = d0.f8672a;
                String strN9 = null;
                e2.b bVarC4 = null;
                while (cVar.i0()) {
                    int iQ9 = cVar.q0(d0.f8672a);
                    if (iQ9 == 0) {
                        strN9 = cVar.n0();
                    } else if (iQ9 == 1) {
                        bVarC4 = d.c(cVar, iVar, true);
                    } else if (iQ9 != 2) {
                        cVar.s0();
                    } else {
                        zJ1 = cVar.j0();
                    }
                }
                aVar = zJ1 ? null : new f2.k(strN9, bVarC4);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 8:
                j2.c.a aVar10 = c0.f8671a;
                String strN10 = null;
                e2.b bVarC5 = null;
                e2.b bVarC6 = null;
                e2.k kVarA = null;
                boolean zJ9 = false;
                while (cVar.i0()) {
                    int iQ10 = cVar.q0(c0.f8671a);
                    if (iQ10 == 0) {
                        strN10 = cVar.n0();
                    } else if (iQ10 == 1) {
                        bVarC5 = d.c(cVar, iVar, false);
                    } else if (iQ10 == 2) {
                        bVarC6 = d.c(cVar, iVar, false);
                    } else if (iQ10 == 3) {
                        kVarA = c.a(cVar, iVar);
                    } else if (iQ10 != 4) {
                        cVar.s0();
                    } else {
                        zJ9 = cVar.j0();
                    }
                }
                aVar = new f2.j(strN10, bVarC5, bVarC6, kVarA, zJ9);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 9:
                j2.c.a aVar11 = i0.f8685a;
                e2.h hVar = null;
                String strN11 = null;
                int iL5 = 0;
                boolean zJ10 = false;
                while (cVar.i0()) {
                    int iQ11 = cVar.q0(i0.f8685a);
                    if (iQ11 == 0) {
                        strN11 = cVar.n0();
                    } else if (iQ11 == 1) {
                        iL5 = cVar.l0();
                    } else if (iQ11 == 2) {
                        hVar = new e2.h(u.a(cVar, iVar, k2.g.c(), f0.f8677a, false));
                    } else if (iQ11 != 3) {
                        cVar.s0();
                    } else {
                        zJ10 = cVar.j0();
                    }
                }
                aVar = new f2.o(strN11, iL5, hVar, zJ10);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 10:
                j2.c.a aVar12 = a0.f8665a;
                boolean z11 = iL0 == 3;
                String strN12 = null;
                e2.b bVarC7 = null;
                e2.l<PointF, PointF> lVarB3 = null;
                e2.b bVarC8 = null;
                e2.b bVarC9 = null;
                int i15 = 0;
                boolean zJ11 = false;
                e2.b bVarC10 = null;
                e2.b bVarC11 = null;
                e2.b bVarC12 = null;
                while (cVar.i0()) {
                    switch (cVar.q0(a0.f8665a)) {
                        case 0:
                            strN12 = cVar.n0();
                            break;
                        case 1:
                            int iL6 = cVar.l0();
                            int[] iArrB = q.g.b(2);
                            int length = iArrB.length;
                            int i16 = 0;
                            while (true) {
                                if (i16 >= length) {
                                    i15 = 0;
                                }
                                i15 = iArrB[i16];
                                if (androidx.appcompat.widget.o.b(i15) == iL6) {
                                }
                                i16++;
                                break;
                                break;
                            }
                            break;
                        case 2:
                            bVarC7 = d.c(cVar, iVar, false);
                            break;
                        case 3:
                            lVarB3 = a.b(cVar, iVar);
                            break;
                        case 4:
                            bVarC8 = d.c(cVar, iVar, false);
                            break;
                        case 5:
                            bVarC10 = d.c(cVar, iVar, true);
                            break;
                        case 6:
                            bVarC12 = d.c(cVar, iVar, false);
                            break;
                        case 7:
                            bVarC9 = d.c(cVar, iVar, true);
                            break;
                        case 8:
                            bVarC11 = d.c(cVar, iVar, false);
                            break;
                        case 9:
                            zJ11 = cVar.j0();
                            break;
                        case 10:
                            z11 = cVar.l0() == 3;
                            break;
                        default:
                            cVar.r0();
                            cVar.s0();
                            break;
                    }
                }
                aVar = new f2.h(strN12, i15, bVarC7, lVarB3, bVarC8, bVarC9, bVarC10, bVarC11, bVarC12, zJ11, z11);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 11:
                j2.c.a aVar13 = j0.f8691a;
                ArrayList arrayList3 = new ArrayList();
                e2.d dVarD3 = null;
                String strN13 = null;
                e2.b bVar2 = null;
                e2.a aVarB2 = null;
                int i17 = 0;
                int i18 = 0;
                boolean zJ12 = false;
                float fK1 = 0.0f;
                e2.b bVarC13 = null;
                while (cVar.i0()) {
                    switch (cVar.q0(j0.f8691a)) {
                        case 0:
                            strN13 = cVar.n0();
                            break;
                        case 1:
                            aVarB2 = d.b(cVar, iVar);
                            break;
                        case 2:
                            bVarC13 = d.c(cVar, iVar, true);
                            break;
                        case 3:
                            dVarD3 = d.d(cVar, iVar);
                            break;
                        case 4:
                            i17 = q.g.b(3)[cVar.l0() - 1];
                            break;
                        case 5:
                            i18 = q.g.b(3)[cVar.l0() - 1];
                            break;
                        case 6:
                            fK1 = (float) cVar.k0();
                            break;
                        case 7:
                            zJ12 = cVar.j0();
                            break;
                        case 8:
                            cVar.x();
                            while (cVar.i0()) {
                                cVar.Y();
                                e2.b bVarC14 = null;
                                String strN14 = null;
                                while (cVar.i0()) {
                                    int iQ12 = cVar.q0(j0.f8692b);
                                    if (iQ12 == 0) {
                                        strN14 = cVar.n0();
                                    } else if (iQ12 != 1) {
                                        cVar.r0();
                                        cVar.s0();
                                    } else {
                                        bVarC14 = d.c(cVar, iVar, true);
                                    }
                                }
                                cVar.g0();
                                Objects.requireNonNull(strN14);
                                int iHashCode2 = strN14.hashCode();
                                if (iHashCode2 != 100) {
                                    if (iHashCode2 != 103) {
                                        if (iHashCode2 == 111 && strN14.equals("o")) {
                                            b11 = 2;
                                        } else {
                                            b11 = -1;
                                        }
                                    } else if (strN14.equals("g")) {
                                        b11 = 1;
                                    } else {
                                        b11 = -1;
                                    }
                                } else if (strN14.equals(TracePayload.DATA_KEY)) {
                                    b11 = 0;
                                } else {
                                    b11 = -1;
                                }
                                if (b11 == 0 || b11 == 1) {
                                    iVar.f18345n = true;
                                    arrayList3.add(bVarC14);
                                } else if (b11 == 2) {
                                    bVar2 = bVarC14;
                                }
                            }
                            cVar.f0();
                            if (arrayList3.size() == 1) {
                                arrayList3.add((e2.b) arrayList3.get(0));
                            }
                            break;
                        default:
                            cVar.s0();
                            break;
                    }
                }
                aVar = new f2.p(strN13, bVar2, arrayList3, aVarB2, dVarD3 == null ? new e2.d(Collections.singletonList(new l2.a(100))) : dVarD3, bVarC13, i17, i18, fK1, zJ12);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 12:
                j2.c.a aVar14 = k0.f8700a;
                String strN15 = null;
                e2.b bVarC15 = null;
                e2.b bVarC16 = null;
                e2.b bVarC17 = null;
                int i19 = 0;
                boolean zJ13 = false;
                while (cVar.i0()) {
                    int iQ13 = cVar.q0(k0.f8700a);
                    if (iQ13 == 0) {
                        bVarC15 = d.c(cVar, iVar, false);
                    } else if (iQ13 == 1) {
                        bVarC16 = d.c(cVar, iVar, false);
                    } else if (iQ13 == 2) {
                        bVarC17 = d.c(cVar, iVar, false);
                    } else if (iQ13 == 3) {
                        strN15 = cVar.n0();
                    } else if (iQ13 == 4) {
                        int iL7 = cVar.l0();
                        if (iL7 == 1) {
                            i19 = 1;
                        } else {
                            if (iL7 != 2) {
                                throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("Unknown trim path type ", iL7));
                            }
                            i19 = 2;
                        }
                    } else if (iQ13 != 5) {
                        cVar.s0();
                    } else {
                        zJ13 = cVar.j0();
                    }
                }
                aVar = new f2.q(strN15, i19, bVarC15, bVarC16, bVarC17, zJ13);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            case 13:
                aVar = c.a(cVar, iVar);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
            default:
                k2.c.b("Unknown shape type " + strN0);
                while (cVar.i0()) {
                    cVar.s0();
                }
                cVar.g0();
                return aVar;
        }
    }
}
