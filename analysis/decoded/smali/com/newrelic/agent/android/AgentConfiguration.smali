.class public Lcom/newrelic/agent/android/AgentConfiguration;
.super Ljava/lang/Object;
.source "AgentConfiguration.java"


# static fields
.field private static final DEFAULT_COLLECTOR_HOST:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final DEFAULT_CRASH_COLLECTOR_HOST:Ljava/lang/String; = "mobile-crash.newrelic.com"

.field public static final DEFAULT_DEVICE_UUID:Ljava/lang/String; = "0"

.field public static final DEFAULT_REGION_COLLECTOR_HOST:Ljava/lang/String; = "mobile-collector.%s.nr-data.net"

.field private static final DEFAULT_REGION_CRASH_COLLECTOR_HOST:Ljava/lang/String; = "mobile-crash.%s.nr-data.net"

.field public static final DEVICE_UUID_MAX_LEN:I = 0x28

.field private static final HEX_COLLECTOR_PATH:Ljava/lang/String; = "/mobile/f"

.field private static final HEX_COLLECTOR_TIMEOUT:I = 0x1388

.field private static final NUM_IO_THREADS:I = 0x3

.field private static final PAYLOAD_TTL:I = 0xa4cb800

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private analyticsAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

.field private applicationFramework:Lcom/newrelic/agent/android/ApplicationFramework;

.field private applicationFrameworkVersion:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private crashCollectorHost:Ljava/lang/String;

.field private crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

.field private customApplicationVersion:Ljava/lang/String;

.field private customBuildId:Ljava/lang/String;

.field private deviceID:Ljava/lang/String;

.field private enableAnalyticsEvents:Z

.field private payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/agent/android/payload/PayloadStore<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;"
        }
    .end annotation
.end field

.field private region:Ljava/lang/String;

.field private reportCrashes:Z

.field private reportHandledExceptions:Z

.field private sessionID:Ljava/lang/String;

.field private useLocationService:Z

.field private useSsl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/AgentConfiguration;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mobile-collector.newrelic.com"

    .line 2
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    const-string v0, "mobile-crash.newrelic.com"

    .line 3
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    .line 6
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 7
    iput-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportHandledExceptions:Z

    .line 8
    iput-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    .line 9
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->provideSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->region:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/newrelic/agent/android/payload/NullPayloadStore;

    invoke-direct {v0}, Lcom/newrelic/agent/android/payload/NullPayloadStore;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    .line 14
    sget-object v0, Lcom/newrelic/agent/android/ApplicationFramework;->Native:Lcom/newrelic/agent/android/ApplicationFramework;

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationFramework:Lcom/newrelic/agent/android/ApplicationFramework;

    .line 15
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationFrameworkVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnalyticsAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticsAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    return-object v0
.end method

.method public getAppTokenHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "X-App-License-Key"

    return-object v0
.end method

.method public getAppVersionHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "X-NewRelic-App-Version"

    return-object v0
.end method

.method public getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationFramework:Lcom/newrelic/agent/android/ApplicationFramework;

    return-object v0
.end method

.method public getApplicationFrameworkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashCollectorHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashStore()Lcom/newrelic/agent/android/crash/CrashStore;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    return-object v0
.end method

.method public getCustomApplicationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomBuildIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCollectorHost()Ljava/lang/String;
    .locals 1

    const-string v0, "mobile-collector.newrelic.com"

    return-object v0
.end method

.method public getDefaultCrashCollectorHost()Ljava/lang/String;
    .locals 1

    const-string v0, "mobile-crash.newrelic.com"

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsNameHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "X-NewRelic-OS-Name"

    return-object v0
.end method

.method public getEnableAnalyticsEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    return v0
.end method

.method public getHexCollectorHost()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AgentConfiguration;->getCollectorHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexCollectorPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/mobile/f"

    return-object v0
.end method

.method public getHexCollectorTimeout()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public getIOThreadSize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPayloadStore()Lcom/newrelic/agent/android/payload/PayloadStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/newrelic/agent/android/payload/PayloadStore<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    return-object v0
.end method

.method public getPayloadTTL()I
    .locals 1

    const v0, 0xa4cb800

    return v0
.end method

.method public getRegionalCollectorFromLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->parseRegionFromApplicationToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "mobile-collector.%s.nr-data.net"

    .line 3
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "mobile-collector.newrelic.com"

    return-object p1
.end method

.method public getReportCrashes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return v0
.end method

.method public getReportHandledExceptions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportHandledExceptions:Z

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public parseRegionFromApplicationToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    .line 1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "^(.+?)x{1,2}.*"

    .line 2
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/newrelic/agent/android/AgentConfiguration;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Region prefix empty"

    invoke-interface {p1, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    sget-object v1, Lcom/newrelic/agent/android/AgentConfiguration;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegionalCollectorFromLicenseKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public provideSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public setAnalyticsAttributeStore(Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->analyticsAttributeStore:Lcom/newrelic/agent/android/analytics/AnalyticsAttributeStore;

    return-void
.end method

.method public setApplicationFramework(Lcom/newrelic/agent/android/ApplicationFramework;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationFramework:Lcom/newrelic/agent/android/ApplicationFramework;

    return-void
.end method

.method public setApplicationFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationFrameworkVersion:Ljava/lang/String;

    return-void
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->parseRegionFromApplicationToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->region:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "mobile-collector.%s.nr-data.net"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->region:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "mobile-crash.%s.nr-data.net"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-void
.end method

.method public setCrashCollectorHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    return-void
.end method

.method public setCrashStore(Lcom/newrelic/agent/android/crash/CrashStore;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crash/CrashStore;

    return-void
.end method

.method public setCustomApplicationVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customApplicationVersion:Ljava/lang/String;

    return-void
.end method

.method public setCustomBuildIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->customBuildId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 3

    const-string v0, "0"

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->deviceID:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->deviceID:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v2, "Mobile/App/UUID/Truncated"

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->deviceID:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setEnableAnalyticsEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->enableAnalyticsEvents:Z

    return-void
.end method

.method public setPayloadStore(Lcom/newrelic/agent/android/payload/PayloadStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/payload/PayloadStore<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->payloadStore:Lcom/newrelic/agent/android/payload/PayloadStore;

    return-void
.end method

.method public setReportCrashes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return-void
.end method

.method public setReportHandledExceptions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportHandledExceptions:Z

    return-void
.end method

.method public setUseLocationService(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object p1, Lcom/newrelic/agent/android/AgentConfiguration;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "Location service is no longer supported."

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    return-void
.end method

.method public setUseSsl(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/newrelic/agent/android/AgentConfiguration;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "Unencrypted http requests are no longer supported"

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return-void
.end method

.method public useLocationService()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/AgentConfiguration;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Location service is no longer supported."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    return v0
.end method

.method public useSsl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return v0
.end method
