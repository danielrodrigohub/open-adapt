package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import f3.c;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class OkHttpGlideModule implements c {
    @Override // f3.b
    public final void applyOptions(Context context, d dVar) {
    }

    @Override // f3.f
    public final void registerComponents(Context context, com.bumptech.glide.c cVar, h hVar) {
        hVar.j(InputStream.class, new b.a());
    }
}
