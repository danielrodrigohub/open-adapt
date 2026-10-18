package com.newrelic.agent.android.harvest;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class HarvestData extends HarvestableArray {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private double harvestTimeDelta;
    private DataToken dataToken = new DataToken();
    private HttpTransactions httpTransactions = new HttpTransactions();
    private HttpErrors httpErrors = new HttpErrors();
    private ActivityTraces activityTraces = new ActivityTraces();
    private MachineMeasurements machineMeasurements = new MachineMeasurements();
    private DeviceInformation deviceInformation = Agent.getDeviceInformation();
    private AgentHealth agentHealth = new AgentHealth();
    private Set<AnalyticsAttribute> sessionAttributes = new HashSet();
    private Collection<AnalyticsEvent> analyticsEvents = new ArrayList();
    private boolean analyticsEnabled = false;

    /* JADX INFO: renamed from: com.newrelic.agent.android.harvest.HarvestData$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType;

        static {
            int[] iArr = new int[AnalyticsAttribute.AttributeDataType.values().length];
            $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType = iArr;
            try {
                iArr[AnalyticsAttribute.AttributeDataType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AnalyticsAttribute.AttributeDataType.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AnalyticsAttribute.AttributeDataType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(this.dataToken.asJson());
        jsonArray.add(this.deviceInformation.asJson());
        jsonArray.add(new JsonPrimitive((Number) Double.valueOf(this.harvestTimeDelta)));
        jsonArray.add(this.httpTransactions.asJson());
        jsonArray.add(this.machineMeasurements.asJson());
        jsonArray.add(this.httpErrors.asJson());
        JsonElement jsonElementAsJson = this.activityTraces.asJson();
        String string = jsonElementAsJson.toString();
        if (string.length() < Harvest.getHarvestConfiguration().getActivity_trace_max_size()) {
            jsonArray.add(jsonElementAsJson);
        } else {
            StatsEngine.get().sample(MetricNames.SUPPORTABILITY_TRACES_DROPPED, string.length());
            jsonArray.add(new JsonArray());
        }
        jsonArray.add(this.agentHealth.asJson());
        if (this.analyticsEnabled) {
            JsonObject jsonObject = new JsonObject();
            for (AnalyticsAttribute analyticsAttribute : this.sessionAttributes) {
                int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[analyticsAttribute.getAttributeDataType().ordinal()];
                if (i10 == 1) {
                    jsonObject.addProperty(analyticsAttribute.getName(), analyticsAttribute.getStringValue());
                } else if (i10 == 2) {
                    jsonObject.addProperty(analyticsAttribute.getName(), Double.valueOf(analyticsAttribute.getDoubleValue()));
                } else if (i10 == 3) {
                    jsonObject.addProperty(analyticsAttribute.getName(), Boolean.valueOf(analyticsAttribute.getBooleanValue()));
                }
            }
            jsonArray.add(jsonObject);
            JsonArray jsonArray2 = new JsonArray();
            Iterator<AnalyticsEvent> it = this.analyticsEvents.iterator();
            while (it.hasNext()) {
                jsonArray2.add(it.next().asJsonObject());
            }
            jsonArray.add(jsonArray2);
        }
        return jsonArray;
    }

    public ActivityTraces getActivityTraces() {
        return this.activityTraces;
    }

    public AgentHealth getAgentHealth() {
        return this.agentHealth;
    }

    public Collection<AnalyticsEvent> getAnalyticsEvents() {
        return this.analyticsEvents;
    }

    public DataToken getDataToken() {
        return this.dataToken;
    }

    public DeviceInformation getDeviceInformation() {
        return this.deviceInformation;
    }

    public HttpErrors getHttpErrors() {
        return this.httpErrors;
    }

    public HttpTransactions getHttpTransactions() {
        return this.httpTransactions;
    }

    public MachineMeasurements getMetrics() {
        return this.machineMeasurements;
    }

    public Set<AnalyticsAttribute> getSessionAttributes() {
        return this.sessionAttributes;
    }

    public boolean isAnalyticsEnabled() {
        return this.analyticsEnabled;
    }

    public boolean isValid() {
        return this.dataToken.isValid();
    }

    public void reset() {
        this.httpErrors.clear();
        this.httpTransactions.clear();
        this.activityTraces.clear();
        this.machineMeasurements.clear();
        this.agentHealth.clear();
        this.sessionAttributes.clear();
        this.analyticsEvents.clear();
    }

    public void setActivityTraces(ActivityTraces activityTraces) {
        this.activityTraces = activityTraces;
    }

    public void setAnalyticsEnabled(boolean z10) {
        this.analyticsEnabled = z10;
    }

    public void setAnalyticsEvents(Collection<AnalyticsEvent> collection) {
        this.analyticsEvents = new ArrayList(collection);
    }

    public void setDataToken(DataToken dataToken) {
        if (dataToken == null) {
            return;
        }
        this.dataToken = dataToken;
    }

    public void setDeviceInformation(DeviceInformation deviceInformation) {
        this.deviceInformation = deviceInformation;
    }

    public void setHarvestTimeDelta(double d10) {
        this.harvestTimeDelta = d10;
    }

    public void setHttpErrors(HttpErrors httpErrors) {
        this.httpErrors = httpErrors;
    }

    public void setHttpTransactions(HttpTransactions httpTransactions) {
        this.httpTransactions = httpTransactions;
    }

    public void setMachineMeasurements(MachineMeasurements machineMeasurements) {
        this.machineMeasurements = machineMeasurements;
    }

    public void setSessionAttributes(Set<AnalyticsAttribute> set) {
        log.debug("HarvestData.setSessionAttributes invoked with attribute set " + set);
        this.sessionAttributes = new HashSet(set);
    }

    public String toString() {
        StringBuilder sbC = b.c("HarvestData{\n\tdataToken=");
        sbC.append(this.dataToken);
        sbC.append(", \n\tdeviceInformation=");
        sbC.append(this.deviceInformation);
        sbC.append(", \n\tharvestTimeDelta=");
        sbC.append(this.harvestTimeDelta);
        sbC.append(", \n\thttpTransactions=");
        sbC.append(this.httpTransactions);
        sbC.append(", \n\tmachineMeasurements=");
        sbC.append(this.machineMeasurements);
        sbC.append(", \n\thttpErrors=");
        sbC.append(this.httpErrors);
        sbC.append(", \n\tactivityTraces=");
        sbC.append(this.activityTraces);
        sbC.append(", \n\tsessionAttributes=");
        sbC.append(this.sessionAttributes);
        sbC.append(", \n\tanalyticsAttributes=");
        sbC.append(this.analyticsEvents);
        sbC.append('}');
        return sbC.toString();
    }
}
