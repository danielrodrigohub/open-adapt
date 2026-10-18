package kotlinx.coroutines.sync;

import a0.b;
import fd.o;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jd.d;
import kd.a;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.internal.AtomicOp;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MutexImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "_state");
    public volatile /* synthetic */ Object _state;

    /* JADX INFO: compiled from: Mutex.kt */
    public final class LockCont extends LockWaiter {
        private final CancellableContinuation<o> cont;

        /* JADX WARN: Multi-variable type inference failed */
        public LockCont(Object obj, CancellableContinuation<? super o> cancellableContinuation) {
            super(obj);
            this.cont = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.LockWaiter
        public void completeResumeLockWaiter() {
            this.cont.completeResume(CancellableContinuationImplKt.RESUME_TOKEN);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            StringBuilder sbC = b.c("LockCont[");
            sbC.append(this.owner);
            sbC.append(", ");
            sbC.append(this.cont);
            sbC.append("] for ");
            sbC.append(MutexImpl.this);
            return sbC.toString();
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.LockWaiter
        public boolean tryResumeLockWaiter() {
            return take() && this.cont.tryResume(o.f7408a, null, new MutexImpl$LockCont$tryResumeLockWaiter$1(MutexImpl.this, this)) != null;
        }
    }

    /* JADX INFO: compiled from: Mutex.kt */
    public abstract class LockWaiter extends LockFreeLinkedListNode implements DisposableHandle {
        private static final /* synthetic */ AtomicIntegerFieldUpdater isTaken$FU = AtomicIntegerFieldUpdater.newUpdater(LockWaiter.class, "isTaken");
        private volatile /* synthetic */ int isTaken = 0;
        public final Object owner;

        public LockWaiter(Object obj) {
            this.owner = obj;
        }

        public abstract void completeResumeLockWaiter();

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            mo13remove();
        }

        public final boolean take() {
            return isTaken$FU.compareAndSet(this, 0, 1);
        }

        public abstract boolean tryResumeLockWaiter();
    }

    /* JADX INFO: compiled from: Mutex.kt */
    public static final class LockedQueue extends LockFreeLinkedListHead {
        public volatile Object owner;

        public LockedQueue(Object obj) {
            this.owner = obj;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            StringBuilder sbC = b.c("LockedQueue[");
            sbC.append(this.owner);
            sbC.append(']');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: Mutex.kt */
    public static final class UnlockOp extends AtomicOp<MutexImpl> {
        public final LockedQueue queue;

        public UnlockOp(LockedQueue lockedQueue) {
            this.queue = lockedQueue;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public void complete(MutexImpl mutexImpl, Object obj) {
            Object obj2 = obj == null ? MutexKt.EMPTY_UNLOCKED : this.queue;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl._state$FU;
            while (!atomicReferenceFieldUpdater.compareAndSet(mutexImpl, this, obj2) && atomicReferenceFieldUpdater.get(mutexImpl) == this) {
            }
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public Object prepare(MutexImpl mutexImpl) {
            if (this.queue.isEmpty()) {
                return null;
            }
            return MutexKt.UNLOCK_FAIL;
        }
    }

    public MutexImpl(boolean z10) {
        this._state = z10 ? MutexKt.EMPTY_LOCKED : MutexKt.EMPTY_UNLOCKED;
    }

    private final Object lockSuspend(Object obj, d<? super o> dVar) throws Throwable {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(androidx.lifecycle.o.t(dVar));
        LockCont lockCont = new LockCont(obj, orCreateCancellableContinuation);
        while (true) {
            Object obj2 = this._state;
            boolean z10 = true;
            if (obj2 instanceof Empty) {
                Empty empty = (Empty) obj2;
                if (empty.locked != MutexKt.UNLOCKED) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                    LockedQueue lockedQueue = new LockedQueue(empty.locked);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, lockedQueue) && atomicReferenceFieldUpdater.get(this) == obj2) {
                    }
                } else {
                    Empty empty2 = obj == null ? MutexKt.EMPTY_LOCKED : new Empty(obj);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$FU;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj2, empty2)) {
                        if (atomicReferenceFieldUpdater2.get(this) != obj2) {
                            z10 = false;
                            break;
                        }
                    }
                    if (z10) {
                        orCreateCancellableContinuation.resume(o.f7408a, new MutexImpl$lockSuspend$2$1$1(this, obj));
                        break;
                    }
                }
            } else if (obj2 instanceof LockedQueue) {
                LockedQueue lockedQueue2 = (LockedQueue) obj2;
                if (!(lockedQueue2.owner != obj)) {
                    throw new IllegalStateException(("Already locked by " + obj).toString());
                }
                lockedQueue2.addLast(lockCont);
                if (this._state == obj2 || !lockCont.take()) {
                    CancellableContinuationKt.removeOnCancellation(orCreateCancellableContinuation, lockCont);
                    break;
                }
                lockCont = new LockCont(obj, orCreateCancellableContinuation);
            } else {
                if (!(obj2 instanceof OpDescriptor)) {
                    throw new IllegalStateException(("Illegal state " + obj2).toString());
                }
                ((OpDescriptor) obj2).perform(this);
            }
        }
        Object result = orCreateCancellableContinuation.getResult();
        return result == a.COROUTINE_SUSPENDED ? result : o.f7408a;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public Object lock(Object obj, d<? super o> dVar) {
        Object objLockSuspend;
        return (!tryLock(obj) && (objLockSuspend = lockSuspend(obj, dVar)) == a.COROUTINE_SUSPENDED) ? objLockSuspend : o.f7408a;
    }

    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof Empty) {
                StringBuilder sbC = b.c("Mutex[");
                sbC.append(((Empty) obj).locked);
                sbC.append(']');
                return sbC.toString();
            }
            if (!(obj instanceof OpDescriptor)) {
                if (obj instanceof LockedQueue) {
                    StringBuilder sbC2 = b.c("Mutex[");
                    sbC2.append(((LockedQueue) obj).owner);
                    sbC2.append(']');
                    return sbC2.toString();
                }
                throw new IllegalStateException(("Illegal state " + obj).toString());
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    public boolean tryLock(Object obj) {
        while (true) {
            Object obj2 = this._state;
            boolean z10 = false;
            if (obj2 instanceof Empty) {
                if (((Empty) obj2).locked != MutexKt.UNLOCKED) {
                    return false;
                }
                Empty empty = obj == null ? MutexKt.EMPTY_LOCKED : new Empty(obj);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, empty)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj2);
                if (z10) {
                    return true;
                }
            } else {
                if (obj2 instanceof LockedQueue) {
                    if (((LockedQueue) obj2).owner != obj) {
                        return false;
                    }
                    throw new IllegalStateException(("Already locked by " + obj).toString());
                }
                if (!(obj2 instanceof OpDescriptor)) {
                    throw new IllegalStateException(("Illegal state " + obj2).toString());
                }
                ((OpDescriptor) obj2).perform(this);
            }
        }
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:117)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    @Override // kotlinx.coroutines.sync.Mutex
    public void unlock(Object obj) {
        while (true) {
            Object obj2 = this._state;
            boolean z10 = true;
            if (obj2 instanceof Empty) {
                if (obj == null) {
                    if (!(((Empty) obj2).locked != MutexKt.UNLOCKED)) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    Empty empty = (Empty) obj2;
                    if (!(empty.locked == obj)) {
                        StringBuilder sbC = b.c("Mutex is locked by ");
                        sbC.append(empty.locked);
                        sbC.append(" but expected ");
                        sbC.append(obj);
                        throw new IllegalStateException(sbC.toString().toString());
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                Empty empty2 = MutexKt.EMPTY_UNLOCKED;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, empty2)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    return;
                }
            } else if (obj2 instanceof OpDescriptor) {
                ((OpDescriptor) obj2).perform(this);
            } else {
                if (!(obj2 instanceof LockedQueue)) {
                    throw new IllegalStateException(("Illegal state " + obj2).toString());
                }
                if (obj != null) {
                    LockedQueue lockedQueue = (LockedQueue) obj2;
                    if (!(lockedQueue.owner == obj)) {
                        StringBuilder sbC2 = b.c("Mutex is locked by ");
                        sbC2.append(lockedQueue.owner);
                        sbC2.append(" but expected ");
                        sbC2.append(obj);
                        throw new IllegalStateException(sbC2.toString().toString());
                    }
                }
                LockedQueue lockedQueue2 = (LockedQueue) obj2;
                LockFreeLinkedListNode lockFreeLinkedListNodeRemoveFirstOrNull = lockedQueue2.removeFirstOrNull();
                if (lockFreeLinkedListNodeRemoveFirstOrNull == null) {
                    UnlockOp unlockOp = new UnlockOp(lockedQueue2);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$FU;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj2, unlockOp)) {
                        if (atomicReferenceFieldUpdater2.get(this) != obj2) {
                            z10 = false;
                            break;
                        }
                    }
                    if (z10 && unlockOp.perform(this) == null) {
                        return;
                    }
                } else {
                    LockWaiter lockWaiter = (LockWaiter) lockFreeLinkedListNodeRemoveFirstOrNull;
                    if (lockWaiter.tryResumeLockWaiter()) {
                        Object obj3 = lockWaiter.owner;
                        if (obj3 == null) {
                            obj3 = MutexKt.LOCKED;
                        }
                        lockedQueue2.owner = obj3;
                        lockWaiter.completeResumeLockWaiter();
                        return;
                    }
                }
            }
        }
    }
}
