package kotlinx.coroutines.internal;

import d3.e;
import fd.o;
import java.util.concurrent.CancellationException;
import jd.d;
import jd.f;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;
import qd.l;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DispatchedContinuationKt {
    private static final Symbol UNDEFINED = new Symbol("UNDEFINED");
    public static final Symbol REUSABLE_CLAIMED = new Symbol("REUSABLE_CLAIMED");

    public static final <T> void resumeCancellableWith(d<? super T> dVar, Object obj, l<? super Throwable, o> lVar) {
        boolean z10;
        if (!(dVar instanceof DispatchedContinuation)) {
            dVar.resumeWith(obj);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar;
        Object state = CompletionStateKt.toState(obj, lVar);
        if (dispatchedContinuation.dispatcher.isDispatchNeeded(dispatchedContinuation.getContext())) {
            dispatchedContinuation._state = state;
            dispatchedContinuation.resumeMode = 1;
            dispatchedContinuation.dispatcher.mo14dispatch(dispatchedContinuation.getContext(), dispatchedContinuation);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = state;
            dispatchedContinuation.resumeMode = 1;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            Job job = (Job) dispatchedContinuation.getContext().get(Job.Key);
            if (job == null || job.isActive()) {
                z10 = false;
            } else {
                CancellationException cancellationException = job.getCancellationException();
                dispatchedContinuation.cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
                dispatchedContinuation.resumeWith(e.g(cancellationException));
                z10 = true;
            }
            if (!z10) {
                d<T> dVar2 = dispatchedContinuation.continuation;
                Object obj2 = dispatchedContinuation.countOrElement;
                f context = dVar2.getContext();
                Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(context, obj2);
                UndispatchedCoroutine<?> undispatchedCoroutineUpdateUndispatchedCompletion = objUpdateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS ? CoroutineContextKt.updateUndispatchedCompletion(dVar2, context, objUpdateThreadContext) : null;
                try {
                    dispatchedContinuation.continuation.resumeWith(obj);
                    if (undispatchedCoroutineUpdateUndispatchedCompletion == null || undispatchedCoroutineUpdateUndispatchedCompletion.clearThreadContext()) {
                        ThreadContextKt.restoreThreadContext(context, objUpdateThreadContext);
                    }
                } catch (Throwable th) {
                    if (undispatchedCoroutineUpdateUndispatchedCompletion == null || undispatchedCoroutineUpdateUndispatchedCompletion.clearThreadContext()) {
                        ThreadContextKt.restoreThreadContext(context, objUpdateThreadContext);
                    }
                    throw th;
                }
            }
            while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
            }
        } catch (Throwable th2) {
            try {
                dispatchedContinuation.handleFatalException(th2, null);
            } finally {
                eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
            }
        }
    }

    public static /* synthetic */ void resumeCancellableWith$default(d dVar, Object obj, l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        resumeCancellableWith(dVar, obj, lVar);
    }
}
