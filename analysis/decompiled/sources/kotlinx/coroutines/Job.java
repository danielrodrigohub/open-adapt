package kotlinx.coroutines;

import fd.o;
import java.util.concurrent.CancellationException;
import jd.f;
import p4.h;
import qd.l;
import qd.p;
import xd.d;

/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Job extends f.a {
    public static final Key Key = Key.$$INSTANCE;

    /* JADX INFO: compiled from: Job.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void cancel$default(Job job, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            job.cancel(cancellationException);
        }

        public static <R> R fold(Job job, R r10, p<? super R, ? super f.a, ? extends R> pVar) {
            h.j(pVar, "operation");
            return pVar.invoke(r10, job);
        }

        public static <E extends f.a> E get(Job job, f.b<E> bVar) {
            return (E) f.a.C0183a.a(job, bVar);
        }

        public static /* synthetic */ DisposableHandle invokeOnCompletion$default(Job job, boolean z10, boolean z11, l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            }
            return job.invokeOnCompletion(z10, z11, lVar);
        }

        public static f minusKey(Job job, f.b<?> bVar) {
            return f.a.C0183a.b(job, bVar);
        }

        public static f plus(Job job, f fVar) {
            return f.a.C0183a.c(job, fVar);
        }
    }

    /* JADX INFO: compiled from: Job.kt */
    public static final class Key implements f.b<Job> {
        public static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    ChildHandle attachChild(ChildJob childJob);

    void cancel(CancellationException cancellationException);

    CancellationException getCancellationException();

    d<Job> getChildren();

    DisposableHandle invokeOnCompletion(l<? super Throwable, o> lVar);

    DisposableHandle invokeOnCompletion(boolean z10, boolean z11, l<? super Throwable, o> lVar);

    boolean isActive();

    boolean start();
}
