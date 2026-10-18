package kotlinx.coroutines;

import fd.o;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import qd.l;

/* JADX INFO: compiled from: CompletionHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class CompletionHandlerBase extends LockFreeLinkedListNode implements l<Throwable, o> {
    public abstract void invoke(Throwable th);
}
