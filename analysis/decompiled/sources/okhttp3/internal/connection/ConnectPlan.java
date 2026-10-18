package okhttp3.internal.connection;

import a0.b;
import de.c;
import de.e;
import de.f;
import de.k0;
import de.w;
import gd.j;
import java.io.IOException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import qd.a;
import rd.h;
import rd.o;
import yd.k;

/* JADX INFO: compiled from: ConnectPlan.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectPlan implements RoutePlanner.Plan, ExchangeCodec.Carrier {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_TUNNEL_ATTEMPTS = 21;
    private static final String NPE_THROW_WITH_NULL = "throw with null exception";
    private final int attempt;
    private final RealCall call;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private RealConnection connection;
    private final int connectionSpecIndex;
    private final EventListener eventListener;
    private Handshake handshake;
    private final boolean isTlsFallback;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    private final RealRoutePlanner routePlanner;
    private final List<Route> routes;
    private e sink;
    private Socket socket;
    private f source;
    private final Request tunnelRequest;

    /* JADX INFO: compiled from: ConnectPlan.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ConnectPlan.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.connection.ConnectPlan$connectTls$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectPlan.kt */
    public static final class AnonymousClass1 extends o implements a<List<? extends X509Certificate>> {
        public final /* synthetic */ Handshake $handshake;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Handshake handshake) {
            super(0);
            this.$handshake = handshake;
        }

        @Override // qd.a
        public final List<? extends X509Certificate> invoke() {
            List<Certificate> listPeerCertificates = this.$handshake.peerCertificates();
            ArrayList arrayList = new ArrayList(j.T(listPeerCertificates, 10));
            Iterator<T> it = listPeerCertificates.iterator();
            while (it.hasNext()) {
                arrayList.add((X509Certificate) ((Certificate) it.next()));
            }
            return arrayList;
        }
    }

    public ConnectPlan(OkHttpClient okHttpClient, RealCall realCall, RealRoutePlanner realRoutePlanner, Route route, List<Route> list, int i10, Request request, int i11, boolean z10) {
        p4.h.j(okHttpClient, "client");
        p4.h.j(realCall, "call");
        p4.h.j(realRoutePlanner, "routePlanner");
        p4.h.j(route, "route");
        this.client = okHttpClient;
        this.call = realCall;
        this.routePlanner = realRoutePlanner;
        this.route = route;
        this.routes = list;
        this.attempt = i10;
        this.tunnelRequest = request;
        this.connectionSpecIndex = i11;
        this.isTlsFallback = z10;
        this.eventListener = realCall.getEventListener$okhttp();
    }

    private final void connectSocket() throws IOException {
        Socket socketCreateSocket;
        Proxy.Type type = getRoute().proxy().type();
        int i10 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i10 == 1 || i10 == 2) {
            socketCreateSocket = getRoute().address().socketFactory().createSocket();
            p4.h.g(socketCreateSocket);
        } else {
            socketCreateSocket = new Socket(getRoute().proxy());
        }
        this.rawSocket = socketCreateSocket;
        if (this.canceled) {
            throw new IOException("canceled");
        }
        socketCreateSocket.setSoTimeout(this.client.readTimeoutMillis());
        try {
            Platform.Companion.get().connectSocket(socketCreateSocket, getRoute().socketAddress(), this.client.connectTimeoutMillis());
            try {
                this.source = w.b(w.g(socketCreateSocket));
                this.sink = w.a(w.e(socketCreateSocket));
            } catch (NullPointerException e10) {
                if (p4.h.c(e10.getMessage(), NPE_THROW_WITH_NULL)) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            StringBuilder sbC = b.c("Failed to connect to ");
            sbC.append(getRoute().socketAddress());
            ConnectException connectException = new ConnectException(sbC.toString());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private final void connectTls(SSLSocket sSLSocket, ConnectionSpec connectionSpec) throws IOException {
        Address address = getRoute().address();
        try {
            if (connectionSpec.supportsTlsExtensions()) {
                Platform.Companion.get().configureTlsExtensions(sSLSocket, address.url().host(), address.protocols());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            Handshake.Companion companion = Handshake.Companion;
            p4.h.i(session, "sslSocketSession");
            Handshake handshake = companion.get(session);
            HostnameVerifier hostnameVerifier = address.hostnameVerifier();
            p4.h.g(hostnameVerifier);
            if (hostnameVerifier.verify(address.url().host(), session)) {
                CertificatePinner certificatePinner = address.certificatePinner();
                p4.h.g(certificatePinner);
                Handshake handshake2 = new Handshake(handshake.tlsVersion(), handshake.cipherSuite(), handshake.localCertificates(), new ConnectPlan$connectTls$handshake$1(certificatePinner, handshake, address));
                this.handshake = handshake2;
                certificatePinner.check$okhttp(address.url().host(), new AnonymousClass1(handshake2));
                String selectedProtocol = connectionSpec.supportsTlsExtensions() ? Platform.Companion.get().getSelectedProtocol(sSLSocket) : null;
                this.socket = sSLSocket;
                this.source = w.b(w.g(sSLSocket));
                this.sink = w.a(w.e(sSLSocket));
                this.protocol = selectedProtocol != null ? Protocol.Companion.get(selectedProtocol) : Protocol.HTTP_1_1;
                Platform.Companion.get().afterHandshake(sSLSocket);
                return;
            }
            List<Certificate> listPeerCertificates = handshake.peerCertificates();
            if (!(!listPeerCertificates.isEmpty())) {
                throw new SSLPeerUnverifiedException("Hostname " + address.url().host() + " not verified (no certificates)");
            }
            X509Certificate x509Certificate = (X509Certificate) listPeerCertificates.get(0);
            throw new SSLPeerUnverifiedException(k.U("\n            |Hostname " + address.url().host() + " not verified:\n            |    certificate: " + CertificatePinner.Companion.pin(x509Certificate) + "\n            |    DN: " + x509Certificate.getSubjectDN().getName() + "\n            |    subjectAltNames: " + OkHostnameVerifier.INSTANCE.allSubjectAltNames(x509Certificate) + "\n            "));
        } catch (Throwable th) {
            Platform.Companion.get().afterHandshake(sSLSocket);
            _UtilJvmKt.closeQuietly(sSLSocket);
            throw th;
        }
    }

    private final ConnectPlan copy(int i10, Request request, int i11, boolean z10) {
        return new ConnectPlan(this.client, this.call, this.routePlanner, getRoute(), this.routes, i10, request, i11, z10);
    }

    public static /* synthetic */ ConnectPlan copy$default(ConnectPlan connectPlan, int i10, Request request, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = connectPlan.attempt;
        }
        if ((i12 & 2) != 0) {
            request = connectPlan.tunnelRequest;
        }
        if ((i12 & 4) != 0) {
            i11 = connectPlan.connectionSpecIndex;
        }
        if ((i12 & 8) != 0) {
            z10 = connectPlan.isTlsFallback;
        }
        return connectPlan.copy(i10, request, i11, z10);
    }

    private final Request createTunnel() throws IOException {
        Request request = this.tunnelRequest;
        p4.h.g(request);
        HttpUrl httpUrlUrl = getRoute().address().url();
        StringBuilder sbC = b.c("CONNECT ");
        sbC.append(_UtilJvmKt.toHostHeader(httpUrlUrl, true));
        sbC.append(" HTTP/1.1");
        String string = sbC.toString();
        while (true) {
            f fVar = this.source;
            p4.h.g(fVar);
            e eVar = this.sink;
            p4.h.g(eVar);
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, fVar, eVar);
            k0 k0VarTimeout = fVar.timeout();
            long timeoutMillis = this.client.readTimeoutMillis();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            k0VarTimeout.timeout(timeoutMillis, timeUnit);
            eVar.timeout().timeout(this.client.writeTimeoutMillis(), timeUnit);
            http1ExchangeCodec.writeRequest(request.headers(), string);
            http1ExchangeCodec.finishRequest();
            Response.Builder responseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            p4.h.g(responseHeaders);
            Response responseBuild = responseHeaders.request(request).build();
            http1ExchangeCodec.skipConnectBody(responseBuild);
            int iCode = responseBuild.code();
            if (iCode == 200) {
                return null;
            }
            if (iCode != 407) {
                StringBuilder sbC2 = b.c("Unexpected response code for CONNECT: ");
                sbC2.append(responseBuild.code());
                throw new IOException(sbC2.toString());
            }
            Request requestAuthenticate = getRoute().address().proxyAuthenticator().authenticate(getRoute(), responseBuild);
            if (requestAuthenticate == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if (yd.o.Z("close", Response.header$default(responseBuild, "Connection", null, 2, null))) {
                return requestAuthenticate;
            }
            request = requestAuthenticate;
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel */
    public void mo162cancel() {
        this.canceled = true;
        Socket socket = this.rawSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    public final void closeQuietly() {
        Socket socket = this.socket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp */
    public RoutePlanner.ConnectResult mo165connectTcp() throws Throwable {
        Socket socket;
        Socket socket2;
        boolean z10 = true;
        if (!(this.rawSocket == null)) {
            throw new IllegalStateException("TCP already connected".toString());
        }
        this.call.getPlansToCancel$okhttp().add(this);
        try {
            try {
                this.eventListener.connectStart(this.call, getRoute().socketAddress(), getRoute().proxy());
                connectSocket();
                try {
                    RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, null, null, 6, null);
                    this.call.getPlansToCancel$okhttp().remove(this);
                    return connectResult;
                } catch (IOException e10) {
                    e = e10;
                    this.eventListener.connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, e);
                    RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, e, 2, null);
                    this.call.getPlansToCancel$okhttp().remove(this);
                    if (!z10 && (socket2 = this.rawSocket) != null) {
                        _UtilJvmKt.closeQuietly(socket2);
                    }
                    return connectResult2;
                }
            } catch (Throwable th) {
                th = th;
                this.call.getPlansToCancel$okhttp().remove(this);
                if (!z10 && (socket = this.rawSocket) != null) {
                    _UtilJvmKt.closeQuietly(socket);
                }
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            z10 = false;
        } catch (Throwable th2) {
            th = th2;
            z10 = false;
            this.call.getPlansToCancel$okhttp().remove(this);
            if (!z10) {
                _UtilJvmKt.closeQuietly(socket);
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:82:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01da  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:94:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f5  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc */
    public RoutePlanner.ConnectResult mo166connectTlsEtc() throws Throwable {
        ConnectPlan connectPlanNextConnectionSpec$okhttp;
        Socket socket;
        Socket socket2;
        Socket socket3;
        Socket socket4;
        ConnectPlan connectPlan;
        c cVarB;
        c cVarB2;
        boolean z10 = true;
        if (!(this.rawSocket != null)) {
            throw new IllegalStateException("TCP not connected".toString());
        }
        if (!(!isReady())) {
            throw new IllegalStateException("already connected".toString());
        }
        List<ConnectionSpec> listConnectionSpecs = getRoute().address().connectionSpecs();
        this.call.getPlansToCancel$okhttp().add(this);
        ConnectPlan connectPlan2 = null;
        try {
            try {
                if (this.tunnelRequest != null) {
                    RoutePlanner.ConnectResult connectResultConnectTunnel$okhttp = connectTunnel$okhttp();
                    if (connectResultConnectTunnel$okhttp.getNextPlan() != null || connectResultConnectTunnel$okhttp.getThrowable() != null) {
                        this.call.getPlansToCancel$okhttp().remove(this);
                        Socket socket5 = this.socket;
                        if (socket5 != null) {
                            _UtilJvmKt.closeQuietly(socket5);
                        }
                        Socket socket6 = this.rawSocket;
                        if (socket6 != null) {
                            _UtilJvmKt.closeQuietly(socket6);
                        }
                        return connectResultConnectTunnel$okhttp;
                    }
                }
                if (getRoute().address().sslSocketFactory() != null) {
                    f fVar = this.source;
                    if (!((fVar == null || (cVarB2 = fVar.b()) == null || cVarB2.z()) ? false : true)) {
                        e eVar = this.sink;
                        if (!((eVar == null || (cVarB = eVar.b()) == null || cVarB.z()) ? false : true)) {
                            this.eventListener.secureConnectStart(this.call);
                            Socket socketCreateSocket = getRoute().address().sslSocketFactory().createSocket(this.rawSocket, getRoute().address().url().host(), getRoute().address().url().port(), true);
                            if (socketCreateSocket == null) {
                                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
                            }
                            SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
                            ConnectPlan connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp = planWithCurrentOrInitialConnectionSpec$okhttp(listConnectionSpecs, sSLSocket);
                            ConnectionSpec connectionSpec = listConnectionSpecs.get(connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp.connectionSpecIndex);
                            connectPlanNextConnectionSpec$okhttp = connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp.nextConnectionSpec$okhttp(listConnectionSpecs, sSLSocket);
                            try {
                                connectionSpec.apply$okhttp(sSLSocket, connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp.isTlsFallback);
                                connectTls(sSLSocket, connectionSpec);
                                this.eventListener.secureConnectEnd(this.call, this.handshake);
                                connectPlan = connectPlanNextConnectionSpec$okhttp;
                            } catch (IOException e10) {
                                e = e10;
                                z10 = false;
                                this.eventListener.connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, e);
                                if (this.client.retryOnConnectionFailure()) {
                                    connectPlan2 = connectPlanNextConnectionSpec$okhttp;
                                }
                                RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, connectPlan2, e);
                                this.call.getPlansToCancel$okhttp().remove(this);
                                if (!z10) {
                                    socket3 = this.socket;
                                    if (socket3 != null) {
                                        _UtilJvmKt.closeQuietly(socket3);
                                    }
                                    socket4 = this.rawSocket;
                                    if (socket4 != null) {
                                        _UtilJvmKt.closeQuietly(socket4);
                                    }
                                }
                                return connectResult;
                            }
                        }
                    }
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                this.socket = this.rawSocket;
                List<Protocol> listProtocols = getRoute().address().protocols();
                Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                if (!listProtocols.contains(protocol)) {
                    protocol = Protocol.HTTP_1_1;
                }
                this.protocol = protocol;
                connectPlan = null;
                try {
                    RealConnection realConnection = new RealConnection(this.client.getTaskRunner$okhttp(), this.client.connectionPool().getDelegate$okhttp(), getRoute(), this.rawSocket, this.socket, this.handshake, this.protocol, this.source, this.sink, this.client.pingIntervalMillis());
                    this.connection = realConnection;
                    realConnection.start();
                    this.eventListener.connectEnd(this.call, getRoute().socketAddress(), getRoute().proxy(), this.protocol);
                    try {
                        try {
                            RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, null, 6, null);
                            this.call.getPlansToCancel$okhttp().remove(this);
                            return connectResult2;
                        } catch (IOException e11) {
                            e = e11;
                            connectPlanNextConnectionSpec$okhttp = connectPlan;
                            this.eventListener.connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, e);
                            if (this.client.retryOnConnectionFailure() && TlsHandshakeKt.retryTlsHandshake(e)) {
                                connectPlan2 = connectPlanNextConnectionSpec$okhttp;
                            }
                            RoutePlanner.ConnectResult connectResult3 = new RoutePlanner.ConnectResult(this, connectPlan2, e);
                            this.call.getPlansToCancel$okhttp().remove(this);
                            if (!z10) {
                                socket3 = this.socket;
                                if (socket3 != null) {
                                    _UtilJvmKt.closeQuietly(socket3);
                                }
                                socket4 = this.rawSocket;
                                if (socket4 != null) {
                                    _UtilJvmKt.closeQuietly(socket4);
                                }
                            }
                            return connectResult3;
                        }
                    } catch (Throwable th) {
                        th = th;
                        this.call.getPlansToCancel$okhttp().remove(this);
                        if (!z10) {
                            socket = this.socket;
                            if (socket != null) {
                                _UtilJvmKt.closeQuietly(socket);
                            }
                            socket2 = this.rawSocket;
                            if (socket2 != null) {
                                _UtilJvmKt.closeQuietly(socket2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    e = e12;
                    z10 = false;
                }
            } catch (Throwable th2) {
                th = th2;
                z10 = false;
                this.call.getPlansToCancel$okhttp().remove(this);
                if (!z10) {
                    socket = this.socket;
                    if (socket != null) {
                        _UtilJvmKt.closeQuietly(socket);
                    }
                    socket2 = this.rawSocket;
                    if (socket2 != null) {
                        _UtilJvmKt.closeQuietly(socket2);
                    }
                }
                throw th;
            }
        } catch (IOException e13) {
            e = e13;
            z10 = false;
            connectPlanNextConnectionSpec$okhttp = null;
        }
    }

    public final RoutePlanner.ConnectResult connectTunnel$okhttp() throws IOException {
        Request requestCreateTunnel = createTunnel();
        if (requestCreateTunnel == null) {
            return new RoutePlanner.ConnectResult(this, null, null, 6, null);
        }
        Socket socket = this.rawSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
        int i10 = this.attempt + 1;
        if (i10 < 21) {
            this.eventListener.connectEnd(this.call, getRoute().socketAddress(), getRoute().proxy(), null);
            return new RoutePlanner.ConnectResult(this, copy$default(this, i10, requestCreateTunnel, 0, false, 12, null), null, 4, null);
        }
        ProtocolException protocolException = new ProtocolException("Too many tunnel connections attempted: 21");
        this.eventListener.connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, protocolException);
        return new RoutePlanner.ConnectResult(this, null, protocolException, 2, null);
    }

    public final int getConnectionSpecIndex$okhttp() {
        return this.connectionSpecIndex;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public Route getRoute() {
        return this.route;
    }

    public final List<Route> getRoutes$okhttp() {
        return this.routes;
    }

    public final Socket getSocket$okhttp() {
        return this.socket;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess */
    public RealConnection mo163handleSuccess() {
        this.call.getClient().getRouteDatabase$okhttp().connected(getRoute());
        ReusePlan reusePlanPlanReusePooledConnection$okhttp = this.routePlanner.planReusePooledConnection$okhttp(this, this.routes);
        if (reusePlanPlanReusePooledConnection$okhttp != null) {
            return reusePlanPlanReusePooledConnection$okhttp.getConnection();
        }
        RealConnection realConnection = this.connection;
        p4.h.g(realConnection);
        synchronized (realConnection) {
            this.client.connectionPool().getDelegate$okhttp().put(realConnection);
            this.call.acquireConnectionNoEvents(realConnection);
        }
        this.eventListener.connectionAcquired(this.call, realConnection);
        return realConnection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return this.protocol != null;
    }

    public final boolean isTlsFallback$okhttp() {
        return this.isTlsFallback;
    }

    public final ConnectPlan nextConnectionSpec$okhttp(List<ConnectionSpec> list, SSLSocket sSLSocket) {
        p4.h.j(list, "connectionSpecs");
        p4.h.j(sSLSocket, "sslSocket");
        int i10 = this.connectionSpecIndex + 1;
        int size = list.size();
        for (int i11 = i10; i11 < size; i11++) {
            if (list.get(i11).isCompatible(sSLSocket)) {
                return copy$default(this, 0, null, i11, this.connectionSpecIndex != -1, 3, null);
            }
        }
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void noNewExchanges() {
    }

    public final ConnectPlan planWithCurrentOrInitialConnectionSpec$okhttp(List<ConnectionSpec> list, SSLSocket sSLSocket) throws IOException {
        p4.h.j(list, "connectionSpecs");
        p4.h.j(sSLSocket, "sslSocket");
        if (this.connectionSpecIndex != -1) {
            return this;
        }
        ConnectPlan connectPlanNextConnectionSpec$okhttp = nextConnectionSpec$okhttp(list, sSLSocket);
        if (connectPlanNextConnectionSpec$okhttp != null) {
            return connectPlanNextConnectionSpec$okhttp;
        }
        StringBuilder sbC = b.c("Unable to find acceptable protocols. isFallback=");
        sbC.append(this.isTlsFallback);
        sbC.append(", modes=");
        sbC.append(list);
        sbC.append(", supported protocols=");
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        p4.h.g(enabledProtocols);
        String string = Arrays.toString(enabledProtocols);
        p4.h.i(string, "toString(this)");
        sbC.append(string);
        throw new UnknownServiceException(sbC.toString());
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry */
    public RoutePlanner.Plan mo164retry() {
        return new ConnectPlan(this.client, this.call, this.routePlanner, getRoute(), this.routes, this.attempt, this.tunnelRequest, this.connectionSpecIndex, this.isTlsFallback);
    }

    public final void setSocket$okhttp(Socket socket) {
        this.socket = socket;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void trackFailure(RealCall realCall, IOException iOException) {
        p4.h.j(realCall, "call");
    }
}
