package u2;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: GlideExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ExecutorService {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f15675i = TimeUnit.SECONDS.toMillis(10);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile int f15676j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExecutorService f15677h;

    /* JADX INFO: renamed from: u2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GlideExecutor.java */
    public static final class ThreadFactoryC0270a implements ThreadFactory {

        /* JADX INFO: renamed from: u2.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: GlideExecutor.java */
        public class C0271a extends Thread {
            public C0271a(Runnable runnable) {
                super(runnable);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Process.setThreadPriority(9);
                super.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new C0271a(runnable);
        }
    }

    /* JADX INFO: compiled from: GlideExecutor.java */
    public static final class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ThreadFactory f15678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f15680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f15681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicInteger f15682e;

        /* JADX INFO: renamed from: u2.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: GlideExecutor.java */
        public class RunnableC0272a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ Runnable f15683h;

            public RunnableC0272a(Runnable runnable) {
                this.f15683h = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (b.this.f15681d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    this.f15683h.run();
                } catch (Throwable th) {
                    b.this.f15680c.a(th);
                }
            }
        }

        public b(ThreadFactory threadFactory, String str, boolean z10) {
            c.C0273a c0273a = c.f15686b;
            this.f15682e = new AtomicInteger();
            this.f15678a = threadFactory;
            this.f15679b = str;
            this.f15680c = c0273a;
            this.f15681d = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.f15678a.newThread(new RunnableC0272a(runnable));
            StringBuilder sbC = a0.b.c("glide-");
            sbC.append(this.f15679b);
            sbC.append("-thread-");
            sbC.append(this.f15682e.getAndIncrement());
            threadNewThread.setName(sbC.toString());
            return threadNewThread;
        }
    }

    /* JADX INFO: compiled from: GlideExecutor.java */
    public interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0273a f15685a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0273a f15686b;

        /* JADX INFO: renamed from: u2.a$c$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: GlideExecutor.java */
        public class C0273a implements c {
            @Override // u2.a.c
            public final void a(Throwable th) {
                if (Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                }
            }
        }

        static {
            C0273a c0273a = new C0273a();
            f15685a = c0273a;
            f15686b = c0273a;
        }

        void a(Throwable th);
    }

    public a(ExecutorService executorService) {
        this.f15677h = executorService;
    }

    public static int a() {
        if (f15676j == 0) {
            f15676j = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        return f15676j;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f15677h.awaitTermination(j10, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f15677h.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f15677h.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f15677h.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f15677h.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f15677h.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f15677h.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f15677h.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f15677h.submit(runnable);
    }

    public final String toString() {
        return this.f15677h.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f15677h.invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f15677h.invokeAny(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, T t10) {
        return this.f15677h.submit(runnable, t10);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f15677h.submit(callable);
    }
}
