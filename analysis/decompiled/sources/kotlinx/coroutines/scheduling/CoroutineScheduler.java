package kotlinx.coroutines.scheduling;

import a0.d;
import a1.f;
import d1.c;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;
import rd.h;

/* JADX INFO: compiled from: CoroutineScheduler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;
    public volatile /* synthetic */ long controlState;
    public final int corePoolSize;
    public final GlobalQueue globalBlockingQueue;
    public final GlobalQueue globalCpuQueue;
    public final long idleWorkerKeepAliveNs;
    public final int maxPoolSize;
    private volatile /* synthetic */ long parkedWorkersStack;
    public final String schedulerName;
    public final ResizableAtomicArray<Worker> workers;
    public static final Companion Companion = new Companion(null);
    public static final Symbol NOT_IN_STACK = new Symbol("NOT_IN_STACK");
    private static final /* synthetic */ AtomicLongFieldUpdater parkedWorkersStack$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");
    public static final /* synthetic */ AtomicLongFieldUpdater controlState$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");
    private static final /* synthetic */ AtomicIntegerFieldUpdater _isTerminated$FU = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            iArr[WorkerState.PARKING.ordinal()] = 1;
            iArr[WorkerState.BLOCKING.ordinal()] = 2;
            iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            iArr[WorkerState.DORMANT.ordinal()] = 4;
            iArr[WorkerState.TERMINATED.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public CoroutineScheduler(int i10, int i11, long j10, String str) {
        this.corePoolSize = i10;
        this.maxPoolSize = i11;
        this.idleWorkerKeepAliveNs = j10;
        this.schedulerName = str;
        if (!(i10 >= 1)) {
            throw new IllegalArgumentException(d.b("Core pool size ", i10, " should be at least 1").toString());
        }
        if (!(i11 >= i10)) {
            throw new IllegalArgumentException(c.a("Max pool size ", i11, " should be greater than or equals to core pool size ", i10).toString());
        }
        if (!(i11 <= 2097150)) {
            throw new IllegalArgumentException(d.b("Max pool size ", i11, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j10 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.globalCpuQueue = new GlobalQueue();
        this.globalBlockingQueue = new GlobalQueue();
        this.parkedWorkersStack = 0L;
        this.workers = new ResizableAtomicArray<>(i10 + 1);
        this.controlState = ((long) i10) << 42;
        this._isTerminated = 0;
    }

    private final boolean addToGlobalQueue(Task task) {
        return task.taskContext.getTaskMode() == 1 ? this.globalBlockingQueue.addLast(task) : this.globalCpuQueue.addLast(task);
    }

    private final int createNewWorker() {
        synchronized (this.workers) {
            if (isTerminated()) {
                return -1;
            }
            long j10 = this.controlState;
            int i10 = (int) (j10 & 2097151);
            int i11 = i10 - ((int) ((j10 & 4398044413952L) >> 21));
            if (i11 < 0) {
                i11 = 0;
            }
            if (i11 >= this.corePoolSize) {
                return 0;
            }
            if (i10 >= this.maxPoolSize) {
                return 0;
            }
            int i12 = ((int) (this.controlState & 2097151)) + 1;
            if (!(i12 > 0 && this.workers.get(i12) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Worker worker = new Worker(this, i12);
            this.workers.setSynchronized(i12, worker);
            if (!(i12 == ((int) (2097151 & controlState$FU.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            worker.start();
            return i11 + 1;
        }
    }

    private final Worker currentWorker() {
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker == null || !p4.h.c(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, TaskContext taskContext, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            taskContext = TasksKt.NonBlockingContext;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        coroutineScheduler.dispatch(runnable, taskContext, z10);
    }

    private final int parkedWorkersStackNextIndex(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != NOT_IN_STACK) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    private final Worker parkedWorkersStackPop() {
        while (true) {
            long j10 = this.parkedWorkersStack;
            Worker worker = this.workers.get((int) (2097151 & j10));
            if (worker == null) {
                return null;
            }
            long j11 = (2097152 + j10) & (-2097152);
            int iParkedWorkersStackNextIndex = parkedWorkersStackNextIndex(worker);
            if (iParkedWorkersStackNextIndex >= 0 && parkedWorkersStack$FU.compareAndSet(this, j10, ((long) iParkedWorkersStackNextIndex) | j11)) {
                worker.setNextParkedWorker(NOT_IN_STACK);
                return worker;
            }
        }
    }

    private final void signalBlockingWork(boolean z10) {
        long jAddAndGet = controlState$FU.addAndGet(this, 2097152L);
        if (z10 || tryUnpark() || tryCreateWorker(jAddAndGet)) {
            return;
        }
        tryUnpark();
    }

    private final Task submitToLocalQueue(Worker worker, Task task, boolean z10) {
        if (worker == null || worker.state == WorkerState.TERMINATED) {
            return task;
        }
        if (task.taskContext.getTaskMode() == 0 && worker.state == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.add(task, z10);
    }

    private final boolean tryCreateWorker(long j10) {
        int i10 = ((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21));
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 < this.corePoolSize) {
            int iCreateNewWorker = createNewWorker();
            if (iCreateNewWorker == 1 && this.corePoolSize > 1) {
                createNewWorker();
            }
            if (iCreateNewWorker > 0) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean tryCreateWorker$default(CoroutineScheduler coroutineScheduler, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = coroutineScheduler.controlState;
        }
        return coroutineScheduler.tryCreateWorker(j10);
    }

    private final boolean tryUnpark() {
        Worker workerParkedWorkersStackPop;
        do {
            workerParkedWorkersStackPop = parkedWorkersStackPop();
            if (workerParkedWorkersStackPop == null) {
                return false;
            }
        } while (!Worker.workerCtl$FU.compareAndSet(workerParkedWorkersStackPop, -1, 0));
        LockSupport.unpark(workerParkedWorkersStackPop);
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        shutdown(10000L);
    }

    public final Task createTask(Runnable runnable, TaskContext taskContext) {
        long jNanoTime = TasksKt.schedulerTimeSource.nanoTime();
        if (!(runnable instanceof Task)) {
            return new TaskImpl(runnable, jNanoTime, taskContext);
        }
        Task task = (Task) runnable;
        task.submissionTime = jNanoTime;
        task.taskContext = taskContext;
        return task;
    }

    public final void dispatch(Runnable runnable, TaskContext taskContext, boolean z10) {
        AbstractTimeSourceKt.getTimeSource();
        Task taskCreateTask = createTask(runnable, taskContext);
        Worker workerCurrentWorker = currentWorker();
        Task taskSubmitToLocalQueue = submitToLocalQueue(workerCurrentWorker, taskCreateTask, z10);
        if (taskSubmitToLocalQueue != null && !addToGlobalQueue(taskSubmitToLocalQueue)) {
            throw new RejectedExecutionException(f.d(new StringBuilder(), this.schedulerName, " was terminated"));
        }
        boolean z11 = z10 && workerCurrentWorker != null;
        if (taskCreateTask.taskContext.getTaskMode() != 0) {
            signalBlockingWork(z11);
        } else {
            if (z11) {
                return;
            }
            signalCpuWork();
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        dispatch$default(this, runnable, null, false, 6, null);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final boolean parkedWorkersStackPush(Worker worker) {
        long j10;
        int indexInArray;
        if (worker.getNextParkedWorker() != NOT_IN_STACK) {
            return false;
        }
        do {
            j10 = this.parkedWorkersStack;
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.workers.get((int) (2097151 & j10)));
        } while (!parkedWorkersStack$FU.compareAndSet(this, j10, ((2097152 + j10) & (-2097152)) | ((long) indexInArray)));
        return true;
    }

    public final void parkedWorkersStackTopUpdate(Worker worker, int i10, int i11) {
        while (true) {
            long j10 = this.parkedWorkersStack;
            int iParkedWorkersStackNextIndex = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (iParkedWorkersStackNextIndex == i10) {
                iParkedWorkersStackNextIndex = i11 == 0 ? parkedWorkersStackNextIndex(worker) : i11;
            }
            if (iParkedWorkersStackNextIndex >= 0 && parkedWorkersStack$FU.compareAndSet(this, j10, j11 | ((long) iParkedWorkersStackNextIndex))) {
                return;
            }
        }
    }

    public final void runSafely(Task task) {
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
            } finally {
                AbstractTimeSourceKt.getTimeSource();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    public final void shutdown(long j10) throws InterruptedException {
        int i10;
        Task taskRemoveFirstOrNull;
        if (_isTerminated$FU.compareAndSet(this, 0, 1)) {
            Worker workerCurrentWorker = currentWorker();
            synchronized (this.workers) {
                i10 = (int) (this.controlState & 2097151);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    Worker worker = this.workers.get(i11);
                    p4.h.g(worker);
                    Worker worker2 = worker;
                    if (worker2 != workerCurrentWorker) {
                        while (worker2.isAlive()) {
                            LockSupport.unpark(worker2);
                            worker2.join(j10);
                        }
                        worker2.localQueue.offloadAllWorkTo(this.globalBlockingQueue);
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.globalBlockingQueue.close();
            this.globalCpuQueue.close();
            while (true) {
                if (workerCurrentWorker == null) {
                    taskRemoveFirstOrNull = this.globalCpuQueue.removeFirstOrNull();
                    if (taskRemoveFirstOrNull == null && (taskRemoveFirstOrNull = this.globalBlockingQueue.removeFirstOrNull()) == null) {
                        break;
                    }
                } else {
                    taskRemoveFirstOrNull = workerCurrentWorker.findTask(true);
                    if (taskRemoveFirstOrNull == null) {
                        taskRemoveFirstOrNull = this.globalCpuQueue.removeFirstOrNull();
                        if (taskRemoveFirstOrNull == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                runSafely(taskRemoveFirstOrNull);
            }
            if (workerCurrentWorker != null) {
                workerCurrentWorker.tryReleaseCpu(WorkerState.TERMINATED);
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final void signalCpuWork() {
        if (tryUnpark() || tryCreateWorker$default(this, 0L, 1, null)) {
            return;
        }
        tryUnpark();
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iCurrentLength = this.workers.currentLength();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iCurrentLength; i15++) {
            Worker worker = this.workers.get(i15);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int i16 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i16 == 1) {
                    i12++;
                } else if (i16 == 2) {
                    i11++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(size$kotlinx_coroutines_core);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (i16 == 3) {
                    i10++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(size$kotlinx_coroutines_core);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                } else if (i16 == 4) {
                    i13++;
                    if (size$kotlinx_coroutines_core > 0) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(size$kotlinx_coroutines_core);
                        sb4.append('d');
                        arrayList.add(sb4.toString());
                    }
                } else if (i16 == 5) {
                    i14++;
                }
            }
        }
        long j10 = this.controlState;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(this.schedulerName);
        sb5.append('@');
        sb5.append(DebugStringsKt.getHexAddress(this));
        sb5.append("[Pool Size {core = ");
        sb5.append(this.corePoolSize);
        sb5.append(", max = ");
        a1.d.e(sb5, this.maxPoolSize, "}, Worker States {CPU = ", i10, ", blocking = ");
        a1.d.e(sb5, i11, ", parked = ", i12, ", dormant = ");
        a1.d.e(sb5, i13, ", terminated = ", i14, "}, running workers queues = ");
        sb5.append(arrayList);
        sb5.append(", global CPU queue size = ");
        sb5.append(this.globalCpuQueue.getSize());
        sb5.append(", global blocking queue size = ");
        sb5.append(this.globalBlockingQueue.getSize());
        sb5.append(", Control State {created workers= ");
        sb5.append((int) (2097151 & j10));
        sb5.append(", blocking tasks = ");
        sb5.append((int) ((4398044413952L & j10) >> 21));
        sb5.append(", CPUs acquired = ");
        sb5.append(this.corePoolSize - ((int) ((9223367638808264704L & j10) >> 42)));
        sb5.append("}]");
        return sb5.toString();
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public final class Worker extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater workerCtl$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl");
        private volatile int indexInArray;
        public final WorkQueue localQueue;
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        private int rngState;
        public WorkerState state;
        private long terminationDeadline;
        public volatile /* synthetic */ int workerCtl;

        private Worker() {
            setDaemon(true);
            this.localQueue = new WorkQueue();
            this.state = WorkerState.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            this.rngState = td.c.f15597h.a();
        }

        private final void afterTask(int i10) {
            if (i10 == 0) {
                return;
            }
            CoroutineScheduler.controlState$FU.addAndGet(CoroutineScheduler.this, -2097152L);
            if (this.state != WorkerState.TERMINATED) {
                this.state = WorkerState.DORMANT;
            }
        }

        private final void beforeTask(int i10) {
            if (i10 != 0 && tryReleaseCpu(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.signalCpuWork();
            }
        }

        private final void executeTask(Task task) {
            int taskMode = task.taskContext.getTaskMode();
            idleReset(taskMode);
            beforeTask(taskMode);
            CoroutineScheduler.this.runSafely(task);
            afterTask(taskMode);
        }

        private final Task findAnyTask(boolean z10) {
            Task taskPollGlobalQueues;
            Task taskPollGlobalQueues2;
            if (z10) {
                boolean z11 = nextInt(CoroutineScheduler.this.corePoolSize * 2) == 0;
                if (z11 && (taskPollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues2;
                }
                Task taskPoll = this.localQueue.poll();
                if (taskPoll != null) {
                    return taskPoll;
                }
                if (!z11 && (taskPollGlobalQueues = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues;
                }
            } else {
                Task taskPollGlobalQueues3 = pollGlobalQueues();
                if (taskPollGlobalQueues3 != null) {
                    return taskPollGlobalQueues3;
                }
            }
            return trySteal(false);
        }

        private final void idleReset(int i10) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                this.state = WorkerState.BLOCKING;
            }
        }

        private final boolean inStack() {
            return this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK;
        }

        private final void park() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.idleWorkerKeepAliveNs;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.idleWorkerKeepAliveNs);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                tryTerminateWorker();
            }
        }

        private final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task taskRemoveFirstOrNull = CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
                return taskRemoveFirstOrNull != null ? taskRemoveFirstOrNull : CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            }
            Task taskRemoveFirstOrNull2 = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return taskRemoveFirstOrNull2 != null ? taskRemoveFirstOrNull2 : CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
        }

        private final void runWorker() {
            loop0: while (true) {
                boolean z10 = false;
                while (true) {
                    if (CoroutineScheduler.this.isTerminated() || this.state == WorkerState.TERMINATED) {
                        break loop0;
                    }
                    Task taskFindTask = findTask(this.mayHaveLocalTasks);
                    if (taskFindTask != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        executeTask(taskFindTask);
                        break;
                    }
                    this.mayHaveLocalTasks = false;
                    if (this.minDelayUntilStealableTaskNs == 0) {
                        tryPark();
                    } else {
                        if (z10) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                            break;
                        }
                        z10 = true;
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        private final boolean tryAcquireCpuPermit() {
            boolean z10;
            if (this.state != WorkerState.CPU_ACQUIRED) {
                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                while (true) {
                    long j10 = coroutineScheduler.controlState;
                    if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                        z10 = false;
                        break;
                    }
                    if (CoroutineScheduler.controlState$FU.compareAndSet(coroutineScheduler, j10, j10 - 4398046511104L)) {
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    return false;
                }
                this.state = WorkerState.CPU_ACQUIRED;
            }
            return true;
        }

        private final void tryPark() {
            if (!inStack()) {
                CoroutineScheduler.this.parkedWorkersStackPush(this);
                return;
            }
            this.workerCtl = -1;
            while (inStack() && this.workerCtl == -1 && !CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                tryReleaseCpu(WorkerState.PARKING);
                Thread.interrupted();
                park();
            }
        }

        private final Task trySteal(boolean z10) {
            int i10 = (int) (CoroutineScheduler.this.controlState & 2097151);
            if (i10 < 2) {
                return null;
            }
            int iNextInt = nextInt(i10);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i11 = 0; i11 < i10; i11++) {
                iNextInt++;
                if (iNextInt > i10) {
                    iNextInt = 1;
                }
                Worker worker = coroutineScheduler.workers.get(iNextInt);
                if (worker != null && worker != this) {
                    long jTryStealBlockingFrom = z10 ? this.localQueue.tryStealBlockingFrom(worker.localQueue) : this.localQueue.tryStealFrom(worker.localQueue);
                    if (jTryStealBlockingFrom == -1) {
                        return this.localQueue.poll();
                    }
                    if (jTryStealBlockingFrom > 0) {
                        jMin = Math.min(jMin, jTryStealBlockingFrom);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.minDelayUntilStealableTaskNs = jMin;
            return null;
        }

        private final void tryTerminateWorker() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.workers) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (coroutineScheduler.controlState & 2097151)) <= coroutineScheduler.corePoolSize) {
                    return;
                }
                if (workerCtl$FU.compareAndSet(this, -1, 1)) {
                    int i10 = this.indexInArray;
                    setIndexInArray(0);
                    coroutineScheduler.parkedWorkersStackTopUpdate(this, i10, 0);
                    int andDecrement = (int) (CoroutineScheduler.controlState$FU.getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != i10) {
                        Worker worker = coroutineScheduler.workers.get(andDecrement);
                        p4.h.g(worker);
                        Worker worker2 = worker;
                        coroutineScheduler.workers.setSynchronized(i10, worker2);
                        worker2.setIndexInArray(i10);
                        coroutineScheduler.parkedWorkersStackTopUpdate(worker2, andDecrement, i10);
                    }
                    coroutineScheduler.workers.setSynchronized(andDecrement, null);
                    this.state = WorkerState.TERMINATED;
                }
            }
        }

        public final Task findTask(boolean z10) {
            Task taskRemoveFirstOrNull;
            if (tryAcquireCpuPermit()) {
                return findAnyTask(z10);
            }
            if (!z10 || (taskRemoveFirstOrNull = this.localQueue.poll()) == null) {
                taskRemoveFirstOrNull = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            }
            return taskRemoveFirstOrNull == null ? trySteal(true) : taskRemoveFirstOrNull;
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final int nextInt(int i10) {
            int i11 = this.rngState;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.rngState = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % i10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            runWorker();
        }

        public final void setIndexInArray(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CoroutineScheduler.this.schedulerName);
            sb2.append("-worker-");
            sb2.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(WorkerState workerState) {
            WorkerState workerState2 = this.state;
            boolean z10 = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z10) {
                CoroutineScheduler.controlState$FU.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.state = workerState;
            }
            return z10;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i10) {
            this();
            setIndexInArray(i10);
        }
    }
}
