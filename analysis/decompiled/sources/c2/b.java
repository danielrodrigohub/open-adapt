package c2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.util.HashMap;
import java.util.Map;
import k2.c;
import y1.f0;

/* JADX INFO: compiled from: ImageAssetManager.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f3820e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y1.b f3823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, f0> f3824d;

    public b(Drawable.Callback callback, String str, y1.b bVar, Map<String, f0> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f3822b = str;
        } else {
            this.f3822b = str + '/';
        }
        if (callback instanceof View) {
            this.f3821a = ((View) callback).getContext();
            this.f3824d = map;
            this.f3823c = bVar;
        } else {
            c.b("LottieDrawable must be inside of a view for images to work.");
            this.f3824d = new HashMap();
            this.f3821a = null;
        }
    }

    public final Bitmap a(String str, Bitmap bitmap) {
        synchronized (f3820e) {
            this.f3824d.get(str).f18329d = bitmap;
        }
        return bitmap;
    }
}
