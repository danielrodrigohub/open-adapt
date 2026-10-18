package com.newrelic.agent.android.crash;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestLifecycleAware;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.payload.PayloadController;
import com.newrelic.agent.android.payload.PayloadReporter;
import com.newrelic.agent.android.payload.PayloadSender;
import com.newrelic.agent.android.stats.StatsEngine;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class CrashReporter extends PayloadReporter implements HarvestLifecycleAware {
    public static AtomicReference<CrashReporter> instance = new AtomicReference<>(null);
    private static boolean jitCrashReporting = false;
    public final CrashStore crashStore;
    private final UncaughtExceptionHandler uncaughtExceptionHandler;

    public CrashReporter(AgentConfiguration agentConfiguration) {
        super(agentConfiguration);
        this.uncaughtExceptionHandler = new UncaughtExceptionHandler(this);
        this.crashStore = agentConfiguration.getCrashStore();
        this.isEnabled.set(FeatureFlag.featureEnabled(FeatureFlag.CrashReporting));
    }

    public static CrashReporter getInstance() {
        return instance.get();
    }

    public static boolean getReportCrashes() {
        return jitCrashReporting;
    }

    public static UncaughtExceptionHandler getUncaughtExceptionHandler() {
        if (isInitialized()) {
            return instance.get().uncaughtExceptionHandler;
        }
        return null;
    }

    public static CrashReporter initialize(AgentConfiguration agentConfiguration) {
        instance.compareAndSet(null, new CrashReporter(agentConfiguration));
        Harvest.addHarvestListener(instance.get());
        return instance.get();
    }

    public static boolean isInitialized() {
        return instance.get() != null;
    }

    public static void setReportCrashes(boolean z10) {
        if (isInitialized()) {
            jitCrashReporting = z10;
        }
    }

    public static void shutdown() {
        if (isInitialized()) {
            instance.get().stop();
            instance.set(null);
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestBefore() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestConnected() {
        PayloadController.submitCallable(new Callable() { // from class: com.newrelic.agent.android.crash.CrashReporter.2
            @Override // java.util.concurrent.Callable
            public Void call() {
                CrashReporter.this.reportSavedCrashes();
                CrashReporter.this.reportSupportabilityMetrics();
                return null;
            }
        });
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestDisabled() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestDisconnected() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestError() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestFinalize() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestStart() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestStop() {
    }

    public Future reportCrash(final Crash crash) {
        boolean zIsValid = Harvest.getHarvestConfiguration().getDataToken().isValid();
        if (!isEnabled()) {
            return null;
        }
        if (!zIsValid) {
            PayloadReporter.log.warning("CrashReporter: agent has not successfully connected and cannot report crashes.");
            return null;
        }
        if (crash == null) {
            PayloadReporter.log.warning("CrashReporter: attempted to report null crash.");
            return null;
        }
        CrashSender crashSender = new CrashSender(crash, this.agentConfiguration);
        PayloadSender.CompletionHandler completionHandler = new PayloadSender.CompletionHandler() { // from class: com.newrelic.agent.android.crash.CrashReporter.1
            @Override // com.newrelic.agent.android.payload.PayloadSender.CompletionHandler
            public void onException(PayloadSender payloadSender, Exception exc) {
                PayloadReporter.log.error("CrashReporter: Crash upload failed: " + exc);
            }

            @Override // com.newrelic.agent.android.payload.PayloadSender.CompletionHandler
            public void onResponse(PayloadSender payloadSender) {
                if (payloadSender.isSuccessfulResponse()) {
                    CrashStore crashStore = CrashReporter.this.crashStore;
                    if (crashStore != null) {
                        crashStore.delete(crash);
                    }
                    StatsEngine.get().sampleMetricDataUsage(MetricNames.SUPPORTABILITY_SUBDESTINATION_OUTPUT_BYTES.replace(MetricNames.TAG_FRAMEWORK, Agent.getDeviceInformation().getApplicationFramework().name()).replace(MetricNames.TAG_DESTINATION, MetricNames.SUPPORTABILITY_DATA_USAGE_COLLECTOR).replace(MetricNames.TAG_SUBDESTINATION, "mobile_crash"), crash.asJsonObject().toString().getBytes().length, 0.0f);
                }
            }
        };
        if (!crashSender.shouldUploadOpportunistically()) {
            PayloadReporter.log.warning("CrashReporter: network is unreachable. Crash will be uploaded on next app launch");
        }
        return PayloadController.submitPayload(crashSender, completionHandler);
    }

    public void reportSavedCrashes() {
        CrashStore crashStore = this.crashStore;
        if (crashStore != null) {
            for (Crash crash : crashStore.fetchAll()) {
                if (crash.isStale()) {
                    this.crashStore.delete(crash);
                    AgentLog agentLog = PayloadReporter.log;
                    StringBuilder sbC = b.c("CrashReporter: Crash [");
                    sbC.append(crash.getUuid().toString());
                    sbC.append("] has become stale, and has been removed");
                    agentLog.info(sbC.toString());
                    StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_REMOVED_STALE);
                } else {
                    reportCrash(crash);
                }
            }
        }
    }

    @Override // com.newrelic.agent.android.payload.PayloadReporter
    public void start() {
        if (!isInitialized()) {
            PayloadReporter.log.error("CrashReporter: Must initialize PayloadController first.");
            return;
        }
        if (!isEnabled()) {
            PayloadReporter.log.warning("CrashReporter: Crash reporting feature is disabled.");
        } else if (this.isStarted.compareAndSet(false, true)) {
            this.uncaughtExceptionHandler.installExceptionHandler();
            jitCrashReporting = this.agentConfiguration.getReportCrashes();
        }
    }

    @Override // com.newrelic.agent.android.payload.PayloadReporter
    public void stop() {
        if (getUncaughtExceptionHandler() != null) {
            getUncaughtExceptionHandler().resetExceptionHandler();
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:11:0x0024, B:13:0x0028, B:15:0x002e, B:16:0x0036), top: B:21:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x002c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x002e A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:11:0x0024, B:13:0x0028, B:15:0x002e, B:16:0x0036), top: B:21:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0036 A[Catch: Exception -> 0x003e, TRY_LEAVE, TryCatch #0 {Exception -> 0x003e, blocks: (B:11:0x0024, B:13:0x0028, B:15:0x002e, B:16:0x0036), top: B:21:0x0024 }] */
    public void storeAndReportCrash(Crash crash) {
        boolean zStore;
        CrashStore crashStore = this.crashStore;
        try {
            if (crashStore != null) {
                if (crash != null) {
                    zStore = crashStore.store(crash);
                    if (!zStore) {
                        PayloadReporter.log.warning("CrashReporter: failed to store passed crash.");
                    }
                } else {
                    PayloadReporter.log.warning("CrashReporter: attempted to store null crash.");
                }
                if (jitCrashReporting) {
                    reportCrash(crash);
                    return;
                } else if (zStore) {
                    PayloadReporter.log.debug("CrashReporter: Crash has been recorded and will be uploaded during the next app launch.");
                    return;
                } else {
                    PayloadReporter.log.error("CrashReporter: Crash was dropped (Crash not stored and Just-in-time crash reporting is disabled).");
                    return;
                }
            }
            PayloadReporter.log.warning("CrashReporter: attempted to store crash without a crash store.");
            if (jitCrashReporting) {
                reportCrash(crash);
                return;
            } else if (zStore) {
                PayloadReporter.log.debug("CrashReporter: Crash has been recorded and will be uploaded during the next app launch.");
                return;
            } else {
                PayloadReporter.log.error("CrashReporter: Crash was dropped (Crash not stored and Just-in-time crash reporting is disabled).");
                return;
            }
        } catch (Exception e10) {
            PayloadReporter.log.warning("CrashReporter.storeAndReportCrash(Crash): " + e10);
            return;
        }
        zStore = false;
    }
}
