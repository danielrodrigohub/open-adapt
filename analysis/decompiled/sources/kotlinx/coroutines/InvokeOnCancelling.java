package kotlinx.coroutines;

import fd.o;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import qd.l;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes.dex */
final class InvokeOnCancelling extends JobCancellingNode {
    private static final /* synthetic */ AtomicIntegerFieldUpdater _invoked$FU = AtomicIntegerFieldUpdater.newUpdater(InvokeOnCancelling.class, "_invoked");
    private volatile /* synthetic */ int _invoked = 0;
    private final l<Throwable, o> handler;

    /* JADX WARN: Multi-variable type inference failed */
    public InvokeOnCancelling(l<? super Throwable, o> lVar) {
        this.handler = lVar;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ o invoke(Throwable th) {
        invoke2(th);
        return o.f7408a;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        if (_invoked$FU.compareAndSet(this, 0, 1)) {
            this.handler.invoke(th);
        }
    }
}
