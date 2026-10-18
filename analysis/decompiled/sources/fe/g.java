package fe;

import java.util.logging.Level;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes2.dex */
public interface g {

    /* JADX INFO: compiled from: Logger.java */
    public static class a implements g {
        @Override // fe.g
        public final void a(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // fe.g
        public final void d(Level level, String str, Throwable th) {
            System.out.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    void a(Level level, String str);

    void d(Level level, String str, Throwable th);
}
