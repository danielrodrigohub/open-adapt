.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation$OkHttp35;
.super Ljava/lang/Object;
.source "OkHttp3Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkHttp35"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callEngineGetStreamAllocation(Lokhttp3/internal/Internal;Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 7
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getImpl()Lokhttp3/Call;

    move-result-object p1

    .line 3
    :cond_0
    const-class v1, Lokhttp3/internal/Internal;

    const-string v2, "callEngineGetStreamAllocation"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/Call;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/StreamAllocation;

    move-object v0, p0

    goto :goto_0

    :cond_1
    const-string p0, "callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;"

    .line 5
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$100()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object p1

    const-string v1, "OkHttp3Instrumentation: "

    .line 7
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static newWebSocketCall(Lokhttp3/internal/Internal;Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;
    .locals 8
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lokhttp3/internal/Internal;

    const-string v2, "newWebSocketCall"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lokhttp3/OkHttpClient;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lokhttp3/Request;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v2, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 3
    sget-object v4, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v4}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->getInstance()Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->startTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object v4

    .line 5
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setTrace(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    .line 6
    invoke-static {v2, p2}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    .line 7
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Call;

    .line 8
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/Call;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    goto :goto_0

    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    .line 9
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Call;

    .line 10
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/Call;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string p0, "newWebSocketCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;"

    .line 11
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$100()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object p1

    const-string p2, "OkHttp3Instrumentation: "

    .line 13
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static setCallWebSocket(Lokhttp3/internal/Internal;Lokhttp3/Call;)V
    .locals 6
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getImpl()Lokhttp3/Call;

    move-result-object p1

    .line 3
    :cond_0
    const-class v0, Lokhttp3/internal/Internal;

    const-string v1, "setCallWebSocket"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lokhttp3/Call;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "setCallWebSocket(Lokhttp3/Call;)V"

    .line 5
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->access$100()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object p1

    const-string v0, "OkHttp3Instrumentation: "

    .line 7
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
