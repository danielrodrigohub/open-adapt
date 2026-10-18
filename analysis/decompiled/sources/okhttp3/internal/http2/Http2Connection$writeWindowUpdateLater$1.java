package okhttp3.internal.http2;

import java.io.IOException;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$writeWindowUpdateLater$1 extends o implements a<fd.o> {
    public final /* synthetic */ int $streamId;
    public final /* synthetic */ long $unacknowledgedBytesRead;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$writeWindowUpdateLater$1(Http2Connection http2Connection, int i10, long j10) {
        super(0);
        this.this$0 = http2Connection;
        this.$streamId = i10;
        this.$unacknowledgedBytesRead = j10;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        try {
            this.this$0.getWriter().windowUpdate(this.$streamId, this.$unacknowledgedBytesRead);
        } catch (IOException e10) {
            this.this$0.failConnection(e10);
        }
    }
}
