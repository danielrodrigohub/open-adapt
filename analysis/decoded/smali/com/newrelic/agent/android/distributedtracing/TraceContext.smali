.class public abstract Lcom/newrelic/agent/android/distributedtracing/TraceContext;
.super Ljava/lang/Object;
.source "TraceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/distributedtracing/TraceContext$W3CTraceContext;
    }
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:Ljava/lang/String; = "0000000000000000"

.field public static final INVALID_TRACE_ID:Ljava/lang/String; = "00000000000000000000000000000000"

.field public static final SPAN_ID_REGEX:Ljava/lang/String; = "^([A-Fa-f0-9]{16})?"

.field public static final SUPPORTABILITY_TRACE_CONTEXT_CREATED:Ljava/lang/String; = "Supportability/TraceContext/Create/Success"

.field public static final SUPPORTABILITY_TRACE_CONTEXT_EXCEPTION:Ljava/lang/String; = "Supportability/TraceContext/Create/Exception/%s"

.field public static final TRACE_FIELD_UNUSED:Ljava/lang/String; = ""

.field public static final TRACE_ID_REGEX:Ljava/lang/String; = "^[A-Fa-f0-9]{32}"

.field public static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field public legacyHeadersEnabled:Z

.field public final requestContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final traceConfiguration:Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

.field public final traceId:Ljava/lang/String;

.field public final traceParent:Lcom/newrelic/agent/android/distributedtracing/TraceParent;

.field public final tracePayload:Lcom/newrelic/agent/android/distributedtracing/TracePayload;

.field public final traceState:Lcom/newrelic/agent/android/distributedtracing/TraceState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->legacyHeadersEnabled:Z

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->getInstance()Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceConfiguration:Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    .line 5
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->generateTraceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceId:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceParent;->createTraceParent(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)Lcom/newrelic/agent/android/distributedtracing/TraceParent;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceParent:Lcom/newrelic/agent/android/distributedtracing/TraceParent;

    .line 7
    invoke-static {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceState;->createTraceState(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)Lcom/newrelic/agent/android/distributedtracing/TraceState;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceState:Lcom/newrelic/agent/android/distributedtracing/TraceState;

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/distributedtracing/TracePayload;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/distributedtracing/TracePayload;-><init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->tracePayload:Lcom/newrelic/agent/android/distributedtracing/TracePayload;

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread.id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createTraceContext(Ljava/util/Map;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/newrelic/agent/android/distributedtracing/TraceContext;"
        }
    .end annotation

    new-instance v0, Lcom/newrelic/agent/android/distributedtracing/TraceContext$W3CTraceContext;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext$W3CTraceContext;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static reportSupportabilityExceptionMetric(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "setDistributedTraceHeaders: Unable to add trace headers. "

    invoke-interface {v0, v1, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Supportability/TraceContext/Create/Exception/%s"

    .line 4
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    return-void
.end method

.method public static reportSupportabilityMetrics()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/TraceContext/Create/Success"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asTraceAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/newrelic/agent/android/distributedtracing/TraceContext$2;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext$2;-><init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceConfiguration:Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    iget-object v2, v2, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->accountId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceConfiguration:Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    iget-object v2, v2, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->applicationId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/distributedtracing/TraceHeader;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/newrelic/agent/android/distributedtracing/TraceContext$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext$1;-><init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceParent:Lcom/newrelic/agent/android/distributedtracing/TraceParent;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceParent;->getParentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    return-object v0
.end method

.method public getSampled()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceConfiguration:Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->isSampled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%02x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracePayload()Lcom/newrelic/agent/android/distributedtracing/TracePayload;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->tracePayload:Lcom/newrelic/agent/android/distributedtracing/TracePayload;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceConfiguration:Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;

    iget-object v2, v2, Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;->trustedAccountId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s@nr"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putRequestContext(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->requestContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
