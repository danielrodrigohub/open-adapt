package i2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: KeyframesParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static j2.c.a f8717a = j2.c.a.a("k");

    public static <T> List<l2.a<T>> a(j2.c cVar, y1.i iVar, float f10, l0<T> l0Var, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (cVar.o0() == 6) {
            iVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        cVar.Y();
        while (cVar.i0()) {
            if (cVar.q0(f8717a) != 0) {
                cVar.s0();
            } else if (cVar.o0() == 1) {
                cVar.x();
                if (cVar.o0() == 7) {
                    arrayList.add(t.b(cVar, iVar, f10, l0Var, false, z10));
                } else {
                    while (cVar.i0()) {
                        arrayList.add(t.b(cVar, iVar, f10, l0Var, true, z10));
                    }
                }
                cVar.f0();
            } else {
                arrayList.add(t.b(cVar, iVar, f10, l0Var, false, z10));
            }
        }
        cVar.g0();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends l2.a<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            l2.a<T> aVar = list.get(i11);
            i11++;
            l2.a<T> aVar2 = list.get(i11);
            aVar.f9902h = Float.valueOf(aVar2.f9901g);
            if (aVar.f9897c == null && (t10 = aVar2.f9896b) != null) {
                aVar.f9897c = t10;
                if (aVar instanceof b2.i) {
                    ((b2.i) aVar).d();
                }
            }
        }
        l2.a<T> aVar3 = list.get(i10);
        if ((aVar3.f9896b == null || aVar3.f9897c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
