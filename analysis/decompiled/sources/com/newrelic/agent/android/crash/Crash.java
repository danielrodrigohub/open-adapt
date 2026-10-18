package com.newrelic.agent.android.crash;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentImpl;
import com.newrelic.agent.android.NewRelicConfig;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.harvest.ActivityHistory;
import com.newrelic.agent.android.harvest.DataToken;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.crash.ApplicationInfo;
import com.newrelic.agent.android.harvest.crash.DeviceInfo;
import com.newrelic.agent.android.harvest.crash.ExceptionInfo;
import com.newrelic.agent.android.harvest.crash.ThreadInfo;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.hybrid.data.HexAttribute;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonParser;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class Crash extends HarvestableObject {
    public static final int MAX_UPLOAD_COUNT = 3;
    public static final int PROTOCOL_VERSION = 1;
    private ActivityHistory activityHistory;
    private boolean analyticsEnabled;
    private final String appToken;
    private ApplicationInfo applicationInfo;
    public String buildId;
    private DeviceInfo deviceInfo;
    private Collection<AnalyticsEvent> events;
    private ExceptionInfo exceptionInfo;
    private Set<AnalyticsAttribute> sessionAttributes;
    private List<ThreadInfo> threads;
    public long timestamp;
    private int uploadCount;
    private final UUID uuid;

    public Crash(UUID uuid, String str, long j10) {
        AgentImpl impl = Agent.getImpl();
        this.uuid = uuid;
        this.buildId = str;
        this.timestamp = j10;
        this.appToken = getAppToken();
        this.deviceInfo = new DeviceInfo(impl.getDeviceInformation(), impl.getEnvironmentInformation());
        this.applicationInfo = new ApplicationInfo(impl.getApplicationInformation());
        this.exceptionInfo = new ExceptionInfo();
        this.threads = new ArrayList();
        this.activityHistory = new ActivityHistory(new ArrayList());
        this.sessionAttributes = new HashSet();
        this.events = new HashSet();
        this.analyticsEnabled = true;
        this.uploadCount = 0;
    }

    public static Crash crashFromJsonString(String str) {
        JsonObject asJsonObject = new JsonParser().parse(str).getAsJsonObject();
        Crash crash = new Crash(UUID.fromString(asJsonObject.get(AnalyticsAttribute.UUID_ATTRIBUTE).getAsString()), asJsonObject.get(HexAttribute.HEX_ATTR_JSERROR_BUILDID).getAsString(), asJsonObject.get(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE).getAsLong());
        crash.deviceInfo = DeviceInfo.newFromJson(asJsonObject.get("deviceInfo").getAsJsonObject());
        crash.applicationInfo = ApplicationInfo.newFromJson(asJsonObject.get("appInfo").getAsJsonObject());
        crash.exceptionInfo = ExceptionInfo.newFromJson(asJsonObject.get("exception").getAsJsonObject());
        crash.threads = crash.newListFromJson(asJsonObject.get("threads").getAsJsonArray());
        crash.activityHistory = ActivityHistory.newFromJson(asJsonObject.get("activityHistory").getAsJsonArray());
        crash.analyticsEnabled = asJsonObject.has("sessionAttributes") || asJsonObject.has("analyticsEvents");
        if (asJsonObject.has("sessionAttributes")) {
            crash.setSessionAttributes(AnalyticsAttribute.newFromJson(asJsonObject.get("sessionAttributes").getAsJsonObject()));
        }
        if (asJsonObject.has("analyticsEvents")) {
            crash.setAnalyticsEvents(AnalyticsEvent.newFromJson(asJsonObject.get("analyticsEvents").getAsJsonArray()));
        }
        if (asJsonObject.has("uploadCount")) {
            crash.uploadCount = asJsonObject.get("uploadCount").getAsInt();
        }
        return crash;
    }

    public static String getBuildId() {
        return NewRelicConfig.BUILD_ID;
    }

    public static String getSafeBuildId() {
        String buildId = getBuildId();
        if (buildId == null || buildId.isEmpty()) {
            buildId = Agent.getBuildId();
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_INVALID_BUILDID);
            if (buildId == null || buildId.isEmpty()) {
                AgentLogManager.getAgentLog().error("Invalid (null or empty) build ID detected! Crash will be ignored by collector.");
            }
        }
        return buildId;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("protocolVersion", new JsonPrimitive((Number) 1));
        jsonObject.add(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, new JsonPrimitive("Android"));
        jsonObject.add(AnalyticsAttribute.UUID_ATTRIBUTE, SafeJsonPrimitive.factory(this.uuid.toString()));
        jsonObject.add(HexAttribute.HEX_ATTR_JSERROR_BUILDID, SafeJsonPrimitive.factory(this.buildId));
        jsonObject.add(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE, SafeJsonPrimitive.factory(Long.valueOf(this.timestamp)));
        jsonObject.add("appToken", SafeJsonPrimitive.factory(this.appToken));
        jsonObject.add("deviceInfo", this.deviceInfo.asJsonObject());
        jsonObject.add("appInfo", this.applicationInfo.asJsonObject());
        jsonObject.add("exception", this.exceptionInfo.asJsonObject());
        jsonObject.add("threads", getThreadsAsJson());
        jsonObject.add("activityHistory", this.activityHistory.asJsonArrayWithoutDuration());
        JsonObject jsonObject2 = new JsonObject();
        Set<AnalyticsAttribute> set = this.sessionAttributes;
        if (set != null) {
            for (AnalyticsAttribute analyticsAttribute : set) {
                jsonObject2.add(analyticsAttribute.getName(), analyticsAttribute.asJsonElement());
            }
        }
        jsonObject.add("sessionAttributes", jsonObject2);
        JsonArray jsonArray = new JsonArray();
        Collection<AnalyticsEvent> collection = this.events;
        if (collection != null) {
            Iterator<AnalyticsEvent> it = collection.iterator();
            while (it.hasNext()) {
                jsonArray.add(it.next().asJsonObject());
            }
        }
        jsonObject.add("analyticsEvents", jsonArray);
        DataToken dataToken = Harvest.getHarvestConfiguration().getDataToken();
        if (dataToken != null) {
            jsonObject.add("dataToken", dataToken.asJsonArray());
        }
        return jsonObject;
    }

    public List<ThreadInfo> extractThreads(Throwable th) {
        return new ThreadInfo(th).allThreads();
    }

    public String getAppToken() {
        return CrashReporter.getInstance() != null ? CrashReporter.getInstance().getAgentConfiguration().getApplicationToken() : "<missing app token>";
    }

    public ExceptionInfo getExceptionInfo() {
        return this.exceptionInfo;
    }

    public Throwable getRootCause(Throwable th) {
        if (th == null) {
            return new Throwable("Unknown cause");
        }
        try {
            Throwable cause = th.getCause();
            return cause == null ? th : getRootCause(cause);
        } catch (Exception unused) {
            return th;
        }
    }

    public Set<AnalyticsAttribute> getSessionAttributes() {
        return this.sessionAttributes;
    }

    public JsonArray getThreadsAsJson() {
        JsonArray jsonArray = new JsonArray();
        List<ThreadInfo> list = this.threads;
        if (list != null) {
            Iterator<ThreadInfo> it = list.iterator();
            while (it.hasNext()) {
                jsonArray.add(it.next().asJsonObject());
            }
        }
        return jsonArray;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int getUploadCount() {
        return this.uploadCount;
    }

    public UUID getUuid() {
        return this.uuid;
    }

    public void incrementUploadCount() {
        this.uploadCount++;
    }

    public boolean isStale() {
        return this.uploadCount >= 3;
    }

    public List<ThreadInfo> newListFromJson(JsonArray jsonArray) {
        return new ThreadInfo().newListFromJson(jsonArray);
    }

    public void setAnalyticsEvents(Collection<AnalyticsEvent> collection) {
        this.events = collection;
    }

    public void setSessionAttributes(Set<AnalyticsAttribute> set) {
        this.sessionAttributes = set;
    }

    public Crash(Throwable th) {
        this(th, new HashSet(), new HashSet(), false);
    }

    public Crash(Throwable th, Set<AnalyticsAttribute> set, Collection<AnalyticsEvent> collection, boolean z10) {
        AgentImpl impl = Agent.getImpl();
        Throwable rootCause = getRootCause(th);
        this.uuid = UUID.randomUUID();
        this.buildId = getSafeBuildId();
        this.timestamp = System.currentTimeMillis();
        this.appToken = getAppToken();
        this.deviceInfo = new DeviceInfo(impl.getDeviceInformation(), impl.getEnvironmentInformation());
        this.applicationInfo = new ApplicationInfo(impl.getApplicationInformation());
        this.exceptionInfo = new ExceptionInfo(rootCause);
        this.threads = extractThreads(rootCause);
        this.activityHistory = TraceMachine.getActivityHistory();
        this.sessionAttributes = set;
        this.events = collection;
        this.analyticsEnabled = z10;
        this.uploadCount = 0;
    }
}
