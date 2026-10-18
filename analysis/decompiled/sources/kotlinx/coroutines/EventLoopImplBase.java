package kotlinx.coroutines;

import a0.b;
import fd.o;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jd.f;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import p4.h;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class EventLoopImplBase extends EventLoopImplPlatform implements Delay {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _queue$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _delayed$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public final class DelayedResumeTask extends DelayedTask {
        private final CancellableContinuation<o> cont;

        /* JADX WARN: Multi-variable type inference failed */
        public DelayedResumeTask(long j10, CancellableContinuation<? super o> cancellableContinuation) {
            super(j10);
            this.cont = cancellableContinuation;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.cont.resumeUndispatched(EventLoopImplBase.this, o.f7408a);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public String toString() {
            return super.toString() + this.cont;
        }
    }

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static final class DelayedRunnableTask extends DelayedTask {
        private final Runnable block;

        public DelayedRunnableTask(long j10, Runnable runnable) {
            super(j10);
            this.block = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.block.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public String toString() {
            return super.toString() + this.block;
        }
    }

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, DisposableHandle, ThreadSafeHeapNode {
        private volatile Object _heap;
        private int index = -1;
        public long nanoTime;

        public DelayedTask(long j10) {
            this.nanoTime = j10;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final synchronized void dispose() {
            Object obj = this._heap;
            if (obj == EventLoop_commonKt.DISPOSED_TASK) {
                return;
            }
            DelayedTaskQueue delayedTaskQueue = obj instanceof DelayedTaskQueue ? (DelayedTaskQueue) obj : null;
            if (delayedTaskQueue != null) {
                delayedTaskQueue.remove(this);
            }
            this._heap = EventLoop_commonKt.DISPOSED_TASK;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public ThreadSafeHeap<?> getHeap() {
            Object obj = this._heap;
            if (obj instanceof ThreadSafeHeap) {
                return (ThreadSafeHeap) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public int getIndex() {
            return this.index;
        }

        public final synchronized int scheduleTask(long j10, DelayedTaskQueue delayedTaskQueue, EventLoopImplBase eventLoopImplBase) {
            if (this._heap == EventLoop_commonKt.DISPOSED_TASK) {
                return 2;
            }
            synchronized (delayedTaskQueue) {
                DelayedTask delayedTaskFirstImpl = delayedTaskQueue.firstImpl();
                if (eventLoopImplBase.isCompleted()) {
                    return 1;
                }
                if (delayedTaskFirstImpl == null) {
                    delayedTaskQueue.timeNow = j10;
                } else {
                    long j11 = delayedTaskFirstImpl.nanoTime;
                    if (j11 - j10 < 0) {
                        j10 = j11;
                    }
                    if (j10 - delayedTaskQueue.timeNow > 0) {
                        delayedTaskQueue.timeNow = j10;
                    }
                }
                long j12 = this.nanoTime;
                long j13 = delayedTaskQueue.timeNow;
                if (j12 - j13 < 0) {
                    this.nanoTime = j13;
                }
                delayedTaskQueue.addImpl(this);
                return 0;
            }
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public void setHeap(ThreadSafeHeap<?> threadSafeHeap) {
            if (!(this._heap != EventLoop_commonKt.DISPOSED_TASK)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = threadSafeHeap;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public void setIndex(int i10) {
            this.index = i10;
        }

        public final boolean timeToExecute(long j10) {
            return j10 - this.nanoTime >= 0;
        }

        public String toString() {
            StringBuilder sbC = b.c("Delayed[nanos=");
            sbC.append(this.nanoTime);
            sbC.append(']');
            return sbC.toString();
        }

        @Override // java.lang.Comparable
        public int compareTo(DelayedTask delayedTask) {
            long j10 = this.nanoTime - delayedTask.nanoTime;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }
    }

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static final class DelayedTaskQueue extends ThreadSafeHeap<DelayedTask> {
        public long timeNow;

        public DelayedTaskQueue(long j10) {
            this.timeNow = j10;
        }
    }

    private final void closeQueue() {
        while (true) {
            Object obj = this._queue;
            boolean z10 = false;
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
                Symbol symbol = EventLoop_commonKt.CLOSED_EMPTY;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, symbol)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
                if (z10) {
                    return;
                }
            } else {
                if (obj instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) obj).close();
                    return;
                }
                if (obj == EventLoop_commonKt.CLOSED_EMPTY) {
                    return;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                lockFreeTaskQueueCore.addLast((Runnable) obj);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _queue$FU;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj);
                if (z10) {
                    return;
                }
            }
        }
    }

    private final Runnable dequeue() {
        boolean z10;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (obj instanceof LockFreeTaskQueueCore) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                Object objRemoveFirstOrNull = lockFreeTaskQueueCore.removeFirstOrNull();
                if (objRemoveFirstOrNull != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                    return (Runnable) objRemoveFirstOrNull;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
                LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, next) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            } else {
                if (obj == EventLoop_commonKt.CLOSED_EMPTY) {
                    return null;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _queue$FU;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, null)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean enqueueImpl(Runnable runnable) {
        while (true) {
            Object obj = this._queue;
            boolean z10 = false;
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
                if (z10) {
                    return true;
                }
            } else if (obj instanceof LockFreeTaskQueueCore) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                int iAddLast = lockFreeTaskQueueCore.addLast(runnable);
                if (iAddLast == 0) {
                    return true;
                }
                if (iAddLast == 1) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _queue$FU;
                    LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, next) && atomicReferenceFieldUpdater2.get(this) == obj) {
                    }
                } else if (iAddLast == 2) {
                    return false;
                }
            } else {
                if (obj == EventLoop_commonKt.CLOSED_EMPTY) {
                    return false;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore2 = new LockFreeTaskQueueCore(8, true);
                lockFreeTaskQueueCore2.addLast((Runnable) obj);
                lockFreeTaskQueueCore2.addLast(runnable);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = _queue$FU;
                do {
                    if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, lockFreeTaskQueueCore2)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater3.get(this) == obj);
                if (z10) {
                    return true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isCompleted() {
        return this._isCompleted;
    }

    private final void rescheduleAllDelayed() {
        DelayedTask delayedTaskRemoveFirstOrNull;
        AbstractTimeSourceKt.getTimeSource();
        long jNanoTime = System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
            if (delayedTaskQueue == null || (delayedTaskRemoveFirstOrNull = delayedTaskQueue.removeFirstOrNull()) == null) {
                return;
            } else {
                reschedule(jNanoTime, delayedTaskRemoveFirstOrNull);
            }
        }
    }

    private final int scheduleImpl(long j10, DelayedTask delayedTask) {
        if (isCompleted()) {
            return 1;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        if (delayedTaskQueue == null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _delayed$FU;
            DelayedTaskQueue delayedTaskQueue2 = new DelayedTaskQueue(j10);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, delayedTaskQueue2) && atomicReferenceFieldUpdater.get(this) == null) {
            }
            Object obj = this._delayed;
            h.g(obj);
            delayedTaskQueue = (DelayedTaskQueue) obj;
        }
        return delayedTask.scheduleTask(j10, delayedTaskQueue, this);
    }

    private final void setCompleted(boolean z10) {
        this._isCompleted = z10 ? 1 : 0;
    }

    private final boolean shouldUnpark(DelayedTask delayedTask) {
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        return (delayedTaskQueue != null ? delayedTaskQueue.peek() : null) == delayedTask;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: dispatch */
    public final void mo14dispatch(f fVar, Runnable runnable) {
        enqueue(runnable);
    }

    public void enqueue(Runnable runnable) {
        if (enqueueImpl(runnable)) {
            unpark();
        } else {
            DefaultExecutor.INSTANCE.enqueue(runnable);
        }
    }

    @Override // kotlinx.coroutines.EventLoop
    public long getNextTime() {
        DelayedTask delayedTaskPeek;
        if (super.getNextTime() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                return obj == EventLoop_commonKt.CLOSED_EMPTY ? Long.MAX_VALUE : 0L;
            }
            if (!((LockFreeTaskQueueCore) obj).isEmpty()) {
                return 0L;
            }
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        if (delayedTaskQueue == null || (delayedTaskPeek = delayedTaskQueue.peek()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = delayedTaskPeek.nanoTime;
        AbstractTimeSourceKt.getTimeSource();
        long jNanoTime = j10 - System.nanoTime();
        if (jNanoTime < 0) {
            return 0L;
        }
        return jNanoTime;
    }

    public DisposableHandle invokeOnTimeout(long j10, Runnable runnable, f fVar) {
        return Delay.DefaultImpls.invokeOnTimeout(this, j10, runnable, fVar);
    }

    public boolean isEmpty() {
        if (!isUnconfinedQueueEmpty()) {
            return false;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        if (delayedTaskQueue != null && !delayedTaskQueue.isEmpty()) {
            return false;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof LockFreeTaskQueueCore) {
                return ((LockFreeTaskQueueCore) obj).isEmpty();
            }
            if (obj != EventLoop_commonKt.CLOSED_EMPTY) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.EventLoop
    public long processNextEvent() {
        DelayedTask delayedTaskRemoveAtImpl;
        if (processUnconfinedEvent()) {
            return 0L;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        if (delayedTaskQueue != null && !delayedTaskQueue.isEmpty()) {
            AbstractTimeSourceKt.getTimeSource();
            long jNanoTime = System.nanoTime();
            do {
                synchronized (delayedTaskQueue) {
                    DelayedTask delayedTaskFirstImpl = delayedTaskQueue.firstImpl();
                    delayedTaskRemoveAtImpl = null;
                    if (delayedTaskFirstImpl != null) {
                        DelayedTask delayedTask = delayedTaskFirstImpl;
                        delayedTaskRemoveAtImpl = delayedTask.timeToExecute(jNanoTime) ? enqueueImpl(delayedTask) : false ? delayedTaskQueue.removeAtImpl(0) : null;
                    }
                }
            } while (delayedTaskRemoveAtImpl != null);
        }
        Runnable runnableDequeue = dequeue();
        if (runnableDequeue == null) {
            return getNextTime();
        }
        runnableDequeue.run();
        return 0L;
    }

    public final void resetAll() {
        this._queue = null;
        this._delayed = null;
    }

    public final void schedule(long j10, DelayedTask delayedTask) {
        int iScheduleImpl = scheduleImpl(j10, delayedTask);
        if (iScheduleImpl == 0) {
            if (shouldUnpark(delayedTask)) {
                unpark();
            }
        } else if (iScheduleImpl == 1) {
            reschedule(j10, delayedTask);
        } else if (iScheduleImpl != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    public final DisposableHandle scheduleInvokeOnTimeout(long j10, Runnable runnable) {
        long jDelayToNanos = EventLoop_commonKt.delayToNanos(j10);
        if (jDelayToNanos >= 4611686018427387903L) {
            return NonDisposableHandle.INSTANCE;
        }
        AbstractTimeSourceKt.getTimeSource();
        long jNanoTime = System.nanoTime();
        DelayedRunnableTask delayedRunnableTask = new DelayedRunnableTask(jDelayToNanos + jNanoTime, runnable);
        schedule(jNanoTime, delayedRunnableTask);
        return delayedRunnableTask;
    }

    @Override // kotlinx.coroutines.Delay
    /* JADX INFO: renamed from: scheduleResumeAfterDelay */
    public void mo15scheduleResumeAfterDelay(long j10, CancellableContinuation<? super o> cancellableContinuation) {
        long jDelayToNanos = EventLoop_commonKt.delayToNanos(j10);
        if (jDelayToNanos < 4611686018427387903L) {
            AbstractTimeSourceKt.getTimeSource();
            long jNanoTime = System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(jDelayToNanos + jNanoTime, cancellableContinuation);
            schedule(jNanoTime, delayedResumeTask);
            CancellableContinuationKt.disposeOnCancellation(cancellableContinuation, delayedResumeTask);
        }
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        ThreadLocalEventLoop.INSTANCE.resetEventLoop$kotlinx_coroutines_core();
        setCompleted(true);
        closeQueue();
        while (processNextEvent() <= 0) {
        }
        rescheduleAllDelayed();
    }
}
