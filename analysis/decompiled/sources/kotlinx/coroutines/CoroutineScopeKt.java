package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import jd.d;
import jd.f;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import qd.p;

/* JADX INFO: compiled from: CoroutineScope.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CoroutineScopeKt {
    public static final CoroutineScope CoroutineScope(f fVar) {
        if (fVar.get(Job.Key) == null) {
            fVar = fVar.plus(JobKt__JobKt.Job$default(null, 1, null));
        }
        return new ContextScope(fVar);
    }

    public static final void cancel(CoroutineScope coroutineScope, CancellationException cancellationException) {
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key);
        if (job != null) {
            job.cancel(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + coroutineScope).toString());
    }

    public static /* synthetic */ void cancel$default(CoroutineScope coroutineScope, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        cancel(coroutineScope, cancellationException);
    }

    public static final <R> Object coroutineScope(p<? super CoroutineScope, ? super d<? super R>, ? extends Object> pVar, d<? super R> dVar) {
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(dVar.getContext(), dVar);
        return UndispatchedKt.startUndispatchedOrReturn(scopeCoroutine, scopeCoroutine, pVar);
    }
}
