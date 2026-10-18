.class public final Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;
.super Ljava/lang/Object;
.source "ApacheInstrumentation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isErrorOrFailure()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, ""

    if-eqz p1, :cond_5

    .line 4
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    instance-of v3, v3, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Lcom/newrelic/agent/android/instrumentation/httpclient/ContentBufferingResponseEntityImpl;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/agent/android/instrumentation/httpclient/ContentBufferingResponseEntityImpl;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 7
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 8
    instance-of v4, v3, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-eqz v4, :cond_2

    .line 9
    check-cast v3, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->getBufferAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_2
    sget-object v3, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Unable to wrap content stream for entity"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object v3, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "null response entity. response-body will be reported empty"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 13
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :goto_0
    move-object v3, v2

    :goto_1
    const-string v4, "Content-Type"

    .line 14
    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 15
    array-length v5, p1

    if-lez v5, :cond_4

    const/4 v5, 0x0

    aget-object v6, p1, v5

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 16
    aget-object p1, p1, v5

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const-string p1, "content_type"

    .line 18
    invoke-virtual {v1, p1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v3, v2

    .line 19
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getBytesReceived()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "content_length"

    invoke-virtual {v1, p1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v3}, Lcom/newrelic/agent/android/api/common/TransactionData;->setResponseBody(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/api/common/TransactionData;->setParams(Ljava/util/Map;)V

    .line 22
    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Lcom/newrelic/agent/android/api/common/TransactionData;)V

    .line 23
    :cond_7
    new-instance p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Lcom/newrelic/agent/android/api/common/TransactionData;)V

    invoke-static {p0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private static delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;
    .locals 0

    .line 2
    invoke-static {p2, p0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private static delegate(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    .locals 0

    .line 3
    invoke-static {p1, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static delegate(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/newrelic/agent/android/instrumentation/TransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/httpclient/ResponseHandlerImpl;->wrap(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p0

    return-object p0
.end method

.method private static delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 20
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 21
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 23
    invoke-static {v0, p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p3, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 26
    throw p0

    :catch_1
    move-exception p0

    .line 27
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 28
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 10
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 11
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 13
    invoke-static {v0, p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p3, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 16
    throw p0

    :catch_1
    move-exception p0

    .line 17
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 18
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 57
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 59
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 62
    throw p0

    :catch_1
    move-exception p0

    .line 63
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 64
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 47
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 49
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 50
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 51
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 52
    throw p0

    :catch_1
    move-exception p0

    .line 53
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 54
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 30
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 31
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 33
    invoke-static {v0, p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 34
    :cond_0
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 35
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 36
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 3
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 5
    invoke-static {v0, p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 8
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 67
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 69
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 70
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 71
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 72
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 39
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 41
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 42
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->delegate(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 44
    throw p0
.end method

.method public static httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->setResponseBody(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-direct {p1, p0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Lcom/newrelic/agent/android/api/common/TransactionData;)V

    invoke-static {p1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;
    .locals 7

    .line 1
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    .line 6
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v6, ""

    .line 7
    :cond_2
    invoke-static {v5, v6, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_5
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 10
    sget-object v3, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v3}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 12
    invoke-static {p0, p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 14
    invoke-static {p0, p2}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->wrapRequestEntity(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    return-object p2

    .line 15
    :cond_7
    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string v3, "TransactionData constructor was not provided with a valid URL, host or HTTP method"

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 16
    sget-object v3, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object v0, v4, p1

    const-string p1, "TransactionStateUtil.inspectAndInstrument(...) for {0} could not determine request URL or HTTP method [host={1}, requestLine={2}]"

    .line 18
    invoke-static {p1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 5

    .line 31
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setStatusCode(I)V

    const-string v0, "X-NewRelic-App-Data"

    .line 32
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setAppData(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Content-Length"

    .line 35
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    .line 36
    array-length v4, v0

    if-lez v4, :cond_1

    .line 37
    :try_start_0
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 39
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse content length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;-><init>(Lorg/apache/http/HttpEntity;Lcom/newrelic/agent/android/instrumentation/TransactionState;J)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V

    .line 45
    :goto_0
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V

    return-object p1
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    .line 25
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V

    .line 26
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 28
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 29
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->wrapRequestEntity(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    return-object p1
.end method

.method private static setCrossProcessHeader(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getCrossProcessId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cross_process_data"

    .line 2
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "X-NewRelic-ID"

    .line 3
    invoke-interface {p0, v1, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getTrace()Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getTrace()Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getHeaders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;

    .line 4
    invoke-interface {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->reportSupportabilityMetrics()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setDistributedTraceHeaders: Unable to add trace headers. "

    invoke-interface {p1, v0, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->reportSupportabilityExceptionMetric(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getTrace()Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getTrace()Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->getHeaders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;

    .line 11
    invoke-interface {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/newrelic/agent/android/distributedtracing/TraceHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/ApacheInstrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setDistributedTraceHeaders: Unable to add trace headers. "

    invoke-interface {p1, v0, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {p0}, Lcom/newrelic/agent/android/distributedtracing/TraceContext;->reportSupportabilityExceptionMetric(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private static wrapRequestEntity(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 3
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;-><init>(Lorg/apache/http/HttpEntity;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method
