package kotlinx.coroutines;

import jd.d;
import jd.f;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes.dex */
class DeferredCoroutine<T> extends AbstractCoroutine<T> implements Deferred<T> {
    public DeferredCoroutine(f fVar, boolean z10) {
        super(fVar, true, z10);
    }

    @Override // kotlinx.coroutines.Deferred
    public Object await(d<? super T> dVar) {
        return awaitInternal$kotlinx_coroutines_core(dVar);
    }
}
