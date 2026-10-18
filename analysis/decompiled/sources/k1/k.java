package k1;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ListenableFuture.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k<R> implements x6.a<R> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Job f9595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v1.c<R> f9596i;

    public k(Job job) {
        v1.c<R> cVar = new v1.c<>();
        p4.h.j(job, "job");
        this.f9595h = job;
        this.f9596i = cVar;
        job.invokeOnCompletion(new j(this));
    }

    @Override // x6.a
    public final void a(Runnable runnable, Executor executor) {
        this.f9596i.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return this.f9596i.cancel(z10);
    }

    @Override // java.util.concurrent.Future
    public final R get() {
        return this.f9596i.get();
    }

    @Override // java.util.concurrent.Future
    public final R get(long j10, TimeUnit timeUnit) {
        return this.f9596i.get(j10, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f9596i.f16108h instanceof v1.a.b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f9596i.isDone();
    }
}
