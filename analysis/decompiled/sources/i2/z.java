package i2;

import android.graphics.PointF;
import java.io.IOException;

/* JADX INFO: compiled from: PointFParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class z implements l0<PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z f8727a = new z();

    @Override // i2.l0
    public final PointF a(j2.c cVar, float f10) throws IOException {
        int iO0 = cVar.o0();
        if (iO0 == 1) {
            return s.b(cVar, f10);
        }
        if (iO0 == 3) {
            return s.b(cVar, f10);
        }
        if (iO0 != 7) {
            StringBuilder sbC = a0.b.c("Cannot convert json to point. Next token is ");
            sbC.append(com.nike.adapt.adk.model.a.e(iO0));
            throw new IllegalArgumentException(sbC.toString());
        }
        PointF pointF = new PointF(((float) cVar.k0()) * f10, ((float) cVar.k0()) * f10);
        while (cVar.i0()) {
            cVar.s0();
        }
        return pointF;
    }
}
