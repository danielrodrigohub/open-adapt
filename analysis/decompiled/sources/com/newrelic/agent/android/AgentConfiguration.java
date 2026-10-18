package com.newrelic.agent.android;

import com.newrelic.agent.android.analytics.AnalyticsAttributeStore;
import com.newrelic.agent.android.crash.CrashStore;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.payload.NullPayloadStore;
import com.newrelic.agent.android.payload.Payload;
import com.newrelic.agent.android.payload.PayloadStore;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.util.Constants;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class AgentConfiguration {
    private static final String DEFAULT_COLLECTOR_HOST = "mobile-collector.newrelic.com";
    private static final String DEFAULT_CRASH_COLLECTOR_HOST = "mobile-crash.newrelic.com";
    public static final String DEFAULT_DEVICE_UUID = "0";
    public static final String DEFAULT_REGION_COLLECTOR_HOST = "mobile-collector.%s.nr-data.net";
    private static final String DEFAULT_REGION_CRASH_COLLECTOR_HOST = "mobile-crash.%s.nr-data.net";
    public static final int DEVICE_UUID_MAX_LEN = 40;
    private static final String HEX_COLLECTOR_PATH = "/mobile/f";
    private static final int HEX_COLLECTOR_TIMEOUT = 5000;
    private static final int NUM_IO_THREADS = 3;
    private static final int PAYLOAD_TTL = 172800000;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private AnalyticsAttributeStore analyticsAttributeStore;
    private String applicationToken;
    private CrashStore crashStore;
    private String deviceID;
    private String collectorHost = DEFAULT_COLLECTOR_HOST;
    private String crashCollectorHost = DEFAULT_CRASH_COLLECTOR_HOST;
    private boolean useSsl = true;
    private boolean useLocationService = false;
    private boolean reportCrashes = false;
    private boolean reportHandledExceptions = true;
    private boolean enableAnalyticsEvents = true;
    private String sessionID = provideSessionId();
    private String customApplicationVersion = null;
    private String customBuildId = null;
    private String region = null;
    private PayloadStore<Payload> payloadStore = new NullPayloadStore();
    private ApplicationFramework applicationFramework = ApplicationFramework.Native;
    private String applicationFrameworkVersion = Agent.getVersion();

    public AnalyticsAttributeStore getAnalyticsAttributeStore() {
        return this.analyticsAttributeStore;
    }

    public String getAppTokenHeader() {
        return Constants.Network.APPLICATION_LICENSE_HEADER;
    }

    public String getAppVersionHeader() {
        return Constants.Network.APP_VERSION_HEADER;
    }

    public ApplicationFramework getApplicationFramework() {
        return this.applicationFramework;
    }

    public String getApplicationFrameworkVersion() {
        return this.applicationFrameworkVersion;
    }

    public String getApplicationToken() {
        return this.applicationToken;
    }

    public String getCollectorHost() {
        return this.collectorHost;
    }

    public String getCrashCollectorHost() {
        return this.crashCollectorHost;
    }

    public CrashStore getCrashStore() {
        return this.crashStore;
    }

    public String getCustomApplicationVersion() {
        return this.customApplicationVersion;
    }

    public String getCustomBuildIdentifier() {
        return this.customBuildId;
    }

    public String getDefaultCollectorHost() {
        return DEFAULT_COLLECTOR_HOST;
    }

    public String getDefaultCrashCollectorHost() {
        return DEFAULT_CRASH_COLLECTOR_HOST;
    }

    public String getDeviceID() {
        return this.deviceID;
    }

    public String getDeviceOsNameHeader() {
        return Constants.Network.DEVICE_OS_NAME_HEADER;
    }

    public boolean getEnableAnalyticsEvents() {
        return this.enableAnalyticsEvents;
    }

    public String getHexCollectorHost() {
        return getCollectorHost();
    }

    public String getHexCollectorPath() {
        return HEX_COLLECTOR_PATH;
    }

    public int getHexCollectorTimeout() {
        return 5000;
    }

    public int getIOThreadSize() {
        return 3;
    }

    public PayloadStore<Payload> getPayloadStore() {
        return this.payloadStore;
    }

    public int getPayloadTTL() {
        return PAYLOAD_TTL;
    }

    public String getRegionalCollectorFromLicenseKey(String str) {
        String regionFromApplicationToken = parseRegionFromApplicationToken(str);
        return (regionFromApplicationToken == null || "".equals(str)) ? DEFAULT_COLLECTOR_HOST : String.format(DEFAULT_REGION_COLLECTOR_HOST, regionFromApplicationToken);
    }

    public boolean getReportCrashes() {
        return this.reportCrashes;
    }

    public boolean getReportHandledExceptions() {
        return this.reportHandledExceptions;
    }

    public String getSessionID() {
        return this.sessionID;
    }

    public String parseRegionFromApplicationToken(String str) {
        if (str != null && !"".equals(str)) {
            Matcher matcher = Pattern.compile("^(.+?)x{1,2}.*").matcher(str);
            if (matcher.matches()) {
                try {
                    String strGroup = matcher.group(1);
                    if (strGroup != null && !"".equals(strGroup)) {
                        return strGroup;
                    }
                    log.warning("Region prefix empty");
                } catch (Exception e10) {
                    log.error("getRegionalCollectorFromLicenseKey: " + e10);
                }
            }
        }
        return null;
    }

    public String provideSessionId() {
        String string = UUID.randomUUID().toString();
        this.sessionID = string;
        return string;
    }

    public void setAnalyticsAttributeStore(AnalyticsAttributeStore analyticsAttributeStore) {
        this.analyticsAttributeStore = analyticsAttributeStore;
    }

    public void setApplicationFramework(ApplicationFramework applicationFramework) {
        this.applicationFramework = applicationFramework;
    }

    public void setApplicationFrameworkVersion(String str) {
        this.applicationFrameworkVersion = str;
    }

    public void setApplicationToken(String str) {
        this.applicationToken = str;
        String regionFromApplicationToken = parseRegionFromApplicationToken(str);
        this.region = regionFromApplicationToken;
        if (regionFromApplicationToken != null) {
            this.collectorHost = String.format(DEFAULT_REGION_COLLECTOR_HOST, regionFromApplicationToken);
            this.crashCollectorHost = String.format(DEFAULT_REGION_CRASH_COLLECTOR_HOST, this.region);
        }
    }

    public void setCollectorHost(String str) {
        this.collectorHost = str;
    }

    public void setCrashCollectorHost(String str) {
        this.crashCollectorHost = str;
    }

    public void setCrashStore(CrashStore crashStore) {
        this.crashStore = crashStore;
    }

    public void setCustomApplicationVersion(String str) {
        this.customApplicationVersion = str;
    }

    public void setCustomBuildIdentifier(String str) {
        this.customBuildId = str;
    }

    public void setDeviceID(String str) {
        if (str == null) {
            this.deviceID = DEFAULT_DEVICE_UUID;
            return;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            this.deviceID = DEFAULT_DEVICE_UUID;
            return;
        }
        if (strTrim.length() > 40) {
            StatsEngine.get().inc(MetricNames.METRIC_UUID_TRUNCATED);
        }
        this.deviceID = strTrim.substring(0, Math.min(40, strTrim.length()));
    }

    public void setEnableAnalyticsEvents(boolean z10) {
        this.enableAnalyticsEvents = z10;
    }

    public void setPayloadStore(PayloadStore<Payload> payloadStore) {
        this.payloadStore = payloadStore;
    }

    public void setReportCrashes(boolean z10) {
        this.reportCrashes = z10;
    }

    public void setReportHandledExceptions(boolean z10) {
        this.reportHandledExceptions = z10;
    }

    @Deprecated
    public void setUseLocationService(boolean z10) {
        log.warning("Location service is no longer supported.");
        this.useLocationService = false;
    }

    public void setUseSsl(boolean z10) {
        if (!z10) {
            log.error("Unencrypted http requests are no longer supported");
        }
        this.useSsl = true;
    }

    @Deprecated
    public boolean useLocationService() {
        log.warning("Location service is no longer supported.");
        return this.useLocationService;
    }

    public boolean useSsl() {
        return this.useSsl;
    }
}
