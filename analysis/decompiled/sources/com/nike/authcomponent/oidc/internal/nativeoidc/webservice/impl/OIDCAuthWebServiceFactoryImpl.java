package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.impl;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.util.Constants;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.OIDCAuthWebService;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.OIDCAuthWebServiceFactory;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;
import n7.b;
import n7.d;
import ob.a;
import okhttp3.MediaType;
import p4.h;
import retrofit2.Retrofit;

/* JADX INFO: compiled from: OIDCAuthWebServiceFactoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OIDCAuthWebServiceFactoryImpl implements OIDCAuthWebServiceFactory {
    private final a configuration;
    private final Json json;

    public OIDCAuthWebServiceFactoryImpl(a aVar) {
        h.j(aVar, "configuration");
        this.configuration = aVar;
        this.json = JsonKt.Json$default(null, OIDCAuthWebServiceFactoryImpl$json$1.INSTANCE, 1, null);
    }

    @Override // com.nike.authcomponent.oidc.internal.nativeoidc.webservice.OIDCAuthWebServiceFactory
    public OIDCAuthWebService create() {
        Retrofit.Builder builderClient = new Retrofit.Builder().baseUrl(this.configuration.f12531b.c()).client(this.configuration.f12530a.e());
        Json json = this.json;
        MediaType mediaType = MediaType.Companion.get(Constants.Network.ContentType.JSON);
        h.j(json, "$this$asConverterFactory");
        h.j(mediaType, AnalyticsAttribute.CONTENT_TYPE_ATTRIBUTE);
        Object objCreate = builderClient.addConverterFactory(new b(mediaType, new d.a(json))).build().create(OIDCAuthWebService.class);
        h.i(objCreate, "Builder()\n            .baseUrl(configuration.settings.baseUrl)\n            .client(configuration.dependencies.okHttpClient)\n            .addConverterFactory(json.asConverterFactory(\"application/json\".toMediaType()))\n            .build()\n            .create(OIDCAuthWebService::class.java)");
        return (OIDCAuthWebService) objCreate;
    }
}
