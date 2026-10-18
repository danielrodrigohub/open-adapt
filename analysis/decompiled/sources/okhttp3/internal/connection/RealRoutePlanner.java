package okhttp3.internal.connection;

import a0.d;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import gd.f;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.util.List;
import okhttp3.Address;
import okhttp3.ConnectionSpec;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;
import p4.h;

/* JADX INFO: compiled from: RealRoutePlanner.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class RealRoutePlanner implements RoutePlanner {
    private final Address address;
    private final RealCall call;
    private final OkHttpClient client;
    private final f<RoutePlanner.Plan> deferredPlans;
    private final boolean doExtensiveHealthChecks;
    private Route nextRouteToTry;
    private RouteSelector.Selection routeSelection;
    private RouteSelector routeSelector;

    public RealRoutePlanner(OkHttpClient okHttpClient, Address address, RealCall realCall, RealInterceptorChain realInterceptorChain) {
        h.j(okHttpClient, "client");
        h.j(address, "address");
        h.j(realCall, "call");
        h.j(realInterceptorChain, "chain");
        this.client = okHttpClient;
        this.address = address;
        this.call = realCall;
        this.doExtensiveHealthChecks = !h.c(realInterceptorChain.getRequest$okhttp().method(), "GET");
        this.deferredPlans = new f<>();
    }

    private final Request createTunnelRequest(Route route) throws IOException {
        Request.Builder builderHeader = new Request.Builder().url(route.address().url()).method("CONNECT", null).header(Constants.Network.HOST_HEADER, _UtilJvmKt.toHostHeader(route.address().url(), true)).header("Proxy-Connection", "Keep-Alive").header(Constants.Network.USER_AGENT_HEADER, _UtilCommonKt.userAgent);
        Request requestBuild = !(builderHeader instanceof Request.Builder) ? builderHeader.build() : OkHttp3Instrumentation.build(builderHeader);
        Request requestAuthenticate = route.address().proxyAuthenticator().authenticate(route, new Response.Builder().request(requestBuild).protocol(Protocol.HTTP_1_1).code(HttpStatusCodesKt.HTTP_PROXY_AUTH).message("Preemptive Authenticate").sentRequestAtMillis(-1L).receivedResponseAtMillis(-1L).header("Proxy-Authenticate", "OkHttp-Preemptive").build());
        return requestAuthenticate == null ? requestBuild : requestAuthenticate;
    }

    private final ConnectPlan planConnect() throws IOException {
        Route route = this.nextRouteToTry;
        if (route != null) {
            this.nextRouteToTry = null;
            return planConnectToRoute$okhttp$default(this, route, null, 2, null);
        }
        RouteSelector.Selection selection = this.routeSelection;
        if (selection != null && selection.hasNext()) {
            return planConnectToRoute$okhttp$default(this, selection.next(), null, 2, null);
        }
        RouteSelector routeSelector = this.routeSelector;
        if (routeSelector == null) {
            routeSelector = new RouteSelector(getAddress(), this.call.getClient().getRouteDatabase$okhttp(), this.call, this.client.fastFallback(), this.call.getEventListener$okhttp());
            this.routeSelector = routeSelector;
        }
        if (!routeSelector.hasNext()) {
            throw new IOException("exhausted all routes");
        }
        RouteSelector.Selection next = routeSelector.next();
        this.routeSelection = next;
        if (this.call.isCanceled()) {
            throw new IOException("Canceled");
        }
        return planConnectToRoute$okhttp(next.next(), next.getRoutes());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConnectPlan planConnectToRoute$okhttp$default(RealRoutePlanner realRoutePlanner, Route route, List list, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            list = null;
        }
        return realRoutePlanner.planConnectToRoute$okhttp(route, list);
    }

    private final ReusePlan planReuseCallConnection() {
        Socket socketReleaseConnectionNoEvents$okhttp;
        RealConnection connection = this.call.getConnection();
        if (connection == null) {
            return null;
        }
        boolean zIsHealthy = connection.isHealthy(this.doExtensiveHealthChecks);
        synchronized (connection) {
            try {
                if (zIsHealthy) {
                    socketReleaseConnectionNoEvents$okhttp = (connection.getNoNewExchanges() || !sameHostAndPort(connection.route().address().url())) ? this.call.releaseConnectionNoEvents$okhttp() : null;
                } else {
                    connection.setNoNewExchanges(true);
                    socketReleaseConnectionNoEvents$okhttp = this.call.releaseConnectionNoEvents$okhttp();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.call.getConnection() != null) {
            if (socketReleaseConnectionNoEvents$okhttp == null) {
                return new ReusePlan(connection);
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        if (socketReleaseConnectionNoEvents$okhttp != null) {
            _UtilJvmKt.closeQuietly(socketReleaseConnectionNoEvents$okhttp);
        }
        this.call.getEventListener$okhttp().connectionReleased(this.call, connection);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReusePlan planReusePooledConnection$okhttp$default(RealRoutePlanner realRoutePlanner, ConnectPlan connectPlan, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            connectPlan = null;
        }
        if ((i10 & 2) != 0) {
            list = null;
        }
        return realRoutePlanner.planReusePooledConnection$okhttp(connectPlan, list);
    }

    private final Route retryRoute(RealConnection realConnection) {
        synchronized (realConnection) {
            if (realConnection.getRouteFailureCount$okhttp() != 0) {
                return null;
            }
            if (!realConnection.getNoNewExchanges()) {
                return null;
            }
            if (!_UtilJvmKt.canReuseConnectionFor(realConnection.route().address().url(), getAddress().url())) {
                return null;
            }
            return realConnection.route();
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public Address getAddress() {
        return this.address;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public f<RoutePlanner.Plan> getDeferredPlans() {
        return this.deferredPlans;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean hasNext(RealConnection realConnection) {
        RouteSelector routeSelector;
        Route routeRetryRoute;
        if ((!getDeferredPlans().isEmpty()) || this.nextRouteToTry != null) {
            return true;
        }
        if (realConnection != null && (routeRetryRoute = retryRoute(realConnection)) != null) {
            this.nextRouteToTry = routeRetryRoute;
            return true;
        }
        RouteSelector.Selection selection = this.routeSelection;
        boolean z10 = false;
        if (selection != null && selection.hasNext()) {
            z10 = true;
        }
        if (z10 || (routeSelector = this.routeSelector) == null) {
            return true;
        }
        return routeSelector.hasNext();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean isCanceled() {
        return this.call.isCanceled();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public RoutePlanner.Plan plan() throws IOException {
        ReusePlan reusePlanPlanReuseCallConnection = planReuseCallConnection();
        if (reusePlanPlanReuseCallConnection != null) {
            return reusePlanPlanReuseCallConnection;
        }
        ReusePlan reusePlanPlanReusePooledConnection$okhttp$default = planReusePooledConnection$okhttp$default(this, null, null, 3, null);
        if (reusePlanPlanReusePooledConnection$okhttp$default != null) {
            return reusePlanPlanReusePooledConnection$okhttp$default;
        }
        if (!getDeferredPlans().isEmpty()) {
            return getDeferredPlans().u();
        }
        ConnectPlan connectPlanPlanConnect = planConnect();
        ReusePlan reusePlanPlanReusePooledConnection$okhttp = planReusePooledConnection$okhttp(connectPlanPlanConnect, connectPlanPlanConnect.getRoutes$okhttp());
        return reusePlanPlanReusePooledConnection$okhttp != null ? reusePlanPlanReusePooledConnection$okhttp : connectPlanPlanConnect;
    }

    public final ConnectPlan planConnectToRoute$okhttp(Route route, List<Route> list) throws IOException {
        h.j(route, "route");
        if (route.address().sslSocketFactory() == null) {
            if (!route.address().connectionSpecs().contains(ConnectionSpec.CLEARTEXT)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String strHost = route.address().url().host();
            if (!Platform.Companion.get().isCleartextTrafficPermitted(strHost)) {
                throw new UnknownServiceException(d.c("CLEARTEXT communication to ", strHost, " not permitted by network security policy"));
            }
        } else if (route.address().protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        return new ConnectPlan(this.client, this.call, this, route, list, 0, route.requiresTunnel() ? createTunnelRequest(route) : null, -1, false);
    }

    public final ReusePlan planReusePooledConnection$okhttp(ConnectPlan connectPlan, List<Route> list) {
        RealConnection realConnectionCallAcquirePooledConnection = this.client.connectionPool().getDelegate$okhttp().callAcquirePooledConnection(this.doExtensiveHealthChecks, getAddress(), this.call, list, connectPlan != null && connectPlan.isReady());
        if (realConnectionCallAcquirePooledConnection == null) {
            return null;
        }
        if (connectPlan != null) {
            this.nextRouteToTry = connectPlan.getRoute();
            connectPlan.closeQuietly();
        }
        this.call.getEventListener$okhttp().connectionAcquired(this.call, realConnectionCallAcquirePooledConnection);
        return new ReusePlan(realConnectionCallAcquirePooledConnection);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean sameHostAndPort(HttpUrl httpUrl) {
        h.j(httpUrl, "url");
        HttpUrl httpUrlUrl = getAddress().url();
        return httpUrl.port() == httpUrlUrl.port() && h.c(httpUrl.host(), httpUrlUrl.host());
    }
}
