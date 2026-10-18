package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model;

import a0.b;
import a0.d;
import a1.f;
import androidx.fragment.app.r0;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import rd.h;

/* JADX INFO: compiled from: OIDCAuthCredentialJSON.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable
public final class OIDCAuthCredentialJSON {
    public static final Companion Companion = new Companion(null);
    private final String access_token;
    private final long expirationDateMillis;
    private final int expires_in;
    private final String id_token;
    private final String refresh_token;
    private final String token_type;

    /* JADX INFO: compiled from: OIDCAuthCredentialJSON.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final KSerializer<OIDCAuthCredentialJSON> serializer() {
            return OIDCAuthCredentialJSON$$serializer.INSTANCE;
        }
    }

    public OIDCAuthCredentialJSON(int i10, String str, String str2, String str3, int i11, String str4, long j10, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i10 & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 31, OIDCAuthCredentialJSON$$serializer.INSTANCE.getDescriptor());
        }
        this.access_token = str;
        this.refresh_token = str2;
        this.token_type = str3;
        this.expires_in = i11;
        this.id_token = str4;
        if ((i10 & 32) != 0) {
            this.expirationDateMillis = j10;
        } else {
            this.expirationDateMillis = TimeUnit.SECONDS.toMillis(i11) + System.currentTimeMillis();
        }
    }

    public static /* synthetic */ OIDCAuthCredentialJSON copy$default(OIDCAuthCredentialJSON oIDCAuthCredentialJSON, String str, String str2, String str3, int i10, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = oIDCAuthCredentialJSON.access_token;
        }
        if ((i11 & 2) != 0) {
            str2 = oIDCAuthCredentialJSON.refresh_token;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = oIDCAuthCredentialJSON.token_type;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            i10 = oIDCAuthCredentialJSON.expires_in;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            str4 = oIDCAuthCredentialJSON.id_token;
        }
        return oIDCAuthCredentialJSON.copy(str, str5, str6, i12, str4);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0034  */
    public static final void write$Self(OIDCAuthCredentialJSON oIDCAuthCredentialJSON, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        boolean z10;
        p4.h.j(oIDCAuthCredentialJSON, "self");
        p4.h.j(compositeEncoder, "output");
        p4.h.j(serialDescriptor, "serialDesc");
        compositeEncoder.encodeStringElement(serialDescriptor, 0, oIDCAuthCredentialJSON.access_token);
        compositeEncoder.encodeStringElement(serialDescriptor, 1, oIDCAuthCredentialJSON.refresh_token);
        compositeEncoder.encodeStringElement(serialDescriptor, 2, oIDCAuthCredentialJSON.token_type);
        compositeEncoder.encodeIntElement(serialDescriptor, 3, oIDCAuthCredentialJSON.expires_in);
        compositeEncoder.encodeStringElement(serialDescriptor, 4, oIDCAuthCredentialJSON.id_token);
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5)) {
            z10 = oIDCAuthCredentialJSON.expirationDateMillis != TimeUnit.SECONDS.toMillis((long) oIDCAuthCredentialJSON.expires_in) + System.currentTimeMillis();
        }
        if (z10) {
            compositeEncoder.encodeLongElement(serialDescriptor, 5, oIDCAuthCredentialJSON.expirationDateMillis);
        }
    }

    public final String component1() {
        return this.access_token;
    }

    public final String component2() {
        return this.refresh_token;
    }

    public final String component3() {
        return this.token_type;
    }

    public final int component4() {
        return this.expires_in;
    }

    public final String component5() {
        return this.id_token;
    }

    public final OIDCAuthCredentialJSON copy(String str, String str2, String str3, int i10, String str4) {
        p4.h.j(str, "access_token");
        p4.h.j(str2, "refresh_token");
        p4.h.j(str3, "token_type");
        p4.h.j(str4, "id_token");
        return new OIDCAuthCredentialJSON(str, str2, str3, i10, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OIDCAuthCredentialJSON)) {
            return false;
        }
        OIDCAuthCredentialJSON oIDCAuthCredentialJSON = (OIDCAuthCredentialJSON) obj;
        return p4.h.c(this.access_token, oIDCAuthCredentialJSON.access_token) && p4.h.c(this.refresh_token, oIDCAuthCredentialJSON.refresh_token) && p4.h.c(this.token_type, oIDCAuthCredentialJSON.token_type) && this.expires_in == oIDCAuthCredentialJSON.expires_in && p4.h.c(this.id_token, oIDCAuthCredentialJSON.id_token);
    }

    public final String getAccess_token() {
        return this.access_token;
    }

    public final long getExpirationDateMillis() {
        return this.expirationDateMillis;
    }

    public final int getExpires_in() {
        return this.expires_in;
    }

    public final String getId_token() {
        return this.id_token;
    }

    public final String getRefresh_token() {
        return this.refresh_token;
    }

    public final String getToken_type() {
        return this.token_type;
    }

    public int hashCode() {
        return this.id_token.hashCode() + r0.e(this.expires_in, f.c(this.token_type, f.c(this.refresh_token, this.access_token.hashCode() * 31, 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbC = b.c("OIDCAuthCredentialJSON(access_token=");
        sbC.append(this.access_token);
        sbC.append(", refresh_token=");
        sbC.append(this.refresh_token);
        sbC.append(", token_type=");
        sbC.append(this.token_type);
        sbC.append(", expires_in=");
        sbC.append(this.expires_in);
        sbC.append(", id_token=");
        return d.d(sbC, this.id_token, ')');
    }

    public OIDCAuthCredentialJSON(String str, String str2, String str3, int i10, String str4) {
        p4.h.j(str, "access_token");
        p4.h.j(str2, "refresh_token");
        p4.h.j(str3, "token_type");
        p4.h.j(str4, "id_token");
        this.access_token = str;
        this.refresh_token = str2;
        this.token_type = str3;
        this.expires_in = i10;
        this.id_token = str4;
        this.expirationDateMillis = TimeUnit.SECONDS.toMillis(i10) + System.currentTimeMillis();
    }
}
