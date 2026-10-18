package kotlinx.coroutines.sync;

import qd.l;
import rd.o;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MutexImpl$lockSuspend$2$1$1 extends o implements l<Throwable, fd.o> {
    public final /* synthetic */ Object $owner;
    public final /* synthetic */ MutexImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutexImpl$lockSuspend$2$1$1(MutexImpl mutexImpl, Object obj) {
        super(1);
        this.this$0 = mutexImpl;
        this.$owner = obj;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(Throwable th) {
        invoke2(th);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.this$0.unlock(this.$owner);
    }
}
