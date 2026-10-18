package ec;

import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import fa.m;
import fd.e;
import gd.z;
import java.util.Collections;
import java.util.Map;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.json.JSONObject;
import p4.h;
import retrofit2.HttpException;

/* JADX INFO: compiled from: TelemetryExt.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b {
    public static Map a(String str, Long l10, Integer num, int i10, int i11) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 2) != 0) {
            l10 = null;
        }
        if ((i11 & 8) != 0) {
            num = null;
        }
        if ((i11 & 16) != 0) {
            i10 = 0;
        }
        Map mapA = z.A(new e(ed.a.f6730c, "consumer"), new e(ed.a.f6734g, "oidc"), new e(ed.a.f6732e, "OIDCAuthComponent"), new e(ed.a.f6733f, "0.13.0"));
        if (str != null) {
            mapA.put(ed.a.f6731d, str);
        }
        if (l10 != null) {
            long jLongValue = l10.longValue();
            ed.a aVar = ed.a.f6736i;
            Map mapSingletonMap = Collections.singletonMap("expirationDate", Long.valueOf(jLongValue));
            h.i(mapSingletonMap, "singletonMap(pair.first, pair.second)");
            String string = JSONObjectInstrumentation.toString(new JSONObject(mapSingletonMap));
            h.i(string, "JSONObject(\n                mapOf(AttributeKeys.EXPIRATION_DATE to it)\n            ).toString()");
            mapA.put(aVar, string);
        }
        if (num != null) {
            mapA.put(ed.a.f6735h, String.valueOf(num.intValue()));
        }
        if (i10 != 0) {
            mapA.put(ed.a.f6736i, m.f(i10));
        }
        return mapA;
    }

    public static final String b(Throwable th) {
        return th instanceof ob.e ? ((ob.e) th).f12534h : th.toString();
    }

    public static final Integer c(Throwable th) {
        if ((th instanceof com.nike.authcomponent.oidc.internal.appauth.source.a) && ((com.nike.authcomponent.oidc.internal.appauth.source.a) th).f5931h == 2) {
            return Integer.valueOf(HttpStatusCodesKt.HTTP_BAD_REQUEST);
        }
        if (th instanceof HttpException) {
            return Integer.valueOf(((HttpException) th).code());
        }
        return null;
    }

    public static final void d(ed.e eVar, Throwable th) {
        h.j(eVar, "<this>");
        h.j(th, "throwable");
        eVar.b(new ed.b(4, "Revoke_Refresh_Token_Failed", h.B("Revoke refresh token failed with error: ", th), a(b(th), null, c(th), 0, 22), a.f6718a.a(o.z(a.f6722e, a.f6723f, a.f6724g))));
    }

    public static final void e(ed.e eVar, ob.e eVar2) {
        h.j(eVar, "<this>");
        if (eVar2 instanceof ob.e.c) {
            eVar.b(new ed.b(3, "Sign_In_Cancelled", "User cancelled sign in", a(null, null, null, 0, 31), a.f6718a.a(o.z(a.f6721d, a.f6722e, a.f6725h))));
            return;
        }
        if (eVar2 instanceof ob.e.a) {
            eVar.b(new ed.b(5, "Browser_Not_Found", "Unable to start authorization flow due to a browser not being found on the device.", a(eVar2.f12534h, null, null, 0, 30), a.f6718a.a(o.z(a.f6723f, a.f6725h))));
            return;
        }
        String strB = h.B("User sign in failed with error: ", eVar2);
        String str = eVar2.f12534h;
        Throwable th = eVar2.f12535i;
        eVar.b(new ed.b(4, "Sign_In_Failed", strB, a(str, null, th == null ? null : c(th), 0, 22), a.f6718a.a(o.z(a.f6722e, a.f6723f, a.f6725h))));
    }

    public static final void f(ed.e eVar, ob.b bVar) {
        h.j(eVar, "<this>");
        eVar.b(new ed.b(3, "Sign_In_Succeeded", "User successfully signed in", a(null, Long.valueOf(bVar.getExpirationDate()), null, 0, 29), a.f6718a.a(o.z(a.f6722e, a.f6725h))));
    }
}
