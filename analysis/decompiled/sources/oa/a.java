package oa;

import androidx.lifecycle.o;
import fd.d;
import java.util.Objects;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import p4.h;
import pa.c;
import ra.e;
import v9.t;

/* JADX INFO: compiled from: AdaptKitRestClient.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements oa.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f12526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static e f12527d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f12525b = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f12528e = o.w(1, new b());

    /* JADX INFO: renamed from: oa.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitRestClient.kt */
    public static final class C0222a implements Interceptor {
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            h.j(chain, "chain");
            Request.Builder builderNewBuilder = chain.request().newBuilder();
            t tVar = t.f16822a;
            String str = t.f16827f;
            if (str != null) {
                builderNewBuilder.addHeader("sessionid", str);
                return chain.proceed(chain.request());
            }
            h.C("sessionId");
            throw null;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class b extends rd.o implements qd.a<OkHttpClient> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final OkHttpClient invoke() {
            return new OkHttpClient.Builder().addInterceptor(sa.a.f15265a).addInterceptor(new C0222a()).build();
        }
    }

    @Override // oa.b
    public final ra.d a() {
        e eVar = f12527d;
        if (eVar != null) {
            return eVar;
        }
        OkHttpClient okHttpClient = (OkHttpClient) f12528e.getValue();
        h.j(okHttpClient, "okHttpClient");
        e eVar2 = e.f14745d;
        Objects.requireNonNull(eVar2);
        eVar2.f12031b = "https://api.nike.com";
        eVar2.f12030a = okHttpClient;
        f12527d = eVar2;
        return eVar2;
    }
}
