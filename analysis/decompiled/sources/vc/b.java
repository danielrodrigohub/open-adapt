package vc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: BasicAuthInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f17014a;

    public b(a aVar) {
        this.f17014a = aVar;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        this.f17014a.c();
        return chain.proceed(!(builderNewBuilder instanceof Request.Builder) ? builderNewBuilder.build() : OkHttp3Instrumentation.build(builderNewBuilder));
    }
}
