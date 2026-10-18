package u1;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: WorkTimer.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f15666f = k1.l.e("WorkTimer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f15667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f15668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, c> f15669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, b> f15670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f15671e;

    /* JADX INFO: compiled from: WorkTimer.java */
    public class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15672a = 0;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            StringBuilder sbC = a0.b.c("WorkManager-WorkTimer-thread-");
            sbC.append(this.f15672a);
            threadNewThread.setName(sbC.toString());
            this.f15672a++;
            return threadNewThread;
        }
    }

    /* JADX INFO: compiled from: WorkTimer.java */
    public interface b {
        void b(String str);
    }

    /* JADX INFO: compiled from: WorkTimer.java */
    public static class c implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final q f15673h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f15674i;

        public c(q qVar, String str) {
            this.f15673h = qVar;
            this.f15674i = str;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.String, u1.q$c>] */
        /* JADX WARN: Type inference failed for: r1v7, types: [java.util.HashMap, java.util.Map<java.lang.String, u1.q$b>] */
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f15673h.f15671e) {
                if (((c) this.f15673h.f15669c.remove(this.f15674i)) != null) {
                    b bVar = (b) this.f15673h.f15670d.remove(this.f15674i);
                    if (bVar != null) {
                        bVar.b(this.f15674i);
                    }
                } else {
                    k1.l.c().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f15674i), new Throwable[0]);
                }
            }
        }
    }

    public q() {
        a aVar = new a();
        this.f15667a = aVar;
        this.f15669c = new HashMap();
        this.f15670d = new HashMap();
        this.f15671e = new Object();
        this.f15668b = Executors.newSingleThreadScheduledExecutor(aVar);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.String, u1.q$c>] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.HashMap, java.util.Map<java.lang.String, u1.q$b>] */
    public final void a(String str, b bVar) {
        synchronized (this.f15671e) {
            k1.l.c().a(f15666f, String.format("Starting timer for %s", str), new Throwable[0]);
            b(str);
            c cVar = new c(this, str);
            this.f15669c.put(str, cVar);
            this.f15670d.put(str, bVar);
            this.f15668b.schedule(cVar, 600000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.String, u1.q$c>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.HashMap, java.util.Map<java.lang.String, u1.q$b>] */
    public final void b(String str) {
        synchronized (this.f15671e) {
            if (((c) this.f15669c.remove(str)) != null) {
                k1.l.c().a(f15666f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f15670d.remove(str);
            }
        }
    }
}
