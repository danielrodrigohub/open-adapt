package l1;

import androidx.work.impl.WorkDatabase;
import y0.d0;

/* JADX INFO: compiled from: WorkDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends d0.b {
    @Override // y0.d0.b
    public final void a(d1.b bVar) {
        e1.a aVar = (e1.a) bVar;
        aVar.e();
        try {
            int i10 = WorkDatabase.f3054n;
            aVar.k("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - WorkDatabase.f3053m) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            aVar.L();
        } finally {
            aVar.d();
        }
    }
}
