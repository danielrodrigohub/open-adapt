package t;

import java.util.ArrayList;

/* JADX INFO: compiled from: Grouping.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static o a(s.d dVar, int i10, ArrayList<o> arrayList, o oVar) {
        int i11;
        int i12 = i10 == 0 ? dVar.f14883p0 : dVar.f14885q0;
        if (i12 != -1 && (oVar == null || i12 != oVar.f15311b)) {
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                o oVar2 = arrayList.get(i13);
                if (oVar2.f15311b == i12) {
                    if (oVar != null) {
                        oVar.d(i10, oVar2);
                        arrayList.remove(oVar);
                    }
                    oVar = oVar2;
                    break;
                }
            }
        } else if (i12 != -1) {
            return oVar;
        }
        if (oVar == null) {
            if (dVar instanceof s.h) {
                s.h hVar = (s.h) dVar;
                int i14 = 0;
                while (true) {
                    if (i14 >= hVar.f14910s0) {
                        i11 = -1;
                        break;
                    }
                    s.d dVar2 = hVar.f14909r0[i14];
                    if ((i10 == 0 && (i11 = dVar2.f14883p0) != -1) || (i10 == 1 && (i11 = dVar2.f14885q0) != -1)) {
                        break;
                    }
                    i14++;
                }
                if (i11 != -1) {
                    for (int i15 = 0; i15 < arrayList.size(); i15++) {
                        o oVar3 = arrayList.get(i15);
                        if (oVar3.f15311b == i11) {
                            oVar = oVar3;
                            break;
                        }
                    }
                }
            }
            if (oVar == null) {
                oVar = new o(i10);
            }
            arrayList.add(oVar);
        }
        if (oVar.a(dVar)) {
            if (dVar instanceof s.f) {
                s.f fVar = (s.f) dVar;
                fVar.f14906u0.b(fVar.f14907v0 == 0 ? 1 : 0, arrayList, oVar);
            }
            if (i10 == 0) {
                dVar.f14883p0 = oVar.f15311b;
                dVar.J.b(i10, arrayList, oVar);
                dVar.L.b(i10, arrayList, oVar);
            } else {
                dVar.f14885q0 = oVar.f15311b;
                dVar.K.b(i10, arrayList, oVar);
                dVar.N.b(i10, arrayList, oVar);
                dVar.M.b(i10, arrayList, oVar);
            }
            dVar.Q.b(i10, arrayList, oVar);
        }
        return oVar;
    }

    public static o b(ArrayList<o> arrayList, int i10) {
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            o oVar = arrayList.get(i11);
            if (i10 == oVar.f15311b) {
                return oVar;
            }
        }
        return null;
    }

    public static boolean c(int i10, int i11, int i12, int i13) {
        return (i12 == 1 || i12 == 2 || (i12 == 4 && i10 != 2)) || (i13 == 1 || i13 == 2 || (i13 == 4 && i11 != 2));
    }
}
