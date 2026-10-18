package jb;

import a1.f;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p4.h;

/* JADX INFO: compiled from: TelemetryMarshaller.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a {
    public static final String a(List list) throws JSONException {
        h.j(list, "telemetryInfo");
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            kb.a aVar = (kb.a) it.next();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, "android");
            jSONObject.put(AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE, "Log");
            jSONObject.put("appID", aVar.f9771f);
            jSONObject.put("appVersion", aVar.f9772g);
            jSONObject.put(AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE, aVar.f9773h);
            jSONObject.put(AnalyticsAttribute.OS_VERSION_ATTRIBUTE, aVar.f9774i);
            jSONObject.put("libraryID", aVar.f9775j);
            jSONObject.put("libraryVersion", aVar.f9776k);
            jSONObject.put(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE, aVar.f9767b);
            jSONObject.put("message", aVar.f9768c);
            jSONObject.put("logType", f.a(aVar.f9769d));
            jSONObject.put("sessionID", aVar.f9770e);
            jSONObject.put("timezone", aVar.f9777l);
            jSONObject.put(AnalyticsAttribute.USER_ID_ATTRIBUTE, aVar.f9778m);
            jSONObject.put("telemetry_uuid", aVar.f9783r);
            if (!aVar.f9779n.isEmpty()) {
                jSONObject.put("attributes", new JSONObject(aVar.f9779n));
            }
            jSONArray.put(jSONObject);
        }
        String string = JSONArrayInstrumentation.toString(jSONArray);
        h.i(string, "JSONArray().also { logs …   }\n        }.toString()");
        return string;
    }
}
