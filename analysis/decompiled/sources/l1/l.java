package l1;

/* JADX INFO: compiled from: WorkerWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ x6.a f9862h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v1.c f9863i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ n f9864j;

    public l(n nVar, x6.a aVar, v1.c cVar) {
        this.f9864j = nVar;
        this.f9862h = aVar;
        this.f9863i = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9862h.get();
            k1.l.c().a(n.A, String.format("Starting work for %s", this.f9864j.f9872l.f15352c), new Throwable[0]);
            n nVar = this.f9864j;
            nVar.f9885y = nVar.f9873m.f();
            this.f9863i.l(this.f9864j.f9885y);
        } catch (Throwable th) {
            this.f9863i.k(th);
        }
    }
}
