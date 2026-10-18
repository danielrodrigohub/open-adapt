package okhttp3.internal.http2;

import de.c;
import java.io.IOException;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$pushDataLater$1 extends o implements a<fd.o> {
    public final /* synthetic */ c $buffer;
    public final /* synthetic */ int $byteCount;
    public final /* synthetic */ boolean $inFinished;
    public final /* synthetic */ int $streamId;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$pushDataLater$1(Http2Connection http2Connection, int i10, c cVar, int i11, boolean z10) {
        super(0);
        this.this$0 = http2Connection;
        this.$streamId = i10;
        this.$buffer = cVar;
        this.$byteCount = i11;
        this.$inFinished = z10;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Http2Connection http2Connection = this.this$0;
        int i10 = this.$streamId;
        c cVar = this.$buffer;
        int i11 = this.$byteCount;
        boolean z10 = this.$inFinished;
        try {
            boolean zOnData = http2Connection.pushObserver.onData(i10, cVar, i11, z10);
            if (zOnData) {
                http2Connection.getWriter().rstStream(i10, ErrorCode.CANCEL);
            }
            if (zOnData || z10) {
                synchronized (http2Connection) {
                    http2Connection.currentPushRequests.remove(Integer.valueOf(i10));
                }
            }
        } catch (IOException unused) {
        }
    }
}
