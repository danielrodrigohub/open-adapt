package tc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: UserAgentInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final sc.a f15595a;

    public a(sc.a aVar) {
        this.f15595a = aVar;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        Request.Builder builderHeader = chain.request().newBuilder().header(Constants.Network.USER_AGENT_HEADER, this.f15595a.f15266a);
        return chain.proceed(!(builderHeader instanceof Request.Builder) ? builderHeader.build() : OkHttp3Instrumentation.build(builderHeader));
    }
}
