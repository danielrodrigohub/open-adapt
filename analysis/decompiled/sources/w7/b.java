package w7;

import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;

/* JADX INFO: compiled from: OkHttpClient.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        h.j(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        o7.a aVar = g7.b.f7789h;
        if (aVar != null) {
            builderNewBuilder.addHeader("sessionid", aVar.f12355c);
            return chain.proceed(chain.request());
        }
        h.C("adaptConfig");
        throw null;
    }
}
