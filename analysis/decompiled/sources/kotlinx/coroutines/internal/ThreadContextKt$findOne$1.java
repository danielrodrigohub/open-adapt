package kotlinx.coroutines.internal;

import jd.f;
import kotlinx.coroutines.ThreadContextElement;
import qd.p;
import rd.o;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadContextKt$findOne$1 extends o implements p<ThreadContextElement<?>, f.a, ThreadContextElement<?>> {
    public static final ThreadContextKt$findOne$1 INSTANCE = new ThreadContextKt$findOne$1();

    public ThreadContextKt$findOne$1() {
        super(2);
    }

    @Override // qd.p
    public final ThreadContextElement<?> invoke(ThreadContextElement<?> threadContextElement, f.a aVar) {
        if (threadContextElement != null) {
            return threadContextElement;
        }
        if (aVar instanceof ThreadContextElement) {
            return (ThreadContextElement) aVar;
        }
        return null;
    }
}
