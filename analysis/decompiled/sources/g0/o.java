package g0;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: RequestExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f7527a = "fonts-androidx";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7528b = 10;

    /* JADX INFO: compiled from: RequestExecutor.java */
    public static class a extends Thread {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7529h;

        public a(Runnable runnable, String str, int i10) {
            super(runnable, str);
            this.f7529h = i10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(this.f7529h);
            super.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new a(runnable, this.f7527a, this.f7528b);
    }
}
