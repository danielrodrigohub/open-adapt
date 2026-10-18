.class Lcom/newrelic/agent/android/distributedtracing/TraceParent$W3CTraceParent;
.super Lcom/newrelic/agent/android/distributedtracing/TraceParent;
.source "TraceParent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/distributedtracing/TraceParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "W3CTraceParent"
.end annotation


# static fields
.field public static final TRACE_PARENT_HEADER_REGEX:Ljava/lang/String; = "^(\\d+)-([A-Fa-f0-9]{32})-([A-Fa-f0-9]{16})?-(\\d+)$"


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/distributedtracing/TraceParent;-><init>(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    return-void
.end method


# virtual methods
.method public getHeaderValue()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceParent;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/newrelic/agent/android/distributedtracing/TraceParent;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    iget-object v3, v2, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->traceId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/newrelic/agent/android/distributedtracing/TraceParent;->parentId:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 3
    invoke-virtual {v2}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getSampled()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%s-%s-%s-%s"

    .line 4
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
