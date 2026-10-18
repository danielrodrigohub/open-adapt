package okhttp3.internal.http2;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$ReaderRunnable$ping$2 extends o implements a<fd.o> {
    public final /* synthetic */ int $payload1;
    public final /* synthetic */ int $payload2;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$ReaderRunnable$ping$2(Http2Connection http2Connection, int i10, int i11) {
        super(0);
        this.this$0 = http2Connection;
        this.$payload1 = i10;
        this.$payload2 = i11;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.writePing(true, this.$payload1, this.$payload2);
    }
}
