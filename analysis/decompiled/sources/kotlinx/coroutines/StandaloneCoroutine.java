package kotlinx.coroutines;

import fd.o;
import jd.f;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes.dex */
class StandaloneCoroutine extends AbstractCoroutine<o> {
    public StandaloneCoroutine(f fVar, boolean z10) {
        super(fVar, true, z10);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean handleJobException(Throwable th) {
        CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), th);
        return true;
    }
}
