package okhttp3.internal.http2;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection$ReaderRunnable$settings$1 extends o implements a<fd.o> {
    public final /* synthetic */ boolean $clearPrevious;
    public final /* synthetic */ Settings $settings;
    public final /* synthetic */ Http2Connection.ReaderRunnable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2Connection$ReaderRunnable$settings$1(Http2Connection.ReaderRunnable readerRunnable, boolean z10, Settings settings) {
        super(0);
        this.this$0 = readerRunnable;
        this.$clearPrevious = z10;
        this.$settings = settings;
    }

    @Override // qd.a
    public /* bridge */ /* synthetic */ fd.o invoke() {
        invoke2();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.applyAndAckSettings(this.$clearPrevious, this.$settings);
    }
}
