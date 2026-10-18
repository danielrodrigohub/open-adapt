package androidx.lifecycle;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
class CompositeGeneratedAdaptersObserver implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f[] f2092h;

    public CompositeGeneratedAdaptersObserver(f[] fVarArr) {
        this.f2092h = fVarArr;
    }

    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        new HashMap();
        for (f fVar : this.f2092h) {
            fVar.a();
        }
        for (f fVar2 : this.f2092h) {
            fVar2.a();
        }
    }
}
