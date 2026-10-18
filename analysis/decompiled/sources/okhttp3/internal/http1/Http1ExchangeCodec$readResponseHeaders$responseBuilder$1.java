package okhttp3.internal.http1;

import okhttp3.Headers;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http1ExchangeCodec.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http1ExchangeCodec$readResponseHeaders$responseBuilder$1 extends o implements a<Headers> {
    public static final Http1ExchangeCodec$readResponseHeaders$responseBuilder$1 INSTANCE = new Http1ExchangeCodec$readResponseHeaders$responseBuilder$1();

    public Http1ExchangeCodec$readResponseHeaders$responseBuilder$1() {
        super(0);
    }

    @Override // qd.a
    public final Headers invoke() {
        throw new IllegalStateException("trailers not available".toString());
    }
}
