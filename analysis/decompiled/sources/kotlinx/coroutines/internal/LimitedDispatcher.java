package kotlinx.coroutines.internal;

import fd.o;
import jd.f;
import jd.h;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: compiled from: LimitedDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Runnable, Delay {
    private final /* synthetic */ Delay $$delegate_0;
    private final CoroutineDispatcher dispatcher;
    private final int parallelism;
    private final LockFreeTaskQueue<Runnable> queue;
    private volatile int runningWorkers;
    private final Object workerAllocationLock;

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(CoroutineDispatcher coroutineDispatcher, int i10) {
        this.dispatcher = coroutineDispatcher;
        this.parallelism = i10;
        Delay delay = coroutineDispatcher instanceof Delay ? (Delay) coroutineDispatcher : null;
        this.$$delegate_0 = delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
        this.queue = new LockFreeTaskQueue<>(false);
        this.workerAllocationLock = new Object();
    }

    private final boolean addAndTryDispatching(Runnable runnable) {
        this.queue.addLast(runnable);
        return this.runningWorkers >= this.parallelism;
    }

    private final boolean tryAllocateWorker() {
        synchronized (this.workerAllocationLock) {
            if (this.runningWorkers >= this.parallelism) {
                return false;
            }
            this.runningWorkers++;
            return true;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: dispatch */
    public void mo14dispatch(f fVar, Runnable runnable) {
        if (addAndTryDispatching(runnable) || !tryAllocateWorker()) {
            return;
        }
        this.dispatcher.mo14dispatch(this, this);
    }

    @Override // kotlinx.coroutines.Delay
    public DisposableHandle invokeOnTimeout(long j10, Runnable runnable, f fVar) {
        return this.$$delegate_0.invokeOnTimeout(j10, runnable, fVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            int i10 = 0;
            while (true) {
                Runnable runnableRemoveFirstOrNull = this.queue.removeFirstOrNull();
                if (runnableRemoveFirstOrNull != null) {
                    try {
                        runnableRemoveFirstOrNull.run();
                    } catch (Throwable th) {
                        CoroutineExceptionHandlerKt.handleCoroutineException(h.f9512h, th);
                    }
                    i10++;
                    if (i10 >= 16 && this.dispatcher.isDispatchNeeded(this)) {
                        this.dispatcher.mo14dispatch(this, this);
                        return;
                    }
                }
            }
            synchronized (this.workerAllocationLock) {
                this.runningWorkers--;
                if (this.queue.getSize() == 0) {
                    return;
                } else {
                    this.runningWorkers++;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.Delay
    /* JADX INFO: renamed from: scheduleResumeAfterDelay */
    public void mo15scheduleResumeAfterDelay(long j10, CancellableContinuation<? super o> cancellableContinuation) {
        this.$$delegate_0.mo15scheduleResumeAfterDelay(j10, cancellableContinuation);
    }
}
