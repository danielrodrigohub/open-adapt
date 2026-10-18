package i2;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: AnimatableTransformParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2.c.a f8669a = j2.c.a.a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j2.c.a f8670b = j2.c.a.a("k");

    /* JADX WARN: Code duplicated, block: B:113:0x022c  */
    /* JADX WARN: Code duplicated, block: B:114:0x022f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0069  */
    /* JADX WARN: Code duplicated, block: B:23:0x009f  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d4  */
    /* JADX WARN: Multi-variable type inference failed */
    public static e2.k a(j2.c cVar, y1.i iVar) throws IOException {
        boolean z10;
        e2.b bVar;
        boolean z11;
        e2.b bVar2;
        boolean z12;
        e2.g gVar;
        e2.b bVar3;
        e2.l<PointF, PointF> lVar;
        e2.b bVarC;
        e2.b bVar4;
        boolean z13 = false;
        boolean z14 = cVar.o0() == 3;
        if (z14) {
            cVar.Y();
        }
        e2.b bVar5 = null;
        e2.g gVar2 = null;
        e2.l<PointF, PointF> lVarB = null;
        e2.b bVarC2 = null;
        e2.b bVarC3 = null;
        e2.e eVarA = null;
        e2.d dVarD = null;
        e2.b bVarC4 = null;
        e2.b bVarC5 = null;
        while (cVar.i0()) {
            switch (cVar.q0(f8669a)) {
                case 0:
                    gVar = gVar2;
                    bVar3 = bVarC2;
                    lVar = lVarB;
                    cVar.Y();
                    while (cVar.i0()) {
                        if (cVar.q0(f8670b) != 0) {
                            cVar.r0();
                            cVar.s0();
                        } else {
                            eVarA = a.a(cVar, iVar);
                        }
                    }
                    cVar.g0();
                    gVar2 = gVar;
                    lVarB = lVar;
                    bVarC2 = bVar3;
                    z13 = false;
                    break;
                case 1:
                    bVar3 = bVarC2;
                    lVarB = a.b(cVar, iVar);
                    bVarC2 = bVar3;
                    z13 = false;
                    break;
                case 2:
                    bVar3 = bVarC2;
                    lVar = lVarB;
                    gVar2 = new e2.g(d.a(cVar, iVar, e0.f8675a));
                    lVarB = lVar;
                    bVarC2 = bVar3;
                    z13 = false;
                    break;
                case 3:
                    iVar.a("Lottie doesn't support 3D layers.");
                    bVarC = d.c(cVar, iVar, z13);
                    if (((List) bVarC.f6315b).isEmpty()) {
                        bVar4 = bVarC;
                        gVar = gVar2;
                        bVar3 = bVarC2;
                        lVar = lVarB;
                        ((List) bVarC.f6315b).add(new l2.a(iVar, Float.valueOf(0.0f), Float.valueOf(0.0f), (Interpolator) null, 0.0f, Float.valueOf(iVar.f18343l)));
                    } else {
                        bVar4 = bVarC;
                        gVar = gVar2;
                        bVar3 = bVarC2;
                        lVar = lVarB;
                        if (((l2.a) ((List) bVar4.f6315b).get(0)).f9896b == 0) {
                            ((List) bVar4.f6315b).set(0, new l2.a(iVar, Float.valueOf(0.0f), Float.valueOf(0.0f), (Interpolator) null, 0.0f, Float.valueOf(iVar.f18343l)));
                        }
                    }
                    bVar5 = bVar4;
                    gVar2 = gVar;
                    lVarB = lVar;
                    bVarC2 = bVar3;
                    z13 = false;
                    break;
                case 4:
                    bVarC = d.c(cVar, iVar, z13);
                    if (((List) bVarC.f6315b).isEmpty()) {
                        bVar4 = bVarC;
                        gVar = gVar2;
                        bVar3 = bVarC2;
                        lVar = lVarB;
                        ((List) bVarC.f6315b).add(new l2.a(iVar, Float.valueOf(0.0f), Float.valueOf(0.0f), (Interpolator) null, 0.0f, Float.valueOf(iVar.f18343l)));
                    } else {
                        bVar4 = bVarC;
                        gVar = gVar2;
                        bVar3 = bVarC2;
                        lVar = lVarB;
                        if (((l2.a) ((List) bVar4.f6315b).get(0)).f9896b == 0) {
                            ((List) bVar4.f6315b).set(0, new l2.a(iVar, Float.valueOf(0.0f), Float.valueOf(0.0f), (Interpolator) null, 0.0f, Float.valueOf(iVar.f18343l)));
                        }
                    }
                    bVar5 = bVar4;
                    gVar2 = gVar;
                    lVarB = lVar;
                    bVarC2 = bVar3;
                    z13 = false;
                    break;
                case 5:
                    dVarD = d.d(cVar, iVar);
                    break;
                case 6:
                    bVarC4 = d.c(cVar, iVar, z13);
                    break;
                case 7:
                    bVarC5 = d.c(cVar, iVar, z13);
                    break;
                case 8:
                    bVarC3 = d.c(cVar, iVar, z13);
                    break;
                case 9:
                    bVarC2 = d.c(cVar, iVar, z13);
                    break;
                default:
                    bVar3 = bVarC2;
                    cVar.r0();
                    cVar.s0();
                    bVarC2 = bVar3;
                    z13 = false;
                    break;
            }
        }
        e2.g gVar3 = gVar2;
        e2.b bVar6 = bVarC2;
        e2.l<PointF, PointF> lVar2 = lVarB;
        if (z14) {
            cVar.g0();
        }
        if (eVarA == null || (eVarA.isStatic() && ((PointF) ((l2.a) ((List) eVarA.f6302a).get(0)).f9896b).equals(0.0f, 0.0f))) {
            eVarA = null;
        }
        if (lVar2 == null || (!(lVar2 instanceof e2.i) && lVar2.isStatic() && lVar2.b().get(0).f9896b.equals(0.0f, 0.0f))) {
            lVar2 = null;
        }
        e2.b bVar7 = bVar5 == null || (bVar5.isStatic() && (((Float) ((l2.a) ((List) bVar5.f6315b).get(0)).f9896b).floatValue() > 0.0f ? 1 : (((Float) ((l2.a) ((List) bVar5.f6315b).get(0)).f9896b).floatValue() == 0.0f ? 0 : -1)) == 0) ? null : bVar5;
        if (gVar3 != 0) {
            if (gVar3.isStatic()) {
                l2.d dVar = (l2.d) ((l2.a) ((List) gVar3.f6315b).get(0)).f9896b;
                z10 = (dVar.f9916a > 1.0f ? 1 : (dVar.f9916a == 1.0f ? 0 : -1)) == 0 && (dVar.f9917b > 1.0f ? 1 : (dVar.f9917b == 1.0f ? 0 : -1)) == 0;
            }
        }
        e2.g gVar4 = z10 ? null : gVar3;
        if (bVarC3 == null || (bVarC3.isStatic() && ((Float) ((l2.a) ((List) bVarC3.f6315b).get(0)).f9896b).floatValue() == 0.0f)) {
            bVarC3 = null;
        }
        if (bVar6 != null) {
            bVar = bVar6;
            if (bVar6.isStatic()) {
                z12 = false;
                if (((Float) ((l2.a) ((List) bVar.f6315b).get(0)).f9896b).floatValue() == 0.0f) {
                }
                if (z11) {
                    bVar2 = null;
                } else {
                    bVar2 = bVar;
                }
                return new e2.k(eVarA, lVar2, gVar4, bVar7, dVarD, bVarC4, bVarC5, bVarC3, bVar2);
            }
            z12 = false;
            z11 = z12;
            if (z11) {
                bVar2 = null;
            } else {
                bVar2 = bVar;
            }
            return new e2.k(eVarA, lVar2, gVar4, bVar7, dVarD, bVarC4, bVarC5, bVarC3, bVar2);
        }
        bVar = bVar6;
        z11 = true;
        if (z11) {
            bVar2 = null;
        } else {
            bVar2 = bVar;
        }
        return new e2.k(eVarA, lVar2, gVar4, bVar7, dVarD, bVarC4, bVarC5, bVarC3, bVar2);
    }
}
