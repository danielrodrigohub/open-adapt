package g0;

/* JADX INFO: compiled from: CallbackWithHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ n f7484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f7485i;

    public b(n nVar, int i10) {
        this.f7484h = nVar;
        this.f7485i = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.f7484h;
        int i10 = this.f7485i;
        z.d.e eVar = ((a0.f.a) nVar).f13j;
        if (eVar != null) {
            eVar.d(i10);
        }
    }
}
