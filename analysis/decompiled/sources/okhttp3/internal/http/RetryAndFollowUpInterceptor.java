package okhttp3.internal.http;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import gd.n;
import gd.p;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._ResponseCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http2.ConnectionShutdownException;
import rd.h;

/* JADX INFO: compiled from: RetryAndFollowUpInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_FOLLOW_UPS = 20;
    private final OkHttpClient client;

    /* JADX INFO: compiled from: RetryAndFollowUpInterceptor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient) {
        p4.h.j(okHttpClient, "client");
        this.client = okHttpClient;
    }

    private final Request buildRedirectRequest(Response response, String str) {
        String strHeader$default;
        HttpUrl httpUrlResolve;
        if (!this.client.followRedirects() || (strHeader$default = Response.header$default(response, "Location", null, 2, null)) == null || (httpUrlResolve = response.request().url().resolve(strHeader$default)) == null) {
            return null;
        }
        if (!p4.h.c(httpUrlResolve.scheme(), response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(str)) {
            int iCode = response.code();
            HttpMethod httpMethod = HttpMethod.INSTANCE;
            boolean z10 = httpMethod.redirectsWithBody(str) || iCode == 308 || iCode == 307;
            if (!httpMethod.redirectsToGet(str) || iCode == 308 || iCode == 307) {
                builderNewBuilder.method(str, z10 ? response.request().body() : null);
            } else {
                builderNewBuilder.method("GET", null);
            }
            if (!z10) {
                builderNewBuilder.removeHeader("Transfer-Encoding");
                builderNewBuilder.removeHeader(Constants.Network.CONTENT_LENGTH_HEADER);
                builderNewBuilder.removeHeader(Constants.Network.CONTENT_TYPE_HEADER);
            }
        }
        if (!_UtilJvmKt.canReuseConnectionFor(response.request().url(), httpUrlResolve)) {
            builderNewBuilder.removeHeader("Authorization");
        }
        Request.Builder builderUrl = builderNewBuilder.url(httpUrlResolve);
        return !(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl);
    }

    private final Request followUpRequest(Response response, Exchange exchange) throws IOException {
        RealConnection connection$okhttp;
        Route route = (exchange == null || (connection$okhttp = exchange.getConnection$okhttp()) == null) ? null : connection$okhttp.route();
        int iCode = response.code();
        String strMethod = response.request().method();
        if (iCode != 307 && iCode != 308) {
            if (iCode == 401) {
                return this.client.authenticator().authenticate(route, response);
            }
            if (iCode == 421) {
                RequestBody requestBodyBody = response.request().body();
                if ((requestBodyBody != null && requestBodyBody.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                    return null;
                }
                exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                return response.request();
            }
            if (iCode == 503) {
                Response responsePriorResponse = response.priorResponse();
                if ((responsePriorResponse == null || responsePriorResponse.code() != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                    return response.request();
                }
                return null;
            }
            if (iCode == 407) {
                p4.h.g(route);
                if (route.proxy().type() == Proxy.Type.HTTP) {
                    return this.client.proxyAuthenticator().authenticate(route, response);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iCode == 408) {
                if (!this.client.retryOnConnectionFailure()) {
                    return null;
                }
                RequestBody requestBodyBody2 = response.request().body();
                if (requestBodyBody2 != null && requestBodyBody2.isOneShot()) {
                    return null;
                }
                Response responsePriorResponse2 = response.priorResponse();
                if ((responsePriorResponse2 == null || responsePriorResponse2.code() != 408) && retryAfter(response, 0) <= 0) {
                    return response.request();
                }
                return null;
            }
            switch (iCode) {
                case HttpStatusCodesKt.HTTP_MULT_CHOICE /* 300 */:
                case HttpStatusCodesKt.HTTP_MOVED_PERM /* 301 */:
                case HttpStatusCodesKt.HTTP_MOVED_TEMP /* 302 */:
                case HttpStatusCodesKt.HTTP_SEE_OTHER /* 303 */:
                    break;
                default:
                    return null;
            }
        }
        return buildRedirectRequest(response, strMethod);
    }

    private final boolean isRecoverable(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            return (iOException instanceof SocketTimeoutException) && !z10;
        }
        return (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final boolean recover(IOException iOException, RealCall realCall, Request request, boolean z10) {
        if (this.client.retryOnConnectionFailure()) {
            return !(z10 && requestIsOneShot(iOException, request)) && isRecoverable(iOException, z10) && realCall.retryAfterFailure();
        }
        return false;
    }

    private final boolean requestIsOneShot(IOException iOException, Request request) {
        RequestBody requestBodyBody = request.body();
        return (requestBodyBody != null && requestBodyBody.isOneShot()) || (iOException instanceof FileNotFoundException);
    }

    private final int retryAfter(Response response, int i10) {
        String strHeader$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (strHeader$default == null) {
            return i10;
        }
        Pattern patternCompile = Pattern.compile("\\d+");
        p4.h.i(patternCompile, "compile(pattern)");
        if (!patternCompile.matcher(strHeader$default).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strHeader$default);
        p4.h.i(numValueOf, "valueOf(header)");
        return numValueOf.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        p4.h.j(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RealCall call$okhttp = realInterceptorChain.getCall$okhttp();
        List listH0 = p.f8070h;
        Response responseBuild = null;
        boolean z10 = true;
        int i10 = 0;
        while (true) {
            call$okhttp.enterNetworkInterceptorExchange(request$okhttp, z10, realInterceptorChain);
            try {
                if (call$okhttp.isCanceled()) {
                    throw new IOException("Canceled");
                }
                try {
                    Response responseProceed = realInterceptorChain.proceed(request$okhttp);
                    responseBuild = (!(responseProceed instanceof Response.Builder) ? responseProceed.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) responseProceed)).request(request$okhttp).priorResponse(responseBuild != null ? _ResponseCommonKt.stripBody(responseBuild) : null).build();
                    Exchange interceptorScopedExchange$okhttp = call$okhttp.getInterceptorScopedExchange$okhttp();
                    Request requestFollowUpRequest = followUpRequest(responseBuild, interceptorScopedExchange$okhttp);
                    if (requestFollowUpRequest == null) {
                        if (interceptorScopedExchange$okhttp != null && interceptorScopedExchange$okhttp.isDuplex$okhttp()) {
                            call$okhttp.timeoutEarlyExit();
                        }
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(false);
                        return responseBuild;
                    }
                    RequestBody requestBodyBody = requestFollowUpRequest.body();
                    if (requestBodyBody != null && requestBodyBody.isOneShot()) {
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(false);
                        return responseBuild;
                    }
                    _UtilCommonKt.closeQuietly(responseBuild.body());
                    i10++;
                    if (i10 > 20) {
                        throw new ProtocolException("Too many follow-up requests: " + i10);
                    }
                    call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                    request$okhttp = requestFollowUpRequest;
                    z10 = true;
                } catch (IOException e10) {
                    if (!recover(e10, call$okhttp, request$okhttp, !(e10 instanceof ConnectionShutdownException))) {
                        throw _UtilCommonKt.withSuppressed(e10, listH0);
                    }
                    listH0 = n.h0(listH0, e10);
                    call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                    z10 = false;
                }
            } catch (Throwable th) {
                call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                throw th;
            }
        }
    }
}
