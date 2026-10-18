.class Lcom/newrelic/agent/android/distributedtracing/TraceState$W3CTraceState;
.super Lcom/newrelic/agent/android/distributedtracing/TraceState;
.source "TraceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/distributedtracing/TraceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "W3CTraceState"
.end annotation


# static fields
.field public static final TRACE_STATE_ENTRY_REGEX:Ljava/lang/String; = "(\\d)-(\\d+)-(\\d+)?-(\\d+)?-(\\w*)?-(\\w+)?-(\\d{1,2})?-(\\w)?-(\\d+)$"

.field public static final TRACE_STATE_HEADER_FMT:Ljava/lang/String; = "%1d-%1d-%s-%s-%s-%s-%s-%s-%d"

.field public static final TRACE_STATE_HEADER_REGEX:Ljava/lang/String; = "^(\\d+)?@nr=(\\d)-(\\d)-(\\d+)?-(\\d+)?-(\\w+)?-(\\w)?-(\\d{1,2})?-(\\w)?-(\\d+)$"

.field public static final TRACE_STATE_VENDOR_REGEX:Ljava/lang/String; = "^(\\d+?)(@nr)(=.*)?"


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/distributedtracing/TraceState;-><init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getVendor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceState$W3CTraceState;->getVendorState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 3
    iget-object v5, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->entries:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "%s=%s,"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVendorState()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    .line 4
    invoke-virtual {v3}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getAccountId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    .line 5
    invoke-virtual {v2}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    .line 6
    invoke-virtual {v2}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getParentId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v3, v1, v2

    iget-wide v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceState;->timestampMs:J

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "%1d-%1d-%s-%s-%s-%s-%s-%s-%d"

    .line 8
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
