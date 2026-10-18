package com.newrelic.agent.android.harvest;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.activity.config.ActivityTraceConfiguration;
import com.newrelic.agent.android.activity.config.ActivityTraceConfigurationDeserializer;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.com.google.gson.GsonBuilder;
import com.newrelic.com.google.gson.JsonSyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class Harvester {
    private AgentConfiguration agentConfiguration;
    private HarvestConnection harvestConnection;
    private HarvestData harvestData;
    public boolean stateChanged;
    private final AgentLog log = AgentLogManager.getAgentLog();
    private State state = State.UNINITIALIZED;
    private HarvestConfiguration configuration = HarvestConfiguration.getDefaultHarvestConfiguration();
    private final Collection<HarvestLifecycleAware> harvestListeners = new ArrayList();

    /* JADX INFO: renamed from: com.newrelic.agent.android.harvest.Harvester$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code;
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$harvest$Harvester$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$newrelic$agent$android$harvest$Harvester$State = iArr;
            try {
                iArr[State.UNINITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$Harvester$State[State.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$Harvester$State[State.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$Harvester$State[State.DISABLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[HarvestResponse.Code.values().length];
            $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code = iArr2;
            try {
                iArr2[HarvestResponse.Code.UNAUTHORIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[HarvestResponse.Code.INVALID_AGENT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[HarvestResponse.Code.FORBIDDEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[HarvestResponse.Code.UNSUPPORTED_MEDIA_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[HarvestResponse.Code.ENTITY_TOO_LARGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[HarvestResponse.Code.REQUEST_TIMEOUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[HarvestResponse.Code.TOO_MANY_REQUESTS.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum State {
        UNINITIALIZED,
        DISCONNECTED,
        CONNECTED,
        DISABLED
    }

    private void changeState(State state) {
        AgentLog agentLog = this.log;
        StringBuilder sbC = b.c("Harvester changing state: ");
        sbC.append(this.state);
        sbC.append(" -> ");
        sbC.append(state);
        agentLog.debug(sbC.toString());
        if (this.state == State.CONNECTED) {
            if (state == State.DISCONNECTED) {
                fireOnHarvestDisconnected();
            } else if (state == State.DISABLED) {
                fireOnHarvestDisabled();
            }
        }
        this.state = state;
        this.stateChanged = true;
    }

    private void configureHarvester(HarvestConfiguration harvestConfiguration) {
        this.configuration.reconfigure(harvestConfiguration);
        this.harvestData.setDataToken(this.configuration.getDataToken());
        Harvest.setHarvestConfiguration(this.configuration);
    }

    private void fireOnHarvest() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvest();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvest", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestBefore() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestBefore();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestBefore", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestComplete() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestComplete();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestComplete", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestConnected() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestConnected();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestConnected", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestDisabled() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestDisabled();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestDisabled", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestDisconnected() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestDisconnected();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestDisconnected", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestError() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestError();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestError", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestFinalize() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestFinalize();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestFinalize", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestSendFailed() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestSendFailed();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestSendFailed", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestStart() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestStart();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestStart", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private void fireOnHarvestStop() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestStop();
            }
        } catch (Exception e10) {
            this.log.error("Error in fireOnHarvestStop", e10);
            AgentHealth.noticeException(e10);
        }
    }

    private Collection<HarvestLifecycleAware> getHarvestListeners() {
        return new ArrayList(this.harvestListeners);
    }

    private HarvestConfiguration parseHarvesterConfiguration(HarvestResponse harvestResponse) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.registerTypeAdapter(ActivityTraceConfiguration.class, new ActivityTraceConfigurationDeserializer());
        try {
            return (HarvestConfiguration) gsonBuilder.create().fromJson(harvestResponse.getResponseBody(), HarvestConfiguration.class);
        } catch (JsonSyntaxException e10) {
            AgentLog agentLog = this.log;
            StringBuilder sbC = b.c("Unable to parse collector configuration: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString());
            AgentHealth.noticeException(e10);
            return null;
        }
    }

    private boolean stateIn(State state, State... stateArr) {
        for (State state2 : stateArr) {
            if (state == state2) {
                return true;
            }
        }
        return false;
    }

    public void addHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            this.log.error("Can't add null harvest listener");
            new Exception().printStackTrace();
            return;
        }
        synchronized (this.harvestListeners) {
            if (this.harvestListeners.contains(harvestLifecycleAware)) {
                return;
            }
            this.harvestListeners.add(harvestLifecycleAware);
        }
    }

    public void connected() {
        this.log.info("Harvester: connected");
        AgentLog agentLog = this.log;
        StringBuilder sbC = b.c("Harvester: Sending [");
        sbC.append(this.harvestData.getHttpTransactions().count());
        sbC.append("] HTTP transactions.");
        agentLog.info(sbC.toString());
        AgentLog agentLog2 = this.log;
        StringBuilder sbC2 = b.c("Harvester: Sending [");
        sbC2.append(this.harvestData.getHttpErrors().count());
        sbC2.append("] HTTP errors.");
        agentLog2.info(sbC2.toString());
        AgentLog agentLog3 = this.log;
        StringBuilder sbC3 = b.c("Harvester: Sending [");
        sbC3.append(this.harvestData.getActivityTraces().count());
        sbC3.append("] activity traces.");
        agentLog3.info(sbC3.toString());
        AgentLog agentLog4 = this.log;
        StringBuilder sbC4 = b.c("Harvester: Sending [");
        sbC4.append(this.harvestData.getSessionAttributes().size());
        sbC4.append("] session attributes.");
        agentLog4.info(sbC4.toString());
        AgentLog agentLog5 = this.log;
        StringBuilder sbC5 = b.c("Harvester: Sending [");
        sbC5.append(this.harvestData.getAnalyticsEvents().size());
        sbC5.append("] analytics events.");
        agentLog5.info(sbC5.toString());
        HarvestResponse harvestResponseSendData = this.harvestConnection.sendData(this.harvestData);
        if (harvestResponseSendData == null || harvestResponseSendData.isUnknown()) {
            AgentLog agentLog6 = this.log;
            StringBuilder sbC6 = b.c("Harvest data response: ");
            sbC6.append(harvestResponseSendData.getResponseCode());
            agentLog6.debug(sbC6.toString());
            fireOnHarvestSendFailed();
            return;
        }
        StatsEngine.get().sampleTimeMs("Supportability/AgentHealth/Collector/Harvest", harvestResponseSendData.getResponseTime());
        AgentLog agentLog7 = this.log;
        StringBuilder sbC7 = b.c("Harvest data response: ");
        sbC7.append(harvestResponseSendData.getResponseCode());
        agentLog7.debug(sbC7.toString());
        AgentLog agentLog8 = this.log;
        StringBuilder sbC8 = b.c("Harvest data response status code: ");
        sbC8.append(harvestResponseSendData.getStatusCode());
        agentLog8.debug(sbC8.toString());
        AgentLog agentLog9 = this.log;
        StringBuilder sbC9 = b.c("Harvest data response BODY: ");
        sbC9.append(harvestResponseSendData.getResponseBody());
        agentLog9.audit(sbC9.toString());
        if (!harvestResponseSendData.isError()) {
            fireOnHarvestComplete();
            this.harvestData.reset();
            return;
        }
        fireOnHarvestError();
        StatsEngine statsEngine = StatsEngine.get();
        StringBuilder sbC10 = b.c("Supportability/AgentHealth/Collector/Harvest/Error/");
        sbC10.append(harvestResponseSendData.getResponseCode());
        statsEngine.inc(sbC10.toString());
        switch (AnonymousClass1.$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[harvestResponseSendData.getResponseCode().ordinal()]) {
            case 1:
            case 2:
                this.harvestData.reset();
                this.harvestData.getDataToken().clear();
                transition(State.DISCONNECTED);
                break;
            case 3:
                this.harvestData.reset();
                if (!harvestResponseSendData.isDisableCommand()) {
                    this.log.error("Unexpected Collector response: FORBIDDEN");
                    transition(State.DISCONNECTED);
                } else {
                    this.log.error("Collector has commanded Agent to disable.");
                    transition(State.DISABLED);
                }
                break;
            case 4:
            case 5:
                this.harvestData.reset();
                this.log.error("An invalid harvest payload was sent to the Collector.");
                break;
            case 6:
                this.log.warning("Harvest request has timed-out, and will retry during next harvest cycle.");
                break;
            case 7:
                this.log.warning("Harvest request has been throttled, and will retry during next harvest cycle.");
                break;
            default:
                this.log.error("An unknown error occurred when connecting to the Collector.");
                break;
        }
    }

    public void disabled() {
        Harvest.stop();
        fireOnHarvestDisabled();
    }

    public void disconnected() {
        if (this.configuration == null) {
            configureHarvester(HarvestConfiguration.getDefaultHarvestConfiguration());
        }
        if (this.harvestData.isValid()) {
            AgentLog agentLog = this.log;
            StringBuilder sbC = b.c("Skipping connect call, saved state is available: ");
            sbC.append(this.harvestData.getDataToken());
            agentLog.verbose(sbC.toString());
            StatsEngine.get().sample(MetricNames.SESSION_START, 1.0f);
            fireOnHarvestConnected();
            transition(State.CONNECTED);
            execute();
            return;
        }
        AgentLog agentLog2 = this.log;
        StringBuilder sbC2 = b.c("Connecting, saved state is not available: ");
        sbC2.append(this.harvestData.getDataToken());
        agentLog2.info(sbC2.toString());
        HarvestResponse harvestResponseSendConnect = this.harvestConnection.sendConnect();
        if (harvestResponseSendConnect == null) {
            this.log.error("Unable to connect to the Collector.");
            return;
        }
        if (harvestResponseSendConnect.isOK()) {
            HarvestConfiguration harvesterConfiguration = parseHarvesterConfiguration(harvestResponseSendConnect);
            if (harvesterConfiguration == null) {
                this.log.error("Unable to configure Harvester using Collector configuration.");
                return;
            }
            configureHarvester(harvesterConfiguration);
            StatsEngine.get().sampleTimeMs("Supportability/AgentHealth/Collector/Harvest", harvestResponseSendConnect.getResponseTime());
            fireOnHarvestConnected();
            transition(State.CONNECTED);
            return;
        }
        AgentLog agentLog3 = this.log;
        StringBuilder sbC3 = b.c("Harvest connect response: ");
        sbC3.append(harvestResponseSendConnect.getResponseCode());
        agentLog3.debug(sbC3.toString());
        StatsEngine statsEngine = StatsEngine.get();
        StringBuilder sbC4 = b.c("Supportability/AgentHealth/Collector/Harvest/Connect/Error/");
        sbC4.append(harvestResponseSendConnect.getResponseCode());
        statsEngine.inc(sbC4.toString());
        switch (AnonymousClass1.$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[harvestResponseSendConnect.getResponseCode().ordinal()]) {
            case 1:
            case 2:
                this.harvestData.getDataToken().clear();
                fireOnHarvestDisconnected();
                return;
            case 3:
                if (harvestResponseSendConnect.isDisableCommand()) {
                    this.log.error("Collector has commanded Agent to disable.");
                    fireOnHarvestDisabled();
                    transition(State.DISABLED);
                    return;
                }
                this.log.error("Unexpected Collector response: FORBIDDEN");
                break;
            case 4:
            case 5:
                this.log.error("Invalid ConnectionInformation was sent to the Collector.");
                break;
            case 6:
                this.log.warning("Harvest request has timed-out, and will retry during next harvest cycle.");
                break;
            case 7:
                this.log.warning("Harvest request has been throttled, and will retry during next harvest cycle.");
                break;
            default:
                this.log.error("An unknown error occurred when connecting to the Collector.");
                break;
        }
        fireOnHarvestError();
    }

    public void execute() {
        AgentLog agentLog = this.log;
        StringBuilder sbC = b.c("Harvester state: ");
        sbC.append(this.state);
        agentLog.debug(sbC.toString());
        this.stateChanged = false;
        try {
            expireHarvestData();
            int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State[this.state.ordinal()];
            if (i10 == 1) {
                uninitialized();
                return;
            }
            if (i10 == 2) {
                fireOnHarvestBefore();
                disconnected();
            } else if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalStateException();
                }
                disabled();
            } else {
                TaskQueue.synchronousDequeue();
                fireOnHarvestBefore();
                fireOnHarvest();
                fireOnHarvestFinalize();
                connected();
            }
        } catch (Exception e10) {
            this.log.error("Exception encountered while attempting to harvest", e10);
            AgentHealth.noticeException(e10);
        }
    }

    public void expireActivityTraces() {
        ActivityTraces activityTraces = this.harvestData.getActivityTraces();
        synchronized (activityTraces) {
            ArrayList arrayList = new ArrayList();
            long activity_trace_max_report_attempts = this.configuration.getActivity_trace_max_report_attempts();
            for (ActivityTrace activityTrace : activityTraces.getActivityTraces()) {
                if (activityTrace.getReportAttemptCount() >= activity_trace_max_report_attempts) {
                    this.log.audit("ActivityTrace has had " + activityTrace.getReportAttemptCount() + " report attempts, purging: " + activityTrace);
                    arrayList.add(activityTrace);
                }
            }
            if (!arrayList.isEmpty()) {
                this.log.debug("Purging [" + arrayList.size() + "] expired ActivityTraces from HarvestData");
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    activityTraces.remove((ActivityTrace) it.next());
                }
            }
        }
    }

    public void expireAnalyticsEvents() {
    }

    public void expireHarvestData() {
        if (this.harvestData != null) {
            expireHttpErrors();
            expireHttpTransactions();
            expireActivityTraces();
            expireAnalyticsEvents();
        }
    }

    public void expireHttpErrors() {
        HttpErrors httpErrors = this.harvestData.getHttpErrors();
        synchronized (httpErrors) {
            ArrayList arrayList = new ArrayList();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long reportMaxTransactionAgeMilliseconds = this.configuration.getReportMaxTransactionAgeMilliseconds();
            for (HttpError httpError : httpErrors.getHttpErrors()) {
                if (httpError.getTimestamp().longValue() < jCurrentTimeMillis - reportMaxTransactionAgeMilliseconds) {
                    this.log.debug("HttpError too old, purging: " + httpError);
                    arrayList.add(httpError);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                httpErrors.removeHttpError((HttpError) it.next());
            }
        }
    }

    public void expireHttpTransactions() {
        HttpTransactions httpTransactions = this.harvestData.getHttpTransactions();
        synchronized (httpTransactions) {
            ArrayList arrayList = new ArrayList();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long reportMaxTransactionAgeMilliseconds = this.configuration.getReportMaxTransactionAgeMilliseconds();
            for (HttpTransaction httpTransaction : httpTransactions.getHttpTransactions()) {
                if (httpTransaction.getTimestamp().longValue() < jCurrentTimeMillis - reportMaxTransactionAgeMilliseconds) {
                    this.log.audit("HttpTransaction too old, purging: " + httpTransaction);
                    arrayList.add(httpTransaction);
                }
            }
            if (!arrayList.isEmpty()) {
                this.log.debug("Purging [" + arrayList.size() + "] expired HttpTransactions from HarvestData");
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    httpTransactions.remove((HttpTransaction) it.next());
                }
            }
        }
    }

    public State getCurrentState() {
        return this.state;
    }

    public HarvestConnection getHarvestConnection() {
        return this.harvestConnection;
    }

    public HarvestData getHarvestData() {
        return this.harvestData;
    }

    public boolean isDisabled() {
        return State.DISABLED == this.state;
    }

    public void removeHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        synchronized (this.harvestListeners) {
            if (this.harvestListeners.contains(harvestLifecycleAware)) {
                this.harvestListeners.remove(harvestLifecycleAware);
            }
        }
    }

    public void setAgentConfiguration(AgentConfiguration agentConfiguration) {
        this.agentConfiguration = agentConfiguration;
    }

    public void setConfiguration(HarvestConfiguration harvestConfiguration) {
        this.configuration = harvestConfiguration;
    }

    public void setHarvestConnection(HarvestConnection harvestConnection) {
        this.harvestConnection = harvestConnection;
    }

    public void setHarvestData(HarvestData harvestData) {
        this.harvestData = harvestData;
    }

    public void start() {
        fireOnHarvestStart();
    }

    public void stop() {
        fireOnHarvestStop();
    }

    public void transition(State state) {
        if (this.stateChanged) {
            this.log.debug("Ignoring multiple transition: " + state);
            return;
        }
        State state2 = this.state;
        if (state2 == state) {
            return;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State[state2.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException();
                }
                if (!stateIn(state, State.DISCONNECTED, State.DISABLED)) {
                    throw new IllegalStateException();
                }
            } else if (!stateIn(state, State.UNINITIALIZED, State.CONNECTED, State.DISABLED)) {
                throw new IllegalStateException();
            }
        } else if (!stateIn(state, State.DISCONNECTED, state, State.CONNECTED, State.DISABLED)) {
            throw new IllegalStateException();
        }
        changeState(state);
    }

    public void uninitialized() {
        if (this.agentConfiguration == null) {
            this.log.error("Agent configuration unavailable.");
            return;
        }
        if (Agent.getImpl().updateSavedConnectInformation()) {
            configureHarvester(HarvestConfiguration.getDefaultHarvestConfiguration());
            this.harvestData.getDataToken().clear();
        }
        Harvest.setHarvestConnectInformation(new ConnectInformation(Agent.getApplicationInformation(), Agent.getDeviceInformation()));
        this.harvestConnection.setApplicationToken(this.agentConfiguration.getApplicationToken());
        this.harvestConnection.setCollectorHost(this.agentConfiguration.getCollectorHost());
        this.harvestConnection.useSsl(this.agentConfiguration.useSsl());
        transition(State.DISCONNECTED);
        execute();
    }
}
