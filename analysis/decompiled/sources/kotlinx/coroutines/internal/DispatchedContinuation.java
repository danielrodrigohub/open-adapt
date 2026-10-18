package kotlinx.coroutines.internal;

import a0.b;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jd.f;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletedWithCancellation;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.ThreadLocalEventLoop;
import ld.d;
import p4.h;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements d, jd.d<T> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _reusableCancellableContinuation$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation");
    private volatile /* synthetic */ Object _reusableCancellableContinuation;
    public Object _state;
    public final jd.d<T> continuation;
    public final Object countOrElement;
    public final CoroutineDispatcher dispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(CoroutineDispatcher coroutineDispatcher, jd.d<? super T> dVar) {
        super(-1);
        this.dispatcher = coroutineDispatcher;
        this.continuation = dVar;
        this._state = DispatchedContinuationKt.UNDEFINED;
        this.countOrElement = ThreadContextKt.threadContextElements(getContext());
        this._reusableCancellableContinuation = null;
    }

    private final CancellableContinuationImpl<?> getReusableCancellableContinuation() {
        Object obj = this._reusableCancellableContinuation;
        if (obj instanceof CancellableContinuationImpl) {
            return (CancellableContinuationImpl) obj;
        }
        return null;
    }

    public final void awaitReusability() {
        while (this._reusableCancellableContinuation == DispatchedContinuationKt.REUSABLE_CLAIMED) {
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object obj, Throwable th) {
        if (obj instanceof CompletedWithCancellation) {
            ((CompletedWithCancellation) obj).onCancellation.invoke(th);
        }
    }

    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation() {
        boolean z10;
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = DispatchedContinuationKt.REUSABLE_CLAIMED;
                return null;
            }
            if (obj instanceof CancellableContinuationImpl) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
                Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, symbol)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    return (CancellableContinuationImpl) obj;
                }
            } else if (obj != DispatchedContinuationKt.REUSABLE_CLAIMED && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    @Override // ld.d
    public d getCallerFrame() {
        jd.d<T> dVar = this.continuation;
        if (dVar instanceof d) {
            return (d) dVar;
        }
        return null;
    }

    @Override // jd.d
    public f getContext() {
        return this.continuation.getContext();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public jd.d<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    public final boolean isReusable() {
        return this._reusableCancellableContinuation != null;
    }

    public final boolean postponeCancellation(Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
            boolean z10 = false;
            boolean z11 = true;
            if (h.c(obj, symbol)) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, symbol, th)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == symbol);
                if (z10) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _reusableCancellableContinuation$FU;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, null)) {
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        z11 = false;
                        break;
                    }
                }
                if (z11) {
                    return false;
                }
            }
        }
    }

    public final void release() {
        awaitReusability();
        CancellableContinuationImpl<?> reusableCancellableContinuation = getReusableCancellableContinuation();
        if (reusableCancellableContinuation != null) {
            reusableCancellableContinuation.detachChild$kotlinx_coroutines_core();
        }
    }

    @Override // jd.d
    public void resumeWith(Object obj) {
        f context = this.continuation.getContext();
        Object state$default = CompletionStateKt.toState$default(obj, null, 1, null);
        if (this.dispatcher.isDispatchNeeded(context)) {
            this._state = state$default;
            this.resumeMode = 0;
            this.dispatcher.mo14dispatch(context, this);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state$default;
            this.resumeMode = 0;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            f context2 = getContext();
            Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(context2, this.countOrElement);
            try {
                this.continuation.resumeWith(obj);
                ThreadContextKt.restoreThreadContext(context2, objUpdateThreadContext);
                while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
                }
            } catch (Throwable th) {
                ThreadContextKt.restoreThreadContext(context2, objUpdateThreadContext);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                handleFatalException(th2, null);
            } finally {
                eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        this._state = DispatchedContinuationKt.UNDEFINED;
        return obj;
    }

    public String toString() {
        StringBuilder sbC = b.c("DispatchedContinuation[");
        sbC.append(this.dispatcher);
        sbC.append(", ");
        sbC.append(DebugStringsKt.toDebugString(this.continuation));
        sbC.append(']');
        return sbC.toString();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0032  */
    /* JADX WARN: Code duplicated, block: B:23:0x0035  */
    public final Throwable tryReleaseClaimedContinuation(CancellableContinuation<?> cancellableContinuation) {
        boolean z10;
        do {
            Object obj = this._reusableCancellableContinuation;
            Symbol symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
            z10 = false;
            if (obj != symbol) {
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        if (z10) {
                            return (Throwable) obj;
                        }
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                z10 = true;
                if (z10) {
                    return (Throwable) obj;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _reusableCancellableContinuation$FU;
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(this, symbol, cancellableContinuation)) {
                    z10 = true;
                    break;
                }
            } while (atomicReferenceFieldUpdater2.get(this) == symbol);
        } while (!z10);
        return null;
    }
}
