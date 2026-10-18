package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: LockFreeTaskQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public class LockFreeTaskQueue<E> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _cur$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueue.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur;

    public LockFreeTaskQueue(boolean z10) {
        this._cur = new LockFreeTaskQueueCore(8, z10);
    }

    public final boolean addLast(E e10) {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur;
            int iAddLast = lockFreeTaskQueueCore.addLast(e10);
            if (iAddLast == 0) {
                return true;
            }
            if (iAddLast == 1) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
                LockFreeTaskQueueCore<E> next = lockFreeTaskQueueCore.next();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeTaskQueueCore, next) && atomicReferenceFieldUpdater.get(this) == lockFreeTaskQueueCore) {
                }
            } else if (iAddLast == 2) {
                return false;
            }
        }
    }

    public final void close() {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur;
            if (lockFreeTaskQueueCore.close()) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
            LockFreeTaskQueueCore<E> next = lockFreeTaskQueueCore.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeTaskQueueCore, next) && atomicReferenceFieldUpdater.get(this) == lockFreeTaskQueueCore) {
            }
        }
    }

    public final int getSize() {
        return ((LockFreeTaskQueueCore) this._cur).getSize();
    }

    public final E removeFirstOrNull() {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur;
            E e10 = (E) lockFreeTaskQueueCore.removeFirstOrNull();
            if (e10 != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                return e10;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
            LockFreeTaskQueueCore<E> next = lockFreeTaskQueueCore.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeTaskQueueCore, next) && atomicReferenceFieldUpdater.get(this) == lockFreeTaskQueueCore) {
            }
        }
    }
}
