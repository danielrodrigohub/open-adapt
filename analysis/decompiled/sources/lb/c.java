package lb;

import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.Instrumented;
import fd.h;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: TelemetryApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f10235a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f10236b = (h) o.x(a.f10237h);

    /* JADX INFO: compiled from: TelemetryApi.kt */
    public static final class a extends rd.o implements qd.a<OkHttpClient> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f10237h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final OkHttpClient invoke() {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.addInterceptor(new b());
            return builder.build();
        }
    }
}
