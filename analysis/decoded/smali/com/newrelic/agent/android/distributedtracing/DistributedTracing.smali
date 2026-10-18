.class public Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;
.super Ljava/lang/Object;
.source "DistributedTracing.java"

# interfaces
.implements Lcom/newrelic/agent/android/distributedtracing/TraceFacade;
.implements Lcom/newrelic/agent/android/distributedtracing/TraceListener;


# static fields
.field public static final ACTION_TYPE_ATTRIBUTE:Ljava/lang/String; = "actionType"

.field public static final NR_GUID_ATTRIBUTE:Ljava/lang/String; = "guid"

.field public static final NR_ID_ATTRIBUTE:Ljava/lang/String; = "id"

.field public static final NR_SPAN_ID_ATTRIBUTE:Ljava/lang/String; = "span.id"

.field public static final NR_TRACE_ID_ATTRIBUTE:Ljava/lang/String; = "trace.id"

.field public static final instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

.field public static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field public traceListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/newrelic/agent/android/distributedtracing/TraceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    invoke-direct {v0}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static generateNormalizedTimestamp()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateRandomBytes(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    move-object v1, v0

    .line 1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p0, :cond_0

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSpanId()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->generateRandomBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateTraceId()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->generateRandomBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    return-object v0
.end method

.method private invokeListeners(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V
    .locals 5

    const-string v0, "The provided listener has thrown an exception and has been removed: "

    .line 1
    :try_start_0
    iget-object v1, p1, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    const-string v2, "trace.id"

    iget-object v3, p1, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    iget-object v1, v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/distributedtracing/TraceListener;

    iget-object v2, p1, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/distributedtracing/TraceListener;->onTraceCreated(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    sget-object v2, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    iget-object v3, v2, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    sget-object v2, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Throwable;Ljava/util/Map;)Z

    .line 9
    :goto_0
    :try_start_1
    iget-object v1, p1, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    const-string v2, "span.id"

    iget-object v3, p1, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->tracePayload:Lcom/newrelic/agent/android/distributedtracing/TracePayload;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/distributedtracing/TracePayload;->getSpanId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    iget-object v1, v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/distributedtracing/TraceListener;

    iget-object p1, p1, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    invoke-interface {v1, p1}, Lcom/newrelic/agent/android/distributedtracing/TraceListener;->onSpanCreated(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    sget-object v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    iget-object v2, v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    sget-object v1, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 13
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Throwable;Ljava/util/Map;)Z

    :goto_1
    return-void
.end method

.method public static setDistributedTraceListener(Lcom/newrelic/agent/android/distributedtracing/TraceListener;)V
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->instance:Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->setTraceListener(Lcom/newrelic/agent/android/distributedtracing/TraceListener;)V

    return-void
.end method


# virtual methods
.method public onSpanCreated(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTraceCreated(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->setInstance(Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;)Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->getInstance()Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public setTraceListener(Lcom/newrelic/agent/android/distributedtracing/TraceListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->traceListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing$1;

    invoke-direct {v0, p0, p1}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing$1;-><init>(Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 2
    invoke-static {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->createTraceContext(Ljava/util/Map;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->invokeListeners(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    return-object p1
.end method
