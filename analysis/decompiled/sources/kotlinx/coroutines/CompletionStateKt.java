package kotlinx.coroutines;

import d3.e;
import fd.f;
import fd.o;
import jd.d;
import qd.l;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CompletionStateKt {
    public static final <T> Object recoverResult(Object obj, d<? super T> dVar) {
        return obj instanceof CompletedExceptionally ? e.g(((CompletedExceptionally) obj).cause) : obj;
    }

    public static final <T> Object toState(Object obj, l<? super Throwable, o> lVar) {
        Throwable thA = f.a(obj);
        if (thA == null) {
            return lVar != null ? new CompletedWithCancellation(obj, lVar) : obj;
        }
        return new CompletedExceptionally(thA, false, 2, null);
    }

    public static /* synthetic */ Object toState$default(Object obj, l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            lVar = null;
        }
        return toState(obj, (l<? super Throwable, o>) lVar);
    }

    public static final <T> Object toState(Object obj, CancellableContinuation<?> cancellableContinuation) {
        Throwable thA = f.a(obj);
        return thA == null ? obj : new CompletedExceptionally(thA, false, 2, null);
    }
}
