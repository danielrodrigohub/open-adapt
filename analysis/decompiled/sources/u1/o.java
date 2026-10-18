package u1;

import androidx.work.impl.WorkDatabase;

/* JADX INFO: compiled from: WorkForegroundUpdater.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements k1.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w1.a f15663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s1.a f15664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t1.p f15665c;

    static {
        k1.l.e("WMFgUpdater");
    }

    public o(WorkDatabase workDatabase, s1.a aVar, w1.a aVar2) {
        this.f15664b = aVar;
        this.f15663a = aVar2;
        this.f15665c = workDatabase.w();
    }
}
