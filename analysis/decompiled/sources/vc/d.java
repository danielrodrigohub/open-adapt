package vc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;
import yd.o;

/* JADX INFO: compiled from: NikeAppIdInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class d implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17016a;

    public d(String str) {
        this.f17016a = str;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        String strHeader = chain.request().header("appid");
        if (!(strHeader == null || o.b0(strHeader))) {
            return chain.proceed(chain.request());
        }
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        builderNewBuilder.removeHeader("appid").addHeader("appid", this.f17016a);
        return chain.proceed(OkHttp3Instrumentation.build(builderNewBuilder));
    }
}
