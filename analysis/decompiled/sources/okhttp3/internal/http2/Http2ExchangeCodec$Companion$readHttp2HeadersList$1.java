package okhttp3.internal.http2;

import okhttp3.Headers;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2ExchangeCodec.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2ExchangeCodec$Companion$readHttp2HeadersList$1 extends o implements a<Headers> {
    public static final Http2ExchangeCodec$Companion$readHttp2HeadersList$1 INSTANCE = new Http2ExchangeCodec$Companion$readHttp2HeadersList$1();

    public Http2ExchangeCodec$Companion$readHttp2HeadersList$1() {
        super(0);
    }

    @Override // qd.a
    public final Headers invoke() {
        throw new IllegalStateException("trailers not available".toString());
    }
}
