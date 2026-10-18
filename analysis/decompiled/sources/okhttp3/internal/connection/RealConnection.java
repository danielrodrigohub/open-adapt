package okhttp3.internal.connection;

import a0.b;
import de.e;
import de.f;
import de.k0;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import rd.h;

/* JADX INFO: compiled from: RealConnection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection, ExchangeCodec.Carrier {
    public static final Companion Companion = new Companion(null);
    public static final long IDLE_CONNECTION_HEALTHY_NS = 10000000000L;
    private int allocationLimit;
    private final List<Reference<RealCall>> calls;
    private final RealConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    private long idleAtNs;
    private boolean noCoalescedConnections;
    private boolean noNewExchanges;
    private final int pingIntervalMillis;
    private Protocol protocol;
    private Socket rawSocket;
    private int refusedStreamCount;
    private final Route route;
    private int routeFailureCount;
    private e sink;
    private Socket socket;
    private f source;
    private int successCount;
    private final TaskRunner taskRunner;

    /* JADX INFO: compiled from: RealConnection.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final RealConnection newTestConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, long j10) {
            p4.h.j(taskRunner, "taskRunner");
            p4.h.j(realConnectionPool, "connectionPool");
            p4.h.j(route, "route");
            p4.h.j(socket, "socket");
            RealConnection realConnection = new RealConnection(taskRunner, realConnectionPool, route, null, socket, null, null, null, null, 0);
            realConnection.setIdleAtNs(j10);
            return realConnection;
        }
    }

    public RealConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, Socket socket2, Handshake handshake, Protocol protocol, f fVar, e eVar, int i10) {
        p4.h.j(taskRunner, "taskRunner");
        p4.h.j(realConnectionPool, "connectionPool");
        p4.h.j(route, "route");
        this.taskRunner = taskRunner;
        this.connectionPool = realConnectionPool;
        this.route = route;
        this.rawSocket = socket;
        this.socket = socket2;
        this.handshake = handshake;
        this.protocol = protocol;
        this.source = fVar;
        this.sink = eVar;
        this.pingIntervalMillis = i10;
        this.allocationLimit = 1;
        this.calls = new ArrayList();
        this.idleAtNs = Long.MAX_VALUE;
    }

    private final boolean certificateSupportHost(HttpUrl httpUrl, Handshake handshake) {
        List<Certificate> listPeerCertificates = handshake.peerCertificates();
        return (listPeerCertificates.isEmpty() ^ true) && OkHostnameVerifier.INSTANCE.verify(httpUrl.host(), (X509Certificate) listPeerCertificates.get(0));
    }

    private final boolean routeMatchesAny(List<Route> list) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Route route : list) {
                if (route.proxy().type() == Proxy.Type.DIRECT && getRoute().proxy().type() == Proxy.Type.DIRECT && p4.h.c(getRoute().socketAddress(), route.socketAddress())) {
                    return true;
                }
            }
        }
        return false;
    }

    private final void startHttp2() throws IOException {
        Socket socket = this.socket;
        p4.h.g(socket);
        f fVar = this.source;
        p4.h.g(fVar);
        e eVar = this.sink;
        p4.h.g(eVar);
        socket.setSoTimeout(0);
        Http2Connection http2ConnectionBuild = new Http2Connection.Builder(true, this.taskRunner).socket(socket, getRoute().address().url().host(), fVar, eVar).listener(this).pingIntervalMillis(this.pingIntervalMillis).build();
        this.http2Connection = http2ConnectionBuild;
        this.allocationLimit = Http2Connection.Companion.getDEFAULT_SETTINGS().getMaxConcurrentStreams();
        Http2Connection.start$default(http2ConnectionBuild, false, 1, null);
    }

    private final boolean supportsUrl(HttpUrl httpUrl) {
        Handshake handshake;
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        HttpUrl httpUrlUrl = getRoute().address().url();
        if (httpUrl.port() != httpUrlUrl.port()) {
            return false;
        }
        if (p4.h.c(httpUrl.host(), httpUrlUrl.host())) {
            return true;
        }
        if (this.noCoalescedConnections || (handshake = this.handshake) == null) {
            return false;
        }
        p4.h.g(handshake);
        return certificateSupportHost(httpUrl, handshake);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel */
    public void mo162cancel() {
        Socket socket = this.rawSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    public final void connectFailed$okhttp(OkHttpClient okHttpClient, Route route, IOException iOException) {
        p4.h.j(okHttpClient, "client");
        p4.h.j(route, "failedRoute");
        p4.h.j(iOException, "failure");
        if (route.proxy().type() != Proxy.Type.DIRECT) {
            Address address = route.address();
            address.proxySelector().connectFailed(address.url().uri(), route.proxy().address(), iOException);
        }
        okHttpClient.getRouteDatabase$okhttp().failed(route);
    }

    public final List<Reference<RealCall>> getCalls() {
        return this.calls;
    }

    public final RealConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    public final long getIdleAtNs() {
        return this.idleAtNs;
    }

    public final boolean getNoNewExchanges() {
        return this.noNewExchanges;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public Route getRoute() {
        return this.route;
    }

    public final int getRouteFailureCount$okhttp() {
        return this.routeFailureCount;
    }

    public final TaskRunner getTaskRunner() {
        return this.taskRunner;
    }

    @Override // okhttp3.Connection
    public Handshake handshake() {
        return this.handshake;
    }

    public final synchronized void incrementSuccessCount$okhttp() {
        this.successCount++;
    }

    public final boolean isEligible$okhttp(Address address, List<Route> list) {
        p4.h.j(address, "address");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        if (this.calls.size() >= this.allocationLimit || this.noNewExchanges || !getRoute().address().equalsNonHost$okhttp(address)) {
            return false;
        }
        if (p4.h.c(address.url().host(), route().address().url().host())) {
            return true;
        }
        if (this.http2Connection == null || list == null || !routeMatchesAny(list) || address.hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
            return false;
        }
        try {
            CertificatePinner certificatePinner = address.certificatePinner();
            p4.h.g(certificatePinner);
            String strHost = address.url().host();
            Handshake handshake = handshake();
            p4.h.g(handshake);
            certificatePinner.check(strHost, handshake.peerCertificates());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public final boolean isHealthy(boolean z10) {
        long j10;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        long jNanoTime = System.nanoTime();
        Socket socket = this.rawSocket;
        p4.h.g(socket);
        Socket socket2 = this.socket;
        p4.h.g(socket2);
        f fVar = this.source;
        p4.h.g(fVar);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection != null) {
            return http2Connection.isHealthy(jNanoTime);
        }
        synchronized (this) {
            j10 = jNanoTime - this.idleAtNs;
        }
        if (j10 < IDLE_CONNECTION_HEALTHY_NS || !z10) {
            return true;
        }
        return _UtilJvmKt.isHealthy(socket2, fVar);
    }

    public final boolean isMultiplexed$okhttp() {
        return this.http2Connection != null;
    }

    public final ExchangeCodec newCodec$okhttp(OkHttpClient okHttpClient, RealInterceptorChain realInterceptorChain) throws SocketException {
        p4.h.j(okHttpClient, "client");
        p4.h.j(realInterceptorChain, "chain");
        Socket socket = this.socket;
        p4.h.g(socket);
        f fVar = this.source;
        p4.h.g(fVar);
        e eVar = this.sink;
        p4.h.g(eVar);
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(okHttpClient, this, realInterceptorChain, http2Connection);
        }
        socket.setSoTimeout(realInterceptorChain.readTimeoutMillis());
        k0 k0VarTimeout = fVar.timeout();
        long readTimeoutMillis$okhttp = realInterceptorChain.getReadTimeoutMillis$okhttp();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        k0VarTimeout.timeout(readTimeoutMillis$okhttp, timeUnit);
        eVar.timeout().timeout(realInterceptorChain.getWriteTimeoutMillis$okhttp(), timeUnit);
        return new Http1ExchangeCodec(okHttpClient, this, fVar, eVar);
    }

    public final RealWebSocket.Streams newWebSocketStreams$okhttp(final Exchange exchange) throws SocketException {
        p4.h.j(exchange, "exchange");
        Socket socket = this.socket;
        p4.h.g(socket);
        final f fVar = this.source;
        p4.h.g(fVar);
        final e eVar = this.sink;
        p4.h.g(eVar);
        socket.setSoTimeout(0);
        noNewExchanges();
        return new RealWebSocket.Streams(fVar, eVar) { // from class: okhttp3.internal.connection.RealConnection$newWebSocketStreams$1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                exchange.bodyComplete(-1L, true, true, null);
            }
        };
    }

    public final synchronized void noCoalescedConnections$okhttp() {
        this.noCoalescedConnections = true;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public synchronized void noNewExchanges() {
        this.noNewExchanges = true;
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public synchronized void onSettings(Http2Connection http2Connection, Settings settings) {
        p4.h.j(http2Connection, "connection");
        p4.h.j(settings, "settings");
        this.allocationLimit = settings.getMaxConcurrentStreams();
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(Http2Stream http2Stream) throws IOException {
        p4.h.j(http2Stream, "stream");
        http2Stream.close(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.Connection
    public Protocol protocol() {
        Protocol protocol = this.protocol;
        p4.h.g(protocol);
        return protocol;
    }

    @Override // okhttp3.Connection
    public Route route() {
        return getRoute();
    }

    public final void setIdleAtNs(long j10) {
        this.idleAtNs = j10;
    }

    public final void setNoNewExchanges(boolean z10) {
        this.noNewExchanges = z10;
    }

    public final void setRouteFailureCount$okhttp(int i10) {
        this.routeFailureCount = i10;
    }

    @Override // okhttp3.Connection
    public Socket socket() {
        Socket socket = this.socket;
        p4.h.g(socket);
        return socket;
    }

    public final void start() throws IOException {
        this.idleAtNs = System.nanoTime();
        Protocol protocol = this.protocol;
        if (protocol == Protocol.HTTP_2 || protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
            startHttp2();
        }
    }

    public String toString() {
        Object objCipherSuite;
        StringBuilder sbC = b.c("Connection{");
        sbC.append(getRoute().address().url().host());
        sbC.append(':');
        sbC.append(getRoute().address().url().port());
        sbC.append(", proxy=");
        sbC.append(getRoute().proxy());
        sbC.append(" hostAddress=");
        sbC.append(getRoute().socketAddress());
        sbC.append(" cipherSuite=");
        Handshake handshake = this.handshake;
        if (handshake == null || (objCipherSuite = handshake.cipherSuite()) == null) {
            objCipherSuite = "none";
        }
        sbC.append(objCipherSuite);
        sbC.append(" protocol=");
        sbC.append(this.protocol);
        sbC.append('}');
        return sbC.toString();
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public synchronized void trackFailure(RealCall realCall, IOException iOException) {
        p4.h.j(realCall, "call");
        if (iOException instanceof StreamResetException) {
            if (((StreamResetException) iOException).errorCode == ErrorCode.REFUSED_STREAM) {
                int i10 = this.refusedStreamCount + 1;
                this.refusedStreamCount = i10;
                if (i10 > 1) {
                    this.noNewExchanges = true;
                    this.routeFailureCount++;
                }
            } else if (((StreamResetException) iOException).errorCode != ErrorCode.CANCEL || !realCall.isCanceled()) {
                this.noNewExchanges = true;
                this.routeFailureCount++;
            }
        } else if (!isMultiplexed$okhttp() || (iOException instanceof ConnectionShutdownException)) {
            this.noNewExchanges = true;
            if (this.successCount == 0) {
                if (iOException != null) {
                    connectFailed$okhttp(realCall.getClient(), getRoute(), iOException);
                }
                this.routeFailureCount++;
            }
        }
    }
}
