package androidx.fragment.app;

/* JADX INFO: compiled from: SpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class o0 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p0.a f2005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ p0 f2006i;

    public o0(p0 p0Var, p0.a aVar) {
        this.f2006i = p0Var;
        this.f2005h = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2006i.f2014b.remove(this.f2005h);
        this.f2006i.f2015c.remove(this.f2005h);
    }
}
