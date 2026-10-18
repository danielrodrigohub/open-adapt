package okhttp3.internal;

import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import de.c;
import de.f;
import java.io.IOException;
import java.util.List;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpStatusCodesKt;
import p4.h;
import qd.a;

/* JADX INFO: compiled from: -ResponseCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class _ResponseCommonKt {
    private static final void checkSupportResponse(String str, Response response) {
        if (response != null) {
            if (!(response.networkResponse() == null)) {
                throw new IllegalArgumentException(d.c(str, ".networkResponse != null").toString());
            }
            if (!(response.cacheResponse() == null)) {
                throw new IllegalArgumentException(d.c(str, ".cacheResponse != null").toString());
            }
            if (!(response.priorResponse() == null)) {
                throw new IllegalArgumentException(d.c(str, ".priorResponse != null").toString());
            }
        }
    }

    public static final Response.Builder commonAddHeader(Response.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        builder.getHeaders$okhttp().add(str, str2);
        return builder;
    }

    public static final Response.Builder commonBody(Response.Builder builder, ResponseBody responseBody) {
        h.j(builder, "<this>");
        h.j(responseBody, "body");
        builder.setBody$okhttp(responseBody);
        return builder;
    }

    public static final Response.Builder commonCacheResponse(Response.Builder builder, Response response) {
        h.j(builder, "<this>");
        checkSupportResponse("cacheResponse", response);
        builder.setCacheResponse$okhttp(response);
        return builder;
    }

    public static final void commonClose(Response response) {
        h.j(response, "<this>");
        response.body().close();
    }

    public static final Response.Builder commonCode(Response.Builder builder, int i10) {
        h.j(builder, "<this>");
        builder.setCode$okhttp(i10);
        return builder;
    }

    public static final String commonHeader(Response response, String str, String str2) {
        h.j(response, "<this>");
        h.j(str, "name");
        String str3 = response.headers().get(str);
        return str3 == null ? str2 : str3;
    }

    public static final List<String> commonHeaders(Response response, String str) {
        h.j(response, "<this>");
        h.j(str, "name");
        return response.headers().values(str);
    }

    public static final Response.Builder commonMessage(Response.Builder builder, String str) {
        h.j(builder, "<this>");
        h.j(str, "message");
        builder.setMessage$okhttp(str);
        return builder;
    }

    public static final Response.Builder commonNetworkResponse(Response.Builder builder, Response response) {
        h.j(builder, "<this>");
        checkSupportResponse("networkResponse", response);
        builder.setNetworkResponse$okhttp(response);
        return builder;
    }

    public static final Response.Builder commonNewBuilder(Response response) {
        h.j(response, "<this>");
        return new Response.Builder(response);
    }

    public static final ResponseBody commonPeekBody(Response response, long j10) throws IOException {
        h.j(response, "<this>");
        f fVarQ = response.body().source().Q();
        c cVar = new c();
        fVarQ.o(j10);
        cVar.v0(fVarQ, Math.min(j10, fVarQ.b().f6199i));
        return ResponseBody.Companion.create(cVar, response.body().contentType(), cVar.f6199i);
    }

    public static final Response.Builder commonPriorResponse(Response.Builder builder, Response response) {
        h.j(builder, "<this>");
        builder.setPriorResponse$okhttp(response);
        return builder;
    }

    public static final Response.Builder commonProtocol(Response.Builder builder, Protocol protocol) {
        h.j(builder, "<this>");
        h.j(protocol, "protocol");
        builder.setProtocol$okhttp(protocol);
        return builder;
    }

    public static final Response.Builder commonRemoveHeader(Response.Builder builder, String str) {
        h.j(builder, "<this>");
        h.j(str, "name");
        builder.getHeaders$okhttp().removeAll(str);
        return builder;
    }

    public static final Response.Builder commonRequest(Response.Builder builder, Request request) {
        h.j(builder, "<this>");
        h.j(request, "request");
        builder.setRequest$okhttp(request);
        return builder;
    }

    public static final String commonToString(Response response) {
        h.j(response, "<this>");
        return "Response{protocol=" + response.protocol() + ", code=" + response.code() + ", message=" + response.message() + ", url=" + response.request().url() + '}';
    }

    public static final Response.Builder commonTrailers(Response.Builder builder, a<Headers> aVar) {
        h.j(builder, "<this>");
        h.j(aVar, "trailersFn");
        builder.setTrailersFn$okhttp(aVar);
        return builder;
    }

    public static final CacheControl getCommonCacheControl(Response response) {
        h.j(response, "<this>");
        CacheControl lazyCacheControl$okhttp = response.getLazyCacheControl$okhttp();
        if (lazyCacheControl$okhttp != null) {
            return lazyCacheControl$okhttp;
        }
        CacheControl cacheControl = CacheControl.Companion.parse(response.headers());
        response.setLazyCacheControl$okhttp(cacheControl);
        return cacheControl;
    }

    public static final boolean getCommonIsRedirect(Response response) {
        h.j(response, "<this>");
        int iCode = response.code();
        if (iCode != 307 && iCode != 308) {
            switch (iCode) {
                case HttpStatusCodesKt.HTTP_MULT_CHOICE /* 300 */:
                case HttpStatusCodesKt.HTTP_MOVED_PERM /* 301 */:
                case HttpStatusCodesKt.HTTP_MOVED_TEMP /* 302 */:
                case HttpStatusCodesKt.HTTP_SEE_OTHER /* 303 */:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public static final boolean getCommonIsSuccessful(Response response) {
        h.j(response, "<this>");
        int iCode = response.code();
        return 200 <= iCode && iCode < 300;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Response stripBody(Response response) {
        h.j(response, "<this>");
        Response.Builder builderNewBuilder = !(response instanceof Response.Builder) ? response.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) response);
        UnreadableResponseBody unreadableResponseBody = new UnreadableResponseBody(response.body().contentType(), response.body().contentLength());
        return (!(builderNewBuilder instanceof Response.Builder) ? builderNewBuilder.body(unreadableResponseBody) : OkHttp3Instrumentation.body(builderNewBuilder, unreadableResponseBody)).build();
    }

    public static final Response.Builder commonHeader(Response.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        builder.getHeaders$okhttp().set(str, str2);
        return builder;
    }

    public static final Response.Builder commonHeaders(Response.Builder builder, Headers headers) {
        h.j(builder, "<this>");
        h.j(headers, "headers");
        builder.setHeaders$okhttp(headers.newBuilder());
        return builder;
    }
}
