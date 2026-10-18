package okhttp3.internal;

import de.a0;
import de.k;
import okhttp3.Cache;
import okhttp3.Dispatcher;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import p4.h;

/* JADX INFO: compiled from: NativeImageTestsAccessors.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NativeImageTestsAccessorsKt {
    public static final Cache buildCache(a0 a0Var, long j10, k kVar) {
        h.j(a0Var, "file");
        h.j(kVar, "fileSystem");
        return new Cache(a0Var, j10, kVar);
    }

    public static final void finishedAccessor(Dispatcher dispatcher, RealCall.AsyncCall asyncCall) {
        h.j(dispatcher, "<this>");
        h.j(asyncCall, "call");
        dispatcher.finished$okhttp(asyncCall);
    }

    public static final RealConnection getConnectionAccessor(Exchange exchange) {
        h.j(exchange, "<this>");
        return exchange.getConnection$okhttp();
    }

    public static final Exchange getExchangeAccessor(Response response) {
        h.j(response, "<this>");
        return response.exchange();
    }

    public static final long getIdleAtNsAccessor(RealConnection realConnection) {
        h.j(realConnection, "<this>");
        return realConnection.getIdleAtNs();
    }

    public static final void setIdleAtNsAccessor(RealConnection realConnection, long j10) {
        h.j(realConnection, "<this>");
        realConnection.setIdleAtNs(j10);
    }
}
