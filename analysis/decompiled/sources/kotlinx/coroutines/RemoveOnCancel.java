package kotlinx.coroutines;

import a0.b;
import fd.o;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
final class RemoveOnCancel extends BeforeResumeCancelHandler {
    private final LockFreeLinkedListNode node;

    public RemoveOnCancel(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.node = lockFreeLinkedListNode;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ o invoke(Throwable th) {
        invoke2(th);
        return o.f7408a;
    }

    public String toString() {
        StringBuilder sbC = b.c("RemoveOnCancel[");
        sbC.append(this.node);
        sbC.append(']');
        return sbC.toString();
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        this.node.mo13remove();
    }
}
