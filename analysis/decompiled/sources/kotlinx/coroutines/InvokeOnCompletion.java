package kotlinx.coroutines;

import fd.o;
import qd.l;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes.dex */
final class InvokeOnCompletion extends JobNode {
    private final l<Throwable, o> handler;

    /* JADX WARN: Multi-variable type inference failed */
    public InvokeOnCompletion(l<? super Throwable, o> lVar) {
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
        this.handler.invoke(th);
    }
}
