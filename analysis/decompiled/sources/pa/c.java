package pa;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: AdaptKitDeviceServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class c extends na.b implements pa.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f13393d = new c();

    /* JADX INFO: compiled from: AdaptKitDeviceServiceApi.kt */
    public static final class a extends o implements l<Request.Builder, Request.Builder> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f13394h = new a();

        public a() {
            super(1);
        }

        @Override // qd.l
        public final Request.Builder invoke(Request.Builder builder) {
            Request.Builder builder2 = builder;
            h.j(builder2, "$this$generateOkHttpRequestBuilder");
            return builder2.url(c.f13393d.f12031b + "/nikeadapt/profile/").get();
        }
    }

    /* JADX INFO: compiled from: AdaptKitDeviceServiceApi.kt */
    @Instrumented
    public static final class b extends o implements l<Request.Builder, Request.Builder> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ List<String> f13395h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(List<String> list) {
            super(1);
            this.f13395h = list;
        }

        @Override // qd.l
        public final Request.Builder invoke(Request.Builder builder) throws JSONException {
            Request.Builder builder2 = builder;
            h.j(builder2, "$this$generateOkHttpRequestBuilder");
            c cVar = c.f13393d;
            Request.Builder builderUrl = builder2.url(cVar.f12031b + "/nikeadapt/profile/status");
            RequestBody.Companion companion = RequestBody.Companion;
            MediaType mediaType = cVar.f12032c;
            List<String> list = this.f13395h;
            h.j(list, "<this>");
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                jSONArray.put(list.get(i10));
            }
            jSONObject.put("pairIds", jSONArray);
            String string = JSONObjectInstrumentation.toString(jSONObject);
            h.i(string, "pairIds.toPairIdJson().toString()");
            return builderUrl.post(companion.create(mediaType, string));
        }
    }

    public final List<va.d> e() throws qa.a {
        try {
            ResponseBody responseBodyBody = OkHttp3Instrumentation.newCall(d(), c(a.f13394h)).execute().body();
            h.g(responseBodyBody);
            return androidx.lifecycle.o.N(new JSONArray(responseBodyBody.string()));
        } catch (Throwable th) {
            throw new qa.a(th);
        }
    }

    public final Map<String, g> f(List<String> list) throws qa.a {
        h.j(list, "pairIds");
        try {
            ResponseBody responseBodyBody = OkHttp3Instrumentation.newCall(d(), c(new b(list))).execute().body();
            return responseBodyBody != null ? androidx.lifecycle.o.O(new JSONArray(responseBodyBody.string())) : new HashMap();
        } catch (Throwable th) {
            throw new qa.a(th);
        }
    }
}
