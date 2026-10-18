package com.nike.authcomponent.oidc.internal.appauth.webservice;

import fd.o;
import jd.d;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Url;

/* JADX INFO: compiled from: AppAuthWebService.kt */
/* JADX INFO: loaded from: classes.dex */
public interface AppAuthWebService {
    @Headers({"Content-Type: application/jwt"})
    @GET
    Object getIdentityToken(@Url String str, d<? super String> dVar);

    @FormUrlEncoded
    @POST
    Object revokeRefreshToken(@Url String str, @Field("client_id") String str2, @Field("token") String str3, d<? super o> dVar);
}
