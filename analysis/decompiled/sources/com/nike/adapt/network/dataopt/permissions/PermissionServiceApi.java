package com.nike.adapt.network.dataopt.permissions;

import c8.a;
import com.nike.adapt.network.dataopt.permissions.model.Permissions;
import fd.o;
import java.util.List;
import jd.d;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.PUT;
import retrofit2.http.Query;

/* JADX INFO: compiled from: PermissionServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface PermissionServiceApi {
    @Headers({"Accept:application/json; charset=utf-8", "Accept-Charset:utf-8", "x-nike-ux-id:com.nike.bigfoot.droid"})
    @GET("privacy_compliance/user_permissions/v1/")
    Object getPrivacyCompliance(@Query("principal") String str, d<? super List<Permissions>> dVar);

    @Headers({"Accept:application/json; charset=utf-8", "Accept-Charset:utf-8", "x-nike-ux-id:com.nike.bigfoot.droid"})
    @PUT("privacy_compliance/user_permissions/v1/")
    Object updatePrivacyCompliance(@Body a aVar, d<? super o> dVar);
}
