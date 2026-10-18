package okhttp3.internal.http;

import com.newrelic.agent.android.hybrid.data.HexAttribute;
import p4.h;

/* JADX INFO: compiled from: HttpMethod.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean invalidatesCache(String str) {
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
        return h.c(str, "POST") || h.c(str, "PATCH") || h.c(str, "PUT") || h.c(str, "DELETE") || h.c(str, "MOVE");
    }

    public static final boolean permitsRequestBody(String str) {
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
        return (h.c(str, "GET") || h.c(str, "HEAD")) ? false : true;
    }

    public static final boolean requiresRequestBody(String str) {
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
        return h.c(str, "POST") || h.c(str, "PUT") || h.c(str, "PATCH") || h.c(str, "PROPPATCH") || h.c(str, "REPORT");
    }

    public final boolean redirectsToGet(String str) {
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
        return !h.c(str, "PROPFIND");
    }

    public final boolean redirectsWithBody(String str) {
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
        return h.c(str, "PROPFIND");
    }
}
