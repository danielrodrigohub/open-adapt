package androidx.fragment.app;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p0.b f1912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ p0.b f1913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f1914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ p.a f1915k;

    public h(p0.b bVar, p0.b bVar2, boolean z10, p.a aVar) {
        this.f1912h = bVar;
        this.f1913i = bVar2;
        this.f1914j = z10;
        this.f1915k = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h0.a(this.f1912h.f2021c, this.f1913i.f2021c, this.f1914j);
    }
}
