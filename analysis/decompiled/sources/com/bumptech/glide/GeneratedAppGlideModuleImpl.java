package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.nike.adapt.GlideModule;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    private final GlideModule appGlideModule = new GlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.nike.adapt.GlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule");
        }
    }

    @Override // f3.a, f3.b
    public void applyOptions(Context context, d dVar) {
        this.appGlideModule.applyOptions(context, dVar);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public Set<Class<?>> getExcludedModuleClasses() {
        return Collections.emptySet();
    }

    @Override // f3.a
    public boolean isManifestParsingEnabled() {
        return this.appGlideModule.isManifestParsingEnabled();
    }

    @Override // f3.d, f3.f
    public void registerComponents(Context context, c cVar, h hVar) {
        new com.bumptech.glide.integration.okhttp3.a().registerComponents(context, cVar, hVar);
        this.appGlideModule.registerComponents(context, cVar, hVar);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public a getRequestManagerFactory() {
        return new a();
    }
}
