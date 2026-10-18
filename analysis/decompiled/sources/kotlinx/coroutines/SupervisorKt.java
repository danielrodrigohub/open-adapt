package kotlinx.coroutines;

/* JADX INFO: compiled from: Supervisor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SupervisorKt {
    public static final CompletableJob SupervisorJob(Job job) {
        return new SupervisorJobImpl(job);
    }

    public static /* synthetic */ CompletableJob SupervisorJob$default(Job job, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            job = null;
        }
        return SupervisorJob(job);
    }
}
