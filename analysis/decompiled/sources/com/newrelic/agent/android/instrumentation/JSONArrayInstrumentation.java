package com.newrelic.agent.android.instrumentation;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class JSONArrayInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "JSON"));

    @TraceConstructor
    public static JSONArray init(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Failed to initialize JSONArray: json string is null.");
        }
        try {
            TraceMachine.enterMethod("JSONArray#<init>", categoryParams);
            JSONArray jSONArray = new JSONArray(str);
            TraceMachine.exitMethod();
            return jSONArray;
        } catch (JSONException e10) {
            TraceMachine.exitMethod();
            throw e10;
        }
    }

    @ReplaceCallSite(scope = "org.json.JSONArray")
    public static String toString(JSONArray jSONArray) {
        TraceMachine.enterMethod("JSONArray#toString", categoryParams);
        String string = jSONArray.toString();
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "org.json.JSONArray")
    public static String toString(JSONArray jSONArray, int i10) throws JSONException {
        try {
            TraceMachine.enterMethod("JSONArray#toString", categoryParams);
            String string = jSONArray.toString(i10);
            TraceMachine.exitMethod();
            return string;
        } catch (JSONException e10) {
            TraceMachine.exitMethod();
            throw e10;
        }
    }
}
