package zb;

import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.fragment.app.p;
import com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationManagementActivity;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthConfigurationJSON;
import ed.e;
import gd.n;
import java.security.SecureRandom;
import java.util.Objects;
import jd.d;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthBrowser.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ob.a f19471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Intent f19472b;

    public b(ob.a aVar) {
        this.f19471a = aVar;
    }

    @Override // zb.a
    public final synchronized void a() {
        Intent intent;
        if (this.f19472b == null) {
            ub.a.C0280a c0280a = ub.a.Companion;
            e eVarF = this.f19471a.f12530a.f();
            Objects.requireNonNull(c0280a);
            ub.a.f16097a = eVarF;
            tb.a aVarA = tb.b.a(this.f19471a.f12530a.c());
            if (aVarA == null ? false : h.c(aVarA.f15588d, Boolean.TRUE)) {
                tb.c cVar = new tb.c(this.f19471a.f12530a.c());
                cVar.a(aVarA.f15585a);
                Uri uri = Uri.parse(this.f19471a.f12531b.c());
                h.i(uri, "parse(configuration.settings.baseUrl)");
                intent = c.a(cVar, uri);
            } else {
                intent = new Intent("android.intent.action.VIEW");
            }
            this.f19472b = intent;
        }
    }

    @Override // zb.a
    public final Object b(p pVar, OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON, bc.a aVar, zd.a aVar2, d<? super androidx.activity.result.a> dVar) {
        a();
        Uri.Builder builderAppendQueryParameter = Uri.parse(oIDCAuthConfigurationJSON.getAuthorization_endpoint()).buildUpon().appendQueryParameter("redirect_uri", this.f19471a.f12531b.a().toString());
        this.f19471a.f12531b.e();
        Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter("client_id", "5049d3b1ed877abc784ac3233c0cf83").appendQueryParameter("response_type", "code").appendQueryParameter("code_challenge", aVar.f3776b).appendQueryParameter("code_challenge_method", aVar.f3777c).appendQueryParameter("state", c()).appendQueryParameter("nonce", c()).appendQueryParameter("scope", n.d0(this.f19471a.f12531b.d(), " ", null, null, null, 62));
        h.i(builderAppendQueryParameter2, "parse(authorization_endpoint).buildUpon()\n            .appendQueryParameter(\"redirect_uri\", configuration.settings.redirectURI.toString())\n            .appendQueryParameter(\"client_id\", configuration.settings.clientID)\n            .appendQueryParameter(\"response_type\", \"code\")\n            .appendQueryParameter(\"code_challenge\", pkce.challenge)\n            .appendQueryParameter(\"code_challenge_method\", pkce.challengeMethod)\n            .appendQueryParameter(\"state\", generateRandomState())\n            .appendQueryParameter(\"nonce\", generateRandomState())\n            .appendQueryParameter(\"scope\", configuration.settings.scopes.joinToString(\" \"))");
        if (aVar2 != null) {
            builderAppendQueryParameter2.appendQueryParameter("max_age", String.valueOf(zd.a.i(aVar2.f19482h)));
        }
        Uri uriBuild = builderAppendQueryParameter2.build();
        h.i(uriBuild, "uriBuilder.build()");
        Intent intent = this.f19472b;
        if (intent == null) {
            h.C("customTabsIntent");
            throw null;
        }
        intent.setData(uriBuild);
        Intent intent2 = this.f19472b;
        if (intent2 == null) {
            h.C("customTabsIntent");
            throw null;
        }
        int i10 = AuthorizationManagementActivity.f5927j;
        Intent intent3 = new Intent(pVar, (Class<?>) AuthorizationManagementActivity.class);
        intent3.putExtra("authIntent", intent2);
        return c.b(pVar, intent3, dVar);
    }

    public final String c() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 11);
        h.i(strEncodeToString, "encodeToString(\n            random,\n            Base64.NO_WRAP or Base64.NO_PADDING or Base64.URL_SAFE\n        )");
        return strEncodeToString;
    }
}
