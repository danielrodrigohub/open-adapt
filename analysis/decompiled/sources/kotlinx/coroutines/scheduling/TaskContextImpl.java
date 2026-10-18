package kotlinx.coroutines.scheduling;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes.dex */
final class TaskContextImpl implements TaskContext {
    private final int taskMode;

    public TaskContextImpl(int i10) {
        this.taskMode = i10;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public void afterTask() {
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public int getTaskMode() {
        return this.taskMode;
    }
}
