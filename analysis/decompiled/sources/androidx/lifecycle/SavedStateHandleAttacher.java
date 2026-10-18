package androidx.lifecycle;

/* JADX INFO: compiled from: SavedStateHandleSupport.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SavedStateHandleAttacher implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g0 f2151h;

    public SavedStateHandleAttacher(g0 g0Var) {
        this.f2151h = g0Var;
    }

    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        if (!(bVar == i.b.ON_CREATE)) {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + bVar).toString());
        }
        qVar.a().c(this);
        g0 g0Var = this.f2151h;
        if (g0Var.f2187b) {
            return;
        }
        g0Var.f2188c = g0Var.f2186a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        g0Var.f2187b = true;
    }
}
