package okhttp3.internal.http1;

import a0.b;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import de.c;
import de.e;
import de.f;
import de.h0;
import de.j0;
import de.k0;
import de.o;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import p4.h;
import yd.s;

/* JADX INFO: compiled from: Http1ExchangeCodec.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Companion Companion = new Companion(null);
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final ExchangeCodec.Carrier carrier;
    private final OkHttpClient client;
    private final HeadersReader headersReader;
    private final e sink;
    private final f source;
    private int state;
    private Headers trailers;

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public abstract class AbstractSource implements j0 {
        private boolean closed;
        private final o timeout;

        public AbstractSource() {
            this.timeout = new o(Http1ExchangeCodec.this.source.timeout());
        }

        @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close() throws IOException;

        public final boolean getClosed() {
            return this.closed;
        }

        public final o getTimeout() {
            return this.timeout;
        }

        @Override // de.j0
        public long read(c cVar, long j10) throws IOException {
            h.j(cVar, "sink");
            try {
                return Http1ExchangeCodec.this.source.read(cVar, j10);
            } catch (IOException e10) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                responseBodyComplete();
                throw e10;
            }
        }

        public final void responseBodyComplete() {
            if (Http1ExchangeCodec.this.state == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.state == 5) {
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 6;
            } else {
                StringBuilder sbC = b.c("state: ");
                sbC.append(Http1ExchangeCodec.this.state);
                throw new IllegalStateException(sbC.toString());
            }
        }

        public final void setClosed(boolean z10) {
            this.closed = z10;
        }

        @Override // de.j0
        public k0 timeout() {
            return this.timeout;
        }
    }

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public final class ChunkedSink implements h0 {
        private boolean closed;
        private final o timeout;

        public ChunkedSink() {
            this.timeout = new o(Http1ExchangeCodec.this.sink.timeout());
        }

        @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.sink.U("0\r\n\r\n");
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // de.h0, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // de.h0
        public k0 timeout() {
            return this.timeout;
        }

        @Override // de.h0
        public void write(c cVar, long j10) throws IOException {
            h.j(cVar, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j10 == 0) {
                return;
            }
            Http1ExchangeCodec.this.sink.g(j10);
            Http1ExchangeCodec.this.sink.U("\r\n");
            Http1ExchangeCodec.this.sink.write(cVar, j10);
            Http1ExchangeCodec.this.sink.U("\r\n");
        }
    }

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        public final /* synthetic */ Http1ExchangeCodec this$0;
        private final HttpUrl url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super();
            h.j(httpUrl, "url");
            this.this$0 = http1ExchangeCodec;
            this.url = httpUrl;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        private final void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != -1) {
                this.this$0.source.u();
            }
            try {
                this.bytesRemainingInChunk = this.this$0.source.c0();
                String string = s.G0(this.this$0.source.u()).toString();
                if (this.bytesRemainingInChunk >= 0) {
                    if (!(string.length() > 0) || yd.o.g0(string, ";", false)) {
                        if (this.bytesRemainingInChunk == 0) {
                            this.hasMoreChunks = false;
                            Http1ExchangeCodec http1ExchangeCodec = this.this$0;
                            http1ExchangeCodec.trailers = http1ExchangeCodec.headersReader.readHeaders();
                            OkHttpClient okHttpClient = this.this$0.client;
                            h.g(okHttpClient);
                            CookieJar cookieJar = okHttpClient.cookieJar();
                            HttpUrl httpUrl = this.url;
                            Headers headers = this.this$0.trailers;
                            h.g(headers);
                            HttpHeaders.receiveHeaders(cookieJar, httpUrl, headers);
                            responseBodyComplete();
                            return;
                        }
                        return;
                    }
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + string + '\"');
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, de.j0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getCarrier().noNewExchanges();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, de.j0
        public long read(c cVar, long j10) throws IOException {
            h.j(cVar, "sink");
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            long j11 = this.bytesRemainingInChunk;
            if (j11 == 0 || j11 == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j12 = super.read(cVar, Math.min(j10, this.bytesRemainingInChunk));
            if (j12 != -1) {
                this.bytesRemainingInChunk -= j12;
                return j12;
            }
            this.this$0.getCarrier().noNewExchanges();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            responseBodyComplete();
            throw protocolException;
        }
    }

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(long j10) {
            super();
            this.bytesRemaining = j10;
            if (j10 == 0) {
                responseBodyComplete();
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, de.j0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, de.j0
        public long read(c cVar, long j10) throws IOException {
            h.j(cVar, "sink");
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            long j11 = this.bytesRemaining;
            if (j11 == 0) {
                return -1L;
            }
            long j12 = super.read(cVar, Math.min(j11, j10));
            if (j12 == -1) {
                Http1ExchangeCodec.this.getCarrier().noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete();
                throw protocolException;
            }
            long j13 = this.bytesRemaining - j12;
            this.bytesRemaining = j13;
            if (j13 == 0) {
                responseBodyComplete();
            }
            return j12;
        }
    }

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public final class KnownLengthSink implements h0 {
        private boolean closed;
        private final o timeout;

        public KnownLengthSink() {
            this.timeout = new o(Http1ExchangeCodec.this.sink.timeout());
        }

        @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // de.h0, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // de.h0
        public k0 timeout() {
            return this.timeout;
        }

        @Override // de.h0
        public void write(c cVar, long j10) throws IOException {
            h.j(cVar, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            _UtilCommonKt.checkOffsetAndCount(cVar.f6199i, 0L, j10);
            Http1ExchangeCodec.this.sink.write(cVar, j10);
        }
    }

    /* JADX INFO: compiled from: Http1ExchangeCodec.kt */
    public final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        public UnknownLengthSource() {
            super();
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, de.j0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, de.j0
        public long read(c cVar, long j10) throws IOException {
            h.j(cVar, "sink");
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j11 = super.read(cVar, j10);
            if (j11 != -1) {
                return j11;
            }
            this.inputExhausted = true;
            responseBodyComplete();
            return -1L;
        }
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, f fVar, e eVar) {
        h.j(carrier, AnalyticsAttribute.CARRIER_ATTRIBUTE);
        h.j(fVar, "source");
        h.j(eVar, "sink");
        this.client = okHttpClient;
        this.carrier = carrier;
        this.source = fVar;
        this.sink = eVar;
        this.headersReader = new HeadersReader(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detachTimeout(o oVar) {
        k0 k0Var = oVar.f6260a;
        k0 k0Var2 = k0.NONE;
        h.j(k0Var2, "delegate");
        oVar.f6260a = k0Var2;
        k0Var.clearDeadline();
        k0Var.clearTimeout();
    }

    private final boolean isChunked(Response response) {
        return yd.o.Z("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null));
    }

    private final h0 newChunkedSink() {
        if (this.state == 1) {
            this.state = 2;
            return new ChunkedSink();
        }
        StringBuilder sbC = b.c("state: ");
        sbC.append(this.state);
        throw new IllegalStateException(sbC.toString().toString());
    }

    private final j0 newChunkedSource(HttpUrl httpUrl) {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(this, httpUrl);
        }
        StringBuilder sbC = b.c("state: ");
        sbC.append(this.state);
        throw new IllegalStateException(sbC.toString().toString());
    }

    private final j0 newFixedLengthSource(long j10) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j10);
        }
        StringBuilder sbC = b.c("state: ");
        sbC.append(this.state);
        throw new IllegalStateException(sbC.toString().toString());
    }

    private final h0 newKnownLengthSink() {
        if (this.state == 1) {
            this.state = 2;
            return new KnownLengthSink();
        }
        StringBuilder sbC = b.c("state: ");
        sbC.append(this.state);
        throw new IllegalStateException(sbC.toString().toString());
    }

    private final j0 newUnknownLengthSource() {
        if (this.state == 4) {
            this.state = 5;
            getCarrier().noNewExchanges();
            return new UnknownLengthSource();
        }
        StringBuilder sbC = b.c("state: ");
        sbC.append(this.state);
        throw new IllegalStateException(sbC.toString().toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getCarrier().mo162cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public h0 createRequestBody(Request request, long j10) throws ProtocolException {
        h.j(request, "request");
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null && requestBodyBody.isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (isChunked(request)) {
            return newChunkedSink();
        }
        if (j10 != -1) {
            return newKnownLengthSink();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() throws IOException {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() throws IOException {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public ExchangeCodec.Carrier getCarrier() {
        return this.carrier;
    }

    public final boolean isClosed() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public j0 openResponseBodySource(Response response) {
        h.j(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(0L);
        }
        if (isChunked(response)) {
            return newChunkedSource(response.request().url());
        }
        long jHeadersContentLength = _UtilJvmKt.headersContentLength(response);
        return jHeadersContentLength != -1 ? newFixedLengthSource(jHeadersContentLength) : newUnknownLengthSource();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Response.Builder readResponseHeaders(boolean z10) throws IOException {
        int i10 = this.state;
        boolean z11 = true;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            z11 = false;
        }
        if (!z11) {
            StringBuilder sbC = b.c("state: ");
            sbC.append(this.state);
            throw new IllegalStateException(sbC.toString().toString());
        }
        try {
            StatusLine statusLine = StatusLine.Companion.parse(this.headersReader.readLine());
            Response.Builder builderTrailers = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(this.headersReader.readHeaders()).trailers(Http1ExchangeCodec$readResponseHeaders$responseBuilder$1.INSTANCE);
            if (z10 && statusLine.code == 100) {
                return null;
            }
            if (statusLine.code == 100) {
                this.state = 3;
                return builderTrailers;
            }
            this.state = 4;
            return builderTrailers;
        } catch (EOFException e10) {
            throw new IOException(d.c("unexpected end of stream on ", getCarrier().getRoute().address().url().redact()), e10);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(Response response) {
        h.j(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (isChunked(response)) {
            return -1L;
        }
        return _UtilJvmKt.headersContentLength(response);
    }

    public final void skipConnectBody(Response response) throws IOException {
        h.j(response, "response");
        long jHeadersContentLength = _UtilJvmKt.headersContentLength(response);
        if (jHeadersContentLength == -1) {
            return;
        }
        j0 j0VarNewFixedLengthSource = newFixedLengthSource(jHeadersContentLength);
        _UtilJvmKt.skipAll(j0VarNewFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        j0VarNewFixedLengthSource.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Headers trailers() {
        if (!(this.state == 6)) {
            throw new IllegalStateException("too early; can't read the trailers yet".toString());
        }
        Headers headers = this.trailers;
        return headers == null ? _UtilJvmKt.EMPTY_HEADERS : headers;
    }

    public final void writeRequest(Headers headers, String str) throws IOException {
        h.j(headers, "headers");
        h.j(str, "requestLine");
        if (!(this.state == 0)) {
            StringBuilder sbC = b.c("state: ");
            sbC.append(this.state);
            throw new IllegalStateException(sbC.toString().toString());
        }
        this.sink.U(str).U("\r\n");
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.sink.U(headers.name(i10)).U(": ").U(headers.value(i10)).U("\r\n");
        }
        this.sink.U("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(Request request) throws IOException {
        h.j(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getCarrier().getRoute().proxy().type();
        h.i(type, "carrier.route.proxy.type()");
        writeRequest(request.headers(), requestLine.get(request, type));
    }

    private final boolean isChunked(Request request) {
        return yd.o.Z("chunked", request.header("Transfer-Encoding"));
    }
}
