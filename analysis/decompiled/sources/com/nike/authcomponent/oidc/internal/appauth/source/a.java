package com.nike.authcomponent.oidc.internal.appauth.source;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.lifecycle.o;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Collections;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AuthorizationException.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a extends Exception {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f5930m = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5931h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5932i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f5933j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f5934k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Uri f5935l;

    /* JADX INFO: renamed from: com.nike.authcomponent.oidc.internal.appauth.source.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AuthorizationException.java */
    public static final class C0103a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f5936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Map<String, a> f5937b;

        static {
            a aVarB = a.b(1000, "invalid_request");
            a aVarB2 = a.b(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, "unauthorized_client");
            a aVarB3 = a.b(1002, "access_denied");
            a aVarB4 = a.b(1003, "unsupported_response_type");
            a aVarB5 = a.b(1004, "invalid_scope");
            a aVarB6 = a.b(WebSocketProtocol.CLOSE_NO_STATUS_CODE, "server_error");
            a aVarB7 = a.b(1006, "temporarily_unavailable");
            a aVarB8 = a.b(1007, null);
            a aVarB9 = a.b(1008, null);
            f5936a = aVarB9;
            a.a(9, "Response state param did not match request state");
            a[] aVarArr = {aVarB, aVarB2, aVarB3, aVarB4, aVarB5, aVarB6, aVarB7, aVarB8, aVarB9};
            p.a aVar = new p.a(9);
            for (int i10 = 0; i10 < 9; i10++) {
                a aVar2 = aVarArr[i10];
                String str = aVar2.f5933j;
                if (str != null) {
                    aVar.put(str, aVar2);
                }
            }
            f5937b = Collections.unmodifiableMap(aVar);
        }
    }

    /* JADX INFO: compiled from: AuthorizationException.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f5938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f5939b;

        static {
            a.a(0, "Invalid discovery document");
            f5938a = a.a(1, "User cancelled flow");
            a.a(2, "Flow cancelled programmatically");
            a.a(3, "Network error");
            a.a(4, "Server error");
            a.a(5, "JSON deserialization error");
            f5939b = a.a(6, "Browser not found");
        }
    }

    public a(int i10, int i11, String str, String str2, Uri uri) {
        super(str2, null);
        this.f5931h = i10;
        this.f5932i = i11;
        this.f5933j = str;
        this.f5934k = str2;
        this.f5935l = uri;
    }

    public static a a(int i10, String str) {
        return new a(0, i10, null, str, null);
    }

    public static a b(int i10, String str) {
        return new a(1, i10, str, null, null);
    }

    public static a c(String str) throws JSONException {
        Uri uri;
        o.f(str, "jsonStr cannot be null or empty");
        if (!(!TextUtils.isEmpty(str))) {
            throw new IllegalArgumentException("jsonStr cannot be null or empty");
        }
        JSONObject jSONObject = new JSONObject(str);
        int i10 = jSONObject.getInt(AnalyticsAttribute.TYPE_ATTRIBUTE);
        int i11 = jSONObject.getInt("code");
        String strA = sb.a.a(jSONObject, "error");
        String strA2 = sb.a.a(jSONObject, "errorDescription");
        if (jSONObject.has("errorUri")) {
            String string = jSONObject.getString("errorUri");
            if (string == null) {
                throw new JSONException("field \"errorUri\" is mapped to a null value");
            }
            uri = Uri.parse(string);
        } else {
            uri = null;
        }
        return new a(i10, i11, strA, strA2, uri);
    }

    public final Intent d() {
        Intent intent = new Intent();
        intent.putExtra("com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException", e());
        return intent;
    }

    public final String e() {
        JSONObject jSONObject = new JSONObject();
        sb.a.b(jSONObject, AnalyticsAttribute.TYPE_ATTRIBUTE, this.f5931h);
        sb.a.b(jSONObject, "code", this.f5932i);
        sb.a.c(jSONObject, "error", this.f5933j);
        sb.a.c(jSONObject, "errorDescription", this.f5934k);
        Uri uri = this.f5935l;
        if (uri != null) {
            try {
                jSONObject.put("errorUri", uri.toString());
            } catch (JSONException e10) {
                throw new IllegalStateException("JSONException thrown in violation of contract", e10);
            }
        }
        return JSONObjectInstrumentation.toString(jSONObject);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f5931h == aVar.f5931h && this.f5932i == aVar.f5932i;
    }

    public final int hashCode() {
        return ((this.f5931h + 31) * 31) + this.f5932i;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sbC = a0.b.c("AuthorizationException: ");
        sbC.append(e());
        return sbC.toString();
    }
}
