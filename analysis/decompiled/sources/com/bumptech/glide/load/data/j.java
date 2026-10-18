package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.URLConnectionInstrumentation;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: HttpUrlFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements d<InputStream> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f4513m = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v2.f f4514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HttpURLConnection f4516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InputStream f4517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile boolean f4518l;

    /* JADX INFO: compiled from: HttpUrlFetcher.java */
    @Instrumented
    public static class a {
    }

    public j(v2.f fVar, int i10) {
        this.f4514h = fVar;
        this.f4515i = i10;
    }

    public static int c(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e10) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e10);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        InputStream inputStream = this.f4517k;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f4516j;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f4516j = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
        this.f4518l = true;
    }

    public final InputStream d(URL url, int i10, URL url2, Map<String, String> map) throws p2.e {
        if (i10 >= 5) {
            throw new p2.e("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new p2.e("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) URLConnectionInstrumentation.openConnection(url.openConnection());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
            }
            httpURLConnection.setConnectTimeout(this.f4515i);
            httpURLConnection.setReadTimeout(this.f4515i);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f4516j = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f4517k = this.f4516j.getInputStream();
                if (this.f4518l) {
                    return null;
                }
                int iC = c(this.f4516j);
                int i11 = iC / 100;
                if (i11 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f4516j;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.f4517k = new l3.c(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.f4517k = httpURLConnection2.getInputStream();
                        }
                        return this.f4517k;
                    } catch (IOException e10) {
                        throw new p2.e("Failed to obtain InputStream", c(httpURLConnection2), e10);
                    }
                }
                if (!(i11 == 3)) {
                    if (iC == -1) {
                        throw new p2.e("Http request failed", iC, null);
                    }
                    try {
                        throw new p2.e(this.f4516j.getResponseMessage(), iC, null);
                    } catch (IOException e11) {
                        throw new p2.e("Failed to get a response message", iC, e11);
                    }
                }
                String headerField = this.f4516j.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new p2.e("Received empty or null redirect url", iC, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    b();
                    return d(url3, i10 + 1, url, map);
                } catch (MalformedURLException e12) {
                    throw new p2.e(androidx.recyclerview.widget.d.c("Bad redirect url: ", headerField), iC, e12);
                }
            } catch (IOException e13) {
                throw new p2.e("Failed to connect or obtain data", c(this.f4516j), e13);
            }
        } catch (IOException e14) {
            throw new p2.e("URL.openConnection threw", 0, e14);
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final p2.a e() {
        return p2.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(com.bumptech.glide.g gVar, d.a<? super InputStream> aVar) {
        StringBuilder sb2;
        int i10 = l3.h.f9935b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            v2.f fVar = this.f4514h;
            if (fVar.f16155f == null) {
                fVar.f16155f = new URL(fVar.d());
            }
            aVar.d(d(fVar.f16155f, 0, null, this.f4514h.f16151b.a()));
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb2 = new StringBuilder();
                sb2.append("Finished http url fetcher fetch in ");
                sb2.append(l3.h.a(jElapsedRealtimeNanos));
                String string = sb2.toString();
            }
        } catch (IOException e10) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e10);
            }
            aVar.c(e10);
            if (!Log.isLoggable("HttpUrlFetcher", 2)) {
            } else {
                sb2 = new StringBuilder();
            }
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                StringBuilder sbC = a0.b.c("Finished http url fetcher fetch in ");
                sbC.append(l3.h.a(jElapsedRealtimeNanos));
                Log.v("HttpUrlFetcher", sbC.toString());
            }
        }
    }
}
