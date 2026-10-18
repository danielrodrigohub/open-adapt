package kotlinx.coroutines.internal;

import kotlinx.coroutines.DebugStringsKt;

/* JADX INFO: compiled from: Atomic.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class OpDescriptor {
    public abstract AtomicOp<?> getAtomicOp();

    public final boolean isEarlierThan(OpDescriptor opDescriptor) {
        AtomicOp<?> atomicOp;
        AtomicOp<?> atomicOp2 = getAtomicOp();
        return (atomicOp2 == null || (atomicOp = opDescriptor.getAtomicOp()) == null || atomicOp2.getOpSequence() >= atomicOp.getOpSequence()) ? false : true;
    }

    public abstract Object perform(Object obj);

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this);
    }
}
