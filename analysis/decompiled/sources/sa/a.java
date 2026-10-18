package sa;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import java.util.regex.Pattern;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;
import v9.t;
import yd.s;

/* JADX INFO: compiled from: AdaptKitOAuthInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15265a = new a();

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        h.j(chain, "chain");
        Request request = chain.request();
        Response responseProceed = chain.proceed(request);
        int i10 = 0;
        while (!responseProceed.isSuccessful() && responseProceed.code() == 401 && i10 < 1) {
            String strInvoke = t.f16822a.c().f10952a.c().invoke();
            i10++;
            if (strInvoke != null) {
                h.j(request, "request");
                if (request.url().queryParameterNames().contains("access_token")) {
                    Request.Builder builderNewBuilder = request.newBuilder();
                    String string = request.url().toString();
                    Pattern patternCompile = Pattern.compile("(?i)access_token=[^&]+");
                    h.i(patternCompile, "compile(pattern)");
                    String str = "access_token=" + strInvoke;
                    h.j(string, "input");
                    h.j(str, "replacement");
                    String strReplaceAll = patternCompile.matcher(string).replaceAll(str);
                    h.i(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                    Request.Builder builderUrl = builderNewBuilder.url(strReplaceAll);
                    request = !(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl);
                }
                h.j(request, "request");
                String strHeader = request.header("Authorization");
                if (strHeader != null ? s.i0(strHeader, "Bearer ") : false) {
                    String strHeader2 = request.header("Authorization");
                    if (h.c(strHeader2 != null ? Boolean.valueOf(s.i0(strHeader2, "Bearer ")) : null, Boolean.TRUE)) {
                        Request.Builder builderAddHeader = request.newBuilder().removeHeader("Authorization").addHeader("Authorization", "Bearer " + strInvoke);
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
