package com.nike.adapt.network.identity;

import com.nike.adapt.network.identity.model.AdaptIdentity;
import e8.c;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* JADX INFO: compiled from: AdaptIdentityServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface AdaptIdentityServiceApi {
    @Headers({"Accept:application/json; charset=utf-8", "Accept-Charset:utf-8", "x-nike-ux-id:com.nike.bigfoot.droid"})
    @POST("identity/user/v1/{upmId}/read")
    Call<AdaptIdentity> getIdentity(@Path("upmId") String str, @Body c cVar);
}
