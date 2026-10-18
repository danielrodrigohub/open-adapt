package okhttp3.internal.ws;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: RealWebSocket.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RealWebSocket$writeOneFrame$1$1 extends o implements a<fd.o> {
    public final /* synthetic */ RealWebSocket this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealWebSocket$writeOneFrame$1$1(RealWebSocket realWebSocket) {
        super(0);
        this.this$0 = realWebSocket;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.cancel();
    }
}
