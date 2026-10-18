package com.newrelic.agent.android;

import a0.b;
import android.content.Context;
import android.text.TextUtils;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.agentdata.AgentDataController;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.analytics.EventListener;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.distributedtracing.DistributedTracing;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.distributedtracing.TraceListener;
import com.newrelic.agent.android.hybrid.StackTrace;
import com.newrelic.agent.android.hybrid.data.DataController;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.logging.AndroidAgentLog;
import com.newrelic.agent.android.logging.NullAgentLog;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.metric.MetricUnit;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.tracing.TracingInactiveException;
import com.newrelic.agent.android.util.Constants;
import com.newrelic.agent.android.util.NetworkFailure;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import k1.a;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
public final class NewRelic {
    private static final String UNKNOWN_HTTP_REQUEST_TYPE = "unknown";
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public static final AgentConfiguration agentConfiguration = new AgentConfiguration();
    public static boolean started = false;
    public boolean loggingEnabled = true;
    public int logLevel = 3;

    public NewRelic(String str) {
        agentConfiguration.setApplicationToken(str);
    }

    public static void _noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3, Map<String, String> map, String str4) {
        noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, str4, null);
    }

    private static void checkEmpty(String str, String str2) {
        checkNull(str, str2);
        if (str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }

    private static boolean checkNegative(int i10, String str) {
        if (i10 >= 0) {
            return false;
        }
        log.error(str);
        if (!FeatureFlag.featureEnabled(FeatureFlag.HandledExceptions)) {
            return true;
        }
        recordHandledException((Exception) new RuntimeException(str));
        return true;
    }

    private static void checkNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void crashNow() {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "crashNow"));
        crashNow("This is a demonstration crash courtesy of New Relic");
    }

    public static String currentSessionId() {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "currentSessionId"));
        return agentConfiguration.getSessionID();
    }

    public static void disableFeature(FeatureFlag featureFlag) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "disableFeature/<state>").replace(MetricNames.TAG_STATE, featureFlag.name()));
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Disable feature: ");
        sbC.append(featureFlag.name());
        agentLog.debug(sbC.toString());
        FeatureFlag.disableFeature(featureFlag);
    }

    public static void enableFeature(FeatureFlag featureFlag) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "enableFeature/<state>").replace(MetricNames.TAG_STATE, featureFlag.name()));
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Enable feature: ");
        sbC.append(featureFlag.name());
        agentLog.debug(sbC.toString());
        FeatureFlag.enableFeature(featureFlag);
    }

    public static void endInteraction(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "endInteraction"));
        log.debug("NewRelic.endInteraction invoked. id: " + str);
        TraceMachine.endTrace(str);
    }

    public static void endMethodTrace() {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "endMethodTrace"));
        log.debug("NewRelic.endMethodTrace invoked.");
        TraceMachine.exitMethod();
    }

    public static boolean incrementAttribute(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "incrementAttribute(String)"));
        return AnalyticsControllerImpl.getInstance().incrementAttribute(str, 1.0d);
    }

    private boolean isInstrumented() {
        return true;
    }

    public static boolean isStarted() {
        return started;
    }

    private void logRecourse() {
        log.error("Failed to detect New Relic instrumentation. The current runtime variant may be excluded from instrumentation, or instrumentation failed during your build process. Please visit http://support.newrelic.com.");
    }

    public static TraceContext noticeDistributedTrace(Map<String, String> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "noticeDistributedTrace"));
        return TraceContext.createTraceContext(map);
    }

    public static void noticeHttpTransaction(Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "noticeHttpTransaction(Map Attribute)"));
        try {
            noticeHttpTransaction((String) map.get("url"), (String) map.get("httpMethod"), Integer.parseInt((String) map.get(AnalyticsAttribute.STATUS_CODE_ATTRIBUTE)), Long.parseLong((String) map.get("startTimeMs")), Long.parseLong((String) map.get("endTimeMs")), Long.parseLong((String) map.get(AnalyticsAttribute.BYTES_SENT_ATTRIBUTE)), Long.parseLong((String) map.get(AnalyticsAttribute.BYTES_RECEIVED_ATTRIBUTE)), (String) map.get("responseBody"), null, (String) map.get("appData"), (Map) map.get("traceAttributes"));
        } catch (NumberFormatException e10) {
            log.error(e10.getMessage());
            recordHandledException((Exception) e10);
        }
    }

    public static void noticeNetworkFailure(Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "noticeNetworkFailure(Map Attribute)"));
        try {
            noticeNetworkFailure((String) map.get("url"), (String) map.get("httpMethod"), Long.parseLong((String) map.get("startTimeMs")), Long.parseLong((String) map.get("endTimeMs")), NetworkFailure.fromErrorCode(Integer.parseInt((String) map.get("errorCode"))), (String) map.get("message"), (Map) map.get("traceAttributes"));
        } catch (NumberFormatException e10) {
            log.error(e10.getMessage());
            recordHandledException((Exception) e10);
        }
    }

    public static boolean recordBreadcrumb(String str) {
        return recordBreadcrumb(str, null);
    }

    public static boolean recordCustomEvent(String str, Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "recordCustomEvent"));
        if (map == null) {
            map = new HashMap<>();
        }
        return AnalyticsControllerImpl.getInstance().recordCustomEvent(str, map);
    }

    @Deprecated
    public static boolean recordEvent(String str, Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_DEPRECATED.replace(MetricNames.TAG_NAME, "recordEvent"));
        if (map == null) {
            map = new HashMap<>();
        }
        return AnalyticsControllerImpl.getInstance().recordEvent(str, map);
    }

    public static boolean recordHandledException(Exception exc) {
        return recordHandledException(exc, (Map<String, Object>) null);
    }

    public static boolean recordJSErrorException(StackTrace stackTrace) {
        return DataController.sendAgentData(stackTrace);
    }

    @Deprecated
    public static void recordMetric(String str, String str2, int i10, double d10, double d11) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_DEPRECATED.replace(MetricNames.TAG_NAME, "recordMetric"));
        recordMetric(str, str2, i10, d10, d11, null, null);
    }

    public static boolean removeAllAttributes() {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "removeAllAttribute"));
        return AnalyticsControllerImpl.getInstance().removeAllAttributes();
    }

    public static boolean removeAttribute(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "removeAttribute"));
        return AnalyticsControllerImpl.getInstance().removeAttribute(str);
    }

    public static boolean setAttribute(String str, String str2) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setAttribute(String,String)"));
        return AnalyticsControllerImpl.getInstance().setAttribute(str, str2);
    }

    public static void setEventListener(EventListener eventListener) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setEventListener"));
        AnalyticsControllerImpl.getInstance().getEventManager().setEventListener(eventListener);
    }

    public static void setInteractionName(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setInteractionName"));
        TraceMachine.setRootDisplayName(str);
    }

    public static void setMaxEventBufferTime(int i10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setMaxEventBufferTime"));
        AnalyticsControllerImpl.getInstance().setMaxEventBufferTime(i10);
    }

    public static void setMaxEventPoolSize(int i10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setMaxEventPoolSize"));
        AnalyticsControllerImpl.getInstance().setMaxEventPoolSize(i10);
    }

    public static boolean setUserId(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setUserId"));
        return AnalyticsControllerImpl.getInstance().setAttribute(AnalyticsAttribute.USER_ID_ATTRIBUTE, str);
    }

    @Deprecated
    public static void shutdown() {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_DEPRECATED.replace(MetricNames.TAG_NAME, "shutdown"));
        if (started) {
            try {
                Agent.getImpl().stop();
            } finally {
                Agent.setImpl(NullAgentImpl.instance);
                started = false;
            }
        }
    }

    public static String startInteraction(String str) {
        checkNull(str, "startInteraction: actionName must be an action/method name.");
        log.debug("NewRelic.startInteraction invoked with actionName: " + str);
        TraceMachine.startTracing(str.replace("/", "."), true, FeatureFlag.featureEnabled(FeatureFlag.InteractionTracing));
        try {
            return TraceMachine.getActivityTrace().getId();
        } catch (TracingInactiveException unused) {
            return null;
        }
    }

    public static void startMethodTrace(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "startMethodTrace"));
        checkNull(str, "startMethodTrace: actionName must be an action/method name.");
        TraceMachine.enterMethod(str);
    }

    public static NewRelic withApplicationToken(String str) {
        return new NewRelic(str);
    }

    public void start(Context context) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "start"));
        if (started) {
            log.debug("NewRelic is already running.");
            return;
        }
        try {
            AgentLogManager.setAgentLog(this.loggingEnabled ? new AndroidAgentLog() : new NullAgentLog());
            AgentLog agentLog = log;
            agentLog.setLevel(this.logLevel);
            if (!InstantApps.isInstantApp(context) && !isInstrumented()) {
                logRecourse();
                return;
            }
            AndroidAgentImpl.init(context, agentConfiguration);
            started = true;
            if (agentLog.getLevel() >= 6) {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                if (stackTrace.length > 3) {
                    StackTraceElement stackTraceElement = stackTrace[3];
                    agentLog.audit("Agent started from " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber());
                }
            }
        } catch (Throwable th) {
            log.error("Error occurred while starting the New Relic agent!", th);
            logRecourse();
        }
    }

    public NewRelic usingCollectorAddress(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "usingCollectorAddress"));
        agentConfiguration.setCollectorHost(str);
        return this;
    }

    public NewRelic usingCrashCollectorAddress(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "usingCrashCollectorAddress"));
        agentConfiguration.setCrashCollectorHost(str);
        return this;
    }

    @Deprecated
    public NewRelic usingSsl(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_DEPRECATED.replace(MetricNames.TAG_NAME, "usingSsl"));
        agentConfiguration.setUseSsl(z10);
        return this;
    }

    @Deprecated
    public NewRelic withAnalyticsEvents(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withAnalyticsEvents/<state>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        agentConfiguration.setEnableAnalyticsEvents(z10);
        if (z10) {
            enableFeature(FeatureFlag.AnalyticsEvents);
        } else {
            disableFeature(FeatureFlag.AnalyticsEvents);
        }
        return this;
    }

    public NewRelic withApplicationBuild(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withApplicationBuild"));
        if (!TextUtils.isEmpty(str)) {
            agentConfiguration.setCustomBuildIdentifier(str);
        }
        return this;
    }

    public NewRelic withApplicationFramework(ApplicationFramework applicationFramework, String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withApplicationFramework").replace(MetricNames.TAG_FRAMEWORK, applicationFramework != null ? applicationFramework.name() : "<missing>").replace(MetricNames.TAG_FRAMEWORK_VERSION, str != null ? str : ""));
        if (applicationFramework != null) {
            agentConfiguration.setApplicationFramework(applicationFramework);
        }
        agentConfiguration.setApplicationFrameworkVersion(str);
        return this;
    }

    public NewRelic withApplicationVersion(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withApplicationVersion/<state>").replace(MetricNames.TAG_STATE, str));
        if (str != null) {
            agentConfiguration.setCustomApplicationVersion(str);
        }
        return this;
    }

    @Deprecated
    public NewRelic withBuildIdentifier(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withBuildIdentifier"));
        return withApplicationBuild(str);
    }

    public NewRelic withCrashReportingEnabled(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withCrashReportingEnabled/<state>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        agentConfiguration.setReportCrashes(z10);
        return this;
    }

    @Deprecated
    public NewRelic withDefaultInteractions(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withDefaultInteractions/<state>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        if (z10) {
            enableFeature(FeatureFlag.DefaultInteractions);
        } else {
            disableFeature(FeatureFlag.DefaultInteractions);
        }
        return this;
    }

    public NewRelic withDeviceID(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withDeviceID"));
        agentConfiguration.setDeviceID(str);
        return this;
    }

    public NewRelic withDistributedTraceListener(TraceListener traceListener) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withDistributedTraceListener"));
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            DistributedTracing.setDistributedTraceListener(traceListener);
        }
        return this;
    }

    @Deprecated
    public NewRelic withHttpResponseBodyCaptureEnabled(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withHttpResponseBodyCaptureEnabled/<state>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        if (z10) {
            enableFeature(FeatureFlag.HttpResponseBodyCapture);
        } else {
            disableFeature(FeatureFlag.HttpResponseBodyCapture);
        }
        return this;
    }

    @Deprecated
    public NewRelic withInteractionTracing(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withInteractionTracing/<state>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        if (z10) {
            enableFeature(FeatureFlag.InteractionTracing);
        } else {
            disableFeature(FeatureFlag.InteractionTracing);
        }
        return this;
    }

    @Deprecated
    public NewRelic withLocationServiceEnabled(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_DEPRECATED.replace(MetricNames.TAG_NAME, "withLocationServiceEnabled/<name>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        agentConfiguration.setUseLocationService(z10);
        return this;
    }

    public NewRelic withLogLevel(int i10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withLogLevel/<state>").replace(MetricNames.TAG_STATE, Integer.toString(i10)));
        this.logLevel = i10;
        return this;
    }

    public NewRelic withLoggingEnabled(boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "withLoggingEnabled/<state>").replace(MetricNames.TAG_STATE, Boolean.toString(z10)));
        this.loggingEnabled = z10;
        return this;
    }

    public static boolean recordBreadcrumb(String str, Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "recordBreadcrumb"));
        if (map == null) {
            map = new HashMap<>();
        }
        if (str != null && !str.isEmpty()) {
            map.put("name", str);
        }
        return AnalyticsControllerImpl.getInstance().recordBreadcrumb(str, map);
    }

    public static boolean recordHandledException(Exception exc, Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "recordHandledException"));
        if (map == null) {
            map = new HashMap<>();
        }
        return recordHandledException((Throwable) exc, map);
    }

    public static void crashNow(String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "crashNow(String)"));
        throw new RuntimeException(str);
    }

    public static boolean incrementAttribute(String str, double d10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "incrementAttribute(String, double)"));
        return AnalyticsControllerImpl.getInstance().incrementAttribute(str, d10);
    }

    public static void recordMetric(String str, String str2, int i10, double d10, double d11, MetricUnit metricUnit, MetricUnit metricUnit2) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "recordMetric"));
        AgentLog agentLog = log;
        StringBuilder sbA = a.a("NewRelic.recordMetric invoked for name ", str, ", category: ", str2, ", count: ");
        sbA.append(i10);
        sbA.append(", totalValue ");
        sbA.append(d10);
        sbA.append(", exclusiveValue: ");
        sbA.append(d11);
        sbA.append(", countUnit: ");
        sbA.append(metricUnit);
        sbA.append(", valueUnit: ");
        sbA.append(metricUnit2);
        agentLog.debug(sbA.toString());
        checkNull(str2, "recordMetric: category must not be null. If no MetricCategory is applicable, use MetricCategory.NONE.");
        checkEmpty(str, "recordMetric: name must not be empty.");
        if (checkNegative(i10, "recordMetric: count must not be negative.")) {
            return;
        }
        Measurements.addCustomMetric(str, str2, i10, d10, d11, metricUnit, metricUnit2);
    }

    public static boolean setAttribute(String str, double d10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setAttribute(String,double)"));
        return AnalyticsControllerImpl.getInstance().setAttribute(str, d10);
    }

    public static String startInteraction(Context context, String str) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_DEPRECATED.replace(MetricNames.TAG_NAME, "startInteraction"));
        checkNull(context, "startInteraction: context must be an Activity instance.");
        checkNull(str, "startInteraction: actionName must be an action/method name.");
        log.debug("NewRelic.startInteraction invoked with actionName: " + str);
        TraceMachine.startTracing(context.getClass().getSimpleName() + "#" + str.replace("/", "."), false, FeatureFlag.featureEnabled(FeatureFlag.InteractionTracing));
        try {
            return TraceMachine.getActivityTrace().getId();
        } catch (TracingInactiveException unused) {
            return null;
        }
    }

    public static boolean recordCustomEvent(String str, String str2, Map<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        if (str2 != null && !str2.isEmpty()) {
            map.put("name", str2);
        }
        return recordCustomEvent(str, map);
    }

    public static boolean recordHandledException(Throwable th) {
        return recordHandledException(th, (Map<String, Object>) null);
    }

    public static boolean recordHandledException(Throwable th, Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "recordThrowable"));
        if (map == null) {
            map = new HashMap<>();
        }
        return AgentDataController.sendAgentData(th, map);
    }

    public static boolean setAttribute(String str, boolean z10) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "setAttribute(String,boolean)"));
        return AnalyticsControllerImpl.getInstance().setAttribute(str, z10);
    }

    @Deprecated
    public static String startInteraction(Context context, String str, boolean z10) {
        if (TraceMachine.isTracingActive() && !z10) {
            log.warning("startInteraction: An interaction is already being traced, and invalidateActiveTrace is false. This interaction will not be traced.");
            return null;
        }
        return startInteraction(context, str);
    }

    public static void noticeNetworkFailure(String str, String str2, long j10, long j11, NetworkFailure networkFailure, String str3) {
        noticeNetworkFailure(str, str2, j10, j11, networkFailure, str3, null);
    }

    public static void noticeNetworkFailure(String str, String str2, long j10, long j11, NetworkFailure networkFailure) {
        noticeNetworkFailure(str, str2, j10, j11, networkFailure, "", null);
    }

    public static void noticeNetworkFailure(String str, String str2, long j10, long j11, Exception exc) {
        checkEmpty(str, "noticeHttpException: url must not be empty.");
        noticeNetworkFailure(str, str2, j10, j11, NetworkFailure.exceptionToNetworkFailure(exc), exc.getMessage());
    }

    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13) {
        _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, null, null, null);
    }

    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3) {
        _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, null, null);
    }

    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3, Map<String, String> map) {
        _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, null);
    }

    @Deprecated
    public static void noticeNetworkFailure(String str, long j10, long j11, NetworkFailure networkFailure) {
        noticeNetworkFailure(str, "unknown", j10, j11, networkFailure);
    }

    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3, Map<String, String> map, String str4) {
        _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, str4);
    }

    @Deprecated
    public static void noticeNetworkFailure(String str, long j10, long j11, Exception exc) {
        noticeNetworkFailure(str, "unknown", j10, j11, exc);
    }

    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3, Map<String, String> map, URLConnection uRLConnection) {
        String headerField;
        if (uRLConnection != null && (headerField = uRLConnection.getHeaderField(Constants.Network.CROSS_PROCESS_ID_HEADER)) != null && headerField.length() > 0) {
            _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, headerField);
        } else {
            _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, null);
        }
    }

    public static void noticeNetworkFailure(String str, String str2, long j10, long j11, NetworkFailure networkFailure, String str3, Map<String, Object> map) {
        StatsEngine.notice().inc(MetricNames.SUPPORTABILITY_API.replace(MetricNames.TAG_NAME, "_noticeNetworkFailure"));
        float f10 = j11 - j10;
        if (checkNegative((int) f10, "_noticeNetworkFailure: the startTimeMs is later than the endTimeMs, resulting in a negative total time.")) {
            return;
        }
        float f11 = f10 / 1000.0f;
        HashMap map2 = new HashMap();
        map2.put(Constants.Transactions.CONTENT_LENGTH, AgentConfiguration.DEFAULT_DEVICE_UUID);
        map2.put(Constants.Transactions.CONTENT_TYPE, "text/html");
        TransactionData transactionData = new TransactionData(str, str2, Agent.getActiveNetworkCarrier(), f11, NetworkFailure.Unknown.getErrorCode(), networkFailure.getErrorCode(), 0L, 0L, null, Agent.getActiveNetworkWanType(), null, str3, map2, map);
        TaskQueue.queue(new HttpTransactionMeasurement(transactionData));
        Measurements.addHttpError(transactionData);
    }

    public static void recordMetric(String str, String str2, double d10) {
        recordMetric(str, str2, 1, d10, d10, null, null);
    }

    public static void recordMetric(String str, String str2) {
        recordMetric(str, str2, 1.0d);
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3, Map<String, String> map, HttpResponse httpResponse) {
        Header firstHeader;
        if (httpResponse != null && (firstHeader = httpResponse.getFirstHeader(Constants.Network.CROSS_PROCESS_ID_HEADER)) != null && firstHeader.getValue() != null && firstHeader.getValue().length() > 0) {
            _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, firstHeader.getValue());
        } else {
            _noticeHttpTransaction(str, str2, i10, j10, j11, j12, j13, str3, map, null);
        }
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, int i10, long j10, long j11, long j12, long j13, String str2, Map<String, String> map, HttpResponse httpResponse) {
        noticeHttpTransaction(str, "unknown", i10, j10, j11, j12, j13, str2, map, httpResponse);
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, int i10, long j10, long j11, long j12, long j13, String str2, Map<String, String> map, URLConnection uRLConnection) {
        noticeHttpTransaction(str, "unknown", i10, j10, j11, j12, j13, str2, map, uRLConnection);
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, int i10, long j10, long j11, long j12, long j13) {
        _noticeHttpTransaction(str, "unknown", i10, j10, j11, j12, j13, null, null, null);
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, int i10, long j10, long j11, long j12, long j13, String str2) {
        _noticeHttpTransaction(str, "unknown", i10, j10, j11, j12, j13, str2, null, null);
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, int i10, long j10, long j11, long j12, long j13, String str2, Map<String, String> map) {
        _noticeHttpTransaction(str, "unknown", i10, j10, j11, j12, j13, str2, map, null);
    }

    @Deprecated
    public static void noticeHttpTransaction(String str, int i10, long j10, long j11, long j12, long j13, String str2, Map<String, String> map, String str3) {
        _noticeHttpTransaction(str, "unknown", i10, j10, j11, j12, j13, str2, map, str3);
    }

    public static void noticeHttpTransaction(String str, String str2, int i10, long j10, long j11, long j12, long j13, String str3, Map<String, String> map, String str4, Map<String, Object> map2) {
        checkEmpty(str, "noticeHttpTransaction: url must not be empty.");
        checkEmpty(str2, "noticeHttpTransaction: httpMethod must not be empty.");
        try {
            new URL(str);
            float f10 = j11 - j10;
            if (checkNegative((int) f10, "noticeHttpTransaction: the startTimeMs is later than the endTimeMs, resulting in a negative total time.")) {
                return;
            }
            TaskQueue.queue(new HttpTransactionMeasurement(new TransactionData(str, str2, Agent.getActiveNetworkCarrier(), (float) (((double) f10) / 1000.0d), i10, 0, j12, j13, str4, Agent.getActiveNetworkWanType(), null, str3, map, map2)));
            if (i10 >= 400) {
                Measurements.addHttpError(str, str2, i10, str3, map);
            }
        } catch (MalformedURLException unused) {
            throw new IllegalArgumentException(d.c("noticeHttpTransaction: URL is malformed: ", str));
        }
    }
}
