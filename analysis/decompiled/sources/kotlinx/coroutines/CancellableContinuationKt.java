package kotlinx.coroutines;

import jd.d;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CancellableContinuationKt {
    public static final void disposeOnCancellation(CancellableContinuation<?> cancellableContinuation, DisposableHandle disposableHandle) {
        cancellableContinuation.invokeOnCancellation(new DisposeOnCancel(disposableHandle));
    }

    public static final <T> CancellableContinuationImpl<T> getOrCreateCancellableContinuation(d<? super T> dVar) {
        if (!(dVar instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl<>(dVar, 1);
        }
        CancellableContinuationImpl<T> cancellableContinuationImplClaimReusableCancellableContinuation = ((DispatchedContinuation) dVar).claimReusableCancellableContinuation();
        if (cancellableContinuationImplClaimReusableCancellableContinuation != null) {
            if (!cancellableContinuationImplClaimReusableCancellableContinuation.resetStateReusable()) {
                cancellableContinuationImplClaimReusableCancellableContinuation = null;
            }
            if (cancellableContinuationImplClaimReusableCancellableContinuation != null) {
                return cancellableContinuationImplClaimReusableCancellableContinuation;
            }
        }
        return new CancellableContinuationImpl<>(dVar, 2);
    }

    public static final void removeOnCancellation(CancellableContinuation<?> cancellableContinuation, LockFreeLinkedListNode lockFreeLinkedListNode) {
        cancellableContinuation.invokeOnCancellation(new RemoveOnCancel(lockFreeLinkedListNode));
    }
}
