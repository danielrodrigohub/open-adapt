package okhttp3;

import a1.d;
import androidx.activity.k;
import androidx.lifecycle.o;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.hybrid.data.HexAttribute;
import fd.e;
import gd.q;
import gd.z;
import java.net.URL;
import java.util.List;
import java.util.Map;
import okhttp3.internal._RequestCommonKt;
import okhttp3.internal._UtilCommonKt;
import p4.h;
import rd.x;
import wd.b;

/* JADX INFO: compiled from: Request.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Request {
    private final RequestBody body;
    private final Headers headers;
    private CacheControl lazyCacheControl;
    private final String method;
    private final Map<b<?>, Object> tags;
    private final HttpUrl url;

    /* JADX INFO: compiled from: Request.kt */
    public static class Builder {
        private RequestBody body;
        private Headers.Builder headers;
        private String method;
        private Map<b<?>, ? extends Object> tags;
        private HttpUrl url;

        public Builder() {
            this.tags = q.f8071h;
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i10 & 1) != 0) {
                requestBody = _UtilCommonKt.getCommonEmptyRequestBody();
            }
            return builder.delete(requestBody);
        }

        public Builder addHeader(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            return _RequestCommonKt.commonAddHeader(this, str, str2);
        }

        public Request build() {
            return new Request(this);
        }

        public Builder cacheControl(CacheControl cacheControl) {
            h.j(cacheControl, "cacheControl");
            return _RequestCommonKt.commonCacheControl(this, cacheControl);
        }

        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        public Builder delete(RequestBody requestBody) {
            return _RequestCommonKt.commonDelete(this, requestBody);
        }

        public Builder get() {
            return _RequestCommonKt.commonGet(this);
        }

        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        public final String getMethod$okhttp() {
            return this.method;
        }

        public final Map<b<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        public Builder head() {
            return _RequestCommonKt.commonHead(this);
        }

        public Builder header(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            return _RequestCommonKt.commonHeader(this, str, str2);
        }

        public Builder headers(Headers headers) {
            h.j(headers, "headers");
            return _RequestCommonKt.commonHeaders(this, headers);
        }

        public Builder method(String str, RequestBody requestBody) {
            h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
            return _RequestCommonKt.commonMethod(this, str, requestBody);
        }

        public Builder patch(RequestBody requestBody) {
            h.j(requestBody, "body");
            return _RequestCommonKt.commonPatch(this, requestBody);
        }

        public Builder post(RequestBody requestBody) {
            h.j(requestBody, "body");
            return _RequestCommonKt.commonPost(this, requestBody);
        }

        public Builder put(RequestBody requestBody) {
            h.j(requestBody, "body");
            return _RequestCommonKt.commonPut(this, requestBody);
        }

        public final /* synthetic */ <T> Builder reifiedTag(T t10) {
            h.z();
            throw null;
        }

        public Builder removeHeader(String str) {
            h.j(str, "name");
            return _RequestCommonKt.commonRemoveHeader(this, str);
        }

        public final void setBody$okhttp(RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(Headers.Builder builder) {
            h.j(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(String str) {
            h.j(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(Map<b<?>, ? extends Object> map) {
            h.j(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        public <T> Builder tag(Class<? super T> cls, T t10) {
            h.j(cls, AnalyticsAttribute.TYPE_ATTRIBUTE);
            return _RequestCommonKt.commonTag(this, x.a(cls), t10);
        }

        public Builder url(HttpUrl httpUrl) {
            h.j(httpUrl, "url");
            this.url = httpUrl;
            return this;
        }

        public Builder url(String str) {
            h.j(str, "url");
            return url(HttpUrl.Companion.get(_RequestCommonKt.canonicalUrl(str)));
        }

        public final <T> Builder tag(b<T> bVar, T t10) {
            h.j(bVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
            return _RequestCommonKt.commonTag(this, bVar, t10);
        }

        public Builder url(URL url) {
            h.j(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String string = url.toString();
            h.i(string, "url.toString()");
            return url(companion.get(string));
        }

        public Builder tag(Object obj) {
            return _RequestCommonKt.commonTag(this, x.a(Object.class), obj);
        }

        public Builder(Request request) {
            h.j(request, "request");
            Map<b<?>, ? extends Object> map = q.f8071h;
            this.tags = map;
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            this.tags = request.getTags$okhttp().isEmpty() ? map : z.F(request.getTags$okhttp());
            this.headers = request.headers().newBuilder();
        }
    }

    public Request(Builder builder) {
        h.j(builder, "builder");
        HttpUrl url$okhttp = builder.getUrl$okhttp();
        if (url$okhttp == null) {
            throw new IllegalStateException("url == null".toString());
        }
        this.url = url$okhttp;
        this.method = builder.getMethod$okhttp();
        this.headers = builder.getHeaders$okhttp().build();
        this.body = builder.getBody$okhttp();
        this.tags = z.E(builder.getTags$okhttp());
    }

    /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
    public final RequestBody m138deprecated_body() {
        return this.body;
    }

    /* JADX INFO: renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m139deprecated_cacheControl() {
        return cacheControl();
    }

    /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
    public final Headers m140deprecated_headers() {
        return this.headers;
    }

    /* JADX INFO: renamed from: -deprecated_method, reason: not valid java name */
    public final String m141deprecated_method() {
        return this.method;
    }

    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final HttpUrl m142deprecated_url() {
        return this.url;
    }

    public final RequestBody body() {
        return this.body;
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    public final CacheControl getLazyCacheControl$okhttp() {
        return this.lazyCacheControl;
    }

    public final Map<b<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    public final String header(String str) {
        h.j(str, "name");
        return _RequestCommonKt.commonHeader(this, str);
    }

    public final Headers headers() {
        return this.headers;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    public final String method() {
        return this.method;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final /* synthetic */ <T> T reifiedTag() {
        h.z();
        throw null;
    }

    public final void setLazyCacheControl$okhttp(CacheControl cacheControl) {
        this.lazyCacheControl = cacheControl;
    }

    public final <T> T tag(Class<? extends T> cls) {
        h.j(cls, AnalyticsAttribute.TYPE_ATTRIBUTE);
        return (T) tag(x.a(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        StringBuilder sbC = a0.b.c("Request{method=");
        sbC.append(this.method);
        sbC.append(", url=");
        sbC.append(this.url);
        if (this.headers.size() != 0) {
            sbC.append(", headers=[");
            int i10 = 0;
            for (e<? extends String, ? extends String> eVar : this.headers) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    o.L();
                    throw null;
                }
                e<? extends String, ? extends String> eVar2 = eVar;
                String str = (String) eVar2.f7388h;
                String str2 = (String) eVar2.f7389i;
                if (i10 > 0) {
                    sbC.append(", ");
                }
                d.f(sbC, str, ':', str2);
                i10 = i11;
            }
            sbC.append(']');
        }
        if (!this.tags.isEmpty()) {
            sbC.append(", tags=");
            sbC.append(this.tags);
        }
        sbC.append('}');
        String string = sbC.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final HttpUrl url() {
        return this.url;
    }

    public final List<String> headers(String str) {
        h.j(str, "name");
        return _RequestCommonKt.commonHeaders(this, str);
    }

    public final <T> T tag(b<T> bVar) {
        h.j(bVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
        return (T) k.j(bVar).cast(this.tags.get(bVar));
    }

    public final Object tag() {
        return tag(x.a(Object.class));
    }

    public /* synthetic */ Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody, int i10, rd.h hVar) {
        this(httpUrl, (i10 & 2) != 0 ? Headers.Companion.of(new String[0]) : headers, (i10 & 4) != 0 ? "\u0000" : str, (i10 & 8) != 0 ? null : requestBody);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody) {
        this(new Builder().url(httpUrl).headers(headers).method(h.c(str, "\u0000") ? requestBody != null ? "POST" : "GET" : str, requestBody));
        h.j(httpUrl, "url");
        h.j(headers, "headers");
        h.j(str, HexAttribute.HEX_ATTR_JSERROR_METHOD);
    }
}
