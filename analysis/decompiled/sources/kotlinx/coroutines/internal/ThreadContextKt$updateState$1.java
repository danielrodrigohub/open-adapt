package kotlinx.coroutines.internal;

import jd.f;
import kotlinx.coroutines.ThreadContextElement;
import qd.p;
import rd.o;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadContextKt$updateState$1 extends o implements p<ThreadState, f.a, ThreadState> {
    public static final ThreadContextKt$updateState$1 INSTANCE = new ThreadContextKt$updateState$1();

    public ThreadContextKt$updateState$1() {
        super(2);
    }

    @Override // qd.p
    public final ThreadState invoke(ThreadState threadState, f.a aVar) {
        if (aVar instanceof ThreadContextElement) {
            ThreadContextElement<?> threadContextElement = (ThreadContextElement) aVar;
            threadState.append(threadContextElement, threadContextElement.updateThreadContext(threadState.context));
        }
        return threadState;
    }
}
