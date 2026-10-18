package g0;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.adapt.network.assets.ManifestServiceApi;
import com.nike.adapt.network.dataopt.datastream.NspStreamServiceApi;
import com.nike.adapt.network.dataopt.permissions.PermissionServiceApi;
import com.nike.adapt.network.deleteAccount.DeleteAccountServiceApi;
import com.nike.adapt.network.identity.AdaptIdentityServiceApi;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: FontsContractCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class n implements w7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f7519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f7520c = new n();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static AdaptIdentityServiceApi f7521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static PermissionServiceApi f7522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static NspStreamServiceApi f7523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static ManifestServiceApi f7524g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static DeleteAccountServiceApi f7525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static OkHttpClient f7526i;

    public static Object a(Iterable iterable, Object obj) {
        Iterator it = iterable.iterator();
        return it.hasNext() ? it.next() : obj;
    }

    public static Object b(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return list.get(list.size() - 1);
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static void d(List list, t6.i iVar, int i10, int i11) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i11) {
                break;
            } else if (iVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i11--;
            if (i11 < i10) {
                return;
            } else {
                list.remove(i11);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v11, types: [java.util.ArrayList, java.util.List<okhttp3.Interceptor>] */
    public Object c(Class cls, String str, boolean z10) {
        p4.h.j(str, "baseUrl");
        if (!z10) {
            return new Retrofit.Builder().addConverterFactory(GsonConverterFactory.create()).baseUrl(str).build().create(cls);
        }
        Retrofit.Builder builderBaseUrl = new Retrofit.Builder().addConverterFactory(GsonConverterFactory.create()).baseUrl(str);
        OkHttpClient okHttpClientBuild = f7526i;
        if (okHttpClientBuild == null) {
            o7.a aVar = g7.b.f7789h;
            HttpLoggingInterceptor.Logger logger = null;
            Object[] objArr = 0;
            if (aVar == null) {
                p4.h.C("adaptConfig");
                throw null;
            }
            String str2 = aVar.f12354b;
            String str3 = aVar.f12356d;
            String str4 = aVar.f12357e;
            int i10 = aVar.f12358f;
            vc.a aVar2 = aVar.f12360h;
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            p4.h.j(str2, AnalyticsAttribute.APP_ID_ATTRIBUTE);
            p4.h.j(str3, AnalyticsAttribute.APP_NAME_ATTRIBUTE);
            p4.h.j(str4, "appVersion");
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.addInterceptor(new vc.d(str2));
            builder.addInterceptor(new vc.e(str2, str4));
            if (p4.h.c(bool, bool)) {
                builder.addInterceptor(new tc.a(new sc.a(str3, str4, i10)));
            }
            if (aVar2 != null) {
                if (p4.h.c(bool2, bool)) {
                    builder.addInterceptor(new vc.b(aVar2));
                }
                if (p4.h.c(bool, bool)) {
                    builder.addInterceptor(new vc.c(aVar2));
                    builder.addInterceptor(new vc.f(aVar2));
                }
            }
            builder.addInterceptor(new vc.g());
            uc.a aVar3 = uc.a.f16098a;
            Iterator it = uc.a.f16099b.iterator();
            while (it.hasNext()) {
                builder.addInterceptor((Interceptor) it.next());
            }
            okHttpClientBuild = builder.build();
            if (g7.b.f7790i) {
                OkHttpClient.Builder builderAddNetworkInterceptor = okHttpClientBuild.newBuilder().addNetworkInterceptor(new HttpLoggingInterceptor(logger, 1, objArr == true ? 1 : 0).setLevel(HttpLoggingInterceptor.Level.BODY)).addNetworkInterceptor(new w7.b());
                o7.a aVar4 = g7.b.f7789h;
                if (aVar4 == null) {
                    p4.h.C("adaptConfig");
                    throw null;
                }
                Interceptor interceptor = aVar4.f12361i;
                if (interceptor != null) {
                    builderAddNetworkInterceptor.addNetworkInterceptor(interceptor);
                }
                okHttpClientBuild = builderAddNetworkInterceptor.build();
            }
            f7526i = okHttpClientBuild;
        }
        return builderBaseUrl.client(okHttpClientBuild).build().create(cls);
    }
}
