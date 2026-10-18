package sb;

import a0.d;
import androidx.lifecycle.o;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JsonUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static String a(JSONObject jSONObject, String str) throws JSONException {
        if (!jSONObject.has(str)) {
            return null;
        }
        String string = jSONObject.getString(str);
        if (string != null) {
            return string;
        }
        throw new JSONException(d.c("field \"", str, "\" is mapped to a null value"));
    }

    public static void b(JSONObject jSONObject, String str, int i10) {
        o.f(Integer.valueOf(i10), "value must not be null");
        try {
            jSONObject.put(str, i10);
        } catch (JSONException unused) {
            throw new IllegalStateException("JSONException thrown in violation of contract, ex");
        }
    }

    public static void c(JSONObject jSONObject, String str, String str2) {
        if (str2 == null) {
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e10) {
            throw new IllegalStateException("JSONException thrown in violation of contract", e10);
        }
    }
}
