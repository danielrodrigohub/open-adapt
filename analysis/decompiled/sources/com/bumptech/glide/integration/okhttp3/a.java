package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import f3.d;
import java.io.InputStream;

/* JADX INFO: compiled from: OkHttpLibraryGlideModule.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends d {
    @Override // f3.d, f3.f
    public final void registerComponents(Context context, c cVar, h hVar) {
        hVar.j(InputStream.class, new b.a());
    }
}
