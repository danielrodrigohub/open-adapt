package fe;

/* JADX INFO: compiled from: AsyncPoster.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f7411h = new j();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f7412i;

    public a(c cVar) {
        this.f7412i = cVar;
    }

    public final void a(o oVar, Object obj) {
        this.f7411h.a(i.a(oVar, obj));
        this.f7412i.f7426j.execute(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVarB = this.f7411h.b();
        if (iVarB == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f7412i.b(iVarB);
    }
}
