package b7;

/* JADX INFO: compiled from: UninitializedMessageException.java */
/* JADX INFO: loaded from: classes.dex */
public final class k1 extends RuntimeException {
    public k1() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
