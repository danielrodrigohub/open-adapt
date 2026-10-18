package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rd.h;

/* JADX INFO: compiled from: LockFreeTaskQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LockFreeTaskQueueCore<E> {
    public static final Companion Companion = new Companion(null);
    public static final Symbol REMOVE_FROZEN = new Symbol("REMOVE_FROZEN");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next");
    private static final /* synthetic */ AtomicLongFieldUpdater _state$FU = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state");
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ long _state = 0;
    private /* synthetic */ AtomicReferenceArray array;
    private final int capacity;
    private final int mask;
    private final boolean singleConsumer;

    /* JADX INFO: compiled from: LockFreeTaskQueue.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final int addFailReason(long j10) {
            return (j10 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long updateHead(long j10, int i10) {
            return wo(j10, 1073741823L) | (((long) i10) << 0);
        }

        public final long updateTail(long j10, int i10) {
            return wo(j10, 1152921503533105152L) | (((long) i10) << 30);
        }

        public final long wo(long j10, long j11) {
            return j10 & (~j11);
        }
    }

    /* JADX INFO: compiled from: LockFreeTaskQueue.kt */
    public static final class Placeholder {
        public final int index;

        public Placeholder(int i10) {
            this.index = i10;
        }
    }

    public LockFreeTaskQueueCore(int i10, boolean z10) {
        this.capacity = i10;
        this.singleConsumer = z10;
        int i11 = i10 - 1;
        this.mask = i11;
        this.array = new AtomicReferenceArray(i10);
        if (!(i11 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i10 & i11) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final LockFreeTaskQueueCore<E> allocateNextCopy(long j10) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = new LockFreeTaskQueueCore<>(this.capacity * 2, this.singleConsumer);
        int i10 = (int) ((1073741823 & j10) >> 0);
        int i11 = (int) ((1152921503533105152L & j10) >> 30);
        while (true) {
            int i12 = this.mask;
            if ((i10 & i12) == (i11 & i12)) {
                lockFreeTaskQueueCore._state = Companion.wo(j10, 1152921504606846976L);
                return lockFreeTaskQueueCore;
            }
            Object placeholder = this.array.get(i12 & i10);
            if (placeholder == null) {
                placeholder = new Placeholder(i10);
            }
            lockFreeTaskQueueCore.array.set(lockFreeTaskQueueCore.mask & i10, placeholder);
            i10++;
        }
    }

    private final LockFreeTaskQueueCore<E> allocateOrGetNextCopy(long j10) {
        while (true) {
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._next;
            if (lockFreeTaskQueueCore != null) {
                return lockFreeTaskQueueCore;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreAllocateNextCopy = allocateNextCopy(j10);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, lockFreeTaskQueueCoreAllocateNextCopy) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    private final LockFreeTaskQueueCore<E> fillPlaceholder(int i10, E e10) {
        Object obj = this.array.get(this.mask & i10);
        if (!(obj instanceof Placeholder) || ((Placeholder) obj).index != i10) {
            return null;
        }
        this.array.set(i10 & this.mask, e10);
        return this;
    }

    private final long markFrozen() {
        long j10;
        long j11;
        do {
            j10 = this._state;
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!_state$FU.compareAndSet(this, j10, j11));
        return j11;
    }

    private final LockFreeTaskQueueCore<E> removeSlowPath(int i10, int i11) {
        long j10;
        Companion companion;
        int i12;
        do {
            j10 = this._state;
            companion = Companion;
            i12 = (int) ((1073741823 & j10) >> 0);
            if ((1152921504606846976L & j10) != 0) {
                return next();
            }
        } while (!_state$FU.compareAndSet(this, j10, companion.updateHead(j10, i11)));
        this.array.set(this.mask & i12, null);
        return null;
    }

    public final int addLast(E e10) {
        while (true) {
            long j10 = this._state;
            if ((3458764513820540928L & j10) != 0) {
                return Companion.addFailReason(j10);
            }
            Companion companion = Companion;
            int i10 = (int) ((1073741823 & j10) >> 0);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.mask;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.singleConsumer && this.array.get(i11 & i12) != null) {
                int i13 = this.capacity;
                if (i13 < 1024 || ((i11 - i10) & 1073741823) > (i13 >> 1)) {
                    return 1;
                }
            } else if (_state$FU.compareAndSet(this, j10, companion.updateTail(j10, (i11 + 1) & 1073741823))) {
                this.array.set(i11 & i12, e10);
                LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreFillPlaceholder = this;
                while ((lockFreeTaskQueueCoreFillPlaceholder._state & 1152921504606846976L) != 0 && (lockFreeTaskQueueCoreFillPlaceholder = lockFreeTaskQueueCoreFillPlaceholder.next().fillPlaceholder(i11, e10)) != null) {
                }
                return 0;
            }
        }
    }

    public final boolean close() {
        long j10;
        do {
            j10 = this._state;
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!_state$FU.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final int getSize() {
        long j10 = this._state;
        return (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j10) >> 0))) & 1073741823;
    }

    public final boolean isEmpty() {
        long j10 = this._state;
        return ((int) ((1073741823 & j10) >> 0)) == ((int) ((j10 & 1152921503533105152L) >> 30));
    }

    public final LockFreeTaskQueueCore<E> next() {
        return allocateOrGetNextCopy(markFrozen());
    }

    public final Object removeFirstOrNull() {
        while (true) {
            long j10 = this._state;
            if ((1152921504606846976L & j10) != 0) {
                return REMOVE_FROZEN;
            }
            Companion companion = Companion;
            int i10 = (int) ((1073741823 & j10) >> 0);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.mask;
            if ((i11 & i12) == (i10 & i12)) {
                return null;
            }
            Object obj = this.array.get(i12 & i10);
            if (obj == null) {
                if (this.singleConsumer) {
                    return null;
                }
            } else {
                if (obj instanceof Placeholder) {
                    return null;
                }
                int i13 = (i10 + 1) & 1073741823;
                if (_state$FU.compareAndSet(this, j10, companion.updateHead(j10, i13))) {
                    this.array.set(this.mask & i10, null);
                    return obj;
                }
                if (this.singleConsumer) {
                    LockFreeTaskQueueCore<E> lockFreeTaskQueueCoreRemoveSlowPath = this;
                    do {
                        lockFreeTaskQueueCoreRemoveSlowPath = lockFreeTaskQueueCoreRemoveSlowPath.removeSlowPath(i10, i13);
                    } while (lockFreeTaskQueueCoreRemoveSlowPath != null);
                    return obj;
                }
            }
        }
    }
}
