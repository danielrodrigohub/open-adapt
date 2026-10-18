package vc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: TraceIdInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class g implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        h.j(chain, "chain");
        Request request = chain.request();
        if (request.header("X-B3-TraceId") != null) {
            return chain.proceed(request);
        }
        Request.Builder builderNewBuilder = request.newBuilder();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        do {
            i10++;
            sb2.append("0123456789abcdef".charAt((int) Math.floor(Math.random() * ((double) 16))));
        } while (i10 <= 15);
        String string = sb2.toString();
        h.i(string, "traceIdBuilder.toString()");
        builderNewBuilder.addHeader("X-B3-TraceId", string);
        return chain.proceed(OkHttp3Instrumentation.build(builderNewBuilder));
    }
}
