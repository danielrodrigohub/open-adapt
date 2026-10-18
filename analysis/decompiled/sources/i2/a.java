package i2;

import android.graphics.PointF;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: AnimatablePathValueParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2.c.a f8664a = j2.c.a.a("k", "x", "y");

    public static e2.e a(j2.c cVar, y1.i iVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (cVar.o0() == 1) {
            cVar.x();
            while (cVar.i0()) {
                arrayList.add(new b2.i(iVar, t.b(cVar, iVar, k2.g.c(), y.f8726a, cVar.o0() == 3, false)));
            }
            cVar.f0();
            u.b(arrayList);
        } else {
            arrayList.add(new l2.a(s.b(cVar, k2.g.c())));
        }
        return new e2.e(arrayList);
    }

    public static e2.l<PointF, PointF> b(j2.c cVar, y1.i iVar) throws IOException {
        cVar.Y();
        e2.e eVarA = null;
        e2.b bVarC = null;
        boolean z10 = false;
        e2.b bVarC2 = null;
        while (cVar.o0() != 4) {
            int iQ0 = cVar.q0(f8664a);
            if (iQ0 == 0) {
                eVarA = a(cVar, iVar);
            } else if (iQ0 != 1) {
                if (iQ0 != 2) {
                    cVar.r0();
                    cVar.s0();
                } else if (cVar.o0() == 6) {
                    cVar.s0();
                    z10 = true;
                } else {
                    bVarC = d.c(cVar, iVar, true);
                }
            } else if (cVar.o0() == 6) {
                cVar.s0();
                z10 = true;
            } else {
                bVarC2 = d.c(cVar, iVar, true);
            }
        }
        cVar.g0();
        if (z10) {
            iVar.a("Lottie doesn't support expressions.");
        }
        return eVarA != null ? eVarA : new e2.i(bVarC2, bVarC);
    }
}
