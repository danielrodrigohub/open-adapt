package okhttp3;

import okhttp3.internal.connection.Exchange;
import rd.o;

/* JADX INFO: compiled from: Response.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Response$Builder$initExchange$1 extends o implements qd.a<Headers> {
    public final /* synthetic */ Exchange $exchange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Response$Builder$initExchange$1(Exchange exchange) {
        super(0);
        this.$exchange = exchange;
    }

    @Override // qd.a
    public final Headers invoke() {
        return this.$exchange.trailers();
    }
}
