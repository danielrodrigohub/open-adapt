package xd;

import androidx.lifecycle.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g extends j {
    public static final d m(d dVar, qd.l lVar) {
        p4.h.j(dVar, "<this>");
        return new l(dVar, lVar);
    }

    public static final List n(d dVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = dVar.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return o.D(arrayList);
    }
}
