package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model;

import a0.b;
import a0.d;
import a1.f;
import a4.g;
import java.util.List;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import rd.h;

/* JADX INFO: compiled from: OIDCAuthConfigurationJSON.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable
public final class OIDCAuthConfigurationJSON {
    public static final Companion Companion = new Companion(null);
    private final String authorization_endpoint;
    private final boolean claims_parameter_supported;
    private final List<String> claims_supported;
    private final List<String> grant_types_supported;
    private final List<String> id_token_signing_alg_values_supported;
    private final String issuer;
    private final String jwks_uri;
    private final List<String> response_types_supported;
    private final String revoke_endpoint;
    private final List<String> scopes_supported;
    private final List<String> subject_types_supported;
    private final String token_endpoint;
    private final List<String> token_endpoint_auth_methods_supported;
    private final List<String> ui_locales_supported;
    private final String userinfo_endpoint;

    /* JADX INFO: compiled from: OIDCAuthConfigurationJSON.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final KSerializer<OIDCAuthConfigurationJSON> serializer() {
            return OIDCAuthConfigurationJSON$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ OIDCAuthConfigurationJSON(int i10, String str, List list, boolean z10, List list2, String str2, String str3, List list3, List list4, List list5, List list6, String str4, List list7, List list8, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if (32767 != (i10 & 32767)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 32767, OIDCAuthConfigurationJSON$$serializer.INSTANCE.getDescriptor());
        }
        this.authorization_endpoint = str;
        this.claims_supported = list;
        this.claims_parameter_supported = z10;
        this.grant_types_supported = list2;
        this.issuer = str2;
        this.jwks_uri = str3;
        this.response_types_supported = list3;
        this.scopes_supported = list4;
        this.subject_types_supported = list5;
        this.id_token_signing_alg_values_supported = list6;
        this.token_endpoint = str4;
        this.token_endpoint_auth_methods_supported = list7;
        this.ui_locales_supported = list8;
        this.userinfo_endpoint = str5;
        this.revoke_endpoint = str6;
    }

    public static final void write$Self(OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        p4.h.j(oIDCAuthConfigurationJSON, "self");
        p4.h.j(compositeEncoder, "output");
        p4.h.j(serialDescriptor, "serialDesc");
        compositeEncoder.encodeStringElement(serialDescriptor, 0, oIDCAuthConfigurationJSON.authorization_endpoint);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.claims_supported);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, oIDCAuthConfigurationJSON.claims_parameter_supported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.grant_types_supported);
        compositeEncoder.encodeStringElement(serialDescriptor, 4, oIDCAuthConfigurationJSON.issuer);
        compositeEncoder.encodeStringElement(serialDescriptor, 5, oIDCAuthConfigurationJSON.jwks_uri);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.response_types_supported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.scopes_supported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 8, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.subject_types_supported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 9, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.id_token_signing_alg_values_supported);
        compositeEncoder.encodeStringElement(serialDescriptor, 10, oIDCAuthConfigurationJSON.token_endpoint);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 11, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.token_endpoint_auth_methods_supported);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 12, new ArrayListSerializer(stringSerializer), oIDCAuthConfigurationJSON.ui_locales_supported);
        compositeEncoder.encodeStringElement(serialDescriptor, 13, oIDCAuthConfigurationJSON.userinfo_endpoint);
        compositeEncoder.encodeStringElement(serialDescriptor, 14, oIDCAuthConfigurationJSON.revoke_endpoint);
    }

    public final String component1() {
        return this.authorization_endpoint;
    }

    public final List<String> component10() {
        return this.id_token_signing_alg_values_supported;
    }

    public final String component11() {
        return this.token_endpoint;
    }

    public final List<String> component12() {
        return this.token_endpoint_auth_methods_supported;
    }

    public final List<String> component13() {
        return this.ui_locales_supported;
    }

    public final String component14() {
        return this.userinfo_endpoint;
    }

    public final String component15() {
        return this.revoke_endpoint;
    }

    public final List<String> component2() {
        return this.claims_supported;
    }

    public final boolean component3() {
        return this.claims_parameter_supported;
    }

    public final List<String> component4() {
        return this.grant_types_supported;
    }

    public final String component5() {
        return this.issuer;
    }

    public final String component6() {
        return this.jwks_uri;
    }

    public final List<String> component7() {
        return this.response_types_supported;
    }

    public final List<String> component8() {
        return this.scopes_supported;
    }

    public final List<String> component9() {
        return this.subject_types_supported;
    }

    public final OIDCAuthConfigurationJSON copy(String str, List<String> list, boolean z10, List<String> list2, String str2, String str3, List<String> list3, List<String> list4, List<String> list5, List<String> list6, String str4, List<String> list7, List<String> list8, String str5, String str6) {
        p4.h.j(str, "authorization_endpoint");
        p4.h.j(list, "claims_supported");
        p4.h.j(list2, "grant_types_supported");
        p4.h.j(str2, "issuer");
        p4.h.j(str3, "jwks_uri");
        p4.h.j(list3, "response_types_supported");
        p4.h.j(list4, "scopes_supported");
        p4.h.j(list5, "subject_types_supported");
        p4.h.j(list6, "id_token_signing_alg_values_supported");
        p4.h.j(str4, "token_endpoint");
        p4.h.j(list7, "token_endpoint_auth_methods_supported");
        p4.h.j(list8, "ui_locales_supported");
        p4.h.j(str5, "userinfo_endpoint");
        p4.h.j(str6, "revoke_endpoint");
        return new OIDCAuthConfigurationJSON(str, list, z10, list2, str2, str3, list3, list4, list5, list6, str4, list7, list8, str5, str6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OIDCAuthConfigurationJSON)) {
            return false;
        }
        OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON = (OIDCAuthConfigurationJSON) obj;
        return p4.h.c(this.authorization_endpoint, oIDCAuthConfigurationJSON.authorization_endpoint) && p4.h.c(this.claims_supported, oIDCAuthConfigurationJSON.claims_supported) && this.claims_parameter_supported == oIDCAuthConfigurationJSON.claims_parameter_supported && p4.h.c(this.grant_types_supported, oIDCAuthConfigurationJSON.grant_types_supported) && p4.h.c(this.issuer, oIDCAuthConfigurationJSON.issuer) && p4.h.c(this.jwks_uri, oIDCAuthConfigurationJSON.jwks_uri) && p4.h.c(this.response_types_supported, oIDCAuthConfigurationJSON.response_types_supported) && p4.h.c(this.scopes_supported, oIDCAuthConfigurationJSON.scopes_supported) && p4.h.c(this.subject_types_supported, oIDCAuthConfigurationJSON.subject_types_supported) && p4.h.c(this.id_token_signing_alg_values_supported, oIDCAuthConfigurationJSON.id_token_signing_alg_values_supported) && p4.h.c(this.token_endpoint, oIDCAuthConfigurationJSON.token_endpoint) && p4.h.c(this.token_endpoint_auth_methods_supported, oIDCAuthConfigurationJSON.token_endpoint_auth_methods_supported) && p4.h.c(this.ui_locales_supported, oIDCAuthConfigurationJSON.ui_locales_supported) && p4.h.c(this.userinfo_endpoint, oIDCAuthConfigurationJSON.userinfo_endpoint) && p4.h.c(this.revoke_endpoint, oIDCAuthConfigurationJSON.revoke_endpoint);
    }

    public final String getAuthorization_endpoint() {
        return this.authorization_endpoint;
    }

    public final boolean getClaims_parameter_supported() {
        return this.claims_parameter_supported;
    }

    public final List<String> getClaims_supported() {
        return this.claims_supported;
    }

    public final List<String> getGrant_types_supported() {
        return this.grant_types_supported;
    }

    public final List<String> getId_token_signing_alg_values_supported() {
        return this.id_token_signing_alg_values_supported;
    }

    public final String getIssuer() {
        return this.issuer;
    }

    public final String getJwks_uri() {
        return this.jwks_uri;
    }

    public final List<String> getResponse_types_supported() {
        return this.response_types_supported;
    }

    public final String getRevoke_endpoint() {
        return this.revoke_endpoint;
    }

    public final List<String> getScopes_supported() {
        return this.scopes_supported;
    }

    public final List<String> getSubject_types_supported() {
        return this.subject_types_supported;
    }

    public final String getToken_endpoint() {
        return this.token_endpoint;
    }

    public final List<String> getToken_endpoint_auth_methods_supported() {
        return this.token_endpoint_auth_methods_supported;
    }

    public final List<String> getUi_locales_supported() {
        return this.ui_locales_supported;
    }

    public final String getUserinfo_endpoint() {
        return this.userinfo_endpoint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    public int hashCode() {
        int iD = g.d(this.claims_supported, this.authorization_endpoint.hashCode() * 31, 31);
        boolean z10 = this.claims_parameter_supported;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return this.revoke_endpoint.hashCode() + f.c(this.userinfo_endpoint, g.d(this.ui_locales_supported, g.d(this.token_endpoint_auth_methods_supported, f.c(this.token_endpoint, g.d(this.id_token_signing_alg_values_supported, g.d(this.subject_types_supported, g.d(this.scopes_supported, g.d(this.response_types_supported, f.c(this.jwks_uri, f.c(this.issuer, g.d(this.grant_types_supported, (iD + r10) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbC = b.c("OIDCAuthConfigurationJSON(authorization_endpoint=");
        sbC.append(this.authorization_endpoint);
        sbC.append(", claims_supported=");
        sbC.append(this.claims_supported);
        sbC.append(", claims_parameter_supported=");
        sbC.append(this.claims_parameter_supported);
        sbC.append(", grant_types_supported=");
        sbC.append(this.grant_types_supported);
        sbC.append(", issuer=");
        sbC.append(this.issuer);
        sbC.append(", jwks_uri=");
        sbC.append(this.jwks_uri);
        sbC.append(", response_types_supported=");
        sbC.append(this.response_types_supported);
        sbC.append(", scopes_supported=");
        sbC.append(this.scopes_supported);
        sbC.append(", subject_types_supported=");
        sbC.append(this.subject_types_supported);
        sbC.append(", id_token_signing_alg_values_supported=");
        sbC.append(this.id_token_signing_alg_values_supported);
        sbC.append(", token_endpoint=");
        sbC.append(this.token_endpoint);
        sbC.append(", token_endpoint_auth_methods_supported=");
        sbC.append(this.token_endpoint_auth_methods_supported);
        sbC.append(", ui_locales_supported=");
        sbC.append(this.ui_locales_supported);
        sbC.append(", userinfo_endpoint=");
        sbC.append(this.userinfo_endpoint);
        sbC.append(", revoke_endpoint=");
        return d.d(sbC, this.revoke_endpoint, ')');
    }

    public OIDCAuthConfigurationJSON(String str, List<String> list, boolean z10, List<String> list2, String str2, String str3, List<String> list3, List<String> list4, List<String> list5, List<String> list6, String str4, List<String> list7, List<String> list8, String str5, String str6) {
        p4.h.j(str, "authorization_endpoint");
        p4.h.j(list, "claims_supported");
        p4.h.j(list2, "grant_types_supported");
        p4.h.j(str2, "issuer");
        p4.h.j(str3, "jwks_uri");
        p4.h.j(list3, "response_types_supported");
        p4.h.j(list4, "scopes_supported");
        p4.h.j(list5, "subject_types_supported");
        p4.h.j(list6, "id_token_signing_alg_values_supported");
        p4.h.j(str4, "token_endpoint");
        p4.h.j(list7, "token_endpoint_auth_methods_supported");
        p4.h.j(list8, "ui_locales_supported");
        p4.h.j(str5, "userinfo_endpoint");
        p4.h.j(str6, "revoke_endpoint");
        this.authorization_endpoint = str;
        this.claims_supported = list;
        this.claims_parameter_supported = z10;
        this.grant_types_supported = list2;
        this.issuer = str2;
        this.jwks_uri = str3;
        this.response_types_supported = list3;
        this.scopes_supported = list4;
        this.subject_types_supported = list5;
        this.id_token_signing_alg_values_supported = list6;
        this.token_endpoint = str4;
        this.token_endpoint_auth_methods_supported = list7;
        this.ui_locales_supported = list8;
        this.userinfo_endpoint = str5;
        this.revoke_endpoint = str6;
    }
}
