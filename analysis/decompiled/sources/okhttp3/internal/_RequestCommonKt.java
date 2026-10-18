package okhttp3.internal;

import a0.b;
import a0.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.hybrid.data.HexAttribute;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.internal.http.HttpMethod;
import p4.h;
import rd.b0;
import yd.o;

/* JADX INFO: compiled from: -RequestCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _RequestCommonKt {
    public static final String canonicalUrl(String str) {
        h.j(str, "url");
        if (o.g0(str, "ws:", true)) {
            StringBuilder sbC = b.c("http:");
            String strSubstring = str.substring(3);
            h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            sbC.append(strSubstring);
            return sbC.toString();
        }
        if (!o.g0(str, "wss:", true)) {
            return str;
        }
        StringBuilder sbC2 = b.c("https:");
        String strSubstring2 = str.substring(4);
        h.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
        sbC2.append(strSubstring2);
        return sbC2.toString();
    }

    public static final Request.Builder commonAddHeader(Request.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        builder.getHeaders$okhttp().add(str, str2);
        return builder;
    }

    public static final CacheControl commonCacheControl(Request request) {
        h.j(request, "<this>");
        CacheControl lazyCacheControl$okhttp = request.getLazyCacheControl$okhttp();
        if (lazyCacheControl$okhttp != null) {
            return lazyCacheControl$okhttp;
        }
        CacheControl cacheControl = CacheControl.Companion.parse(request.headers());
        request.setLazyCacheControl$okhttp(cacheControl);
        return cacheControl;
    }

    public static final Request.Builder commonDelete(Request.Builder builder, RequestBody requestBody) {
        h.j(builder, "<this>");
        return builder.method("DELETE", requestBody);
    }

    public static final Request.Builder commonGet(Request.Builder builder) {
        h.j(builder, "<this>");
        return builder.method("GET", null);
    }

    public static final Request.Builder commonHead(Request.Builder builder) {
        h.j(builder, "<this>");
        return builder.method("HEAD", null);
    }

    public static final String commonHeader(Request request, String str) {
        h.j(request, "<this>");
        h.j(str, "name");
        return request.headers().get(str);
    }

    public static final List<String> commonHeaders(Request request, String str) {
        h.j(request, "<this>");
        h.j(str, "name");
        return request.headers().values(str);
    }

    public static final Request.Builder commonMethod(Request.Builder builder, String str, RequestBody requestBody) {
        h.j(builder, "<this>");
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
        if (!(str.length() > 0)) {
            throw new IllegalArgumentException("method.isEmpty() == true".toString());
        }
        if (requestBody == null) {
            if (!(true ^ HttpMethod.requiresRequestBody(str))) {
                throw new IllegalArgumentException(d.c("method ", str, " must have a request body.").toString());
            }
        } else if (!HttpMethod.permitsRequestBody(str)) {
            throw new IllegalArgumentException(d.c("method ", str, " must not have a request body.").toString());
        }
        builder.setMethod$okhttp(str);
        builder.setBody$okhttp(requestBody);
        return builder;
    }

    public static final Request.Builder commonNewBuilder(Request request) {
        h.j(request, "<this>");
        return new Request.Builder(request);
    }

    public static final Request.Builder commonPatch(Request.Builder builder, RequestBody requestBody) {
        h.j(builder, "<this>");
        h.j(requestBody, "body");
        return builder.method("PATCH", requestBody);
    }

    public static final Request.Builder commonPost(Request.Builder builder, RequestBody requestBody) {
        h.j(builder, "<this>");
        h.j(requestBody, "body");
        return builder.method("POST", requestBody);
    }

    public static final Request.Builder commonPut(Request.Builder builder, RequestBody requestBody) {
        h.j(builder, "<this>");
        h.j(requestBody, "body");
        return builder.method("PUT", requestBody);
    }

    public static final Request.Builder commonRemoveHeader(Request.Builder builder, String str) {
        h.j(builder, "<this>");
        h.j(str, "name");
        builder.getHeaders$okhttp().removeAll(str);
        return builder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Request.Builder commonTag(Request.Builder builder, wd.b<T> bVar, T t10) {
        Map<wd.b<?>, ? extends Object> mapB;
        h.j(builder, "<this>");
        h.j(bVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
        if (t10 != 0) {
            if (builder.getTags$okhttp().isEmpty()) {
                mapB = new LinkedHashMap<>();
                builder.setTags$okhttp(mapB);
            } else {
                mapB = b0.b(builder.getTags$okhttp());
            }
            mapB.put(bVar, t10);
        } else if (!builder.getTags$okhttp().isEmpty()) {
            b0.b(builder.getTags$okhttp()).remove(bVar);
        }
        return builder;
    }

    public static final Request.Builder commonHeader(Request.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        builder.getHeaders$okhttp().set(str, str2);
        return builder;
    }

    public static final Request.Builder commonHeaders(Request.Builder builder, Headers headers) {
        h.j(builder, "<this>");
        h.j(headers, "headers");
        builder.setHeaders$okhttp(headers.newBuilder());
        return builder;
    }

    public static final Request.Builder commonCacheControl(Request.Builder builder, CacheControl cacheControl) {
        h.j(builder, "<this>");
        h.j(cacheControl, "cacheControl");
        String string = cacheControl.toString();
        return string.length() == 0 ? builder.removeHeader("Cache-Control") : builder.header("Cache-Control", string);
    }
}
