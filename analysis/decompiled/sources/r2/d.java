package r2;

/* JADX INFO: compiled from: CallbackException.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends RuntimeException {
    public d(Throwable th) {
        super("Unexpected exception thrown by non-Glide code", th);
    }
}
