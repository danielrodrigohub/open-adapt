package okhttp3.internal.concurrent;

import a0.b;
import a1.f;
import fd.o;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilJvmKt;
import p4.h;
import qd.a;

/* JADX INFO: compiled from: TaskQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TaskQueue {
    private Task activeTask;
    private boolean cancelActiveTask;
    private final List<Task> futureTasks;
    private final String name;
    private boolean shutdown;
    private final TaskRunner taskRunner;

    /* JADX INFO: compiled from: TaskQueue.kt */
    public static final class AwaitIdleTask extends Task {
        private final CountDownLatch latch;

        public AwaitIdleTask() {
            super(f.d(new StringBuilder(), _UtilJvmKt.okHttpName, " awaitIdle"), false);
            this.latch = new CountDownLatch(1);
        }

        public final CountDownLatch getLatch() {
            return this.latch;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.latch.countDown();
            return -1L;
        }
    }

    public TaskQueue(TaskRunner taskRunner, String str) {
        h.j(taskRunner, "taskRunner");
        h.j(str, "name");
        this.taskRunner = taskRunner;
        this.name = str;
        this.futureTasks = new ArrayList();
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String str, long j10, boolean z10, a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        long j11 = j10;
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        taskQueue.execute(str, j11, z10, aVar);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        taskQueue.schedule(task, j10);
    }

    public final void cancelAll() {
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        synchronized (this.taskRunner) {
            if (cancelAllAndDecide$okhttp()) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
        }
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null) {
            h.g(task);
            if (task.getCancelable()) {
                this.cancelActiveTask = true;
            }
        }
        boolean z10 = false;
        for (int size = this.futureTasks.size() - 1; -1 < size; size--) {
            if (this.futureTasks.get(size).getCancelable()) {
                Logger logger$okhttp = this.taskRunner.getLogger$okhttp();
                Task task2 = this.futureTasks.get(size);
                if (logger$okhttp.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger$okhttp, task2, this, "canceled");
                }
                this.futureTasks.remove(size);
                z10 = true;
            }
        }
        return z10;
    }

    public final void execute(String str, long j10, boolean z10, final a<o> aVar) {
        h.j(str, "name");
        h.j(aVar, "block");
        schedule(new Task(str, z10) { // from class: okhttp3.internal.concurrent.TaskQueue.execute.1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                aVar.invoke();
                return -1L;
            }
        }, j10);
    }

    public final Task getActiveTask$okhttp() {
        return this.activeTask;
    }

    public final boolean getCancelActiveTask$okhttp() {
        return this.cancelActiveTask;
    }

    public final List<Task> getFutureTasks$okhttp() {
        return this.futureTasks;
    }

    public final String getName$okhttp() {
        return this.name;
    }

    public final List<Task> getScheduledTasks() {
        List<Task> listL0;
        synchronized (this.taskRunner) {
            listL0 = n.l0(this.futureTasks);
        }
        return listL0;
    }

    public final boolean getShutdown$okhttp() {
        return this.shutdown;
    }

    public final TaskRunner getTaskRunner$okhttp() {
        return this.taskRunner;
    }

    public final CountDownLatch idleLatch() {
        synchronized (this.taskRunner) {
            if (this.activeTask == null && this.futureTasks.isEmpty()) {
                return new CountDownLatch(0);
            }
            Task task = this.activeTask;
            if (task instanceof AwaitIdleTask) {
                return ((AwaitIdleTask) task).getLatch();
            }
            for (Task task2 : this.futureTasks) {
                if (task2 instanceof AwaitIdleTask) {
                    return ((AwaitIdleTask) task2).getLatch();
                }
            }
            AwaitIdleTask awaitIdleTask = new AwaitIdleTask();
            if (scheduleAndDecide$okhttp(awaitIdleTask, 0L, false)) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
            return awaitIdleTask.getLatch();
        }
    }

    public final void schedule(Task task, long j10) {
        h.j(task, "task");
        synchronized (this.taskRunner) {
            if (!this.shutdown) {
                if (scheduleAndDecide$okhttp(task, j10, false)) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
            } else if (task.getCancelable()) {
                Logger logger$okhttp = this.taskRunner.getLogger$okhttp();
                if (logger$okhttp.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger$okhttp, task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                Logger logger$okhttp2 = this.taskRunner.getLogger$okhttp();
                if (logger$okhttp2.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger$okhttp2, task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean scheduleAndDecide$okhttp(Task task, long j10, boolean z10) {
        String string;
        h.j(task, "task");
        task.initQueue$okhttp(this);
        long jNanoTime = this.taskRunner.getBackend().nanoTime();
        long j11 = jNanoTime + j10;
        int iIndexOf = this.futureTasks.indexOf(task);
        if (iIndexOf != -1) {
            if (task.getNextExecuteNanoTime$okhttp() <= j11) {
                Logger logger$okhttp = this.taskRunner.getLogger$okhttp();
                if (logger$okhttp.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger$okhttp, task, this, "already scheduled");
                }
                return false;
            }
            this.futureTasks.remove(iIndexOf);
        }
        task.setNextExecuteNanoTime$okhttp(j11);
        Logger logger$okhttp2 = this.taskRunner.getLogger$okhttp();
        if (logger$okhttp2.isLoggable(Level.FINE)) {
            if (z10) {
                StringBuilder sbC = b.c("run again after ");
                sbC.append(TaskLoggerKt.formatDuration(j11 - jNanoTime));
                string = sbC.toString();
            } else {
                StringBuilder sbC2 = b.c("scheduled after ");
                sbC2.append(TaskLoggerKt.formatDuration(j11 - jNanoTime));
                string = sbC2.toString();
            }
            TaskLoggerKt.log(logger$okhttp2, task, this, string);
        }
        Iterator<Task> it = this.futureTasks.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (it.next().getNextExecuteNanoTime$okhttp() - jNanoTime > j10) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.futureTasks.size();
        }
        this.futureTasks.add(size, task);
        return size == 0;
    }

    public final void setActiveTask$okhttp(Task task) {
        this.activeTask = task;
    }

    public final void setCancelActiveTask$okhttp(boolean z10) {
        this.cancelActiveTask = z10;
    }

    public final void setShutdown$okhttp(boolean z10) {
        this.shutdown = z10;
    }

    public final void shutdown() {
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        synchronized (this.taskRunner) {
            this.shutdown = true;
            if (cancelAllAndDecide$okhttp()) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
        }
    }

    public String toString() {
        return this.name;
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String str, long j10, a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        taskQueue.schedule(str, j10, aVar);
    }

    public final void schedule(String str, long j10, final a<Long> aVar) {
        h.j(str, "name");
        h.j(aVar, "block");
        schedule(new Task(str) { // from class: okhttp3.internal.concurrent.TaskQueue.schedule.2
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                return aVar.invoke().longValue();
            }
        }, j10);
    }
}
