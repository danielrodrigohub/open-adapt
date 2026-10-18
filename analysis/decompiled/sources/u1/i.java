package u1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: SerialExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Executor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f15633i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile Runnable f15635k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayDeque<a> f15632h = new ArrayDeque<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f15634j = new Object();

    /* JADX INFO: compiled from: SerialExecutor.java */
    public static class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final i f15636h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Runnable f15637i;

        public a(i iVar, Runnable runnable) {
            this.f15636h = iVar;
            this.f15637i = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f15637i.run();
            } finally {
                this.f15636h.a();
            }
        }
    }

    public i(Executor executor) {
        this.f15633i = executor;
    }

    public final void a() {
        synchronized (this.f15634j) {
            a aVarPoll = this.f15632h.poll();
            this.f15635k = aVarPoll;
            if (aVarPoll != null) {
                this.f15633i.execute(this.f15635k);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f15634j) {
            this.f15632h.add(new a(this, runnable));
            if (this.f15635k == null) {
                a();
            }
        }
    }
}
