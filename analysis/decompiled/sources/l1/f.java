package l1;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import t1.o;
import t1.p;
import t1.q;

/* JADX INFO: compiled from: Schedulers.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f9836a = k1.l.e("Schedulers");

    public static void a(androidx.work.a aVar, WorkDatabase workDatabase, List<e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        p pVarW = workDatabase.w();
        workDatabase.c();
        try {
            q qVar = (q) pVarW;
            List<o> listC = qVar.c(aVar.f3047h);
            List listB = qVar.b();
            if (((ArrayList) listC).size() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator it = ((ArrayList) listC).iterator();
                while (it.hasNext()) {
                    qVar.k(((o) it.next()).f15350a, jCurrentTimeMillis);
                }
            }
            workDatabase.p();
            workDatabase.l();
            ArrayList arrayList = (ArrayList) listC;
            if (arrayList.size() > 0) {
                o[] oVarArr = (o[]) arrayList.toArray(new o[arrayList.size()]);
                for (e eVar : list) {
                    if (eVar.f()) {
                        eVar.d(oVarArr);
                    }
                }
            }
            ArrayList arrayList2 = (ArrayList) listB;
            if (arrayList2.size() > 0) {
                o[] oVarArr2 = (o[]) arrayList2.toArray(new o[arrayList2.size()]);
                for (e eVar2 : list) {
                    if (!eVar2.f()) {
                        eVar2.d(oVarArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.l();
            throw th;
        }
    }
}
