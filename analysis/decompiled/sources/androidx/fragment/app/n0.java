package androidx.fragment.app;

/* JADX INFO: compiled from: SpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p0.a f2002h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ p0 f2003i;

    public n0(p0 p0Var, p0.a aVar) {
        this.f2003i = p0Var;
        this.f2002h = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2003i.f2014b.contains(this.f2002h)) {
            p0.a aVar = this.f2002h;
            r0.a(aVar.f2019a, aVar.f2021c.M);
        }
    }
}
