package kotlinx.coroutines;

import androidx.lifecycle.o;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import jd.d;
import jd.f;
import kd.a;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DispatchedCoroutine<T> extends ScopeCoroutine<T> {
    private static final /* synthetic */ AtomicIntegerFieldUpdater _decision$FU = AtomicIntegerFieldUpdater.newUpdater(DispatchedCoroutine.class, "_decision");
    private volatile /* synthetic */ int _decision;

    public DispatchedCoroutine(f fVar, d<? super T> dVar) {
        super(fVar, dVar);
        this._decision = 0;
    }

    private final boolean tryResume() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!_decision$FU.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean trySuspend() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!_decision$FU.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.JobSupport
    public void afterCompletion(Object obj) {
        afterResume(obj);
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.AbstractCoroutine
    public void afterResume(Object obj) {
        if (tryResume()) {
            return;
        }
        DispatchedContinuationKt.resumeCancellableWith$default(o.t(this.uCont), CompletionStateKt.recoverResult(obj, this.uCont), null, 2, null);
    }

    public final Object getResult() throws Throwable {
        if (trySuspend()) {
            return a.COROUTINE_SUSPENDED;
        }
        Object objUnboxState = JobSupportKt.unboxState(getState$kotlinx_coroutines_core());
        if (objUnboxState instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) objUnboxState).cause;
        }
        return objUnboxState;
    }
}
