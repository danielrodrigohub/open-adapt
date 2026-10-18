package u1;

import androidx.work.impl.WorkDatabase;

/* JADX INFO: compiled from: IdGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WorkDatabase f15628a;

    public e(WorkDatabase workDatabase) {
        this.f15628a = workDatabase;
    }

    public final int a(String str) {
        this.f15628a.c();
        try {
            Long lA = ((t1.f) this.f15628a.s()).a(str);
            int i10 = 0;
            int iIntValue = lA != null ? lA.intValue() : 0;
            if (iIntValue != Integer.MAX_VALUE) {
                i10 = iIntValue + 1;
            }
            ((t1.f) this.f15628a.s()).b(new t1.d(str, i10));
            this.f15628a.p();
            return iIntValue;
        } finally {
            this.f15628a.l();
        }
    }

    public final int b(int i10) {
        int iA;
        synchronized (e.class) {
            iA = a("next_job_scheduler_id");
            if (iA < 0 || iA > i10) {
                ((t1.f) this.f15628a.s()).b(new t1.d("next_job_scheduler_id", 1));
                iA = 0;
            }
        }
        return iA;
    }
}
