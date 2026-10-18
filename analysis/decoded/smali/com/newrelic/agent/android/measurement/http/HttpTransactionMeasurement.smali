.class public Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;
.super Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.source "HttpTransactionMeasurement.java"


# instance fields
.field private final appData:Ljava/lang/String;

.field private final bytesReceived:J

.field private final bytesSent:J

.field private final errorCode:I

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

.field private final totalTime:D

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

.field private traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/api/common/TransactionData;)V
    .locals 14

    .line 21
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v3

    .line 24
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v4

    .line 25
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v5

    .line 26
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v0

    float-to-double v7, v0

    .line 27
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v9

    .line 28
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v11

    .line 29
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    .line 30
    invoke-direct/range {v0 .. v13}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->responseBody:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->params:Ljava/util/Map;

    .line 33
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTraceContext()Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    .line 34
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTraceAttributes()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->traceAttributes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Network:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 2
    invoke-static {p1}, Lcom/newrelic/agent/android/util/Util;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setName(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setScope(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p5, p6}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setStartTime(J)V

    double-to-int v0, p7

    int-to-long v0, v0

    add-long/2addr p5, v0

    .line 6
    invoke-virtual {p0, p5, p6}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setEndTime(J)V

    const-wide p5, 0x408f400000000000L    # 1000.0

    mul-double/2addr p5, p7

    double-to-int p5, p5

    int-to-long p5, p5

    .line 7
    invoke-virtual {p0, p5, p6}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setExclusiveTime(J)V

    .line 8
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->httpMethod:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->statusCode:I

    .line 11
    iput-wide p9, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesSent:J

    .line 12
    iput-wide p11, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesReceived:J

    .line 13
    iput-wide p7, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    .line 14
    iput-object p13, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->appData:Ljava/lang/String;

    .line 15
    iput p4, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->errorCode:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->responseBody:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->params:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p13}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 20
    iput-object p14, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->responseBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    return-wide v0
.end method

.method public getAppData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->appData:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesReceived:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesSent:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->errorCode:I

    return v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->httpMethod:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->statusCode:I

    return v0
.end method

.method public getTotalTime()D
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

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

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->traceAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getTraceContext()Lcom/newrelic/agent/android/distributedtracing/TraceContext;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->traceContext:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "HttpTransactionMeasurement{url=\'"

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", httpMethod=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->httpMethod:Ljava/lang/String;

    const-string v3, ", totalTime="

    .line 5
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-wide v3, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesSent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesReceived:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->appData:Ljava/lang/String;

    const-string v3, ", responseBody=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->responseBody:Ljava/lang/String;

    const-string v3, ", params=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
