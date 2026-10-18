package r2;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: ActiveResources.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: r2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActiveResources.java */
    public class RunnableC0245a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Runnable f14220h;

        public RunnableC0245a(Runnable runnable) {
            this.f14220h = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(10);
            this.f14220h.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(new RunnableC0245a(runnable), "glide-active-resources");
    }
}
