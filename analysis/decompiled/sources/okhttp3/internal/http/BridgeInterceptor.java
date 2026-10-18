package okhttp3.internal.http;

import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import de.q;
import de.w;
import java.io.IOException;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import p4.h;

/* JADX INFO: compiled from: BridgeInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(CookieJar cookieJar) {
        h.j(cookieJar, "cookieJar");
        this.cookieJar = cookieJar;
    }

    private final String cookieHeader(List<Cookie> list) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.L();
                throw null;
            }
            Cookie cookie = (Cookie) obj;
            if (i10 > 0) {
                sb2.append("; ");
            }
            sb2.append(cookie.name());
            sb2.append('=');
            sb2.append(cookie.value());
            i10 = i11;
        }
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        ResponseBody responseBodyBody;
        h.j(chain, "chain");
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                builderNewBuilder.header(Constants.Network.CONTENT_TYPE_HEADER, mediaTypeContentType.toString());
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                builderNewBuilder.header(Constants.Network.CONTENT_LENGTH_HEADER, String.valueOf(jContentLength));
                builderNewBuilder.removeHeader("Transfer-Encoding");
            } else {
                builderNewBuilder.header("Transfer-Encoding", "chunked");
                builderNewBuilder.removeHeader(Constants.Network.CONTENT_LENGTH_HEADER);
            }
        }
        boolean z10 = false;
        if (request.header(Constants.Network.HOST_HEADER) == null) {
            builderNewBuilder.header(Constants.Network.HOST_HEADER, _UtilJvmKt.toHostHeader$default(request.url(), false, 1, null));
        }
        if (request.header("Connection") == null) {
            builderNewBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null && request.header("Range") == null) {
            builderNewBuilder.header("Accept-Encoding", Constants.Network.ContentType.GZIP);
            z10 = true;
        }
        List<Cookie> listLoadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!listLoadForRequest.isEmpty()) {
            builderNewBuilder.header("Cookie", cookieHeader(listLoadForRequest));
        }
        if (request.header(Constants.Network.USER_AGENT_HEADER) == null) {
            builderNewBuilder.header(Constants.Network.USER_AGENT_HEADER, _UtilCommonKt.userAgent);
        }
        Request requestBuild = !(builderNewBuilder instanceof Request.Builder) ? builderNewBuilder.build() : OkHttp3Instrumentation.build(builderNewBuilder);
        Response responseProceed = chain.proceed(requestBuild);
        HttpHeaders.receiveHeaders(this.cookieJar, requestBuild.url(), responseProceed.headers());
        Response.Builder builderRequest = (!(responseProceed instanceof Response.Builder) ? responseProceed.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) responseProceed)).request(requestBuild);
        if (z10 && yd.o.Z(Constants.Network.ContentType.GZIP, Response.header$default(responseProceed, Constants.Network.CONTENT_ENCODING_HEADER, null, 2, null)) && HttpHeaders.promisesBody(responseProceed) && (responseBodyBody = responseProceed.body()) != null) {
            q qVar = new q(responseBodyBody.source());
            builderRequest.headers(responseProceed.headers().newBuilder().removeAll(Constants.Network.CONTENT_ENCODING_HEADER).removeAll(Constants.Network.CONTENT_LENGTH_HEADER).build());
            OkHttp3Instrumentation.body(builderRequest, new RealResponseBody(Response.header$default(responseProceed, Constants.Network.CONTENT_TYPE_HEADER, null, 2, null), -1L, w.b(qVar)));
        }
        return builderRequest.build();
    }
}
