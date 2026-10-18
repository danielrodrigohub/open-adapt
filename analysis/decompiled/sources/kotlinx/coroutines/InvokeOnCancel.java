package kotlinx.coroutines;

import a0.b;
import fd.o;
import qd.l;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes.dex */
final class InvokeOnCancel extends CancelHandler {
    private final l<Throwable, o> handler;

    /* JADX WARN: Multi-variable type inference failed */
    public InvokeOnCancel(l<? super Throwable, o> lVar) {
        this.handler = lVar;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ o invoke(Throwable th) {
        invoke2(th);
        return o.f7408a;
    }

    public String toString() {
        StringBuilder sbC = b.c("InvokeOnCancel[");
        sbC.append(DebugStringsKt.getClassSimpleName(this.handler));
        sbC.append('@');
        sbC.append(DebugStringsKt.getHexAddress(this));
        sbC.append(']');
        return sbC.toString();
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        this.handler.invoke(th);
    }
}
