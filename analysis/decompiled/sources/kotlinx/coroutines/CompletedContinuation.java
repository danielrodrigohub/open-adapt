package kotlinx.coroutines;

import a0.b;
import fd.o;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes.dex */
final class CompletedContinuation {
    public final Throwable cancelCause;
    public final CancelHandler cancelHandler;
    public final Object idempotentResume;
    public final l<Throwable, o> onCancellation;
    public final Object result;

    /* JADX WARN: Multi-variable type inference failed */
    public CompletedContinuation(Object obj, CancelHandler cancelHandler, l<? super Throwable, o> lVar, Object obj2, Throwable th) {
        this.result = obj;
        this.cancelHandler = cancelHandler;
        this.onCancellation = lVar;
        this.idempotentResume = obj2;
        this.cancelCause = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CompletedContinuation copy$default(CompletedContinuation completedContinuation, Object obj, CancelHandler cancelHandler, l lVar, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = completedContinuation.result;
        }
        if ((i10 & 2) != 0) {
            cancelHandler = completedContinuation.cancelHandler;
        }
        CancelHandler cancelHandler2 = cancelHandler;
        if ((i10 & 4) != 0) {
            lVar = completedContinuation.onCancellation;
        }
        l lVar2 = lVar;
        if ((i10 & 8) != 0) {
            obj2 = completedContinuation.idempotentResume;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = completedContinuation.cancelCause;
        }
        return completedContinuation.copy(obj, cancelHandler2, lVar2, obj4, th);
    }

    public final CompletedContinuation copy(Object obj, CancelHandler cancelHandler, l<? super Throwable, o> lVar, Object obj2, Throwable th) {
        return new CompletedContinuation(obj, cancelHandler, lVar, obj2, th);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompletedContinuation)) {
            return false;
        }
        CompletedContinuation completedContinuation = (CompletedContinuation) obj;
        return h.c(this.result, completedContinuation.result) && h.c(this.cancelHandler, completedContinuation.cancelHandler) && h.c(this.onCancellation, completedContinuation.onCancellation) && h.c(this.idempotentResume, completedContinuation.idempotentResume) && h.c(this.cancelCause, completedContinuation.cancelCause);
    }

    public final boolean getCancelled() {
        return this.cancelCause != null;
    }

    public int hashCode() {
        Object obj = this.result;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        CancelHandler cancelHandler = this.cancelHandler;
        int iHashCode2 = (iHashCode + (cancelHandler == null ? 0 : cancelHandler.hashCode())) * 31;
        l<Throwable, o> lVar = this.onCancellation;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.idempotentResume;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.cancelCause;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final void invokeHandlers(CancellableContinuationImpl<?> cancellableContinuationImpl, Throwable th) {
        CancelHandler cancelHandler = this.cancelHandler;
        if (cancelHandler != null) {
            cancellableContinuationImpl.callCancelHandler(cancelHandler, th);
        }
        l<Throwable, o> lVar = this.onCancellation;
        if (lVar != null) {
            cancellableContinuationImpl.callOnCancellation(lVar, th);
        }
    }

    public String toString() {
        StringBuilder sbC = b.c("CompletedContinuation(result=");
        sbC.append(this.result);
        sbC.append(", cancelHandler=");
        sbC.append(this.cancelHandler);
        sbC.append(", onCancellation=");
        sbC.append(this.onCancellation);
        sbC.append(", idempotentResume=");
        sbC.append(this.idempotentResume);
        sbC.append(", cancelCause=");
        sbC.append(this.cancelCause);
        sbC.append(')');
        return sbC.toString();
    }

    public /* synthetic */ CompletedContinuation(Object obj, CancelHandler cancelHandler, l lVar, Object obj2, Throwable th, int i10, rd.h hVar) {
        this(obj, (i10 & 2) != 0 ? null : cancelHandler, (i10 & 4) != 0 ? null : lVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }
}
