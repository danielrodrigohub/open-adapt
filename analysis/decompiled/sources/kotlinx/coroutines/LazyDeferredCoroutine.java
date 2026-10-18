package kotlinx.coroutines;

import fd.o;
import jd.d;
import jd.f;
import kotlinx.coroutines.intrinsics.CancellableKt;
import qd.p;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes.dex */
final class LazyDeferredCoroutine<T> extends DeferredCoroutine<T> {
    private final d<o> continuation;

    public LazyDeferredCoroutine(f fVar, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar) {
        super(fVar, false);
        this.continuation = androidx.lifecycle.o.j(pVar, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public void onStart() throws Throwable {
        CancellableKt.startCoroutineCancellable(this.continuation, this);
    }
}
