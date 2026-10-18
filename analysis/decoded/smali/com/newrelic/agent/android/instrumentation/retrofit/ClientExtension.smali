.class public Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;
.super Ljava/lang/Object;
.source "ClientExtension.java"

# interfaces
.implements Lretrofit/client/Client;


# instance fields
.field private impl:Lretrofit/client/Client;

.field private request:Lretrofit/client/Request;

.field private transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method public constructor <init>(Lretrofit/client/Client;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->impl:Lretrofit/client/Client;

    return-void
.end method

.method private checkResponse(Lretrofit/client/Response;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Response;)V

    :cond_0
    return-void
.end method

.method private setCrossProcessHeaders(Lretrofit/client/Request;)Lretrofit/client/Request;
    .locals 4

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getCrossProcessId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lretrofit/client/Header;

    const-string v3, "X-NewRelic-ID"

    invoke-direct {v2, v3, v0}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    new-instance v0, Lretrofit/client/Request;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object p1

    invoke-direct {v0, v2, v3, v1, p1}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->setResponseBody(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-direct {p1, v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Lcom/newrelic/agent/android/api/common/TransactionData;)V

    invoke-static {p1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->request:Lretrofit/client/Request;

    .line 2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->setCrossProcessHeaders(Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->getInstance()Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->startTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setTrace(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    .line 7
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object p1

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->impl:Lretrofit/client/Client;

    invoke-interface {v0, p1}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object p1

    .line 9
    new-instance v0, Lretrofit/client/Response;

    invoke-virtual {p1}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    invoke-virtual {p1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    invoke-virtual {p1}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    new-instance v0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;

    invoke-virtual {p1}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;-><init>(Lretrofit/mime/TypedInput;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->error(Ljava/lang/Exception;)V

    .line 11
    throw p1
.end method

.method public getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->request:Lretrofit/client/Request;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Request;)V

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    return-object v0
.end method

.method public setRequest(Lretrofit/client/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ClientExtension;->request:Lretrofit/client/Request;

    return-void
.end method
