package com.newrelic.agent.android.ndk;

import android.content.Context;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.NewRelic;
import com.newrelic.agent.android.agentdata.AgentDataController;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.crash.CrashReporter;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class NativeReporting extends HarvestAdapter implements AgentNDKListener {
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public static AtomicReference<NativeReporting> instance = new AtomicReference<>(null);

    public static class ANRException extends NativeException {
        public ANRException(String str) {
            super(str);
        }
    }

    public static class NativeCrashException extends NativeException {
        public NativeCrashException(String str) {
            super(str);
        }
    }

    public static class NativeUnhandledException extends NativeException {
        public NativeUnhandledException(String str) {
            super(str);
        }
    }

    public NativeReporting(Context context, AgentConfiguration agentConfiguration) {
        new AgentNDK.Builder(context).withBuildId(Agent.getBuildId()).withSessionId(agentConfiguration.getSessionID()).withReportListener(this).withLogger(log).build();
    }

    public static void crashNow(String str) {
        if (isInitialized()) {
            AgentNDK.getInstance().crashNow(str);
        }
    }

    public static NativeReporting getInstance() {
        return instance.get();
    }

    public static NativeReporting initialize(Context context, AgentConfiguration agentConfiguration) {
        instance.compareAndSet(null, new NativeReporting(context, agentConfiguration));
        Harvest.addHarvestListener(instance.get());
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_INIT);
        return instance.get();
    }

    public static boolean isInitialized() {
        return (instance.get() == null || AgentNDK.getInstance() == null) ? false : true;
    }

    public static boolean isRooted() {
        if (!isInitialized()) {
            return false;
        }
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_ROOTED_DEVICE);
        return AgentNDK.getInstance().isRooted();
    }

    public static void shutdown() {
        if (isInitialized()) {
            Harvest.removeHarvestListener(instance.get());
            instance.get().stop();
        }
        instance.set(null);
    }

    public boolean onApplicationNotResponding(String str) {
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_REPORTS_ANR);
        HashMap<String, Object> map = new HashMap<String, Object>() { // from class: com.newrelic.agent.android.ndk.NativeReporting.3
            {
                put(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, "native");
                put(AnalyticsAttribute.ANR, Boolean.TRUE);
            }
        };
        NativeException aNRException = new ANRException(str);
        map.put("crashingThreadId", Long.valueOf(aNRException.getNativeStackTrace().getCrashedThread().getThreadId()));
        map.put("nativeThreads", aNRException.getNativeStackTrace().getThreads());
        map.put("exceptionMessage", aNRException.getNativeStackTrace().getExceptionMessage());
        return AgentDataController.sendAgentData(aNRException, map);
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestStart() {
        AgentNDK.getInstance().flushPendingReports();
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_REPORTS_FLUSH);
    }

    public boolean onNativeCrash(String str) {
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_REPORTS_CRASH);
        AnalyticsControllerImpl analyticsControllerImpl = AnalyticsControllerImpl.getInstance();
        HashSet<AnalyticsAttribute> hashSet = new HashSet<AnalyticsAttribute>(analyticsControllerImpl) { // from class: com.newrelic.agent.android.ndk.NativeReporting.1
            public final /* synthetic */ AnalyticsControllerImpl val$analyticsController;

            {
                this.val$analyticsController = analyticsControllerImpl;
                addAll(analyticsControllerImpl.getSessionAttributes());
            }
        };
        NativeCrashException nativeCrashException = new NativeCrashException(str);
        hashSet.add(new AnalyticsAttribute(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, "native"));
        hashSet.add(new AnalyticsAttribute(AnalyticsAttribute.NATIVE_CRASH, true));
        hashSet.add(new AnalyticsAttribute("exceptionMessage", nativeCrashException.getNativeStackTrace().getExceptionMessage()));
        hashSet.add(new AnalyticsAttribute("crashingThreadId", nativeCrashException.getNativeStackTrace().getCrashedThread().getThreadId()));
        CrashReporter.getInstance().storeAndReportCrash(new NativeCrash(nativeCrashException, hashSet, analyticsControllerImpl.getEventManager().getQueuedEvents()));
        return true;
    }

    public boolean onNativeException(String str) {
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_REPORTS_EXCEPTION);
        HashMap<String, Object> map = new HashMap<String, Object>() { // from class: com.newrelic.agent.android.ndk.NativeReporting.2
            {
                put(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, "native");
                put(AnalyticsAttribute.UNHANDLED_NATIVE_EXCEPTION, Boolean.TRUE);
            }
        };
        NativeException nativeUnhandledException = new NativeUnhandledException(str);
        map.put("crashingThreadId", Long.valueOf(nativeUnhandledException.getNativeStackTrace().getCrashedThread().getThreadId()));
        map.put("nativeThreads", nativeUnhandledException.getNativeStackTrace().getThreads());
        map.put("exceptionMessage", nativeUnhandledException.getNativeStackTrace().getExceptionMessage());
        return AgentDataController.sendAgentData(nativeUnhandledException, map);
    }

    public void start() {
        if (!isInitialized()) {
            log.error("CrashReporter: Must first initialize native module.");
            return;
        }
        AgentNDK.getInstance().start();
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_START);
        boolean zIsRooted = isRooted();
        if (zIsRooted) {
            NewRelic.setAttribute("RootedDevice", zIsRooted);
        }
    }

    public void stop() {
        if (isInitialized()) {
            AgentNDK.getInstance().stop();
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_NDK_STOP);
        }
    }
}
