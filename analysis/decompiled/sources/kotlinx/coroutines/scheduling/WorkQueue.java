package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: WorkQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public final class WorkQueue {
    private static final /* synthetic */ AtomicReferenceFieldUpdater lastScheduledTask$FU = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask");
    private static final /* synthetic */ AtomicIntegerFieldUpdater producerIndex$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex");
    private static final /* synthetic */ AtomicIntegerFieldUpdater consumerIndex$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex");
    private static final /* synthetic */ AtomicIntegerFieldUpdater blockingTasksInBuffer$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer");
    private final AtomicReferenceArray<Task> buffer = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public static /* synthetic */ Task add$default(WorkQueue workQueue, Task task, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return workQueue.add(task, z10);
    }

    private final Task addLast(Task task) {
        if (task.taskContext.getTaskMode() == 1) {
            blockingTasksInBuffer$FU.incrementAndGet(this);
        }
        if (getBufferSize$kotlinx_coroutines_core() == 127) {
            return task;
        }
        int i10 = this.producerIndex & 127;
        while (this.buffer.get(i10) != null) {
            Thread.yield();
        }
        this.buffer.lazySet(i10, task);
        producerIndex$FU.incrementAndGet(this);
        return null;
    }

    private final void decrementIfBlocking(Task task) {
        if (task != null) {
            if (task.taskContext.getTaskMode() == 1) {
                blockingTasksInBuffer$FU.decrementAndGet(this);
            }
        }
    }

    private final Task pollBuffer() {
        Task andSet;
        while (true) {
            int i10 = this.consumerIndex;
            if (i10 - this.producerIndex == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (consumerIndex$FU.compareAndSet(this, i10, i10 + 1) && (andSet = this.buffer.getAndSet(i11, null)) != null) {
                decrementIfBlocking(andSet);
                return andSet;
            }
        }
    }

    private final boolean pollTo(GlobalQueue globalQueue) {
        Task taskPollBuffer = pollBuffer();
        if (taskPollBuffer == null) {
            return false;
        }
        globalQueue.addLast(taskPollBuffer);
        return true;
    }

    private final long tryStealLastScheduled(WorkQueue workQueue, boolean z10) {
        Task task;
        boolean z11;
        do {
            task = (Task) workQueue.lastScheduledTask;
            if (task == null) {
                return -2L;
            }
            z11 = true;
            if (z10) {
                if (!(task.taskContext.getTaskMode() == 1)) {
                    return -2L;
                }
            }
            long jNanoTime = TasksKt.schedulerTimeSource.nanoTime() - task.submissionTime;
            long j10 = TasksKt.WORK_STEALING_TIME_RESOLUTION_NS;
            if (jNanoTime < j10) {
                return j10 - jNanoTime;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = lastScheduledTask$FU;
            while (!atomicReferenceFieldUpdater.compareAndSet(workQueue, task, null)) {
                if (atomicReferenceFieldUpdater.get(workQueue) != task) {
                    z11 = false;
                    break;
                }
            }
        } while (!z11);
        add$default(this, task, false, 2, null);
        return -1L;
    }

    public final Task add(Task task, boolean z10) {
        if (z10) {
            return addLast(task);
        }
        Task task2 = (Task) lastScheduledTask$FU.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return addLast(task2);
    }

    public final int getBufferSize$kotlinx_coroutines_core() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int getSize$kotlinx_coroutines_core() {
        return this.lastScheduledTask != null ? getBufferSize$kotlinx_coroutines_core() + 1 : getBufferSize$kotlinx_coroutines_core();
    }

    public final void offloadAllWorkTo(GlobalQueue globalQueue) {
        Task task = (Task) lastScheduledTask$FU.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        while (pollTo(globalQueue)) {
        }
    }

    public final Task poll() {
        Task task = (Task) lastScheduledTask$FU.getAndSet(this, null);
        return task == null ? pollBuffer() : task;
    }

    public final long tryStealBlockingFrom(WorkQueue workQueue) {
        int i10 = workQueue.consumerIndex;
        int i11 = workQueue.producerIndex;
        AtomicReferenceArray<Task> atomicReferenceArray = workQueue.buffer;
        while (true) {
            if (i10 == i11) {
                break;
            }
            int i12 = i10 & 127;
            if (workQueue.blockingTasksInBuffer == 0) {
                break;
            }
            Task task = atomicReferenceArray.get(i12);
            if (task != null) {
                if ((task.taskContext.getTaskMode() == 1) && atomicReferenceArray.compareAndSet(i12, task, null)) {
                    blockingTasksInBuffer$FU.decrementAndGet(workQueue);
                    add$default(this, task, false, 2, null);
                    return -1L;
                }
            }
            i10++;
        }
        return tryStealLastScheduled(workQueue, true);
    }

    public final long tryStealFrom(WorkQueue workQueue) {
        Task taskPollBuffer = workQueue.pollBuffer();
        if (taskPollBuffer == null) {
            return tryStealLastScheduled(workQueue, false);
        }
        add$default(this, taskPollBuffer, false, 2, null);
        return -1L;
    }
}
