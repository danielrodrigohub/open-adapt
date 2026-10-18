package kotlinx.coroutines;

import fd.o;
import jd.d;
import qd.l;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
public interface CancellableContinuation<T> extends d<T> {
    void completeResume(Object obj);

    void invokeOnCancellation(l<? super Throwable, o> lVar);

    void resume(T t10, l<? super Throwable, o> lVar);

    void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t10);

    Object tryResume(T t10, Object obj, l<? super Throwable, o> lVar);
}
