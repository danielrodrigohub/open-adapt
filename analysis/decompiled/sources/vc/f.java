package vc;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;
import yd.s;

/* JADX INFO: compiled from: OAuthRefreshInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class f implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17019a = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f17020b;

    public f(a aVar) {
        this.f17020b = aVar;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        Request request = chain.request();
        Response responseProceed = chain.proceed(request);
        int i10 = 0;
        while (!responseProceed.isSuccessful() && responseProceed.code() == 401 && i10 < this.f17019a) {
            String strA = this.f17020b.a();
            i10++;
            if (strA != null) {
                h.j(request, "request");
                String strHeader = request.header("Authorization");
                if (strHeader == null ? false : s.i0(strHeader, "Bearer ")) {
                    String strHeader2 = request.header("Authorization");
                    if (h.c(strHeader2 != null ? Boolean.valueOf(s.i0(strHeader2, "Bearer ")) : null, Boolean.TRUE)) {
                        Request.Builder builderAddHeader = request.newBuilder().removeHeader("Authorization").addHeader("Authorization", h.B("Bearer ", strA));
                        request = !(builderAddHeader instanceof Request.Builder) ? builderAddHeader.build() : OkHttp3Instrumentation.build(builderAddHeader);
                    }
                }
                responseProceed.close();
                responseProceed = chain.proceed(request);
            }
        }
        return responseProceed;
    }
}
