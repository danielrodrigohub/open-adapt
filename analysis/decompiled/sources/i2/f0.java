package i2;

import android.graphics.PointF;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ShapeDataParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements l0<f2.l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0 f8677a = new f0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j2.c.a f8678b = j2.c.a.a("c", TracePayload.VERSION_KEY, "i", "o");

    @Override // i2.l0
    public final f2.l a(j2.c cVar, float f10) throws IOException {
        if (cVar.o0() == 1) {
            cVar.x();
        }
        cVar.Y();
        List<PointF> listC = null;
        List<PointF> listC2 = null;
        List<PointF> listC3 = null;
        boolean zJ0 = false;
        while (cVar.i0()) {
            int iQ0 = cVar.q0(f8678b);
            if (iQ0 == 0) {
                zJ0 = cVar.j0();
            } else if (iQ0 == 1) {
                listC = s.c(cVar, f10);
            } else if (iQ0 == 2) {
                listC2 = s.c(cVar, f10);
            } else if (iQ0 != 3) {
                cVar.r0();
                cVar.s0();
            } else {
                listC3 = s.c(cVar, f10);
            }
        }
        cVar.g0();
        if (cVar.o0() == 2) {
            cVar.f0();
        }
        if (listC == null || listC2 == null || listC3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listC.isEmpty()) {
            return new f2.l(new PointF(), false, Collections.emptyList());
        }
        int size = listC.size();
        PointF pointF = listC.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 1; i10 < size; i10++) {
            PointF pointF2 = listC.get(i10);
            int i11 = i10 - 1;
            arrayList.add(new d2.a(k2.f.a(listC.get(i11), listC3.get(i11)), k2.f.a(pointF2, listC2.get(i10)), pointF2));
        }
        if (zJ0) {
            PointF pointF3 = listC.get(0);
            int i12 = size - 1;
            arrayList.add(new d2.a(k2.f.a(listC.get(i12), listC3.get(i12)), k2.f.a(pointF3, listC2.get(0)), pointF3));
        }
        return new f2.l(pointF, zJ0, arrayList);
    }
}
