package kotlinx.coroutines.internal;

import a0.b;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes.dex */
final class Removed {
    public final LockFreeLinkedListNode ref;

    public Removed(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.ref = lockFreeLinkedListNode;
    }

    public String toString() {
        StringBuilder sbC = b.c("Removed[");
        sbC.append(this.ref);
        sbC.append(']');
        return sbC.toString();
    }
}
