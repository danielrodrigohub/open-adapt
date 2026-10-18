package kotlinx.coroutines;

import a0.b;
import fd.o;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
final class DisposeOnCancel extends CancelHandler {
    private final DisposableHandle handle;

    public DisposeOnCancel(DisposableHandle disposableHandle) {
        this.handle = disposableHandle;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ o invoke(Throwable th) {
        invoke2(th);
        return o.f7408a;
    }

    public String toString() {
        StringBuilder sbC = b.c("DisposeOnCancel[");
        sbC.append(this.handle);
        sbC.append(']');
        return sbC.toString();
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        this.handle.dispose();
    }
}
