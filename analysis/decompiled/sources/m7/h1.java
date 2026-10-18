package m7;

/* JADX INFO: compiled from: UninitializedMessageException.java */
/* JADX INFO: loaded from: classes.dex */
public final class h1 extends RuntimeException {
    public h1() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final z a() {
        return new z(getMessage());
    }
}
