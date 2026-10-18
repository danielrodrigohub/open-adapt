package kotlinx.coroutines.internal;

import androidx.lifecycle.o;
import jd.f;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CompletionStateKt;
import ld.d;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: classes.dex */
public class ScopeCoroutine<T> extends AbstractCoroutine<T> implements d {
    public final jd.d<T> uCont;

    /* JADX WARN: Multi-variable type inference failed */
    public ScopeCoroutine(f fVar, jd.d<? super T> dVar) {
        super(fVar, true, true);
        this.uCont = dVar;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void afterCompletion(Object obj) {
        DispatchedContinuationKt.resumeCancellableWith$default(o.t(this.uCont), CompletionStateKt.recoverResult(obj, this.uCont), null, 2, null);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public void afterResume(Object obj) {
        jd.d<T> dVar = this.uCont;
        dVar.resumeWith(CompletionStateKt.recoverResult(obj, dVar));
    }

    @Override // ld.d
    public final d getCallerFrame() {
        jd.d<T> dVar = this.uCont;
        if (dVar instanceof d) {
            return (d) dVar;
        }
        return null;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean isScopedCoroutine() {
        return true;
    }
}
