package kotlinx.coroutines;

import java.util.Iterator;
import java.util.concurrent.CancellationException;
import jd.f;
import xd.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class JobKt__JobKt {
    public static final CompletableJob Job(Job job) {
        return new JobImpl(job);
    }

    public static /* synthetic */ CompletableJob Job$default(Job job, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            job = null;
        }
        return JobKt.Job(job);
    }

    public static final void cancel(f fVar, CancellationException cancellationException) {
        Job job = (Job) fVar.get(Job.Key);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }

    public static /* synthetic */ void cancel$default(f fVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancel(fVar, cancellationException);
    }

    public static final void cancelChildren(f fVar, CancellationException cancellationException) {
        d<Job> children;
        Job job = (Job) fVar.get(Job.Key);
        if (job == null || (children = job.getChildren()) == null) {
            return;
        }
        Iterator<Job> it = children.iterator();
        while (it.hasNext()) {
            it.next().cancel(cancellationException);
        }
    }

    public static /* synthetic */ void cancelChildren$default(f fVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(fVar, cancellationException);
    }

    public static final DisposableHandle disposeOnCompletion(Job job, DisposableHandle disposableHandle) {
        return job.invokeOnCompletion(new DisposeOnCompletion(disposableHandle));
    }

    public static final void ensureActive(Job job) {
        if (!job.isActive()) {
            throw job.getCancellationException();
        }
    }

    public static final void ensureActive(f fVar) {
        Job job = (Job) fVar.get(Job.Key);
        if (job != null) {
            JobKt.ensureActive(job);
        }
    }
}
