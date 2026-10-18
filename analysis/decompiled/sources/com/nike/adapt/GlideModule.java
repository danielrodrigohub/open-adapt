package com.nike.adapt;

import android.content.Context;
import androidx.annotation.Keep;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.integration.okhttp3.b;
import java.io.InputStream;
import okhttp3.OkHttpClient;
import p4.h;
import t2.f;

/* JADX INFO: compiled from: GlideModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class GlideModule extends f3.a {
    public static final a Companion = new a();
    private static final String IMAGE_CACHE_DIR = "adapt_image_cache";

    /* JADX INFO: compiled from: GlideModule.kt */
    public static final class a {
    }

    @Override // f3.a, f3.b
    public void applyOptions(Context context, d dVar) {
        h.j(context, "context");
        h.j(dVar, "builder");
        super.applyOptions(context, dVar);
        dVar.f4436i = new f(context, IMAGE_CACHE_DIR, 104857600L);
    }

    @Override // f3.a
    public boolean isManifestParsingEnabled() {
        return false;
    }

    @Override // f3.d, f3.f
    public void registerComponents(Context context, c cVar, com.bumptech.glide.h hVar) {
        h.j(context, "context");
        h.j(cVar, "glide");
        h.j(hVar, "registry");
        hVar.j(InputStream.class, new b.a(new OkHttpClient.Builder().build()));
    }
}
