package com.newrelic.agent.android.harvest;

import a0.b;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.activity.config.ActivityTraceConfiguration;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.analytics.SessionEvent;
import com.newrelic.agent.android.harvest.type.Harvestable;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.Trace;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class Harvest {
    private static final boolean DISABLE_ACTIVITY_TRACE_LIMITS_FOR_DEBUGGING = false;
    public static final long INVALID_SESSION_DURATION = 0;
    private HarvestConfiguration configuration = HarvestConfiguration.getDefaultHarvestConfiguration();
    private HarvestConnection harvestConnection;
    public HarvestData harvestData;
    private HarvestDataValidator harvestDataValidator;
    private HarvestTimer harvestTimer;
    private Harvester harvester;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    public static Harvest instance = new Harvest();
    private static final Collection<HarvestLifecycleAware> unregisteredLifecycleListeners = new ArrayList();
    private static final HarvestableCache activityTraceCache = new HarvestableCache();

    public static void addActivityTrace(ActivityTrace activityTrace) {
        if (isDisabled()) {
            return;
        }
        if (!isInitialized()) {
            activityTraceCache.add(activityTrace);
            return;
        }
        Trace trace = activityTrace.rootTrace;
        if (trace == null) {
            log.error("Activity trace is lacking a root trace!");
            return;
        }
        long j10 = trace.childExclusiveTime;
        if (j10 == 0) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Total trace exclusive time is zero. Ignoring trace ");
            sbC.append(activityTrace.rootTrace.displayName);
            agentLog.error(sbC.toString());
            return;
        }
        if (((double) j10) / ((double) trace.getDurationAsMilliseconds()) < instance.getConfiguration().getActivity_trace_min_utilization()) {
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_TRACES_IGNORED);
            AgentLog agentLog2 = log;
            StringBuilder sbC2 = b.c("Exclusive trace time is too low (");
            sbC2.append(activityTrace.rootTrace.childExclusiveTime);
            sbC2.append("/");
            sbC2.append(activityTrace.rootTrace.getDurationAsMilliseconds());
            sbC2.append("). Ignoring trace ");
            sbC2.append(activityTrace.rootTrace.displayName);
            agentLog2.debug(sbC2.toString());
            return;
        }
        ActivityTraces activityTraces = instance.getHarvestData().getActivityTraces();
        ActivityTraceConfiguration activityTraceConfiguration = instance.getActivityTraceConfiguration();
        instance.getHarvester().expireActivityTraces();
        if (activityTraces.count() < activityTraceConfiguration.getMaxTotalTraceCount()) {
            AgentLog agentLog3 = log;
            StringBuilder sbC3 = b.c("Adding activity trace: ");
            sbC3.append(activityTrace.toJsonString());
            agentLog3.debug(sbC3.toString());
            activityTraces.add(activityTrace);
            return;
        }
        AgentLog agentLog4 = log;
        StringBuilder sbC4 = b.c("Activity trace limit of ");
        sbC4.append(activityTraceConfiguration.getMaxTotalTraceCount());
        sbC4.append(" exceeded. Ignoring trace: ");
        sbC4.append(activityTrace.toJsonString());
        agentLog4.debug(sbC4.toString());
    }

    public static void addAgentHealthException(AgentHealthException agentHealthException) {
        if (isDisabled() || !isInitialized()) {
            return;
        }
        instance.getHarvestData().getAgentHealth().addException(agentHealthException);
    }

    public static void addHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            log.error("Harvest: Argument to addHarvestListener cannot be null.");
        } else if (isInitialized()) {
            instance.getHarvester().addHarvestListener(harvestLifecycleAware);
        } else {
            if (isUnregisteredListener(harvestLifecycleAware)) {
                return;
            }
            addUnregisteredListener(harvestLifecycleAware);
        }
    }

    public static void addHttpErrorTrace(HttpError httpError) {
        if (!instance.shouldCollectNetworkErrors() || isDisabled()) {
            return;
        }
        HttpErrors httpErrors = instance.getHarvestData().getHttpErrors();
        instance.getHarvester().expireHttpErrors();
        int error_limit = instance.getConfiguration().getError_limit();
        if (httpErrors.count() >= error_limit) {
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_ERRORS_DROPPED);
            log.debug("Maximum number of HTTP errors (" + error_limit + ") reached. HTTP Error dropped.");
            return;
        }
        httpErrors.addHttpError(httpError);
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Harvest: ");
        sbC.append(instance);
        sbC.append(" now contains ");
        sbC.append(httpErrors.count());
        sbC.append(" errors.");
        agentLog.verbose(sbC.toString());
    }

    public static void addHttpTransaction(HttpTransaction httpTransaction) {
        if (isDisabled()) {
            return;
        }
        HttpTransactions httpTransactions = instance.getHarvestData().getHttpTransactions();
        instance.getHarvester().expireHttpTransactions();
        int report_max_transaction_count = instance.getConfiguration().getReport_max_transaction_count();
        if (httpTransactions.count() < report_max_transaction_count) {
            httpTransactions.add(httpTransaction);
            AnalyticsControllerImpl.getInstance().createNetworkRequestEvents(httpTransaction);
            return;
        }
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_TRANS_DROPPED);
        log.debug("Maximum number of transactions (" + report_max_transaction_count + ") reached. HTTP Transaction dropped.");
    }

    public static void addMetric(Metric metric) {
        if (isDisabled() || !isInitialized()) {
            return;
        }
        instance.getHarvestData().getMetrics().addMetric(metric);
    }

    private static void addUnregisteredListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            return;
        }
        Collection<HarvestLifecycleAware> collection = unregisteredLifecycleListeners;
        synchronized (collection) {
            collection.add(harvestLifecycleAware);
        }
    }

    private void flushActivityTraceCache() {
        Iterator<Harvestable> it = activityTraceCache.flush().iterator();
        while (it.hasNext()) {
            addActivityTrace((ActivityTrace) it.next());
        }
    }

    private void flushHarvestableCaches() {
        try {
            flushActivityTraceCache();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int getActivityTraceCacheSize() {
        return activityTraceCache.getSize();
    }

    public static HarvestConfiguration getHarvestConfiguration() {
        return !isInitialized() ? HarvestConfiguration.getDefaultHarvestConfiguration() : instance.getConfiguration();
    }

    public static Harvest getInstance() {
        return instance;
    }

    public static long getMillisSinceStart() {
        Harvest harvest = getInstance();
        if (harvest == null || harvest.getHarvestTimer() == null) {
            return 0L;
        }
        long jTimeSinceStart = harvest.getHarvestTimer().timeSinceStart();
        if (jTimeSinceStart < 0) {
            return 0L;
        }
        return jTimeSinceStart;
    }

    public static void harvestNow(boolean z10) {
        if (isInitialized()) {
            if (z10) {
                instance.finalizeSession();
                AnalyticsControllerImpl.getInstance().getEventManager().setTransmitRequired();
            }
            instance.getHarvestTimer().tickNow();
        }
    }

    public static void initialize(AgentConfiguration agentConfiguration) {
        instance.initializeHarvester(agentConfiguration);
        registerUnregisteredListeners();
        addHarvestListener(StatsEngine.get());
    }

    public static boolean isDisabled() {
        if (isInitialized()) {
            return instance.getHarvester().isDisabled();
        }
        return false;
    }

    public static boolean isInitialized() {
        Harvest harvest = instance;
        return (harvest == null || harvest.getHarvester() == null) ? false : true;
    }

    private static boolean isUnregisteredListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            return false;
        }
        return unregisteredLifecycleListeners.contains(harvestLifecycleAware);
    }

    private static void registerUnregisteredListeners() {
        Iterator<HarvestLifecycleAware> it = unregisteredLifecycleListeners.iterator();
        while (it.hasNext()) {
            addHarvestListener(it.next());
        }
        unregisteredLifecycleListeners.clear();
    }

    public static void removeHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            log.error("Harvest: Argument to removeHarvestListener cannot be null.");
        } else if (isInitialized()) {
            instance.getHarvester().removeHarvestListener(harvestLifecycleAware);
        } else if (isUnregisteredListener(harvestLifecycleAware)) {
            removeUnregisteredListener(harvestLifecycleAware);
        }
    }

    private static void removeUnregisteredListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            return;
        }
        Collection<HarvestLifecycleAware> collection = unregisteredLifecycleListeners;
        synchronized (collection) {
            collection.remove(harvestLifecycleAware);
        }
    }

    public static void setHarvestConfiguration(HarvestConfiguration harvestConfiguration) {
        if (!isInitialized()) {
            log.error("Cannot configure Harvester before initialization.");
            new Exception().printStackTrace();
            return;
        }
        log.debug("Harvest Configuration: " + harvestConfiguration);
        instance.setConfiguration(harvestConfiguration);
    }

    public static void setHarvestConnectInformation(ConnectInformation connectInformation) {
        if (!isInitialized()) {
            log.error("Cannot configure Harvester before initialization.");
            new Exception().printStackTrace();
            return;
        }
        log.debug("Setting Harvest connect information: " + connectInformation);
        instance.setConnectInformation(connectInformation);
    }

    public static void setInstance(Harvest harvest) {
        if (harvest == null) {
            log.error("Attempt to set Harvest instance to null value!");
        } else {
            instance = harvest;
        }
    }

    public static boolean shouldCollectActivityTraces() {
        ActivityTraceConfiguration activityTraceConfiguration;
        if (isDisabled()) {
            return false;
        }
        return !isInitialized() || (activityTraceConfiguration = instance.getActivityTraceConfiguration()) == null || activityTraceConfiguration.getMaxTotalTraceCount() > 0;
    }

    public static void shutdown() {
        if (isInitialized()) {
            stop();
            instance.shutdownHarvester();
        }
    }

    public static void start() {
        instance.getHarvestTimer().start();
    }

    public static void stop() {
        instance.getHarvestTimer().stop();
    }

    public void createHarvester() {
        this.harvestConnection = new HarvestConnection();
        this.harvestData = new HarvestData();
        Harvester harvester = new Harvester();
        this.harvester = harvester;
        harvester.setHarvestConnection(this.harvestConnection);
        this.harvester.setHarvestData(this.harvestData);
        this.harvestTimer = new HarvestTimer(this.harvester);
        HarvestDataValidator harvestDataValidator = new HarvestDataValidator();
        this.harvestDataValidator = harvestDataValidator;
        addHarvestListener(harvestDataValidator);
    }

    public void finalizeSession() {
        long millisSinceStart = getMillisSinceStart();
        if (millisSinceStart == 0) {
            log.error("Session duration is invalid!");
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_SESSION_INVALID_DURATION);
        }
        float f10 = millisSinceStart / 1000.0f;
        StatsEngine.get().sample(MetricNames.SESSION_DURATION, f10);
        AgentLog agentLog = log;
        agentLog.debug("Harvest: Generating sessionDuration attribute with value " + f10);
        AnalyticsControllerImpl analyticsControllerImpl = AnalyticsControllerImpl.getInstance();
        analyticsControllerImpl.setAttribute(AnalyticsAttribute.SESSION_DURATION_ATTRIBUTE, (double) f10, false);
        agentLog.debug("Harvest: Generating session event.");
        analyticsControllerImpl.addEvent(new SessionEvent());
    }

    public ActivityTraceConfiguration getActivityTraceConfiguration() {
        return this.configuration.getAt_capture();
    }

    public HarvestConfiguration getConfiguration() {
        return this.configuration;
    }

    public HarvestConnection getHarvestConnection() {
        return this.harvestConnection;
    }

    public HarvestData getHarvestData() {
        return this.harvestData;
    }

    public HarvestTimer getHarvestTimer() {
        return this.harvestTimer;
    }

    public Harvester getHarvester() {
        return this.harvester;
    }

    public void initializeHarvester(AgentConfiguration agentConfiguration) {
        createHarvester();
        this.harvester.setAgentConfiguration(agentConfiguration);
        this.harvester.setConfiguration(instance.getConfiguration());
        flushHarvestableCaches();
    }

    public void setConfiguration(HarvestConfiguration harvestConfiguration) {
        this.configuration.reconfigure(harvestConfiguration);
        this.harvestTimer.setPeriod(TimeUnit.MILLISECONDS.convert(this.configuration.getData_report_period(), TimeUnit.SECONDS));
        this.harvestConnection.setServerTimestamp(this.configuration.getServer_timestamp());
        this.harvestData.setDataToken(this.configuration.getDataToken());
        this.harvester.setConfiguration(this.configuration);
    }

    public void setConnectInformation(ConnectInformation connectInformation) {
        this.harvestConnection.setConnectInformation(connectInformation);
        this.harvestData.setDeviceInformation(connectInformation.getDeviceInformation());
    }

    public void setHarvestConnection(HarvestConnection harvestConnection) {
        this.harvestConnection = harvestConnection;
    }

    public boolean shouldCollectNetworkErrors() {
        return this.configuration.isCollect_network_errors();
    }

    public void shutdownHarvester() {
        this.harvestTimer.shutdown();
        this.harvestTimer = null;
        this.harvester = null;
        this.harvestConnection = null;
        this.harvestData = null;
    }
}
