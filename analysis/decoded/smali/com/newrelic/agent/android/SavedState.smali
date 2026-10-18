.class public Lcom/newrelic/agent/android/SavedState;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "SavedState.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final NEW_RELIC_AGENT_DISABLED_VERSION_KEY:Ljava/lang/String;

.field private final PREFERENCE_FILE_PREFIX:Ljava/lang/String;

.field private final PREF_ACCOUNT_ID:Ljava/lang/String;

.field private final PREF_ACTIVITY_TRACE_MIN_UTILIZATION:Ljava/lang/String;

.field private final PREF_AGENT_NAME:Ljava/lang/String;

.field private final PREF_AGENT_VERSION:Ljava/lang/String;

.field private final PREF_APPLICATION_ID:Ljava/lang/String;

.field private final PREF_APP_BUILD:Ljava/lang/String;

.field private final PREF_APP_NAME:Ljava/lang/String;

.field private final PREF_APP_VERSION:Ljava/lang/String;

.field private final PREF_COLLECT_NETWORK_ERRORS:Ljava/lang/String;

.field private final PREF_CONNECT_HASH:Ljava/lang/String;

.field private final PREF_CROSS_PROCESS_ID:Ljava/lang/String;

.field private final PREF_DATA_TOKEN:Ljava/lang/String;

.field private final PREF_DEVICE_ARCHITECTURE:Ljava/lang/String;

.field private final PREF_DEVICE_ID:Ljava/lang/String;

.field private final PREF_DEVICE_MANUFACTURER:Ljava/lang/String;

.field private final PREF_DEVICE_MODEL:Ljava/lang/String;

.field private final PREF_DEVICE_RUN_TIME:Ljava/lang/String;

.field private final PREF_DEVICE_SIZE:Ljava/lang/String;

.field private final PREF_ERROR_LIMIT:Ljava/lang/String;

.field private final PREF_HARVEST_INTERVAL:Ljava/lang/String;

.field private final PREF_MAX_TRANSACTION_AGE:Ljava/lang/String;

.field private final PREF_MAX_TRANSACTION_COUNT:Ljava/lang/String;

.field private final PREF_OS_BUILD:Ljava/lang/String;

.field private final PREF_OS_NAME:Ljava/lang/String;

.field private final PREF_OS_VERSION:Ljava/lang/String;

.field private final PREF_PACKAGE_ID:Ljava/lang/String;

.field private final PREF_PLATFORM:Ljava/lang/String;

.field private final PREF_PLATFORM_VERSION:Ljava/lang/String;

.field private final PREF_PRIORITY_ENCODING_KEY:Ljava/lang/String;

.field private final PREF_RESPONSE_BODY_LIMIT:Ljava/lang/String;

.field private final PREF_SERVER_TIMESTAMP:Ljava/lang/String;

.field private final PREF_STACK_TRACE_LIMIT:Ljava/lang/String;

.field private final PREF_VERSION_CODE:Ljava/lang/String;

.field private activityTraceMinUtilization:Ljava/lang/Float;

.field private final configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private final connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    const-string v0, "com.newrelic.android.agent.v1_"

    .line 2
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREFERENCE_FILE_PREFIX:Ljava/lang/String;

    const-string v0, "maxTransactionCount"

    .line 3
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_MAX_TRANSACTION_COUNT:Ljava/lang/String;

    const-string v0, "maxTransactionAgeInSeconds"

    .line 4
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_MAX_TRANSACTION_AGE:Ljava/lang/String;

    const-string v0, "harvestIntervalInSeconds"

    .line 5
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_HARVEST_INTERVAL:Ljava/lang/String;

    const-string v0, "serverTimestamp"

    .line 6
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_SERVER_TIMESTAMP:Ljava/lang/String;

    const-string v0, "crossProcessId"

    .line 7
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_CROSS_PROCESS_ID:Ljava/lang/String;

    const-string v0, "encoding_key"

    .line 8
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PRIORITY_ENCODING_KEY:Ljava/lang/String;

    const-string v0, "account_id"

    .line 9
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_ACCOUNT_ID:Ljava/lang/String;

    const-string v0, "application_id"

    .line 10
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APPLICATION_ID:Ljava/lang/String;

    const-string v0, "dataToken"

    .line 11
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DATA_TOKEN:Ljava/lang/String;

    const-string v0, "connectHash"

    .line 12
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_CONNECT_HASH:Ljava/lang/String;

    const-string v0, "stackTraceLimit"

    .line 13
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_STACK_TRACE_LIMIT:Ljava/lang/String;

    const-string v0, "responseBodyLimit"

    .line 14
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_RESPONSE_BODY_LIMIT:Ljava/lang/String;

    const-string v0, "collectNetworkErrors"

    .line 15
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_COLLECT_NETWORK_ERRORS:Ljava/lang/String;

    const-string v0, "errorLimit"

    .line 16
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_ERROR_LIMIT:Ljava/lang/String;

    const-string v0, "NewRelicAgentDisabledVersion"

    .line 17
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->NEW_RELIC_AGENT_DISABLED_VERSION_KEY:Ljava/lang/String;

    const-string v0, "activityTraceMinUtilization"

    .line 18
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_ACTIVITY_TRACE_MIN_UTILIZATION:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    const-string v0, "appName"

    .line 20
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_NAME:Ljava/lang/String;

    const-string v0, "appVersion"

    .line 21
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_VERSION:Ljava/lang/String;

    const-string v0, "appBuild"

    .line 22
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_APP_BUILD:Ljava/lang/String;

    const-string v0, "packageId"

    .line 23
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PACKAGE_ID:Ljava/lang/String;

    const-string v0, "versionCode"

    .line 24
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_VERSION_CODE:Ljava/lang/String;

    const-string v0, "agentName"

    .line 25
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_AGENT_NAME:Ljava/lang/String;

    const-string v0, "agentVersion"

    .line 26
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_AGENT_VERSION:Ljava/lang/String;

    const-string v0, "deviceArchitecture"

    .line 27
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_ARCHITECTURE:Ljava/lang/String;

    const-string v0, "deviceId"

    .line 28
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_ID:Ljava/lang/String;

    const-string v0, "deviceModel"

    .line 29
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_MODEL:Ljava/lang/String;

    const-string v0, "deviceManufacturer"

    .line 30
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_MANUFACTURER:Ljava/lang/String;

    const-string v0, "deviceRunTime"

    .line 31
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_RUN_TIME:Ljava/lang/String;

    const-string v0, "deviceSize"

    .line 32
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_DEVICE_SIZE:Ljava/lang/String;

    const-string v0, "osName"

    .line 33
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_OS_NAME:Ljava/lang/String;

    const-string v0, "osBuild"

    .line 34
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_OS_BUILD:Ljava/lang/String;

    const-string v0, "osVersion"

    .line 35
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_OS_VERSION:Ljava/lang/String;

    const-string v0, "platform"

    .line 36
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PLATFORM:Ljava/lang/String;

    const-string v0, "platformVersion"

    .line 37
    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->PREF_PLATFORM_VERSION:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    new-instance v1, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>()V

    new-instance v2, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getPreferenceFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadHarvestConfiguration()V

    .line 43
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadConnectInformation()V

    return-void
.end method

.method private getPreferenceFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.newrelic.android.agent.v1_"

    .line 1
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private saveApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppBuild()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appBuild"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getPackageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageId"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getVersionCode()I

    move-result p1

    const-string v0, "versionCode"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    return-void
.end method

.method private saveDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agentName"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agentVersion"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceArchitecture"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceModel"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceManufacturer"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getRunTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceRunTime"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceSize"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osName"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsBuild()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osBuild"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osVersion"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "platform"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFrameworkVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "platformVersion"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setDefaultValues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    const-string v0, "account_id"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityTraceMinUtilization()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    if-nez v0, :cond_0

    const-string v0, "activityTraceMinUtilization"

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    const-string v0, "agentName"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "agentVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppBuild()Ljava/lang/String;
    .locals 1

    const-string v0, "appBuild"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    const-string v0, "appName"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "appVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationFramework()Ljava/lang/String;
    .locals 1

    const-string v0, "platform"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationFrameworkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "platformVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    const-string v0, "application_id"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    return-object v0
.end method

.method public getConnectionToken()Ljava/lang/String;
    .locals 1

    const-string v0, "connectHash"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrossProcessId()Ljava/lang/String;
    .locals 1

    const-string v0, "crossProcessId"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataToken()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string v1, "dataToken"

    .line 1
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getDeviceArchitecture()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceArchitecture"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceManufacturer"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceModel"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRunTime()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceRunTime"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSize()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceSize"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "NewRelicAgentDisabledVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLimit()I
    .locals 1

    const-string v0, "errorLimit"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFramework()Lcom/newrelic/agent/android/ApplicationFramework;
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/ApplicationFramework;->Native:Lcom/newrelic/agent/android/ApplicationFramework;

    :try_start_0
    const-string v1, "platform"

    .line 2
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/ApplicationFramework;->valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-object v0
.end method

.method public getHarvestInterval()J
    .locals 2

    const-string v0, "harvestIntervalInSeconds"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHarvestIntervalInSeconds()J
    .locals 2

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getHarvestInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionAge()J
    .locals 2

    const-string v0, "maxTransactionAgeInSeconds"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionAgeInSeconds()J
    .locals 2

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getMaxTransactionAge()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionCount()J
    .locals 2

    const-string v0, "maxTransactionCount"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    const-string v0, "osBuild"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    const-string v0, "osName"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "osVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    const-string v0, "packageId"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "platformVersion"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriorityEncodingKey()Ljava/lang/String;
    .locals 1

    const-string v0, "encoding_key"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyLimit()I
    .locals 1

    const-string v0, "responseBodyLimit"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getServerTimestamp()J
    .locals 2

    const-string v0, "serverTimestamp"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStackTraceLimit()I
    .locals 1

    const-string v0, "stackTraceLimit"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVersionCode()I
    .locals 1

    const-string v0, "versionCode"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasConnectionToken(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "connectHash"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCollectingNetworkErrors()Z
    .locals 1

    const-string v0, "collectNetworkErrors"

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadConnectInformation()V
    .locals 3

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>()V

    const-string v1, "appName"

    .line 2
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setAppName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "appVersion"

    .line 4
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    const-string v1, "appBuild"

    .line 6
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAppBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setAppBuild(Ljava/lang/String;)V

    :cond_2
    const-string v1, "packageId"

    .line 8
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setPackageId(Ljava/lang/String;)V

    :cond_3
    const-string v1, "versionCode"

    .line 10
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setVersionCode(I)V

    .line 12
    :cond_4
    new-instance v1, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    const-string v2, "agentName"

    .line 13
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAgentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentName(Ljava/lang/String;)V

    :cond_5
    const-string v2, "agentVersion"

    .line 15
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAgentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentVersion(Ljava/lang/String;)V

    :cond_6
    const-string v2, "deviceArchitecture"

    .line 17
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setArchitecture(Ljava/lang/String;)V

    :cond_7
    const-string v2, "deviceId"

    .line 19
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    :cond_8
    const-string v2, "deviceModel"

    .line 21
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 22
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setModel(Ljava/lang/String;)V

    :cond_9
    const-string v2, "deviceManufacturer"

    .line 23
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setManufacturer(Ljava/lang/String;)V

    :cond_a
    const-string v2, "deviceRunTime"

    .line 25
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceRunTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setRunTime(Ljava/lang/String;)V

    :cond_b
    const-string v2, "deviceSize"

    .line 27
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 28
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDeviceSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setSize(Ljava/lang/String;)V

    :cond_c
    const-string v2, "osName"

    .line 29
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 30
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getOsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsName(Ljava/lang/String;)V

    :cond_d
    const-string v2, "osBuild"

    .line 31
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 32
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getOsBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsBuild(Ljava/lang/String;)V

    :cond_e
    const-string v2, "osVersion"

    .line 33
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 34
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsVersion(Ljava/lang/String;)V

    :cond_f
    const-string v2, "platform"

    .line 35
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 36
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationFramework(Lcom/newrelic/agent/android/ApplicationFramework;)V

    :cond_10
    const-string v2, "platformVersion"

    .line 37
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 38
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPlatformVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationFrameworkVersion(Ljava/lang/String;)V

    .line 39
    :cond_11
    iget-object v2, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->setApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    .line 40
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    return-void
.end method

.method public loadHarvestConfiguration()V
    .locals 6

    const-string v0, "dataToken"

    .line 1
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getDataToken()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_token([I)V

    :cond_0
    const-string v0, "crossProcessId"

    .line 3
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getCrossProcessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCross_process_id(Ljava/lang/String;)V

    :cond_1
    const-string v0, "encoding_key"

    .line 5
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPriorityEncodingKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setPriority_encoding_key(Ljava/lang/String;)V

    :cond_2
    const-string v1, "account_id"

    .line 7
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setAccount_id(Ljava/lang/String;)V

    :cond_3
    const-string v2, "application_id"

    .line 9
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setApplication_id(Ljava/lang/String;)V

    :cond_4
    const-string v3, "serverTimestamp"

    .line 11
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getServerTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setServer_timestamp(J)V

    :cond_5
    const-string v3, "harvestIntervalInSeconds"

    .line 13
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getHarvestIntervalInSeconds()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_report_period(I)V

    :cond_6
    const-string v3, "maxTransactionAgeInSeconds"

    .line 15
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getMaxTransactionAgeInSeconds()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_age(I)V

    :cond_7
    const-string v3, "maxTransactionCount"

    .line 17
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 18
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getMaxTransactionCount()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_count(I)V

    :cond_8
    const-string v3, "stackTraceLimit"

    .line 19
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 20
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getStackTraceLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setStack_trace_limit(I)V

    :cond_9
    const-string v3, "responseBodyLimit"

    .line 21
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 22
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getResponseBodyLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setResponse_body_limit(I)V

    :cond_a
    const-string v3, "collectNetworkErrors"

    .line 23
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 24
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->isCollectingNetworkErrors()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCollect_network_errors(Z)V

    :cond_b
    const-string v3, "errorLimit"

    .line 25
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 26
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getErrorLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setError_limit(I)V

    :cond_c
    const-string v3, "activityTraceMinUtilization"

    .line 27
    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 28
    iget-object v3, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getActivityTraceMinUtilization()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_min_utilization(D)V

    .line 29
    :cond_d
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getPriorityEncodingKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setPriority_encoding_key(Ljava/lang/String;)V

    .line 31
    :cond_e
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setAccount_id(Ljava/lang/String;)V

    .line 33
    :cond_f
    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/SavedState;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setApplication_id(Ljava/lang/String;)V

    .line 35
    :cond_10
    sget-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Loaded configuration: "

    .line 36
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onHarvestComplete()V
    .locals 0

    return-void
.end method

.method public onHarvestConnected()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public onHarvestDisabled()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling agent version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveDisabledVersion(Ljava/lang/String;)V

    return-void
.end method

.method public onHarvestDisconnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Clearing harvest configuration."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->clear()V

    return-void
.end method

.method public save(Ljava/lang/String;F)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 23
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    throw p1
.end method

.method public save(Ljava/lang/String;I)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw p1
.end method

.method public save(Ljava/lang/String;J)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 18
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    throw p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/newrelic/agent/android/SavedState;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw p1
.end method

.method public saveActivityTraceMinUtilization(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/SavedState;->activityTraceMinUtilization:Ljava/lang/Float;

    const-string v0, "activityTraceMinUtilization"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;F)V

    return-void
.end method

.method public saveConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/SavedState;->saveApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/SavedState;->saveDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 4
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadConnectInformation()V

    return-void
.end method

.method public saveConnectionToken(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const-string v0, "connectHash"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    return-void
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public saveDisabledVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NewRelicAgentDisabledVersion"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DataToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/SavedState;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_token()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_token([I)V

    .line 4
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/SavedState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!! saving data token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    const-string v0, "dataToken"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getCross_process_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crossProcessId"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getServer_timestamp()J

    move-result-wide v0

    const-string v2, "serverTimestamp"

    invoke-virtual {p0, v2, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 10
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_report_period()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "harvestIntervalInSeconds"

    invoke-virtual {p0, v2, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 11
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_age()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "maxTransactionAgeInSeconds"

    invoke-virtual {p0, v2, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 12
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_count()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "maxTransactionCount"

    invoke-virtual {p0, v2, v0, v1}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;J)V

    .line 13
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getStack_trace_limit()I

    move-result v0

    const-string v1, "stackTraceLimit"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getResponse_body_limit()I

    move-result v0

    const-string v1, "responseBodyLimit"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->isCollect_network_errors()Z

    move-result v0

    const-string v1, "collectNetworkErrors"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Z)V

    .line 16
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getError_limit()I

    move-result v0

    const-string v1, "errorLimit"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getPriority_encoding_key()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encoding_key"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getAccount_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_id"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getApplication_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application_id"

    invoke-virtual {p0, v1, v0}, Lcom/newrelic/agent/android/SavedState;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_min_utilization()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/SavedState;->saveActivityTraceMinUtilization(F)V

    .line 21
    invoke-virtual {p0}, Lcom/newrelic/agent/android/SavedState;->loadHarvestConfiguration()V

    return-void
.end method
