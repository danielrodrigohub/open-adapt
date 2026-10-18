package androidx.lifecycle;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: PausingDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y extends CoroutineDispatcher {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f2243h = new d();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: dispatch */
    public final void mo14dispatch(jd.f fVar, Runnable runnable) {
        p4.h.j(fVar, "context");
        p4.h.j(runnable, "block");
        this.f2243h.b(fVar, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean isDispatchNeeded(jd.f fVar) {
        p4.h.j(fVar, "context");
        if (Dispatchers.getMain().getImmediate().isDispatchNeeded(fVar)) {
            return true;
        }
        return !this.f2243h.a();
    }
}
