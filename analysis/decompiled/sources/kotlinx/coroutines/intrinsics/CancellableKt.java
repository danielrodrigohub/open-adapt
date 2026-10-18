package kotlinx.coroutines.intrinsics;

import d3.e;
import fd.o;
import jd.d;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import qd.l;
import qd.p;

/* JADX INFO: compiled from: Cancellable.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CancellableKt {
    private static final void dispatcherFailure(d<?> dVar, Throwable th) throws Throwable {
        dVar.resumeWith(e.g(th));
        throw th;
    }

    public static final <R, T> void startCoroutineCancellable(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar, l<? super Throwable, o> lVar) throws Throwable {
        try {
            DispatchedContinuationKt.resumeCancellableWith(androidx.lifecycle.o.t(androidx.lifecycle.o.j(pVar, r10, dVar)), o.f7408a, lVar);
        } catch (Throwable th) {
            dispatcherFailure(dVar, th);
        }
    }

    public static /* synthetic */ void startCoroutineCancellable$default(p pVar, Object obj, d dVar, l lVar, int i10, Object obj2) throws Throwable {
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        startCoroutineCancellable(pVar, obj, dVar, lVar);
    }

    public static final void startCoroutineCancellable(d<? super o> dVar, d<?> dVar2) throws Throwable {
        try {
            DispatchedContinuationKt.resumeCancellableWith$default(androidx.lifecycle.o.t(dVar), o.f7408a, null, 2, null);
        } catch (Throwable th) {
            dispatcherFailure(dVar2, th);
        }
    }
}
