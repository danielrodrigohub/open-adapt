package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.DebugStringsKt;
import p4.h;
import rd.s;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes.dex */
public class LockFreeLinkedListNode {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next");
    public static final /* synthetic */ AtomicReferenceFieldUpdater _prev$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _removedRef$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef");
    public volatile /* synthetic */ Object _next = this;
    public volatile /* synthetic */ Object _prev = this;
    private volatile /* synthetic */ Object _removedRef = null;

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static abstract class CondAddOp extends AtomicOp<LockFreeLinkedListNode> {
        public final LockFreeLinkedListNode newNode;
        public LockFreeLinkedListNode oldNext;

        public CondAddOp(LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.newNode = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public void complete(LockFreeLinkedListNode lockFreeLinkedListNode, Object obj) {
            boolean z10 = true;
            boolean z11 = obj == null;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = z11 ? this.newNode : this.oldNext;
            if (lockFreeLinkedListNode2 != null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = LockFreeLinkedListNode._next$FU;
                while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, this, lockFreeLinkedListNode2)) {
                    if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != this) {
                        z10 = false;
                        break;
                    }
                }
                if (z10 && z11) {
                    LockFreeLinkedListNode lockFreeLinkedListNode3 = this.newNode;
                    LockFreeLinkedListNode lockFreeLinkedListNode4 = this.oldNext;
                    h.g(lockFreeLinkedListNode4);
                    lockFreeLinkedListNode3.finishAdd(lockFreeLinkedListNode4);
                }
            }
        }
    }

    private final LockFreeLinkedListNode correctPrev(OpDescriptor opDescriptor) {
        Object obj;
        boolean z10;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) this._prev;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    obj = lockFreeLinkedListNode2._next;
                    z10 = false;
                    if (obj == this) {
                        if (lockFreeLinkedListNode == lockFreeLinkedListNode2) {
                            return lockFreeLinkedListNode2;
                        }
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _prev$FU;
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                                z10 = true;
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == lockFreeLinkedListNode);
                        if (!z10) {
                            break;
                        }
                        return lockFreeLinkedListNode2;
                    }
                    if (isRemoved()) {
                        return null;
                    }
                    if (obj == opDescriptor) {
                        return lockFreeLinkedListNode2;
                    }
                    if (obj instanceof OpDescriptor) {
                        if (opDescriptor != null && opDescriptor.isEarlierThan((OpDescriptor) obj)) {
                            return null;
                        }
                        ((OpDescriptor) obj).perform(lockFreeLinkedListNode2);
                        break;
                    }
                    if (!(obj instanceof Removed)) {
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    } else {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) lockFreeLinkedListNode2._prev;
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _next$FU;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = ((Removed) obj).ref;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(lockFreeLinkedListNode3, lockFreeLinkedListNode2, lockFreeLinkedListNode4)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode3) == lockFreeLinkedListNode2);
                if (!z10) {
                    break;
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    private final LockFreeLinkedListNode findPrevNonRemoved(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) lockFreeLinkedListNode._prev;
        }
        return lockFreeLinkedListNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finishAdd(LockFreeLinkedListNode lockFreeLinkedListNode) {
        boolean z10;
        do {
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) lockFreeLinkedListNode._prev;
            if (getNext() != lockFreeLinkedListNode) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _prev$FU;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != lockFreeLinkedListNode2) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        if (isRemoved()) {
            lockFreeLinkedListNode.correctPrev(null);
        }
    }

    private final Removed removed() {
        Removed removed = (Removed) this._removedRef;
        if (removed != null) {
            return removed;
        }
        Removed removed2 = new Removed(this);
        _removedRef$FU.lazySet(this, removed2);
        return removed2;
    }

    public final void addLast(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (!getPrevNode().addNext(lockFreeLinkedListNode, this)) {
        }
    }

    public final boolean addNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        boolean z10;
        _prev$FU.lazySet(lockFreeLinkedListNode, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
        atomicReferenceFieldUpdater.lazySet(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != lockFreeLinkedListNode2) {
                z10 = false;
                break;
            }
        }
        if (!z10) {
            return false;
        }
        lockFreeLinkedListNode.finishAdd(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean addOneIfEmpty(LockFreeLinkedListNode lockFreeLinkedListNode) {
        boolean z10;
        _prev$FU.lazySet(lockFreeLinkedListNode, this);
        _next$FU.lazySet(lockFreeLinkedListNode, this);
        do {
            z10 = false;
            if (getNext() != this) {
                return false;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, this, lockFreeLinkedListNode)) {
                    z10 = true;
                    break;
                }
            } while (atomicReferenceFieldUpdater.get(this) == this);
        } while (!z10);
        lockFreeLinkedListNode.finishAdd(this);
        return true;
    }

    public final Object getNext() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    public final LockFreeLinkedListNode getNextNode() {
        return LockFreeLinkedListKt.unwrap(getNext());
    }

    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode lockFreeLinkedListNodeCorrectPrev = correctPrev(null);
        return lockFreeLinkedListNodeCorrectPrev == null ? findPrevNonRemoved((LockFreeLinkedListNode) this._prev) : lockFreeLinkedListNodeCorrectPrev;
    }

    public final void helpRemove() {
        ((Removed) getNext()).ref.helpRemovePrev();
    }

    public final void helpRemovePrev() {
        LockFreeLinkedListNode lockFreeLinkedListNode = this;
        while (true) {
            Object next = lockFreeLinkedListNode.getNext();
            if (!(next instanceof Removed)) {
                lockFreeLinkedListNode.correctPrev(null);
                return;
            }
            lockFreeLinkedListNode = ((Removed) next).ref;
        }
    }

    public boolean isRemoved() {
        return getNext() instanceof Removed;
    }

    /* JADX INFO: renamed from: remove */
    public boolean mo13remove() {
        return removeOrNext() == null;
    }

    public final LockFreeLinkedListNode removeFirstOrNull() {
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) getNext();
            if (lockFreeLinkedListNode == this) {
                return null;
            }
            if (lockFreeLinkedListNode.mo13remove()) {
                return lockFreeLinkedListNode;
            }
            lockFreeLinkedListNode.helpRemove();
        }
    }

    public final LockFreeLinkedListNode removeOrNext() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        boolean z10;
        do {
            Object next = getNext();
            if (next instanceof Removed) {
                return ((Removed) next).ref;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
            Removed removed = lockFreeLinkedListNode.removed();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, next, removed)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != next) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        lockFreeLinkedListNode.correctPrev(null);
        return null;
    }

    public String toString() {
        return new s(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode.toString.1
            @Override // wd.e
            public Object get() {
                return DebugStringsKt.getClassSimpleName(this.receiver);
            }
        } + '@' + DebugStringsKt.getHexAddress(this);
    }

    public final int tryCondAddNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2, CondAddOp condAddOp) {
        boolean z10;
        _prev$FU.lazySet(lockFreeLinkedListNode, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
        atomicReferenceFieldUpdater.lazySet(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        condAddOp.oldNext = lockFreeLinkedListNode2;
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, lockFreeLinkedListNode2, condAddOp)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != lockFreeLinkedListNode2) {
                z10 = false;
                break;
            }
        }
        if (z10) {
            return condAddOp.perform(this) == null ? 1 : 2;
        }
        return 0;
    }
}
