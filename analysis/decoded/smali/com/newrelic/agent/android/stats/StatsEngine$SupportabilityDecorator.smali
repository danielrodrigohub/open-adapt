.class Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;
.super Lcom/newrelic/agent/android/stats/StatsEngine;
.source "StatsEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/stats/StatsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportabilityDecorator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;-><init>(Lcom/newrelic/agent/android/stats/StatsEngine$1;)V

    return-void
.end method


# virtual methods
.method public emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;
    .locals 7

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFrameworkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    sget-object v5, Lcom/newrelic/agent/android/stats/StatsEngine$1;->$SwitchMap$com$newrelic$agent$android$ApplicationFramework:[I

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<framework>"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine$SupportabilityDecorator;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<frameworkVersion>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "//"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metric normalized to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object p1

    return-object p1
.end method
