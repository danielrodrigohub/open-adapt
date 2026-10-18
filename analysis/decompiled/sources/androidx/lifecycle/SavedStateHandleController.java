package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
final class SavedStateHandleController implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2152h;

    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        if (bVar == i.b.ON_DESTROY) {
            this.f2152h = false;
            qVar.a().c(this);
        }
    }
}
