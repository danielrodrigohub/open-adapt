package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import jd.d;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CancelledContinuation extends CompletedExceptionally {
    private static final /* synthetic */ AtomicIntegerFieldUpdater _resumed$FU = AtomicIntegerFieldUpdater.newUpdater(CancelledContinuation.class, "_resumed");
    private volatile /* synthetic */ int _resumed;

    public CancelledContinuation(d<?> dVar, Throwable th, boolean z10) {
        if (th == null) {
            th = new CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        super(th, z10);
        this._resumed = 0;
    }

    public final boolean makeResumed() {
        return _resumed$FU.compareAndSet(this, 0, 1);
    }
}
