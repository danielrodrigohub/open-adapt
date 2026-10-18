package com.newrelic.agent.android.crash;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.payload.PayloadController;
import com.newrelic.agent.android.stats.StatsEngine;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class UncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public static Thread.UncaughtExceptionHandler previousExceptionHandler = null;
    private final CrashReporter crashReporter;
    public final AtomicBoolean handledException = new AtomicBoolean(false);

    public UncaughtExceptionHandler(CrashReporter crashReporter) {
        this.crashReporter = crashReporter;
    }

    public void chainExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        if (uncaughtExceptionHandler != null) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Chaining crash reporting duties to ");
            sbC.append(uncaughtExceptionHandler.getClass().getSimpleName());
            agentLog.debug(sbC.toString());
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    public Thread.UncaughtExceptionHandler getPreviousExceptionHandler() {
        return previousExceptionHandler;
    }

    public void installExceptionHandler() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler == null) {
            log.debug("Installing New Relic crash handler.");
        } else {
            if (defaultUncaughtExceptionHandler instanceof UncaughtExceptionHandler) {
                log.debug("New Relic crash handler already installed.");
                return;
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = previousExceptionHandler;
            if (uncaughtExceptionHandler != null) {
                if (!(uncaughtExceptionHandler instanceof UncaughtExceptionHandler)) {
                    AgentLog agentLog = log;
                    StringBuilder sbC = b.c("Previous uncaught exception handler[");
                    sbC.append(previousExceptionHandler.getClass().getName());
                    sbC.append("] exists. Assuming it delegates to [");
                    sbC.append(UncaughtExceptionHandler.class.getName());
                    sbC.append("]");
                    agentLog.warning(sbC.toString());
                    return;
                }
                AgentLog agentLog2 = log;
                StringBuilder sbC2 = b.c("Previous uncaught exception handler[");
                sbC2.append(previousExceptionHandler.getClass().getName());
                sbC2.append("] exists, and it is us! Replace it.");
                agentLog2.warning(sbC2.toString());
            }
            AgentLog agentLog3 = log;
            StringBuilder sbC3 = b.c("Installing New Relic crash handler and chaining to ");
            sbC3.append(defaultUncaughtExceptionHandler.getClass().getName());
            agentLog3.debug(sbC3.toString());
        }
        previousExceptionHandler = defaultUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void resetExceptionHandler() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        if (previousExceptionHandler != null && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            if (defaultUncaughtExceptionHandler instanceof UncaughtExceptionHandler) {
                Thread.setDefaultUncaughtExceptionHandler(previousExceptionHandler);
                previousExceptionHandler = null;
            } else {
                AgentLog agentLog = log;
                StringBuilder sbC = b.c("Previous uncaught exception handler[");
                sbC.append(defaultUncaughtExceptionHandler.getClass().getName());
                sbC.append("] was set after agent start. Let it be...");
                agentLog.warning(sbC.toString());
            }
        }
        this.handledException.set(false);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        boolean zEquals;
        if (!Agent.getUnityInstrumentationFlag().equals("YES") && !this.handledException.compareAndSet(false, true)) {
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_RECURSIVE_HANDLER);
            return;
        }
        try {
            AgentConfiguration agentConfiguration = this.crashReporter.getAgentConfiguration();
            if (this.crashReporter.isEnabled() && FeatureFlag.featureEnabled(FeatureFlag.CrashReporting)) {
                AgentLog agentLog = log;
                agentLog.debug("A crash has been detected in " + thread.getStackTrace()[0].getClassName() + " and will be reported ASAP.");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Analytics data is currently ");
                sb2.append(agentConfiguration.getEnableAnalyticsEvents() ? "enabled " : "disabled");
                agentLog.debug(sb2.toString());
                AnalyticsControllerImpl analyticsControllerImpl = AnalyticsControllerImpl.getInstance();
                analyticsControllerImpl.setEnabled(true);
                long millisSinceStart = Harvest.getMillisSinceStart();
                if (millisSinceStart != 0) {
                    analyticsControllerImpl.setAttribute(AnalyticsAttribute.SESSION_DURATION_ATTRIBUTE, millisSinceStart / 1000.0f, false);
                }
                this.crashReporter.storeAndReportCrash(new Crash(th, analyticsControllerImpl.getSessionAttributes(), analyticsControllerImpl.getEventManager().getQueuedEvents(), agentConfiguration.getEnableAnalyticsEvents()));
                if (zEquals) {
                    return;
                } else {
                    return;
                }
            }
            log.debug("A crash has been detected but crash reporting is disabled!");
        } finally {
            if (Agent.isInstantApp()) {
                Harvest.shutdown();
                ApplicationStateMonitor.getInstance().uiHidden();
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = previousExceptionHandler;
            PayloadController.shutdown();
            if (!Agent.getUnityInstrumentationFlag().equals("YES")) {
                chainExceptionHandler(uncaughtExceptionHandler, thread, th);
            }
        }
    }
}
