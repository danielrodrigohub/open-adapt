package hc;

/* JADX INFO: compiled from: CoreRFModule.kt */
/* JADX INFO: loaded from: classes.dex */
public interface g0 {

    /* JADX INFO: compiled from: CoreRFModule.kt */
    public static final class a {
        public static /* synthetic */ void a(g0 g0Var, String str, Throwable th, boolean z10, String str2, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            if ((i10 & 8) != 0) {
                str2 = null;
            }
            g0Var.c(str, null, z10, str2);
        }

        public static /* synthetic */ void b(g0 g0Var, String str, Throwable th, boolean z10, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                th = null;
            }
            if ((i10 & 8) != 0) {
                str2 = null;
            }
            g0Var.a(str, th, false, str2);
        }
    }

    void a(String str, Throwable th, boolean z10, String str2);

    void b(String str, Throwable th, String str2);

    void c(String str, Throwable th, boolean z10, String str2);

    void d(String str);
}
