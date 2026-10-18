package kotlinx.coroutines.internal;

import jd.f;
import kotlinx.coroutines.ThreadContextElement;
import p4.h;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes.dex */
final class ThreadState {
    public final f context;
    private final ThreadContextElement<Object>[] elements;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9808i;
    private final Object[] values;

    public ThreadState(f fVar, int i10) {
        this.context = fVar;
        this.values = new Object[i10];
        this.elements = new ThreadContextElement[i10];
    }

    public final void append(ThreadContextElement<?> threadContextElement, Object obj) {
        Object[] objArr = this.values;
        int i10 = this.f9808i;
        objArr[i10] = obj;
        ThreadContextElement<Object>[] threadContextElementArr = this.elements;
        this.f9808i = i10 + 1;
        threadContextElementArr[i10] = threadContextElement;
    }

    public final void restore(f fVar) {
        int length = this.elements.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            ThreadContextElement<Object> threadContextElement = this.elements[length];
            h.g(threadContextElement);
            threadContextElement.restoreThreadContext(fVar, this.values[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
