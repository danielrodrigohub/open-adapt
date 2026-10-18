package com.nike.adapt.network.assets;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.api.v1.Defaults;
import com.nike.adapt.network.assets.model.Manifest;
import java.util.Locale;
import jd.d;
import p4.h;
import retrofit2.http.GET;
import retrofit2.http.Path;

/* JADX INFO: compiled from: ManifestServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface ManifestServiceApi {

    /* JADX INFO: compiled from: ManifestServiceApi.kt */
    public static final class a {
        public static /* synthetic */ Object a(ManifestServiceApi manifestServiceApi, String str, String str2, String str3, d dVar, int i10, Object obj) {
            String language = Locale.ENGLISH.getLanguage();
            h.i(language, "ENGLISH.language");
            return manifestServiceApi.getManifest("prod", str2, language, dVar);
        }
    }

    @GET("plus/v3/client-config/com.nike.adapt.appconfig.{type}/{app_version}/{locale}?platform=droid")
    Object getManifest(@Path(encoded = Defaults.COLLECT_NETWORK_ERRORS, value = AnalyticsAttribute.TYPE_ATTRIBUTE) String str, @Path(encoded = Defaults.COLLECT_NETWORK_ERRORS, value = "app_version") String str2, @Path(encoded = Defaults.COLLECT_NETWORK_ERRORS, value = "locale") String str3, d<? super Manifest> dVar);
}
