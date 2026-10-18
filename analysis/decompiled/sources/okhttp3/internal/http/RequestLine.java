package okhttp3.internal.http;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.net.Proxy;
import okhttp3.HttpUrl;
import okhttp3.Request;
import p4.h;

/* JADX INFO: compiled from: RequestLine.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestLine {
    public static final RequestLine INSTANCE = new RequestLine();

    private RequestLine() {
    }

    private final boolean includeAuthorityInRequestLine(Request request, Proxy.Type type) {
        return !request.isHttps() && type == Proxy.Type.HTTP;
    }

    public final String get(Request request, Proxy.Type type) {
        h.j(request, "request");
        h.j(type, "proxyType");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(request.method());
        sb2.append(SafeJsonPrimitive.NULL_CHAR);
        RequestLine requestLine = INSTANCE;
        if (requestLine.includeAuthorityInRequestLine(request, type)) {
            sb2.append(request.url());
        } else {
            sb2.append(requestLine.requestPath(request.url()));
        }
        sb2.append(" HTTP/1.1");
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String requestPath(HttpUrl httpUrl) {
        h.j(httpUrl, "url");
        String strEncodedPath = httpUrl.encodedPath();
        String strEncodedQuery = httpUrl.encodedQuery();
        if (strEncodedQuery == null) {
            return strEncodedPath;
        }
        return strEncodedPath + '?' + strEncodedQuery;
    }
}
