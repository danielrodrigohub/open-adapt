package com.nike.authcomponent.oidc.internal.nativeoidc.webservice;

import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthConfigurationJSON;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthCredentialJSON;
import fd.o;
import java.util.Map;
import jd.d;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* JADX INFO: compiled from: OIDCAuthWebService.kt */
/* JADX INFO: loaded from: classes.dex */
public interface OIDCAuthWebService {

    /* JADX INFO: compiled from: OIDCAuthWebService.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getCredential$default(OIDCAuthWebService oIDCAuthWebService, String str, String str2, String str3, String str4, String str5, String str6, d dVar, int i10, Object obj) {
            if (obj == null) {
                return oIDCAuthWebService.getCredential(str, str2, str3, str4, str5, (i10 & 32) != 0 ? "authorization_code" : str6, dVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCredential");
        }

        public static /* synthetic */ Object updateCredential$default(OIDCAuthWebService oIDCAuthWebService, String str, String str2, String str3, String str4, d dVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateCredential");
            }
            if ((i10 & 8) != 0) {
                str4 = "refresh_token";
            }
            return oIDCAuthWebService.updateCredential(str, str2, str3, str4, dVar);
        }
    }

    @Headers({"Content-Type: application/json"})
    @GET("/.well-known/openid-configuration")
    Object getConfiguration(d<? super OIDCAuthConfigurationJSON> dVar);

    @Headers({"Content-Type: application/json"})
    @POST
    Object getCredential(@Url String str, @Query("client_id") String str2, @Query("redirect_uri") String str3, @Query("code") String str4, @Query("code_verifier") String str5, @Query("grant_type") String str6, d<? super OIDCAuthCredentialJSON> dVar);

    @Headers({"Content-Type: application/jwt"})
    @GET
    Object getIdentityToken(@HeaderMap Map<String, String> map, @Url String str, d<? super String> dVar);

    @FormUrlEncoded
    @POST
    Object revokeRefreshToken(@Url String str, @Field("client_id") String str2, @Field("token") String str3, d<? super o> dVar);

    @Headers({"Content-Type: application/json"})
    @POST
    Object updateCredential(@Url String str, @Query("client_id") String str2, @Query("refresh_token") String str3, @Query("grant_type") String str4, d<? super OIDCAuthCredentialJSON> dVar);
}
