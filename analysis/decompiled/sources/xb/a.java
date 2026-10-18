package xb;

import androidx.lifecycle.o;
import ed.e;
import fd.f;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonPrimitive;
import p4.h;

/* JADX INFO: compiled from: IdentityToken.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final C0316a Companion = new C0316a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f18121a;

    /* JADX INFO: renamed from: xb.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: IdentityToken.kt */
    public static final class C0316a {
        public final a a(String str, e eVar) throws Throwable {
            Object objG;
            h.j(str, "<this>");
            h.j(eVar, "telemetryProvider");
            try {
                objG = new a(str);
            } catch (Throwable th) {
                objG = d3.e.g(th);
            }
            Throwable thA = f.a(objG);
            if (thA != null) {
                eVar.b(new ed.b(5, "JWT_Conversion_Failed", h.B("Failed to convert JWT into IdentityToken with error: ", thA), ec.b.a(ec.b.b(thA), null, null, 0, 30), ec.a.f6718a.a(o.z(ec.a.f6722e, ec.a.f6723f))));
            }
            d3.e.p(objG);
            return (a) objG;
        }
    }

    public a(String str) {
        this.f18121a = new b(str);
    }

    public final String a() {
        JsonPrimitive jsonPrimitive;
        JsonElement jsonElement = this.f18121a.b().get("email");
        if (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null) {
            return null;
        }
        return jsonPrimitive.getContent();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final int b() {
        JsonPrimitive jsonPrimitive;
        JsonElement jsonElement = this.f18121a.b().get("flow");
        String content = (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null) ? null : jsonPrimitive.getContent();
        if (content != null) {
            switch (content.hashCode()) {
                case -1452371317:
                    if (content.equals("PASSWORD_RESET")) {
                        return 4;
                    }
                    break;
                case 2282794:
                    if (content.equals("JOIN")) {
                        return 2;
                    }
                    break;
                case 72611657:
                    if (content.equals("LOGIN")) {
                        return 1;
                    }
                    break;
                case 215424167:
                    if (content.equals("CONTINUE")) {
                        return 3;
                    }
                    break;
            }
        }
        return 0;
    }

    public final String c() {
        JsonPrimitive jsonPrimitive;
        JsonElement jsonElement = this.f18121a.b().get("phone_number");
        if (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null) {
            return null;
        }
        return jsonPrimitive.getContent();
    }

    public final String toString() {
        JsonPrimitive jsonPrimitive;
        JsonPrimitive jsonPrimitive2;
        StringBuilder sbC = a0.b.c("IdentityToken(upmId=");
        String str = this.f18121a.f18123b.f18125b;
        if (str == null) {
            throw new ob.e.C0224e("Missing subject in JWT (which maps to upmID)", null);
        }
        sbC.append(str);
        sbC.append(", email=");
        sbC.append((Object) a());
        sbC.append(", phone=");
        sbC.append((Object) c());
        sbC.append(", isEmailVerified=");
        JsonElement jsonElement = this.f18121a.b().get("email_verified");
        boolean z10 = false;
        sbC.append((jsonElement == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement)) == null) ? false : JsonElementKt.getBoolean(jsonPrimitive2));
        sbC.append(", isPhoneNumberVerified=");
        JsonElement jsonElement2 = this.f18121a.b().get("phone_number_verified");
        if (jsonElement2 != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement2)) != null) {
            z10 = JsonElementKt.getBoolean(jsonPrimitive);
        }
        sbC.append(z10);
        sbC.append(')');
        return sbC.toString();
    }
}
