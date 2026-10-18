package u1;

import androidx.work.WorkerParameters;

/* JADX INFO: compiled from: StartWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l1.k f15638h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15639i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public WorkerParameters.a f15640j;

    public j(l1.k kVar, String str, WorkerParameters.a aVar) {
        this.f15638h = kVar;
        this.f15639i = str;
        this.f15640j = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15638h.f9858f.g(this.f15639i, this.f15640j);
    }
}
