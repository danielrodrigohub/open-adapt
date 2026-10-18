package okhttp3.internal.http2;

import a0.b;
import java.io.IOException;
import okhttp3.internal.platform.Platform;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$ReaderRunnable$headers$1$1 extends o implements a<fd.o> {
    public final /* synthetic */ Http2Stream $newStream;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$ReaderRunnable$headers$1$1(Http2Connection http2Connection, Http2Stream http2Stream) {
        super(0);
        this.this$0 = http2Connection;
        this.$newStream = http2Stream;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        try {
            this.this$0.getListener$okhttp().onStream(this.$newStream);
        } catch (IOException e10) {
            Platform platform = Platform.Companion.get();
            StringBuilder sbC = b.c("Http2Connection.Listener failure for ");
            sbC.append(this.this$0.getConnectionName$okhttp());
            platform.log(sbC.toString(), 4, e10);
            try {
                this.$newStream.close(ErrorCode.PROTOCOL_ERROR, e10);
            } catch (IOException unused) {
            }
        }
    }
}
