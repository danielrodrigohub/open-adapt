package okhttp3.internal.http2;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$pushResetLater$1 extends o implements a<fd.o> {
    public final /* synthetic */ ErrorCode $errorCode;
    public final /* synthetic */ int $streamId;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$pushResetLater$1(Http2Connection http2Connection, int i10, ErrorCode errorCode) {
        super(0);
        this.this$0 = http2Connection;
        this.$streamId = i10;
        this.$errorCode = errorCode;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.pushObserver.onReset(this.$streamId, this.$errorCode);
        Http2Connection http2Connection = this.this$0;
        int i10 = this.$streamId;
        synchronized (http2Connection) {
            http2Connection.currentPushRequests.remove(Integer.valueOf(i10));
        }
    }
}
