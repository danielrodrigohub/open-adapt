package com.newrelic.agent.android.instrumentation;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JSONObjectInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "JSON"));

    @TraceConstructor
    public static JSONObject init(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Failed to initialize JSONObject: json string is null.");
        }
        try {
            TraceMachine.enterMethod(null, "JSONObject#<init>", categoryParams);
            JSONObject jSONObject = new JSONObject(str);
            TraceMachine.exitMethod();
            return jSONObject;
        } catch (JSONException e10) {
            TraceMachine.exitMethod();
            throw e10;
        }
    }

    @ReplaceCallSite(scope = "org.json.JSONObject")
    public static String toString(JSONObject jSONObject) {
        TraceMachine.enterMethod(null, "JSONObject#toString", categoryParams);
        String string = jSONObject.toString();
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "org.json.JSONObject")
    public static String toString(JSONObject jSONObject, int i10) throws JSONException {
        try {
            TraceMachine.enterMethod(null, "JSONObject#toString", categoryParams);
            String string = jSONObject.toString(i10);
            TraceMachine.exitMethod();
            return string;
        } catch (JSONException e10) {
            TraceMachine.exitMethod();
            throw e10;
        }
    }
}
