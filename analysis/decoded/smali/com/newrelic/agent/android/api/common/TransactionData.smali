.class public Lcom/newrelic/agent/android/api/common/TransactionData;
.super Ljava/lang/Object;
.source "TransactionData.java"


# instance fields
.field private final appData:Ljava/lang/String;

.field private final bytesReceived:J

.field private final bytesSent:J

.field private final carrier:Ljava/lang/String;

.field private errorCode:I

.field private final errorCodeLock:Ljava/lang/Object;

.field private final httpMethod:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseBody:Ljava/lang/String;

.field private final statusCode:I

.field private final time:F

.field private final timestamp:J

.field private traceAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

.field private final url:Ljava/lang/String;

.field private final wanType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIJJLjava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/distributedtracing/TraceContext;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FIIJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/distributedtracing/TraceContext;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p16

    .line 25
    invoke-direct/range {v0 .. v14}, Lcom/newrelic/agent/android/api/common/TransactionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIJJLjava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/distributedtracing/TraceContext;Ljava/util/Map;)V

    move-object/from16 v0, p14

    .line 26
    iput-object v0, v15, Lcom/newrelic/agent/android/api/common/TransactionData;->responseBody:Ljava/lang/String;

    move-object/from16 v0, p15

    .line 27
    iput-object v0, v15, Lcom/newrelic/agent/android/api/common/TransactionData;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIJJLjava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/distributedtracing/TraceContext;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FIIJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/distributedtracing/TraceContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCodeLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCode:I

    const/4 v3, 0x0

    .line 4
    iput-object v3, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->responseBody:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->params:Ljava/util/Map;

    const/16 v4, 0x3f

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    const/16 v4, 0x3b

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 9
    :cond_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->url:Ljava/lang/String;

    move-object v1, p2

    .line 11
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->httpMethod:Ljava/lang/String;

    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->carrier:Ljava/lang/String;

    move v1, p4

    .line 13
    iput v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->time:F

    move v1, p5

    .line 14
    iput v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->statusCode:I

    move v1, p6

    .line 15
    iput v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCode:I

    move-wide v1, p7

    .line 16
    iput-wide v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesSent:J

    move-wide v1, p9

    .line 17
    iput-wide v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesReceived:J

    move-object/from16 v1, p11

    .line 18
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->appData:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 19
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->wanType:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->timestamp:J

    .line 21
    iput-object v3, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->responseBody:Ljava/lang/String;

    .line 22
    iput-object v3, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->params:Ljava/util/Map;

    move-object/from16 v1, p13

    .line 23
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-object/from16 v1, p14

    .line 24
    iput-object v1, v0, Lcom/newrelic/agent/android/api/common/TransactionData;->traceAttributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->time:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesSent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesReceived:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->appData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAppData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->appData:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesReceived:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesSent:J

    return-wide v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->statusCode:I

    return v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->time:F

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->timestamp:J

    return-wide v0
.end method

.method public getTraceAttributes()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->traceAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getTraceContext()Lcom/newrelic/agent/android/distributedtracing/TraceContext;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWanType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->wanType:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCode:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setParams(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->params:Ljava/util/Map;

    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->responseBody:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->responseBody:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public setTraceAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->traceAttributes:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "TransactionData{timestamp="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->url:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", httpMethod=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->httpMethod:Ljava/lang/String;

    const-string v3, ", carrier=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->carrier:Ljava/lang/String;

    const-string v3, ", time="

    .line 7
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->time:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCodeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->errorCodeLock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesSent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->bytesReceived:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->appData:Ljava/lang/String;

    const-string v3, ", wanType=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/TransactionData;->wanType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
