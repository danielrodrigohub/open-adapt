package kotlinx.coroutines.scheduling;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class Task implements Runnable {
    public long submissionTime;
    public TaskContext taskContext;

    public Task(long j10, TaskContext taskContext) {
        this.submissionTime = j10;
        this.taskContext = taskContext;
    }

    public Task() {
        this(0L, TasksKt.NonBlockingContext);
    }
}
