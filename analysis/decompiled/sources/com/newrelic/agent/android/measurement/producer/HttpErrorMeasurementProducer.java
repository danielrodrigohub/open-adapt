package com.newrelic.agent.android.measurement.producer;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.ThreadInfo;
import com.newrelic.agent.android.measurement.http.HttpErrorMeasurement;
import com.newrelic.agent.android.util.Util;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpErrorMeasurementProducer extends BaseMeasurementProducer {
    public static final String HTTP_METHOD_PARAMS_KEY = "http_method";
    public static final String WAN_TYPE_PARAMS_KEY = "wan_type";
    private static final AgentLog log = AgentLogManager.getAgentLog();

    public HttpErrorMeasurementProducer() {
        super(MeasurementType.HttpError);
    }

    private String getSanitizedStackTrace() {
        StringBuilder sb2 = new StringBuilder();
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int i10 = 0;
        for (int i11 = 0; i11 < stackTrace.length; i11++) {
            StackTraceElement stackTraceElement = stackTrace[i11];
            if (!shouldFilterStackTraceElement(stackTraceElement)) {
                sb2.append(stackTraceElement.toString());
                if (i11 <= stackTrace.length - 1) {
                    sb2.append("\n");
                }
                i10++;
                if (i10 >= Agent.getStackTraceLimit()) {
                    break;
                }
            }
        }
        return sb2.toString();
    }

    private boolean shouldFilterStackTraceElement(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        if (className.startsWith("com.newrelic")) {
            return true;
        }
        if (className.startsWith("dalvik.system.VMStack") && methodName.startsWith("getThreadStackTrace")) {
            return true;
        }
        return className.startsWith("java.lang.Thread") && methodName.startsWith("getStackTrace");
    }

    public void produceMeasurement(String str, String str2, int i10, int i11, String str3, Map<String, String> map, ThreadInfo threadInfo) {
        HttpErrorMeasurement httpErrorMeasurement = new HttpErrorMeasurement(str, i10);
        httpErrorMeasurement.setHttpMethod(str2);
        httpErrorMeasurement.setErrorCode(i11);
        httpErrorMeasurement.setResponseBody(str3);
        httpErrorMeasurement.setParams(map);
        httpErrorMeasurement.setThreadInfo(threadInfo);
        httpErrorMeasurement.setTotalTime(0.0d);
        produceMeasurement(httpErrorMeasurement);
    }

    public void produceMeasurement(HttpErrorMeasurement httpErrorMeasurement) {
        String strSanitizeUrl = Util.sanitizeUrl(httpErrorMeasurement.getUrl());
        if (strSanitizeUrl == null) {
            log.error("HttpErrorMeasurementProducer.produceMeasurement: URL is null");
            return;
        }
        Map<String, String> params = httpErrorMeasurement.getParams();
        if (params == null) {
            params = new HashMap<>();
        }
        params.put(HTTP_METHOD_PARAMS_KEY, httpErrorMeasurement.getHttpMethod());
        params.put(WAN_TYPE_PARAMS_KEY, Agent.getActiveNetworkWanType());
        httpErrorMeasurement.setUrl(strSanitizeUrl);
        httpErrorMeasurement.setParams(params);
        httpErrorMeasurement.setStackTrace(getSanitizedStackTrace());
        httpErrorMeasurement.setWanType(Agent.getActiveNetworkWanType());
        super.produceMeasurement((Measurement) httpErrorMeasurement);
    }
}
