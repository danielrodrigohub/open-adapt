package kotlinx.coroutines.scheduling;

import a0.b;
import kotlinx.coroutines.DebugStringsKt;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TaskImpl extends Task {
    public final Runnable block;

    public TaskImpl(Runnable runnable, long j10, TaskContext taskContext) {
        super(j10, taskContext);
        this.block = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.block.run();
        } finally {
            this.taskContext.afterTask();
        }
    }

    public String toString() {
        StringBuilder sbC = b.c("Task[");
        sbC.append(DebugStringsKt.getClassSimpleName(this.block));
        sbC.append('@');
        sbC.append(DebugStringsKt.getHexAddress(this.block));
        sbC.append(", ");
        sbC.append(this.submissionTime);
        sbC.append(", ");
        sbC.append(this.taskContext);
        sbC.append(']');
        return sbC.toString();
    }
}
