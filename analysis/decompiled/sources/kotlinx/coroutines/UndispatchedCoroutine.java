package kotlinx.coroutines;

import fd.e;
import jd.d;
import jd.f;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {
    private ThreadLocal<e<f, Object>> threadStateToRecover;

    /* JADX WARN: Illegal instructions before constructor call */
    public UndispatchedCoroutine(f fVar, d<? super T> dVar) {
        UndispatchedMarker undispatchedMarker = UndispatchedMarker.INSTANCE;
        super(fVar.get(undispatchedMarker) == null ? fVar.plus(undispatchedMarker) : fVar, dVar);
        this.threadStateToRecover = new ThreadLocal<>();
        f context = dVar.getContext();
        int i10 = jd.e.f9509d;
        if (context.get(jd.e.a.f9510h) instanceof CoroutineDispatcher) {
            return;
        }
        Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(fVar, null);
        ThreadContextKt.restoreThreadContext(fVar, objUpdateThreadContext);
        saveThreadContext(fVar, objUpdateThreadContext);
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.AbstractCoroutine
    public void afterResume(Object obj) {
        e<f, Object> eVar = this.threadStateToRecover.get();
        if (eVar != null) {
            ThreadContextKt.restoreThreadContext(eVar.f7388h, eVar.f7389i);
            this.threadStateToRecover.set(null);
        }
        Object objRecoverResult = CompletionStateKt.recoverResult(obj, this.uCont);
        d<T> dVar = this.uCont;
        f context = dVar.getContext();
        Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(context, null);
        UndispatchedCoroutine<?> undispatchedCoroutineUpdateUndispatchedCompletion = objUpdateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS ? CoroutineContextKt.updateUndispatchedCompletion(dVar, context, objUpdateThreadContext) : null;
        try {
            this.uCont.resumeWith(objRecoverResult);
        } finally {
            if (undispatchedCoroutineUpdateUndispatchedCompletion == null || undispatchedCoroutineUpdateUndispatchedCompletion.clearThreadContext()) {
                ThreadContextKt.restoreThreadContext(context, objUpdateThreadContext);
            }
        }
    }

    public final boolean clearThreadContext() {
        if (this.threadStateToRecover.get() == null) {
            return false;
        }
        this.threadStateToRecover.set(null);
        return true;
    }

    public final void saveThreadContext(f fVar, Object obj) {
        this.threadStateToRecover.set(new e<>(fVar, obj));
    }
}
