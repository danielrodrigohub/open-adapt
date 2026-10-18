package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model;

import ed.e;
import ob.c;
import p4.h;
import xb.a;

/* JADX INFO: compiled from: OIDCAuthCredentialJSON.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OIDCAuthCredentialJSONKt {
    public static final c toInternal(final OIDCAuthCredentialJSON oIDCAuthCredentialJSON, final e eVar) {
        h.j(oIDCAuthCredentialJSON, "<this>");
        h.j(eVar, "telemetryProvider");
        return new c() { // from class: com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthCredentialJSONKt.toInternal.1
            @Override // ob.b
            public String getAccessToken() {
                return oIDCAuthCredentialJSON.getAccess_token();
            }

            @Override // ob.b
            public long getExpirationDate() {
                return oIDCAuthCredentialJSON.getExpirationDateMillis();
            }

            @Override // ob.c
            public String getIdTokenString() {
                return oIDCAuthCredentialJSON.getId_token();
            }

            @Override // ob.b
            public String getRefreshToken() {
                return oIDCAuthCredentialJSON.getRefresh_token();
            }

            @Override // ob.b
            public String getUpmID() {
                String str = a.Companion.a(oIDCAuthCredentialJSON.getId_token(), eVar).f18121a.f18123b.f18125b;
                if (str != null) {
                    return str;
                }
                throw new ob.e.C0224e("Missing subject in JWT (which maps to upmID)", null);
            }
        };
    }
}
