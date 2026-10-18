package na;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import p4.h;
import qd.l;
import v9.t;

/* JADX INFO: compiled from: BaseServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OkHttpClient f12030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f12031b = "https://api.nike.com";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaType f12032c = MediaType.Companion.parse("application/json; charset=utf-8");

    public final Request c(l<? super Request.Builder, ? extends Request.Builder> lVar) {
        h.j(lVar, "builder");
        Request.Builder builderInvoke = lVar.invoke(new Request.Builder().addHeader("Accept", Constants.Network.ContentType.JSON).addHeader("charset", "utf-8").addHeader("Accept-Charset", "utf-8").addHeader("Authorization", "Bearer " + t.f16822a.c().f10952a.b().invoke()));
        return !(builderInvoke instanceof Request.Builder) ? builderInvoke.build() : OkHttp3Instrumentation.build(builderInvoke);
    }

    public final OkHttpClient d() {
        OkHttpClient okHttpClient = this.f12030a;
        if (okHttpClient != null) {
            return okHttpClient;
        }
        h.C("okHttpClient");
        throw null;
    }
}
