package kotlinx.coroutines.internal;

import java.util.Objects;
import jd.f;
import kotlinx.coroutines.ThreadContextElement;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadContextKt {
    public static final Symbol NO_THREAD_ELEMENTS = new Symbol("NO_THREAD_ELEMENTS");
    private static final p<Object, f.a, Object> countAll = ThreadContextKt$countAll$1.INSTANCE;
    private static final p<ThreadContextElement<?>, f.a, ThreadContextElement<?>> findOne = ThreadContextKt$findOne$1.INSTANCE;
    private static final p<ThreadState, f.a, ThreadState> updateState = ThreadContextKt$updateState$1.INSTANCE;

    public static final void restoreThreadContext(f fVar, Object obj) {
        if (obj == NO_THREAD_ELEMENTS) {
            return;
        }
        if (obj instanceof ThreadState) {
            ((ThreadState) obj).restore(fVar);
            return;
        }
        Object objFold = fVar.fold(null, findOne);
        Objects.requireNonNull(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((ThreadContextElement) objFold).restoreThreadContext(fVar, obj);
    }

    public static final Object threadContextElements(f fVar) {
        Object objFold = fVar.fold(0, countAll);
        h.g(objFold);
        return objFold;
    }

    public static final Object updateThreadContext(f fVar, Object obj) {
        if (obj == null) {
            obj = threadContextElements(fVar);
        }
        if (obj == 0) {
            return NO_THREAD_ELEMENTS;
        }
        return obj instanceof Integer ? fVar.fold(new ThreadState(fVar, ((Number) obj).intValue()), updateState) : ((ThreadContextElement) obj).updateThreadContext(fVar);
    }
}
