package i2;

import android.graphics.Color;
import android.graphics.PointF;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: JsonUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2.c.a f8712a = j2.c.a.a("x", "y");

    public static int a(j2.c cVar) throws IOException {
        cVar.x();
        int iK0 = (int) (cVar.k0() * 255.0d);
        int iK1 = (int) (cVar.k0() * 255.0d);
        int iK2 = (int) (cVar.k0() * 255.0d);
        while (cVar.i0()) {
            cVar.s0();
        }
        cVar.f0();
        return Color.argb(255, iK0, iK1, iK2);
    }

    public static PointF b(j2.c cVar, float f10) throws IOException {
        int iA = q.g.a(cVar.o0());
        if (iA == 0) {
            cVar.x();
            float fK0 = (float) cVar.k0();
            float fK1 = (float) cVar.k0();
            while (cVar.o0() != 2) {
                cVar.s0();
            }
            cVar.f0();
            return new PointF(fK0 * f10, fK1 * f10);
        }
        if (iA != 2) {
            if (iA != 6) {
                StringBuilder sbC = a0.b.c("Unknown point starts with ");
                sbC.append(com.nike.adapt.adk.model.a.e(cVar.o0()));
                throw new IllegalArgumentException(sbC.toString());
            }
            float fK2 = (float) cVar.k0();
            float fK3 = (float) cVar.k0();
            while (cVar.i0()) {
                cVar.s0();
            }
            return new PointF(fK2 * f10, fK3 * f10);
        }
        cVar.Y();
        float fD = 0.0f;
        float fD2 = 0.0f;
        while (cVar.i0()) {
            int iQ0 = cVar.q0(f8712a);
            if (iQ0 == 0) {
                fD = d(cVar);
            } else if (iQ0 != 1) {
                cVar.r0();
                cVar.s0();
            } else {
                fD2 = d(cVar);
            }
        }
        cVar.g0();
        return new PointF(fD * f10, fD2 * f10);
    }

    public static List<PointF> c(j2.c cVar, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        cVar.x();
        while (cVar.o0() == 1) {
            cVar.x();
            arrayList.add(b(cVar, f10));
            cVar.f0();
        }
        cVar.f0();
        return arrayList;
    }

    public static float d(j2.c cVar) throws IOException {
        int iO0 = cVar.o0();
        int iA = q.g.a(iO0);
        if (iA != 0) {
            if (iA == 6) {
                return (float) cVar.k0();
            }
            StringBuilder sbC = a0.b.c("Unknown value for token of type ");
            sbC.append(com.nike.adapt.adk.model.a.e(iO0));
            throw new IllegalArgumentException(sbC.toString());
        }
        cVar.x();
        float fK0 = (float) cVar.k0();
        while (cVar.i0()) {
            cVar.s0();
        }
        cVar.f0();
        return fK0;
    }
}
