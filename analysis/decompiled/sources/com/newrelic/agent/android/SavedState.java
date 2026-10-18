package com.newrelic.agent.android;

import a0.b;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.ConnectInformation;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.harvest.HarvestConfiguration;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes.dex */
public class SavedState extends HarvestAdapter {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private Float activityTraceMinUtilization;
    private final SharedPreferences.Editor editor;
    private final SharedPreferences prefs;
    private final String PREFERENCE_FILE_PREFIX = "com.newrelic.android.agent.v1_";
    private final String PREF_MAX_TRANSACTION_COUNT = "maxTransactionCount";
    private final String PREF_MAX_TRANSACTION_AGE = "maxTransactionAgeInSeconds";
    private final String PREF_HARVEST_INTERVAL = "harvestIntervalInSeconds";
    private final String PREF_SERVER_TIMESTAMP = "serverTimestamp";
    private final String PREF_CROSS_PROCESS_ID = "crossProcessId";
    private final String PREF_PRIORITY_ENCODING_KEY = "encoding_key";
    private final String PREF_ACCOUNT_ID = "account_id";
    private final String PREF_APPLICATION_ID = "application_id";
    private final String PREF_DATA_TOKEN = "dataToken";
    private final String PREF_CONNECT_HASH = "connectHash";
    private final String PREF_STACK_TRACE_LIMIT = "stackTraceLimit";
    private final String PREF_RESPONSE_BODY_LIMIT = "responseBodyLimit";
    private final String PREF_COLLECT_NETWORK_ERRORS = "collectNetworkErrors";
    private final String PREF_ERROR_LIMIT = "errorLimit";
    private final String NEW_RELIC_AGENT_DISABLED_VERSION_KEY = "NewRelicAgentDisabledVersion";
    private final String PREF_ACTIVITY_TRACE_MIN_UTILIZATION = "activityTraceMinUtilization";
    private final HarvestConfiguration configuration = new HarvestConfiguration();
    private final String PREF_APP_NAME = AnalyticsAttribute.APP_NAME_ATTRIBUTE;
    private final String PREF_APP_VERSION = "appVersion";
    private final String PREF_APP_BUILD = "appBuild";
    private final String PREF_PACKAGE_ID = "packageId";
    private final String PREF_VERSION_CODE = "versionCode";
    private final String PREF_AGENT_NAME = "agentName";
    private final String PREF_AGENT_VERSION = "agentVersion";
    private final String PREF_DEVICE_ARCHITECTURE = "deviceArchitecture";
    private final String PREF_DEVICE_ID = "deviceId";
    private final String PREF_DEVICE_MODEL = AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE;
    private final String PREF_DEVICE_MANUFACTURER = AnalyticsAttribute.DEVICE_MANUFACTURER_ATTRIBUTE;
    private final String PREF_DEVICE_RUN_TIME = "deviceRunTime";
    private final String PREF_DEVICE_SIZE = "deviceSize";
    private final String PREF_OS_NAME = AnalyticsAttribute.OS_NAME_ATTRIBUTE;
    private final String PREF_OS_BUILD = AnalyticsAttribute.OS_BUILD_ATTRIBUTE;
    private final String PREF_OS_VERSION = AnalyticsAttribute.OS_VERSION_ATTRIBUTE;
    private final String PREF_PLATFORM = AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE;
    private final String PREF_PLATFORM_VERSION = AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE;
    private final ConnectInformation connectInformation = new ConnectInformation(new ApplicationInformation(), new DeviceInformation());
    private final Lock lock = new ReentrantLock();

    @SuppressLint({"CommitPrefEdits"})
    public SavedState(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(getPreferenceFileName(context.getPackageName()), 0);
        this.prefs = sharedPreferences;
        this.editor = sharedPreferences.edit();
        loadHarvestConfiguration();
        loadConnectInformation();
    }

    private String getPreferenceFileName(String str) {
        return d.c("com.newrelic.android.agent.v1_", str);
    }

    private boolean has(String str) {
        return this.prefs.contains(str);
    }

    private void saveApplicationInformation(ApplicationInformation applicationInformation) {
        save(AnalyticsAttribute.APP_NAME_ATTRIBUTE, applicationInformation.getAppName());
        save("appVersion", applicationInformation.getAppVersion());
        save("appBuild", applicationInformation.getAppBuild());
        save("packageId", applicationInformation.getPackageId());
        save("versionCode", applicationInformation.getVersionCode());
    }

    private void saveDeviceInformation(DeviceInformation deviceInformation) {
        save("agentName", deviceInformation.getAgentName());
        save("agentVersion", deviceInformation.getAgentVersion());
        save("deviceArchitecture", deviceInformation.getArchitecture());
        save("deviceId", deviceInformation.getDeviceId());
        save(AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE, deviceInformation.getModel());
        save(AnalyticsAttribute.DEVICE_MANUFACTURER_ATTRIBUTE, deviceInformation.getManufacturer());
        save("deviceRunTime", deviceInformation.getRunTime());
        save("deviceSize", deviceInformation.getSize());
        save(AnalyticsAttribute.OS_NAME_ATTRIBUTE, deviceInformation.getOsName());
        save(AnalyticsAttribute.OS_BUILD_ATTRIBUTE, deviceInformation.getOsBuild());
        save(AnalyticsAttribute.OS_VERSION_ATTRIBUTE, deviceInformation.getOsVersion());
        save(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, deviceInformation.getApplicationFramework().toString());
        save(AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE, deviceInformation.getApplicationFrameworkVersion());
    }

    public void clear() {
        this.lock.lock();
        try {
            this.editor.clear();
            this.editor.apply();
            this.configuration.setDefaultValues();
        } finally {
            this.lock.unlock();
        }
    }

    public String getAccountId() {
        return getString("account_id");
    }

    public float getActivityTraceMinUtilization() {
        if (this.activityTraceMinUtilization == null) {
            this.activityTraceMinUtilization = getFloat("activityTraceMinUtilization");
        }
        return this.activityTraceMinUtilization.floatValue();
    }

    public String getAgentName() {
        return getString("agentName");
    }

    public String getAgentVersion() {
        return getString("agentVersion");
    }

    public String getAppBuild() {
        return getString("appBuild");
    }

    public String getAppName() {
        return getString(AnalyticsAttribute.APP_NAME_ATTRIBUTE);
    }

    public String getAppVersion() {
        return getString("appVersion");
    }

    public String getApplicationFramework() {
        return getString(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE);
    }

    public String getApplicationFrameworkVersion() {
        return getString(AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE);
    }

    public String getApplicationId() {
        return getString("application_id");
    }

    public boolean getBoolean(String str) {
        return this.prefs.getBoolean(str, false);
    }

    public ConnectInformation getConnectInformation() {
        return this.connectInformation;
    }

    public String getConnectionToken() {
        return String.valueOf(getInt("connectHash"));
    }

    public String getCrossProcessId() {
        return getString("crossProcessId");
    }

    public int[] getDataToken() {
        int[] iArr = new int[2];
        String string = getString("dataToken");
        if (string == null) {
            return null;
        }
        try {
            JSONArray jSONArray = (JSONArray) new JSONTokener(string).nextValue();
            if (jSONArray == null) {
                return null;
            }
            iArr[0] = jSONArray.getInt(0);
            iArr[1] = jSONArray.getInt(1);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return iArr;
    }

    public String getDeviceArchitecture() {
        return getString("deviceArchitecture");
    }

    public String getDeviceId() {
        return getString("deviceId");
    }

    public String getDeviceManufacturer() {
        return getString(AnalyticsAttribute.DEVICE_MANUFACTURER_ATTRIBUTE);
    }

    public String getDeviceModel() {
        return getString(AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE);
    }

    public String getDeviceRunTime() {
        return getString("deviceRunTime");
    }

    public String getDeviceSize() {
        return getString("deviceSize");
    }

    public String getDisabledVersion() {
        return getString("NewRelicAgentDisabledVersion");
    }

    public int getErrorLimit() {
        return getInt("errorLimit");
    }

    public Float getFloat(String str) {
        if (this.prefs.contains(str)) {
            return Float.valueOf(((int) (this.prefs.getFloat(str, 0.0f) * 100.0f)) / 100.0f);
        }
        return null;
    }

    public ApplicationFramework getFramework() {
        ApplicationFramework applicationFramework = ApplicationFramework.Native;
        try {
            return ApplicationFramework.valueOf(getString(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE));
        } catch (IllegalArgumentException unused) {
            return applicationFramework;
        }
    }

    public HarvestConfiguration getHarvestConfiguration() {
        return this.configuration;
    }

    public long getHarvestInterval() {
        return getLong("harvestIntervalInSeconds");
    }

    public long getHarvestIntervalInSeconds() {
        return getHarvestInterval();
    }

    public int getInt(String str) {
        return this.prefs.getInt(str, 0);
    }

    public long getLong(String str) {
        return this.prefs.getLong(str, 0L);
    }

    public long getMaxTransactionAge() {
        return getLong("maxTransactionAgeInSeconds");
    }

    public long getMaxTransactionAgeInSeconds() {
        return getMaxTransactionAge();
    }

    public long getMaxTransactionCount() {
        return getLong("maxTransactionCount");
    }

    public String getOsBuild() {
        return getString(AnalyticsAttribute.OS_BUILD_ATTRIBUTE);
    }

    public String getOsName() {
        return getString(AnalyticsAttribute.OS_NAME_ATTRIBUTE);
    }

    public String getOsVersion() {
        return getString(AnalyticsAttribute.OS_VERSION_ATTRIBUTE);
    }

    public String getPackageId() {
        return getString("packageId");
    }

    public String getPlatformVersion() {
        return getString(AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE);
    }

    public String getPriorityEncodingKey() {
        return getString("encoding_key");
    }

    public int getResponseBodyLimit() {
        return getInt("responseBodyLimit");
    }

    public long getServerTimestamp() {
        return getLong("serverTimestamp");
    }

    public int getStackTraceLimit() {
        return getInt("stackTraceLimit");
    }

    public String getString(String str) {
        if (this.prefs.contains(str)) {
            return this.prefs.getString(str, null);
        }
        return null;
    }

    public int getVersionCode() {
        return getInt("versionCode");
    }

    public boolean hasConnectionToken(String str) {
        return getInt("connectHash") == str.hashCode();
    }

    public boolean isCollectingNetworkErrors() {
        return getBoolean("collectNetworkErrors");
    }

    public void loadConnectInformation() {
        ApplicationInformation applicationInformation = new ApplicationInformation();
        if (has(AnalyticsAttribute.APP_NAME_ATTRIBUTE)) {
            applicationInformation.setAppName(getAppName());
        }
        if (has("appVersion")) {
            applicationInformation.setAppVersion(getAppVersion());
        }
        if (has("appBuild")) {
            applicationInformation.setAppBuild(getAppBuild());
        }
        if (has("packageId")) {
            applicationInformation.setPackageId(getPackageId());
        }
        if (has("versionCode")) {
            applicationInformation.setVersionCode(getVersionCode());
        }
        DeviceInformation deviceInformation = new DeviceInformation();
        if (has("agentName")) {
            deviceInformation.setAgentName(getAgentName());
        }
        if (has("agentVersion")) {
            deviceInformation.setAgentVersion(getAgentVersion());
        }
        if (has("deviceArchitecture")) {
            deviceInformation.setArchitecture(getDeviceArchitecture());
        }
        if (has("deviceId")) {
            deviceInformation.setDeviceId(getDeviceId());
        }
        if (has(AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE)) {
            deviceInformation.setModel(getDeviceModel());
        }
        if (has(AnalyticsAttribute.DEVICE_MANUFACTURER_ATTRIBUTE)) {
            deviceInformation.setManufacturer(getDeviceManufacturer());
        }
        if (has("deviceRunTime")) {
            deviceInformation.setRunTime(getDeviceRunTime());
        }
        if (has("deviceSize")) {
            deviceInformation.setSize(getDeviceSize());
        }
        if (has(AnalyticsAttribute.OS_NAME_ATTRIBUTE)) {
            deviceInformation.setOsName(getOsName());
        }
        if (has(AnalyticsAttribute.OS_BUILD_ATTRIBUTE)) {
            deviceInformation.setOsBuild(getOsBuild());
        }
        if (has(AnalyticsAttribute.OS_VERSION_ATTRIBUTE)) {
            deviceInformation.setOsVersion(getOsVersion());
        }
        if (has(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE)) {
            deviceInformation.setApplicationFramework(getFramework());
        }
        if (has(AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE)) {
            deviceInformation.setApplicationFrameworkVersion(getPlatformVersion());
        }
        this.connectInformation.setApplicationInformation(applicationInformation);
        this.connectInformation.setDeviceInformation(deviceInformation);
    }

    public void loadHarvestConfiguration() {
        if (has("dataToken")) {
            this.configuration.setData_token(getDataToken());
        }
        if (has("crossProcessId")) {
            this.configuration.setCross_process_id(getCrossProcessId());
        }
        if (has("encoding_key")) {
            this.configuration.setPriority_encoding_key(getPriorityEncodingKey());
        }
        if (has("account_id")) {
            this.configuration.setAccount_id(getAccountId());
        }
        if (has("application_id")) {
            this.configuration.setApplication_id(getApplicationId());
        }
        if (has("serverTimestamp")) {
            this.configuration.setServer_timestamp(getServerTimestamp());
        }
        if (has("harvestIntervalInSeconds")) {
            this.configuration.setData_report_period((int) getHarvestIntervalInSeconds());
        }
        if (has("maxTransactionAgeInSeconds")) {
            this.configuration.setReport_max_transaction_age((int) getMaxTransactionAgeInSeconds());
        }
        if (has("maxTransactionCount")) {
            this.configuration.setReport_max_transaction_count((int) getMaxTransactionCount());
        }
        if (has("stackTraceLimit")) {
            this.configuration.setStack_trace_limit(getStackTraceLimit());
        }
        if (has("responseBodyLimit")) {
            this.configuration.setResponse_body_limit(getResponseBodyLimit());
        }
        if (has("collectNetworkErrors")) {
            this.configuration.setCollect_network_errors(isCollectingNetworkErrors());
        }
        if (has("errorLimit")) {
            this.configuration.setError_limit(getErrorLimit());
        }
        if (has("activityTraceMinUtilization")) {
            this.configuration.setActivity_trace_min_utilization(getActivityTraceMinUtilization());
        }
        if (has("encoding_key")) {
            this.configuration.setPriority_encoding_key(getPriorityEncodingKey());
        }
        if (has("account_id")) {
            this.configuration.setAccount_id(getAccountId());
        }
        if (has("application_id")) {
            this.configuration.setApplication_id(getApplicationId());
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Loaded configuration: ");
        sbC.append(this.configuration);
        agentLog.info(sbC.toString());
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestConnected() {
        saveHarvestConfiguration(Harvest.getHarvestConfiguration());
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestDisabled() {
        String agentVersion = Agent.getDeviceInformation().getAgentVersion();
        log.info("Disabling agent version " + agentVersion);
        saveDisabledVersion(agentVersion);
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestDisconnected() {
        log.info("Clearing harvest configuration.");
        clear();
    }

    public void save(String str, String str2) {
        this.lock.lock();
        try {
            this.editor.putString(str, str2);
            this.editor.apply();
        } finally {
            this.lock.unlock();
        }
    }

    public void saveActivityTraceMinUtilization(float f10) {
        this.activityTraceMinUtilization = Float.valueOf(f10);
        save("activityTraceMinUtilization", f10);
    }

    public void saveConnectInformation(ConnectInformation connectInformation) {
        if (this.connectInformation.equals(connectInformation)) {
            return;
        }
        saveApplicationInformation(connectInformation.getApplicationInformation());
        saveDeviceInformation(connectInformation.getDeviceInformation());
        loadConnectInformation();
    }

    public void saveConnectionToken(String str) {
        save("connectHash", str.hashCode());
    }

    public void saveDeviceId(String str) {
        save("deviceId", str);
        this.connectInformation.getDeviceInformation().setDeviceId(str);
    }

    public void saveDisabledVersion(String str) {
        save("NewRelicAgentDisabledVersion", str);
    }

    public void saveHarvestConfiguration(HarvestConfiguration harvestConfiguration) {
        if (this.configuration.equals(harvestConfiguration)) {
            return;
        }
        if (!harvestConfiguration.getDataToken().isValid()) {
            harvestConfiguration.setData_token(this.configuration.getData_token());
        }
        AgentLog agentLog = log;
        agentLog.info("Saving configuration: " + harvestConfiguration);
        String jsonString = harvestConfiguration.getDataToken().toJsonString();
        agentLog.debug("!! saving data token: " + jsonString);
        save("dataToken", jsonString);
        save("crossProcessId", harvestConfiguration.getCross_process_id());
        save("serverTimestamp", harvestConfiguration.getServer_timestamp());
        save("harvestIntervalInSeconds", harvestConfiguration.getData_report_period());
        save("maxTransactionAgeInSeconds", harvestConfiguration.getReport_max_transaction_age());
        save("maxTransactionCount", harvestConfiguration.getReport_max_transaction_count());
        save("stackTraceLimit", harvestConfiguration.getStack_trace_limit());
        save("responseBodyLimit", harvestConfiguration.getResponse_body_limit());
        save("collectNetworkErrors", harvestConfiguration.isCollect_network_errors());
        save("errorLimit", harvestConfiguration.getError_limit());
        save("encoding_key", harvestConfiguration.getPriority_encoding_key());
        save("account_id", harvestConfiguration.getAccount_id());
        save("application_id", harvestConfiguration.getApplication_id());
        saveActivityTraceMinUtilization((float) harvestConfiguration.getActivity_trace_min_utilization());
        loadHarvestConfiguration();
    }

    public void save(String str, boolean z10) {
        this.lock.lock();
        try {
            this.editor.putBoolean(str, z10);
            this.editor.apply();
        } finally {
            this.lock.unlock();
        }
    }

    public void save(String str, int i10) {
        this.lock.lock();
        try {
            this.editor.putInt(str, i10);
            this.editor.apply();
        } finally {
            this.lock.unlock();
        }
    }

    public void save(String str, long j10) {
        this.lock.lock();
        try {
            this.editor.putLong(str, j10);
            this.editor.apply();
        } finally {
            this.lock.unlock();
        }
    }

    public void save(String str, float f10) {
        this.lock.lock();
        try {
            this.editor.putFloat(str, f10);
            this.editor.apply();
        } finally {
            this.lock.unlock();
        }
    }
}
