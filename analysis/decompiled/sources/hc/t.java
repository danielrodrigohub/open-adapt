package hc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t extends pc.c<List<? extends mc.a0>> {
    public t(u uVar) {
        super(uVar);
    }

    @Override // pc.c
    public final Object a(Object obj) {
        try {
            List<Integer> listY = fc.y.z((byte[]) obj).y();
            p4.h.i(listY, "parseFrom(response)\n    …          .sessionIDsList");
            int size = ((m7.x) listY).size();
            int[] iArr = new int[size];
            Iterator<Integer> it = listY.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                iArr[i10] = it.next().intValue();
                i10++;
            }
            ArrayList arrayList = new ArrayList(size);
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(new mc.a0(iArr[i11]));
            }
            return arrayList;
        } catch (m7.z unused) {
            return new ArrayList();
        }
    }
}
