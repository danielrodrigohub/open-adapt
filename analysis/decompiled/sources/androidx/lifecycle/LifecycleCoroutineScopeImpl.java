package androidx.lifecycle;

import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: compiled from: Lifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl extends l implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f2098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final jd.f f2099i;

    public LifecycleCoroutineScopeImpl(i iVar, jd.f fVar) {
        p4.h.j(fVar, "coroutineContext");
        this.f2098h = iVar;
        this.f2099i = fVar;
        if (iVar.b() == i.c.DESTROYED) {
            JobKt__JobKt.cancel$default(fVar, null, 1, null);
        }
    }

    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        if (this.f2098h.b().compareTo(i.c.DESTROYED) <= 0) {
            this.f2098h.c(this);
            JobKt__JobKt.cancel$default(this.f2099i, null, 1, null);
        }
    }

    @Override // androidx.lifecycle.l
    public final i b() {
        return this.f2098h;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final jd.f getCoroutineContext() {
        return this.f2099i;
    }
}
