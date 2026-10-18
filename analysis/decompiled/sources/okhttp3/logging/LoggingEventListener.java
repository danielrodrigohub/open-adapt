package okhttp3.logging;

import a0.b;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import rd.h;

/* JADX INFO: compiled from: LoggingEventListener.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, h hVar) {
        this(logger);
    }

    private final void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        this.logger.log('[' + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "cachedResponse");
        logWithTime("cacheConditionalHit: " + response);
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "response");
        logWithTime("cacheHit: " + response);
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        p4.h.j(call, "call");
        logWithTime("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        p4.h.j(call, "call");
        logWithTime("callEnd");
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(iOException, "ioe");
        logWithTime("callFailed: " + iOException);
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        p4.h.j(call, "call");
        this.startNs = System.nanoTime();
        StringBuilder sbC = b.c("callStart: ");
        sbC.append(call.request());
        logWithTime(sbC.toString());
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        p4.h.j(call, "call");
        logWithTime("canceled");
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        p4.h.j(call, "call");
        p4.h.j(inetSocketAddress, "inetSocketAddress");
        p4.h.j(proxy, "proxy");
        logWithTime("connectEnd: " + protocol);
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(inetSocketAddress, "inetSocketAddress");
        p4.h.j(proxy, "proxy");
        p4.h.j(iOException, "ioe");
        logWithTime("connectFailed: " + protocol + SafeJsonPrimitive.NULL_CHAR + iOException);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        p4.h.j(call, "call");
        p4.h.j(inetSocketAddress, "inetSocketAddress");
        p4.h.j(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + SafeJsonPrimitive.NULL_CHAR + proxy);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        p4.h.j(call, "call");
        p4.h.j(connection, "connection");
        logWithTime("connectionAcquired: " + connection);
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        p4.h.j(call, "call");
        p4.h.j(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String str, List<? extends InetAddress> list) {
        p4.h.j(call, "call");
        p4.h.j(str, "domainName");
        p4.h.j(list, "inetAddressList");
        logWithTime("dnsEnd: " + list);
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String str) {
        p4.h.j(call, "call");
        p4.h.j(str, "domainName");
        logWithTime("dnsStart: " + str);
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<? extends Proxy> list) {
        p4.h.j(call, "call");
        p4.h.j(httpUrl, "url");
        p4.h.j(list, "proxies");
        logWithTime("proxySelectEnd: " + list);
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        p4.h.j(call, "call");
        p4.h.j(httpUrl, "url");
        logWithTime("proxySelectStart: " + httpUrl);
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j10) {
        p4.h.j(call, "call");
        logWithTime("requestBodyEnd: byteCount=" + j10);
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        p4.h.j(call, "call");
        logWithTime("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(iOException, "ioe");
        logWithTime("requestFailed: " + iOException);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        p4.h.j(call, "call");
        p4.h.j(request, "request");
        logWithTime("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        p4.h.j(call, "call");
        logWithTime("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j10) {
        p4.h.j(call, "call");
        logWithTime("responseBodyEnd: byteCount=" + j10);
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        p4.h.j(call, "call");
        logWithTime("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(iOException, "ioe");
        logWithTime("responseFailed: " + iOException);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "response");
        logWithTime("responseHeadersEnd: " + response);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        p4.h.j(call, "call");
        logWithTime("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "response");
        logWithTime("satisfactionFailure: " + response);
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        p4.h.j(call, "call");
        logWithTime("secureConnectEnd: " + handshake);
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        p4.h.j(call, "call");
        logWithTime("secureConnectStart");
    }

    /* JADX INFO: compiled from: LoggingEventListener.kt */
    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Factory(HttpLoggingInterceptor.Logger logger) {
            p4.h.j(logger, "logger");
            this.logger = logger;
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener create(Call call) {
            p4.h.j(call, "call");
            return new LoggingEventListener(this.logger, null);
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i10, h hVar) {
            this((i10 & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }
    }
}
