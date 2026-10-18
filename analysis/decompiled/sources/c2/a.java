package c2;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import k2.c;
import y0.r;

/* JADX INFO: compiled from: FontAssetManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AssetManager f3818d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f3815a = new r(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<r, Typeface> f3816b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, Typeface> f3817c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3819e = ".ttf";

    public a(Drawable.Callback callback) {
        if (callback instanceof View) {
            this.f3818d = ((View) callback).getContext().getAssets();
        } else {
            c.b("LottieDrawable must be inside of a view for images to work.");
            this.f3818d = null;
        }
    }
}
