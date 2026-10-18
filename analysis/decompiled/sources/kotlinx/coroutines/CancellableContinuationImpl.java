package kotlinx.coroutines;

import fd.b;
import fd.o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jd.f;
import kd.a;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.Symbol;
import ld.d;
import qd.l;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, d {
    private static final /* synthetic */ AtomicIntegerFieldUpdater _decision$FU = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decision");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state");
    private volatile /* synthetic */ int _decision;
    private volatile /* synthetic */ Object _state;
    private final f context;
    private final jd.d<T> delegate;
    private DisposableHandle parentHandle;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(jd.d<? super T> dVar, int i10) {
        super(i10);
        this.delegate = dVar;
        this.context = dVar.getContext();
        this._decision = 0;
        this._state = Active.INSTANCE;
    }

    private final Void alreadyResumedError(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final boolean cancelLater(Throwable th) {
        if (isReusable()) {
            return ((DispatchedContinuation) this.delegate).postponeCancellation(th);
        }
        return false;
    }

    private final void detachChildIfNonResuable() {
        if (isReusable()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    private final void dispatchResume(int i10) {
        if (tryResume()) {
            return;
        }
        DispatchedTaskKt.dispatch(this, i10);
    }

    private final String getStateDebugRepresentation() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof NotCompleted) {
            return "Active";
        }
        return state$kotlinx_coroutines_core instanceof CancelledContinuation ? "Cancelled" : "Completed";
    }

    private final DisposableHandle installParentHandle() {
        Job job = (Job) getContext().get(Job.Key);
        if (job == null) {
            return null;
        }
        DisposableHandle disposableHandleInvokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new ChildContinuation(this), 2, null);
        this.parentHandle = disposableHandleInvokeOnCompletion$default;
        return disposableHandleInvokeOnCompletion$default;
    }

    private final boolean isReusable() {
        return DispatchedTaskKt.isReusableMode(this.resumeMode) && ((DispatchedContinuation) this.delegate).isReusable();
    }

    private final CancelHandler makeCancelHandler(l<? super Throwable, o> lVar) {
        return lVar instanceof CancelHandler ? (CancelHandler) lVar : new InvokeOnCancel(lVar);
    }

    private final void multipleHandlersError(l<? super Throwable, o> lVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + lVar + ", already has " + obj).toString());
    }

    private final void releaseClaimedReusableContinuation() {
        Throwable thTryReleaseClaimedContinuation;
        jd.d<T> dVar = this.delegate;
        DispatchedContinuation dispatchedContinuation = dVar instanceof DispatchedContinuation ? (DispatchedContinuation) dVar : null;
        if (dispatchedContinuation == null || (thTryReleaseClaimedContinuation = dispatchedContinuation.tryReleaseClaimedContinuation(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(thTryReleaseClaimedContinuation);
    }

    private final void resumeImpl(Object obj, int i10, l<? super Throwable, o> lVar) {
        boolean z10;
        do {
            Object obj2 = this._state;
            if (!(obj2 instanceof NotCompleted)) {
                if (obj2 instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                    if (cancelledContinuation.makeResumed()) {
                        if (lVar != null) {
                            callOnCancellation(lVar, cancelledContinuation.cause);
                            return;
                        }
                        return;
                    }
                }
                alreadyResumedError(obj);
                throw new b();
            }
            Object objResumedState = resumedState((NotCompleted) obj2, obj, i10, lVar, null);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objResumedState)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        detachChildIfNonResuable();
        dispatchResume(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void resumeImpl$default(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i10, l lVar, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        cancellableContinuationImpl.resumeImpl(obj, i10, lVar);
    }

    private final Object resumedState(NotCompleted notCompleted, Object obj, int i10, l<? super Throwable, o> lVar, Object obj2) {
        if (obj instanceof CompletedExceptionally) {
            return obj;
        }
        if (!DispatchedTaskKt.isCancellableMode(i10) && obj2 == null) {
            return obj;
        }
        if (lVar != null || (((notCompleted instanceof CancelHandler) && !(notCompleted instanceof BeforeResumeCancelHandler)) || obj2 != null)) {
            return new CompletedContinuation(obj, notCompleted instanceof CancelHandler ? (CancelHandler) notCompleted : null, lVar, obj2, null, 16, null);
        }
        return obj;
    }

    private final Symbol tryResumeImpl(Object obj, Object obj2, l<? super Throwable, o> lVar) {
        boolean z10;
        do {
            Object obj3 = this._state;
            if (!(obj3 instanceof NotCompleted)) {
                if ((obj3 instanceof CompletedContinuation) && obj2 != null && ((CompletedContinuation) obj3).idempotentResume == obj2) {
                    return CancellableContinuationImplKt.RESUME_TOKEN;
                }
                return null;
            }
            Object objResumedState = resumedState((NotCompleted) obj3, obj, this.resumeMode, lVar, obj2);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, objResumedState)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj3) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        detachChildIfNonResuable();
        return CancellableContinuationImplKt.RESUME_TOKEN;
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

    public final void callCancelHandler(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void callOnCancellation(l<? super Throwable, o> lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public boolean cancel(Throwable th) {
        Object obj;
        boolean z10;
        boolean z11;
        do {
            obj = this._state;
            z10 = false;
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
            z11 = obj instanceof CancelHandler;
            CancelledContinuation cancelledContinuation = new CancelledContinuation(this, th, z11);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, cancelledContinuation)) {
                    z10 = true;
                    break;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj);
        } while (!z10);
        CancelHandler cancelHandler = z11 ? (CancelHandler) obj : null;
        if (cancelHandler != null) {
            callCancelHandler(cancelHandler, th);
        }
        detachChildIfNonResuable();
        dispatchResume(this.resumeMode);
        return true;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object obj, Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof NotCompleted) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof CompletedExceptionally) {
                return;
            }
            boolean z10 = false;
            if (obj2 instanceof CompletedContinuation) {
                CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                if (!(!completedContinuation.getCancelled())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                CompletedContinuation completedContinuationCopy$default = CompletedContinuation.copy$default(completedContinuation, null, null, null, null, th, 15, null);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, completedContinuationCopy$default)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj2);
                if (z10) {
                    completedContinuation.invokeHandlers(this, th);
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$FU;
                CompletedContinuation completedContinuation2 = new CompletedContinuation(obj2, null, null, null, th, 14, null);
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj2, completedContinuation2)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj2);
                if (z10) {
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void completeResume(Object obj) {
        dispatchResume(this.resumeMode);
    }

    public final void detachChild$kotlinx_coroutines_core() {
        DisposableHandle disposableHandle = this.parentHandle;
        if (disposableHandle == null) {
            return;
        }
        disposableHandle.dispose();
        this.parentHandle = NonDisposableHandle.INSTANCE;
    }

    @Override // ld.d
    public d getCallerFrame() {
        jd.d<T> dVar = this.delegate;
        if (dVar instanceof d) {
            return (d) dVar;
        }
        return null;
    }

    @Override // jd.d
    public f getContext() {
        return this.context;
    }

    public Throwable getContinuationCancellationCause(Job job) {
        return job.getCancellationException();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final jd.d<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(obj);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    public final Object getResult() throws Throwable {
        Job job;
        boolean zIsReusable = isReusable();
        if (trySuspend()) {
            if (this.parentHandle == null) {
                installParentHandle();
            }
            if (zIsReusable) {
                releaseClaimedReusableContinuation();
            }
            return a.COROUTINE_SUSPENDED;
        }
        if (zIsReusable) {
            releaseClaimedReusableContinuation();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        if (!DispatchedTaskKt.isCancellableMode(this.resumeMode) || (job = (Job) getContext().get(Job.Key)) == null || job.isActive()) {
            return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        }
        CancellationException cancellationException = job.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
        throw cancellationException;
    }

    public final Object getState$kotlinx_coroutines_core() {
        return this._state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj instanceof CompletedContinuation ? (T) ((CompletedContinuation) obj).result : obj;
    }

    public void initCancellability() {
        DisposableHandle disposableHandleInstallParentHandle = installParentHandle();
        if (disposableHandleInstallParentHandle != null && isCompleted()) {
            disposableHandleInstallParentHandle.dispose();
            this.parentHandle = NonDisposableHandle.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void invokeOnCancellation(l<? super Throwable, o> lVar) {
        CancelHandler cancelHandlerMakeCancelHandler = makeCancelHandler(lVar);
        while (true) {
            Object obj = this._state;
            boolean z10 = false;
            if (obj instanceof Active) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, cancelHandlerMakeCancelHandler)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj);
                if (z10) {
                    return;
                }
            } else if (obj instanceof CancelHandler) {
                multipleHandlersError(lVar, obj);
            } else {
                boolean z11 = obj instanceof CompletedExceptionally;
                if (z11) {
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
                    if (!completedExceptionally.makeHandled()) {
                        multipleHandlersError(lVar, obj);
                    }
                    if (obj instanceof CancelledContinuation) {
                        if (!z11) {
                            completedExceptionally = null;
                        }
                        callCancelHandler(lVar, completedExceptionally != null ? completedExceptionally.cause : null);
                        return;
                    }
                    return;
                }
                if (obj instanceof CompletedContinuation) {
                    CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                    if (completedContinuation.cancelHandler != null) {
                        multipleHandlersError(lVar, obj);
                    }
                    if (cancelHandlerMakeCancelHandler instanceof BeforeResumeCancelHandler) {
                        return;
                    }
                    if (completedContinuation.getCancelled()) {
                        callCancelHandler(lVar, completedContinuation.cancelCause);
                        return;
                    }
                    CompletedContinuation completedContinuationCopy$default = CompletedContinuation.copy$default(completedContinuation, null, cancelHandlerMakeCancelHandler, null, null, null, 29, null);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$FU;
                    do {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, completedContinuationCopy$default)) {
                            z10 = true;
                            break;
                        }
                    } while (atomicReferenceFieldUpdater2.get(this) == obj);
                    if (z10) {
                        return;
                    }
                } else {
                    if (cancelHandlerMakeCancelHandler instanceof BeforeResumeCancelHandler) {
                        return;
                    }
                    CompletedContinuation completedContinuation2 = new CompletedContinuation(obj, cancelHandlerMakeCancelHandler, null, null, null, 28, null);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = _state$FU;
                    do {
                        if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, completedContinuation2)) {
                            z10 = true;
                            break;
                        }
                    } while (atomicReferenceFieldUpdater3.get(this) == obj);
                    if (z10) {
                        return;
                    }
                }
            }
        }
    }

    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    public String nameString() {
        return "CancellableContinuation";
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable th) {
        if (cancelLater(th)) {
            return;
        }
        cancel(th);
        detachChildIfNonResuable();
    }

    public final boolean resetStateReusable() {
        Object obj = this._state;
        if ((obj instanceof CompletedContinuation) && ((CompletedContinuation) obj).idempotentResume != null) {
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        this._decision = 0;
        this._state = Active.INSTANCE;
        return true;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resume(T t10, l<? super Throwable, o> lVar) {
        resumeImpl(t10, this.resumeMode, lVar);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t10) {
        jd.d<T> dVar = this.delegate;
        DispatchedContinuation dispatchedContinuation = dVar instanceof DispatchedContinuation ? (DispatchedContinuation) dVar : null;
        resumeImpl$default(this, t10, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    @Override // jd.d
    public void resumeWith(Object obj) {
        resumeImpl$default(this, CompletionStateKt.toState(obj, this), this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    public String toString() {
        return nameString() + '(' + DebugStringsKt.toDebugString(this.delegate) + "){" + getStateDebugRepresentation() + "}@" + DebugStringsKt.getHexAddress(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object tryResume(T t10, Object obj, l<? super Throwable, o> lVar) {
        return tryResumeImpl(t10, obj, lVar);
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

    private final void callCancelHandler(l<? super Throwable, o> lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }
}
