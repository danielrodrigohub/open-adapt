package okhttp3.internal.http2;

import qd.a;
import rd.o;
import rd.w;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$ReaderRunnable$applyAndAckSettings$1$1$2 extends o implements a<fd.o> {
    public final /* synthetic */ w<Settings> $newPeerSettings;
    public final /* synthetic */ Http2Connection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$ReaderRunnable$applyAndAckSettings$1$1$2(Http2Connection http2Connection, w<Settings> wVar) {
        super(0);
        this.this$0 = http2Connection;
        this.$newPeerSettings = wVar;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.getListener$okhttp().onSettings(this.this$0, this.$newPeerSettings.f14795h);
    }
}
