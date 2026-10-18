package k1;

/* JADX INFO: compiled from: WorkInfo.java */
/* JADX INFO: loaded from: classes.dex */
public enum p {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    public final boolean b() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
