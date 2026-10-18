package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import jd.f;

/* JADX INFO: loaded from: classes.dex */
public final class JobKt {
    public static final CompletableJob Job(Job job) {
        return JobKt__JobKt.Job(job);
    }

    public static final void cancel(f fVar, CancellationException cancellationException) {
        JobKt__JobKt.cancel(fVar, cancellationException);
    }

    public static final void cancelChildren(f fVar, CancellationException cancellationException) {
        JobKt__JobKt.cancelChildren(fVar, cancellationException);
    }

    public static final DisposableHandle disposeOnCompletion(Job job, DisposableHandle disposableHandle) {
        return JobKt__JobKt.disposeOnCompletion(job, disposableHandle);
    }

    public static final void ensureActive(f fVar) {
        JobKt__JobKt.ensureActive(fVar);
    }

    public static final void ensureActive(Job job) {
        JobKt__JobKt.ensureActive(job);
    }
}
