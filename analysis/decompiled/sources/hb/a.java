package hb;

import com.newrelic.agent.android.instrumentation.Instrumented;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p4.h;

/* JADX INFO: compiled from: AttributeConverters.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a {
    public final List<Object> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                Object objC = jSONArray.get(i10);
                if (objC instanceof JSONArray) {
                    objC = a((JSONArray) objC);
                } else if (objC instanceof JSONObject) {
                    objC = c((JSONObject) objC);
                }
                arrayList.add(objC);
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        return arrayList;
    }

    public final Map<String, Object> b(String str) {
        h.j(str, "value");
        return c(new JSONObject(str));
    }

    public final Map<String, Object> c(JSONObject jSONObject) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objC = jSONObject.get(next);
            if (objC instanceof JSONArray) {
                objC = a((JSONArray) objC);
            } else if (objC instanceof JSONObject) {
                objC = c((JSONObject) objC);
            }
            h.i(next, "key");
            h.i(objC, "value");
            linkedHashMap.put(next, objC);
        }
        return linkedHashMap;
    }
}
