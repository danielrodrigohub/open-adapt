package lb;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: GzipRequestInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        Request request = chain.request();
        if (request.body() == null || request.header(Constants.Network.CONTENT_ENCODING_HEADER) != null) {
            return chain.proceed(request);
        }
        Request.Builder builderMethod = request.newBuilder().header(Constants.Network.CONTENT_ENCODING_HEADER, Constants.Network.ContentType.GZIP).method(request.method(), new a(request.body()));
        return chain.proceed(!(builderMethod instanceof Request.Builder) ? builderMethod.build() : OkHttp3Instrumentation.build(builderMethod));
    }
}
