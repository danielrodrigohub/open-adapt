package ra;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: AdaptKitFirmwareServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class e extends na.b implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e f14745d = new e();

    /* JADX INFO: compiled from: AdaptKitFirmwareServiceApi.kt */
    public static final class a extends o implements l<Request.Builder, Request.Builder> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ fb.c f14746h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(fb.c cVar) {
            super(1);
            this.f14746h = cVar;
        }

        @Override // qd.l
        public final Request.Builder invoke(Request.Builder builder) {
            Request.Builder builder2 = builder;
            h.j(builder2, "$this$generateOkHttpRequestBuilder");
            return builder2.url(e.f14745d.f12031b + "/nikeadapt/firmware/adaptfootwear/" + this.f14746h + "?platform=aos").get();
        }
    }

    @Override // ra.d
    public final va.a a(fb.c cVar) throws qa.a {
        String str;
        h.j(cVar, "currentVersion");
        try {
            Response responseExecute = OkHttp3Instrumentation.newCall(d(), c(new a(cVar))).execute();
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseExecute.isSuccessful()) {
                return responseBodyBody != null ? g7.c.a(responseBodyBody.string()) : new va.a(62);
            }
            if (responseExecute.isSuccessful()) {
                str = "Body was null, but call successful.  Not okay.";
            } else {
                str = "Error Code: " + responseExecute.code() + " message: " + responseExecute.message();
            }
            throw new qa.a(new IllegalStateException(), str);
        } catch (Throwable th) {
            throw new qa.a(th);
        }
    }

    @Override // ra.d
    public final byte[] b(String str) throws qa.a {
        String str2;
        h.j(str, "fullUrl");
        try {
            OkHttpClient okHttpClientD = d();
            Request.Builder builderUrl = new Request.Builder().url(str);
            Response responseExecute = OkHttp3Instrumentation.newCall(okHttpClientD, !(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl)).execute();
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseExecute.isSuccessful()) {
                byte[] bArrBytes = responseBodyBody != null ? responseBodyBody.bytes() : null;
                h.g(bArrBytes);
                return bArrBytes;
            }
            if (responseExecute.isSuccessful()) {
                str2 = "Body was null, but call successful.  Not okay.";
            } else {
                str2 = "Error Code: " + responseExecute.code() + " message: " + responseExecute.message();
            }
            throw new qa.a(new IllegalStateException(), str2);
        } catch (Throwable th) {
            throw new qa.a(th);
        }
    }
}
