package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rd.h;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes.dex */
public class CompletedExceptionally {
    private static final /* synthetic */ AtomicIntegerFieldUpdater _handled$FU = AtomicIntegerFieldUpdater.newUpdater(CompletedExceptionally.class, "_handled");
    private volatile /* synthetic */ int _handled;
    public final Throwable cause;

    public CompletedExceptionally(Throwable th, boolean z10) {
        this.cause = th;
        this._handled = z10 ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean getHandled() {
        return this._handled;
    }

    public final boolean makeHandled() {
        return _handled$FU.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '[' + this.cause + ']';
    }

    public /* synthetic */ CompletedExceptionally(Throwable th, boolean z10, int i10, h hVar) {
        this(th, (i10 & 2) != 0 ? false : z10);
    }
}
