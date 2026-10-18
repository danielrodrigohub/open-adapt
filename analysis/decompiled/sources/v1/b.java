package v1;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: DirectExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public enum b implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
