package yc;

/* JADX INFO: compiled from: PersistenceException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Exception {
    public b() {
        super("manager not initialized", null);
    }

    public b(Throwable th) {
        super("Init fail", th);
    }
}
