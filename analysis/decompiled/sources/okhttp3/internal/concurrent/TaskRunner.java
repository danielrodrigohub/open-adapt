package okhttp3.internal.concurrent;

import a0.b;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import rd.h;

/* JADX INFO: compiled from: TaskRunner.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TaskRunner {
    public static final Companion Companion = new Companion(null);
    public static final TaskRunner INSTANCE;
    private static final Logger logger;
    private final Backend backend;
    private final List<TaskQueue> busyQueues;
    private boolean coordinatorWaiting;
    private long coordinatorWakeUpAt;
    private final Logger logger$1;
    private int nextQueueName;
    private final List<TaskQueue> readyQueues;
    private final Runnable runnable;

    /* JADX INFO: compiled from: TaskRunner.kt */
    public interface Backend {
        void coordinatorNotify(TaskRunner taskRunner);

        void coordinatorWait(TaskRunner taskRunner, long j10);

        <T> BlockingQueue<T> decorate(BlockingQueue<T> blockingQueue);

        void execute(TaskRunner taskRunner, Runnable runnable);

        long nanoTime();
    }

    /* JADX INFO: compiled from: TaskRunner.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final Logger getLogger() {
            return TaskRunner.logger;
        }
    }

    /* JADX INFO: compiled from: TaskRunner.kt */
    public static final class RealBackend implements Backend {
        private final ThreadPoolExecutor executor;

        public RealBackend(ThreadFactory threadFactory) {
            p4.h.j(threadFactory, "threadFactory");
            this.executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorNotify(TaskRunner taskRunner) {
            p4.h.j(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorWait(TaskRunner taskRunner, long j10) throws InterruptedException {
            p4.h.j(taskRunner, "taskRunner");
            long j11 = j10 / 1000000;
            long j12 = j10 - (1000000 * j11);
            if (j11 > 0 || j10 > 0) {
                taskRunner.wait(j11, (int) j12);
            }
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public <T> BlockingQueue<T> decorate(BlockingQueue<T> blockingQueue) {
            p4.h.j(blockingQueue, "queue");
            return blockingQueue;
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(TaskRunner taskRunner, Runnable runnable) {
            p4.h.j(taskRunner, "taskRunner");
            p4.h.j(runnable, "runnable");
            this.executor.execute(runnable);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }

        public final void shutdown() {
            this.executor.shutdown();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Logger logger2 = Logger.getLogger(TaskRunner.class.getName());
        p4.h.i(logger2, "getLogger(TaskRunner::class.java.name)");
        logger = logger2;
        INSTANCE = new TaskRunner(new RealBackend(_UtilJvmKt.threadFactory(_UtilJvmKt.okHttpName + " TaskRunner", true)), 0 == true ? 1 : 0, 2, 0 == true ? 1 : 0);
    }

    public TaskRunner(Backend backend, Logger logger2) {
        p4.h.j(backend, "backend");
        p4.h.j(logger2, "logger");
        this.backend = backend;
        this.logger$1 = logger2;
        this.nextQueueName = 10000;
        this.busyQueues = new ArrayList();
        this.readyQueues = new ArrayList();
        this.runnable = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task taskAwaitTaskToRun;
                while (true) {
                    TaskRunner taskRunner = this.this$0;
                    synchronized (taskRunner) {
                        taskAwaitTaskToRun = taskRunner.awaitTaskToRun();
                    }
                    if (taskAwaitTaskToRun == null) {
                        return;
                    }
                    Logger logger$okhttp = this.this$0.getLogger$okhttp();
                    TaskQueue queue$okhttp = taskAwaitTaskToRun.getQueue$okhttp();
                    p4.h.g(queue$okhttp);
                    TaskRunner taskRunner2 = this.this$0;
                    long jNanoTime = -1;
                    boolean zIsLoggable = logger$okhttp.isLoggable(Level.FINE);
                    if (zIsLoggable) {
                        jNanoTime = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime();
                        TaskLoggerKt.log(logger$okhttp, taskAwaitTaskToRun, queue$okhttp, "starting");
                    }
                    try {
                        taskRunner2.runTask(taskAwaitTaskToRun);
                        if (zIsLoggable) {
                            long jNanoTime2 = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                            StringBuilder sbC = b.c("finished run in ");
                            sbC.append(TaskLoggerKt.formatDuration(jNanoTime2));
                            TaskLoggerKt.log(logger$okhttp, taskAwaitTaskToRun, queue$okhttp, sbC.toString());
                        }
                    } catch (Throwable th) {
                        try {
                            synchronized (taskRunner2) {
                                taskRunner2.getBackend().execute(taskRunner2, this);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            if (zIsLoggable) {
                                long jNanoTime3 = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                                StringBuilder sbC2 = b.c("failed a run in ");
                                sbC2.append(TaskLoggerKt.formatDuration(jNanoTime3));
                                TaskLoggerKt.log(logger$okhttp, taskAwaitTaskToRun, queue$okhttp, sbC2.toString());
                            }
                            throw th2;
                        }
                    }
                }
            }
        };
    }

    private final void afterRun(Task task, long j10) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        p4.h.g(queue$okhttp);
        if (!(queue$okhttp.getActiveTask$okhttp() == task)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        boolean cancelActiveTask$okhttp = queue$okhttp.getCancelActiveTask$okhttp();
        queue$okhttp.setCancelActiveTask$okhttp(false);
        queue$okhttp.setActiveTask$okhttp(null);
        this.busyQueues.remove(queue$okhttp);
        if (j10 != -1 && !cancelActiveTask$okhttp && !queue$okhttp.getShutdown$okhttp()) {
            queue$okhttp.scheduleAndDecide$okhttp(task, j10, true);
        }
        if (!queue$okhttp.getFutureTasks$okhttp().isEmpty()) {
            this.readyQueues.add(queue$okhttp);
        }
    }

    private final void beforeRun(Task task) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        task.setNextExecuteNanoTime$okhttp(-1L);
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        p4.h.g(queue$okhttp);
        queue$okhttp.getFutureTasks$okhttp().remove(task);
        this.readyQueues.remove(queue$okhttp);
        queue$okhttp.setActiveTask$okhttp(task);
        this.busyQueues.add(queue$okhttp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runTask(Task task) {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(task.getName());
        try {
            long jRunOnce = task.runOnce();
            synchronized (this) {
                afterRun(task, jRunOnce);
            }
        } finally {
            synchronized (this) {
                afterRun(task, -1L);
                threadCurrentThread.setName(name);
            }
        }
    }

    public final List<TaskQueue> activeQueues() {
        List<TaskQueue> listG0;
        synchronized (this) {
            listG0 = n.g0(this.busyQueues, this.readyQueues);
        }
        return listG0;
    }

    public final Task awaitTaskToRun() {
        boolean z10;
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        while (!this.readyQueues.isEmpty()) {
            long jNanoTime = this.backend.nanoTime();
            long jMin = Long.MAX_VALUE;
            Iterator<TaskQueue> it = this.readyQueues.iterator();
            Task task = null;
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                }
                Task task2 = it.next().getFutureTasks$okhttp().get(0);
                long jMax = Math.max(0L, task2.getNextExecuteNanoTime$okhttp() - jNanoTime);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (task != null) {
                        z10 = true;
                        break;
                    }
                    task = task2;
                }
            }
            if (task != null) {
                beforeRun(task);
                if (z10 || (!this.coordinatorWaiting && (!this.readyQueues.isEmpty()))) {
                    this.backend.execute(this, this.runnable);
                }
                return task;
            }
            if (this.coordinatorWaiting) {
                if (jMin < this.coordinatorWakeUpAt - jNanoTime) {
                    this.backend.coordinatorNotify(this);
                }
                return null;
            }
            this.coordinatorWaiting = true;
            this.coordinatorWakeUpAt = jNanoTime + jMin;
            try {
                try {
                    this.backend.coordinatorWait(this, jMin);
                } catch (InterruptedException unused) {
                    cancelAll();
                }
                this.coordinatorWaiting = false;
            } catch (Throwable th) {
                this.coordinatorWaiting = false;
                throw th;
            }
        }
        return null;
    }

    public final void cancelAll() {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        int size = this.busyQueues.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            } else {
                this.busyQueues.get(size).cancelAllAndDecide$okhttp();
            }
        }
        int size2 = this.readyQueues.size();
        while (true) {
            size2--;
            if (-1 >= size2) {
                return;
            }
            TaskQueue taskQueue = this.readyQueues.get(size2);
            taskQueue.cancelAllAndDecide$okhttp();
            if (taskQueue.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.remove(size2);
            }
        }
    }

    public final Backend getBackend() {
        return this.backend;
    }

    public final Logger getLogger$okhttp() {
        return this.logger$1;
    }

    public final void kickCoordinator$okhttp(TaskQueue taskQueue) {
        p4.h.j(taskQueue, "taskQueue");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        if (taskQueue.getActiveTask$okhttp() == null) {
            if (!taskQueue.getFutureTasks$okhttp().isEmpty()) {
                _UtilCommonKt.addIfAbsent(this.readyQueues, taskQueue);
            } else {
                this.readyQueues.remove(taskQueue);
            }
        }
        if (this.coordinatorWaiting) {
            this.backend.coordinatorNotify(this);
        } else {
            this.backend.execute(this, this.runnable);
        }
    }

    public final TaskQueue newQueue() {
        int i10;
        synchronized (this) {
            i10 = this.nextQueueName;
            this.nextQueueName = i10 + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('Q');
        sb2.append(i10);
        return new TaskQueue(this, sb2.toString());
    }

    public /* synthetic */ TaskRunner(Backend backend, Logger logger2, int i10, h hVar) {
        this(backend, (i10 & 2) != 0 ? logger : logger2);
    }
}
