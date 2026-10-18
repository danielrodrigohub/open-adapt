package u1;

import androidx.work.impl.WorkDatabase;

/* JADX INFO: compiled from: StopWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Runnable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f15641k = k1.l.e("StopWorkRunnable");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l1.k f15642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f15643i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f15644j;

    public k(l1.k kVar, String str, boolean z10) {
        this.f15642h = kVar;
        this.f15643i = str;
        this.f15644j = z10;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean zContainsKey;
        boolean zJ;
        l1.k kVar = this.f15642h;
        WorkDatabase workDatabase = kVar.f9855c;
        l1.d dVar = kVar.f9858f;
        t1.p pVarW = workDatabase.w();
        workDatabase.c();
        try {
            String str = this.f15643i;
            synchronized (dVar.f9832r) {
                zContainsKey = dVar.f9827m.containsKey(str);
            }
            if (this.f15644j) {
                zJ = this.f15642h.f9858f.i(this.f15643i);
            } else {
                if (!zContainsKey) {
                    t1.q qVar = (t1.q) pVarW;
                    if (qVar.f(this.f15643i) == k1.p.RUNNING) {
                        qVar.o(k1.p.ENQUEUED, this.f15643i);
                    }
                }
                zJ = this.f15642h.f9858f.j(this.f15643i);
            }
            k1.l.c().a(f15641k, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f15643i, Boolean.valueOf(zJ)), new Throwable[0]);
            workDatabase.p();
            workDatabase.l();
        } catch (Throwable th) {
            workDatabase.l();
            throw th;
        }
    }
}
