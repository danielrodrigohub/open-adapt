.class public Lcom/newrelic/agent/android/hybrid/data/DataController;
.super Ljava/lang/Object;
.source "DataController.java"


# static fields
.field public static final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/AgentConfiguration;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/hybrid/data/DataController;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/hybrid/data/DataController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAgentDataFromJSError(Lcom/newrelic/agent/android/hybrid/StackTrace;)Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/hybrid/data/DataController;->buildAgentDataFromJSError(Lcom/newrelic/agent/android/hybrid/StackTrace;Ljava/util/Map;)Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static buildAgentDataFromJSError(Lcom/newrelic/agent/android/hybrid/StackTrace;Ljava/util/Map;)Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/hybrid/StackTrace;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    .line 4
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appVersion"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;->getApplicationBuild()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appBuild"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/newrelic/agent/android/hybrid/StackTrace;->getStackTraceException()Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;

    move-result-object v2

    invoke-interface {v2}, Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;->getExceptionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/newrelic/agent/android/hybrid/StackTrace;->getStackTraceException()Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;

    move-result-object v2

    invoke-interface {v2}, Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;->getCause()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/newrelic/agent/android/hybrid/StackTrace;->isFatal()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "fatal"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/newrelic/agent/android/hybrid/StackTrace;->getBuildId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "buildId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/newrelic/agent/android/hybrid/StackTrace;->getBuildId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bundleId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/newrelic/agent/android/hybrid/StackTrace;->getStacks()[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;

    move-result-object p0

    invoke-static {p0}, Lcom/newrelic/agent/android/hybrid/data/DataController;->threadSetFromStackElements([Lcom/newrelic/agent/android/hybrid/rninterface/IStack;)Ljava/util/List;

    move-result-object p0

    const-string v2, "thread"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 14
    sget-object v3, Lcom/newrelic/agent/android/hybrid/data/DataController$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType:[I

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getBooleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getDoubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object p0

    invoke-interface {p0}, Lcom/newrelic/agent/android/AgentImpl;->getSessionDurationMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v4, v2

    if-nez p0, :cond_4

    .line 19
    sget-object p0, Lcom/newrelic/agent/android/hybrid/data/DataController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Harvest instance is not running! Session duration will be invalid"

    invoke-interface {p0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    long-to-float p0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p0, v2

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v2, "timeSinceLoad"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 22
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {v1, p0}, Lcom/newrelic/agent/android/hybrid/data/DataBuilder;->startAndFinishAgentData(Ljava/util/Map;Ljava/util/Set;)Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/newrelic/agent/android/hybrid/data/DataController;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "Unknown cause"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static sendAgentData(Lcom/newrelic/agent/android/hybrid/StackTrace;)Z
    .locals 7

    const-string v0, " failed to record data."

    const-string v1, "HandledJSError: exception "

    .line 1
    sget-object v2, Lcom/newrelic/agent/android/FeatureFlag;->HandledExceptions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v2}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcom/newrelic/agent/android/FeatureFlag;->NativeReporting:Lcom/newrelic/agent/android/FeatureFlag;

    .line 2
    invoke-static {v2}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/newrelic/agent/android/hybrid/data/DataController;->buildAgentDataFromJSError(Lcom/newrelic/agent/android/hybrid/StackTrace;)Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 6
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 7
    sget-object v2, Lcom/newrelic/agent/android/hybrid/data/DataController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/mobile/fbs/HexAgentDataBundle;->getRootAsHexAgentDataBundle(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/HexAgentDataBundle;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/newrelic/agent/android/hybrid/data/DataBuilder;->toJsonString(Lcom/newrelic/mobile/fbs/HexAgentDataBundle;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V

    .line 8
    invoke-static {v4}, Lcom/newrelic/agent/android/agentdata/AgentDataReporter;->reportAgentData([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v4

    .line 10
    :catch_0
    sget-object v2, Lcom/newrelic/agent/android/hybrid/data/DataController;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 11
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method public static threadSetFromStackElements([Lcom/newrelic/agent/android/hybrid/rninterface/IStack;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/newrelic/agent/android/hybrid/rninterface/IStack;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    aget-object p0, p0, v1

    .line 3
    invoke-interface {p0}, Lcom/newrelic/agent/android/hybrid/rninterface/IStack;->getStackFrames()[Lcom/newrelic/agent/android/hybrid/rninterface/IStackFrame;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {v3}, Lcom/newrelic/agent/android/hybrid/rninterface/IStackFrame;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "method"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v3}, Lcom/newrelic/agent/android/hybrid/rninterface/IStackFrame;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fileName"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v3}, Lcom/newrelic/agent/android/hybrid/rninterface/IStackFrame;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lineNumber"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v3}, Lcom/newrelic/agent/android/hybrid/rninterface/IStackFrame;->getColumnNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "column"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
