package o2;

import android.util.Log;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Objects;
import l3.c;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p2.e;
import v2.f;

/* JADX INFO: compiled from: OkHttpStreamFetcher.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a implements d<InputStream>, Callback {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Call.Factory f12071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f12072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public c f12073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ResponseBody f12074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public d.a<? super InputStream> f12075l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile Call f12076m;

    public a(Call.Factory factory, f fVar) {
        this.f12071h = factory;
        this.f12072i = fVar;
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        try {
            c cVar = this.f12073j;
            if (cVar != null) {
                cVar.close();
            }
        } catch (IOException unused) {
        }
        ResponseBody responseBody = this.f12074k;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f12075l = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
        Call call = this.f12076m;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final p2.a e() {
        return p2.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(g gVar, d.a<? super InputStream> aVar) {
        Request.Builder builderUrl = new Request.Builder().url(this.f12072i.d());
        for (Map.Entry<String, String> entry : this.f12072i.f16151b.a().entrySet()) {
            builderUrl.addHeader(entry.getKey(), entry.getValue());
        }
        Request requestBuild = !(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl);
        this.f12075l = aVar;
        Call.Factory factory = this.f12071h;
        this.f12076m = !(factory instanceof OkHttpClient) ? factory.newCall(requestBuild) : OkHttp3Instrumentation.newCall((OkHttpClient) factory, requestBuild);
        this.f12076m.enqueue(this);
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        if (Log.isLoggable("OkHttpFetcher", 3)) {
            Log.d("OkHttpFetcher", "OkHttp failed to obtain result", iOException);
        }
        this.f12075l.c(iOException);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        this.f12074k = response.body();
        if (!response.isSuccessful()) {
            this.f12075l.c(new e(response.message(), response.code(), null));
            return;
        }
        ResponseBody responseBody = this.f12074k;
        Objects.requireNonNull(responseBody, "Argument must not be null");
        c cVar = new c(this.f12074k.byteStream(), responseBody.contentLength());
        this.f12073j = cVar;
        this.f12075l.d(cVar);
    }
}
