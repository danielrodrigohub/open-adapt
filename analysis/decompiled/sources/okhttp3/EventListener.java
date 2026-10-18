package okhttp3;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import rd.h;

/* JADX INFO: compiled from: EventListener.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    /* JADX INFO: compiled from: EventListener.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: EventListener.kt */
    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "cachedResponse");
    }

    public void cacheHit(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "response");
    }

    public void cacheMiss(Call call) {
        p4.h.j(call, "call");
    }

    public void callEnd(Call call) {
        p4.h.j(call, "call");
    }

    public void callFailed(Call call, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(iOException, "ioe");
    }

    public void callStart(Call call) {
        p4.h.j(call, "call");
    }

    public void canceled(Call call) {
        p4.h.j(call, "call");
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        p4.h.j(call, "call");
        p4.h.j(inetSocketAddress, "inetSocketAddress");
        p4.h.j(proxy, "proxy");
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(inetSocketAddress, "inetSocketAddress");
        p4.h.j(proxy, "proxy");
        p4.h.j(iOException, "ioe");
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        p4.h.j(call, "call");
        p4.h.j(inetSocketAddress, "inetSocketAddress");
        p4.h.j(proxy, "proxy");
    }

    public void connectionAcquired(Call call, Connection connection) {
        p4.h.j(call, "call");
        p4.h.j(connection, "connection");
    }

    public void connectionReleased(Call call, Connection connection) {
        p4.h.j(call, "call");
        p4.h.j(connection, "connection");
    }

    public void dnsEnd(Call call, String str, List<InetAddress> list) {
        p4.h.j(call, "call");
        p4.h.j(str, "domainName");
        p4.h.j(list, "inetAddressList");
    }

    public void dnsStart(Call call, String str) {
        p4.h.j(call, "call");
        p4.h.j(str, "domainName");
    }

    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<Proxy> list) {
        p4.h.j(call, "call");
        p4.h.j(httpUrl, "url");
        p4.h.j(list, "proxies");
    }

    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        p4.h.j(call, "call");
        p4.h.j(httpUrl, "url");
    }

    public void requestBodyEnd(Call call, long j10) {
        p4.h.j(call, "call");
    }

    public void requestBodyStart(Call call) {
        p4.h.j(call, "call");
    }

    public void requestFailed(Call call, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(iOException, "ioe");
    }

    public void requestHeadersEnd(Call call, Request request) {
        p4.h.j(call, "call");
        p4.h.j(request, "request");
    }

    public void requestHeadersStart(Call call) {
        p4.h.j(call, "call");
    }

    public void responseBodyEnd(Call call, long j10) {
        p4.h.j(call, "call");
    }

    public void responseBodyStart(Call call) {
        p4.h.j(call, "call");
    }

    public void responseFailed(Call call, IOException iOException) {
        p4.h.j(call, "call");
        p4.h.j(iOException, "ioe");
    }

    public void responseHeadersEnd(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "response");
    }

    public void responseHeadersStart(Call call) {
        p4.h.j(call, "call");
    }

    public void satisfactionFailure(Call call, Response response) {
        p4.h.j(call, "call");
        p4.h.j(response, "response");
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        p4.h.j(call, "call");
    }

    public void secureConnectStart(Call call) {
        p4.h.j(call, "call");
    }
}
