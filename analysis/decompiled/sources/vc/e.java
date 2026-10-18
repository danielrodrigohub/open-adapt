package vc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: NikeCallerIdInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class e implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17018b;

    public e(String str, String str2) {
        this.f17017a = str;
        this.f17018b = str2;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        if (chain.request().header("nike-api-caller-id") != null) {
            return chain.proceed(chain.request());
        }
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        StringBuilder sbC = a0.b.c("nike:");
        sbC.append(this.f17017a);
        sbC.append(":android:");
        sbC.append(this.f17018b);
        builderNewBuilder.addHeader("nike-api-caller-id", sbC.toString());
        return chain.proceed(OkHttp3Instrumentation.build(builderNewBuilder));
    }
}
