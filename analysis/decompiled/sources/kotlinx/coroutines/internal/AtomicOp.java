package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: Atomic.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AtomicOp<T> extends OpDescriptor {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _consensus$FU = AtomicReferenceFieldUpdater.newUpdater(AtomicOp.class, Object.class, "_consensus");
    private volatile /* synthetic */ Object _consensus = AtomicKt.NO_DECISION;

    public abstract void complete(T t10, Object obj);

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final Object decide(Object obj) {
        boolean z10;
        Object obj2 = this._consensus;
        Object obj3 = AtomicKt.NO_DECISION;
        if (obj2 != obj3) {
            return obj2;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _consensus$FU;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, obj)) {
            if (atomicReferenceFieldUpdater.get(this) != obj3) {
                z10 = false;
                if (z10) {
                    return obj;
                }
                return this._consensus;
            }
        }
        z10 = true;
        if (z10) {
            return obj;
        }
        return this._consensus;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    public AtomicOp<?> getAtomicOp() {
        return this;
    }

    public long getOpSequence() {
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    public final Object perform(Object obj) {
        Object objDecide = this._consensus;
        if (objDecide == AtomicKt.NO_DECISION) {
            objDecide = decide(prepare(obj));
        }
        complete(obj, objDecide);
        return objDecide;
    }

    public abstract Object prepare(T t10);
}
