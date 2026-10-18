package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$pushRequestLater$2 extends o implements a<fd.o> {
    public final /* synthetic */ List<Header> $requestHeaders;
    public final /* synthetic */ int $streamId;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$pushRequestLater$2(Http2Connection http2Connection, int i10, List<Header> list) {
        super(0);
        this.this$0 = http2Connection;
        this.$streamId = i10;
        this.$requestHeaders = list;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        boolean zOnRequest = this.this$0.pushObserver.onRequest(this.$streamId, this.$requestHeaders);
        Http2Connection http2Connection = this.this$0;
        int i10 = this.$streamId;
        if (zOnRequest) {
            try {
                http2Connection.getWriter().rstStream(i10, ErrorCode.CANCEL);
                synchronized (http2Connection) {
                    http2Connection.currentPushRequests.remove(Integer.valueOf(i10));
                }
            } catch (IOException unused) {
            }
        }
    }
}
