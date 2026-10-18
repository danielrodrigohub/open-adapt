package vc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: GatewayHeaderAuthInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class c implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f17015a;

    public c(a aVar) {
        this.f17015a = aVar;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        if (request.header("appid") == null) {
            Request.Builder builderRemoveHeader = builderNewBuilder.removeHeader("appid");
            this.f17015a.b();
            builderRemoveHeader.addHeader("appid", "com.nike.adapt");
        }
        String accessToken = this.f17015a.getAccessToken();
        if (accessToken != null && request.header("Authorization") == null) {
            builderNewBuilder.removeHeader("Authorization").addHeader("Authorization", h.B("Bearer ", accessToken));
        }
        return chain.proceed(!(builderNewBuilder instanceof Request.Builder) ? builderNewBuilder.build() : OkHttp3Instrumentation.build(builderNewBuilder));
    }
}
