package okhttp3.internal.connection;

import a0.b;
import com.newrelic.agent.android.util.Constants;
import de.c;
import de.h0;
import de.j0;
import de.m;
import de.n;
import de.w;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;
import p4.h;

/* JADX INFO: compiled from: Exchange.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Exchange {
    private final RealCall call;
    private final ExchangeCodec codec;
    private final EventListener eventListener;
    private final ExchangeFinder finder;
    private boolean hasFailure;
    private boolean isDuplex;

    /* JADX INFO: compiled from: Exchange.kt */
    public final class RequestBodySink extends m {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        public final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, h0 h0Var, long j10) {
            super(h0Var);
            h.j(h0Var, "delegate");
            this.this$0 = exchange;
            this.contentLength = j10;
        }

        private final <E extends IOException> E complete(E e10) {
            if (this.completed) {
                return e10;
            }
            this.completed = true;
            return (E) this.this$0.bodyComplete(this.bytesReceived, false, true, e10);
        }

        @Override // de.m, de.h0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            long j10 = this.contentLength;
            if (j10 != -1 && this.bytesReceived != j10) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                complete(null);
            } catch (IOException e10) {
                throw complete(e10);
            }
        }

        @Override // de.m, de.h0, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e10) {
                throw complete(e10);
            }
        }

        @Override // de.m, de.h0
        public void write(c cVar, long j10) throws IOException {
            h.j(cVar, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            long j11 = this.contentLength;
            if (j11 == -1 || this.bytesReceived + j10 <= j11) {
                try {
                    super.write(cVar, j10);
                    this.bytesReceived += j10;
                    return;
                } catch (IOException e10) {
                    throw complete(e10);
                }
            }
            StringBuilder sbC = b.c("expected ");
            sbC.append(this.contentLength);
            sbC.append(" bytes but received ");
            sbC.append(this.bytesReceived + j10);
            throw new ProtocolException(sbC.toString());
        }
    }

    /* JADX INFO: compiled from: Exchange.kt */
    public final class ResponseBodySource extends n {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent;
        public final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, j0 j0Var, long j10) {
            super(j0Var);
            h.j(j0Var, "delegate");
            this.this$0 = exchange;
            this.contentLength = j10;
            this.invokeStartEvent = true;
            if (j10 == 0) {
                complete(null);
            }
        }

        @Override // de.n, de.j0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            try {
                super.close();
                complete(null);
            } catch (IOException e10) {
                throw complete(e10);
            }
        }

        public final <E extends IOException> E complete(E e10) {
            if (this.completed) {
                return e10;
            }
            this.completed = true;
            if (e10 == null && this.invokeStartEvent) {
                this.invokeStartEvent = false;
                this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
            }
            return (E) this.this$0.bodyComplete(this.bytesReceived, true, false, e10);
        }

        @Override // de.n, de.j0
        public long read(c cVar, long j10) throws IOException {
            h.j(cVar, "sink");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            try {
                long j11 = delegate().read(cVar, j10);
                if (this.invokeStartEvent) {
                    this.invokeStartEvent = false;
                    this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
                }
                if (j11 == -1) {
                    complete(null);
                    return -1L;
                }
                long j12 = this.bytesReceived + j11;
                long j13 = this.contentLength;
                if (j13 != -1 && j12 > j13) {
                    throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j12);
                }
                this.bytesReceived = j12;
                if (j12 == j13) {
                    complete(null);
                }
                return j11;
            } catch (IOException e10) {
                throw complete(e10);
            }
        }
    }

    public Exchange(RealCall realCall, EventListener eventListener, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        h.j(realCall, "call");
        h.j(eventListener, "eventListener");
        h.j(exchangeFinder, "finder");
        h.j(exchangeCodec, "codec");
        this.call = realCall;
        this.eventListener = eventListener;
        this.finder = exchangeFinder;
        this.codec = exchangeCodec;
    }

    private final void trackFailure(IOException iOException) {
        this.hasFailure = true;
        this.codec.getCarrier().trackFailure(this.call, iOException);
    }

    public final <E extends IOException> E bodyComplete(long j10, boolean z10, boolean z11, E e10) {
        if (e10 != null) {
            trackFailure(e10);
        }
        if (z11) {
            if (e10 != null) {
                this.eventListener.requestFailed(this.call, e10);
            } else {
                this.eventListener.requestBodyEnd(this.call, j10);
            }
        }
        if (z10) {
            if (e10 != null) {
                this.eventListener.responseFailed(this.call, e10);
            } else {
                this.eventListener.responseBodyEnd(this.call, j10);
            }
        }
        return (E) this.call.messageDone$okhttp(this, z11, z10, e10);
    }

    public final void cancel() {
        this.codec.cancel();
    }

    public final h0 createRequestBody(Request request, boolean z10) throws IOException {
        h.j(request, "request");
        this.isDuplex = z10;
        RequestBody requestBodyBody = request.body();
        h.g(requestBodyBody);
        long jContentLength = requestBodyBody.contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new RequestBodySink(this, this.codec.createRequestBody(request, jContentLength), jContentLength);
    }

    public final void detachWithViolence() {
        this.codec.cancel();
        this.call.messageDone$okhttp(this, true, true, null);
    }

    public final void finishRequest() throws IOException {
        try {
            this.codec.finishRequest();
        } catch (IOException e10) {
            this.eventListener.requestFailed(this.call, e10);
            trackFailure(e10);
            throw e10;
        }
    }

    public final void flushRequest() throws IOException {
        try {
            this.codec.flushRequest();
        } catch (IOException e10) {
            this.eventListener.requestFailed(this.call, e10);
            trackFailure(e10);
            throw e10;
        }
    }

    public final RealCall getCall$okhttp() {
        return this.call;
    }

    public final RealConnection getConnection$okhttp() {
        ExchangeCodec.Carrier carrier = this.codec.getCarrier();
        RealConnection realConnection = carrier instanceof RealConnection ? (RealConnection) carrier : null;
        if (realConnection != null) {
            return realConnection;
        }
        throw new IllegalStateException("no connection for CONNECT tunnels".toString());
    }

    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    public final ExchangeFinder getFinder$okhttp() {
        return this.finder;
    }

    public final boolean getHasFailure$okhttp() {
        return this.hasFailure;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !h.c(this.finder.getRoutePlanner().getAddress().url().host(), this.codec.getCarrier().getRoute().address().url().host());
    }

    public final boolean isDuplex$okhttp() {
        return this.isDuplex;
    }

    public final RealWebSocket.Streams newWebSocketStreams() throws SocketException {
        this.call.timeoutEarlyExit();
        return ((RealConnection) this.codec.getCarrier()).newWebSocketStreams$okhttp(this);
    }

    public final void noNewExchangesOnConnection() {
        this.codec.getCarrier().noNewExchanges();
    }

    public final void noRequestBody() {
        this.call.messageDone$okhttp(this, true, false, null);
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        h.j(response, "response");
        try {
            String strHeader$default = Response.header$default(response, Constants.Network.CONTENT_TYPE_HEADER, null, 2, null);
            long jReportedContentLength = this.codec.reportedContentLength(response);
            return new RealResponseBody(strHeader$default, jReportedContentLength, w.b(new ResponseBodySource(this, this.codec.openResponseBodySource(response), jReportedContentLength)));
        } catch (IOException e10) {
            this.eventListener.responseFailed(this.call, e10);
            trackFailure(e10);
            throw e10;
        }
    }

    public final Response.Builder readResponseHeaders(boolean z10) throws IOException {
        try {
            Response.Builder responseHeaders = this.codec.readResponseHeaders(z10);
            if (responseHeaders != null) {
                responseHeaders.initExchange$okhttp(this);
            }
            return responseHeaders;
        } catch (IOException e10) {
            this.eventListener.responseFailed(this.call, e10);
            trackFailure(e10);
            throw e10;
        }
    }

    public final void responseHeadersEnd(Response response) {
        h.j(response, "response");
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    public final Headers trailers() throws IOException {
        return this.codec.trailers();
    }

    public final void webSocketUpgradeFailed() {
        bodyComplete(-1L, true, true, null);
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        h.j(request, "request");
        try {
            this.eventListener.requestHeadersStart(this.call);
            this.codec.writeRequestHeaders(request);
            this.eventListener.requestHeadersEnd(this.call, request);
        } catch (IOException e10) {
            this.eventListener.requestFailed(this.call, e10);
            trackFailure(e10);
            throw e10;
        }
    }
}
