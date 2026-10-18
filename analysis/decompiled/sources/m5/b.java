package m5;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: BundleableUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static <T extends n3.h> u6.v<T> a(n3.h.a<T> aVar, List<Bundle> list) {
        u6.a aVar2 = u6.v.f16002i;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = 0;
        int i11 = 0;
        while (i10 < list.size()) {
            Bundle bundle = list.get(i10);
            Objects.requireNonNull(bundle);
            n3.h hVarD = aVar.d(bundle);
            Objects.requireNonNull(hVarD);
            int i12 = i11 + 1;
            if (objArrCopyOf.length < i12) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i12));
            }
            objArrCopyOf[i11] = hVarD;
            i10++;
            i11 = i12;
        }
        return u6.v.q(objArrCopyOf, i11);
    }

    public static <T extends n3.h> ArrayList<Bundle> b(Collection<T> collection) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        return arrayList;
    }
}
