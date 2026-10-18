package kotlinx.coroutines.scheduling;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes.dex */
public interface TaskContext {
    void afterTask();

    int getTaskMode();
}
