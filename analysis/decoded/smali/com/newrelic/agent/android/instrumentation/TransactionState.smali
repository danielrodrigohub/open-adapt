.class public Lcom/newrelic/agent/android/instrumentation/TransactionState;
.super Ljava/lang/Object;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/instrumentation/TransactionState$State;
    }
.end annotation


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private appData:Ljava/lang/String;

.field private bytesReceived:J

.field private bytesSent:J

.field private carrier:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private endTime:J

.field private errorCode:I

.field private httpMethod:Ljava/lang/String;

.field private startTime:J

.field private state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

.field private statusCode:I

.field private trace:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

.field private transactionData:Lcom/newrelic/agent/android/api/common/TransactionData;

.field private url:Ljava/lang/String;

.field private wanType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->statusCode:I

    .line 3
    iput v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->errorCode:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesSent:J

    .line 5
    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesReceived:J

    .line 6
    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->startTime:J

    .line 7
    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->endTime:J

    const-string v0, "unknown"

    .line 8
    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->READY:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->startTime:J

    const-string v0, "External/unknownhost"

    .line 12
    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterNetworkSegment(Ljava/lang/String;)V

    return-void
.end method

.method public static isRequestError(I)Z
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x190

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRequestFailure(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public end()Lcom/newrelic/agent/android/api/common/TransactionData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->COMPLETE:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->endTime:J

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->toTransactionData()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v0

    return-object v0
.end method

.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesReceived:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesSent:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->errorCode:I

    return v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->statusCode:I

    return v0
.end method

.method public getTrace()Lcom/newrelic/agent/android/distributedtracing/TraceContext;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->trace:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->COMPLETE:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isErrorOrFailure()Z
    .locals 1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isRequestError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isRequestFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRequestError()Z
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->statusCode:I

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isRequestError(I)Z

    move-result v0

    return v0
.end method

.method public isRequestFailure()Z
    .locals 1

    iget v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->errorCode:I

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isRequestFailure(I)Z

    move-result v0

    return v0
.end method

.method public isSent()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->SENT:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->COMPLETE:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAppData(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->appData:Ljava/lang/String;

    const-string v0, "encoded_app_data"

    .line 3
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setAppData(...) called on TransactionState in "

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBytesReceived(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesReceived:J

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "bytes_received"

    invoke-static {p2, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string p2, "setBytesReceived(...) called on TransactionState in "

    .line 5
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBytesSent(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesSent:J

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "bytes_sent"

    invoke-static {p2, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string p2, "setBytesSent(...) called on TransactionState in "

    .line 5
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    const-string v0, "carrier"

    .line 3
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setCarrier(...) called on TransactionState in "

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->errorCode:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->transactionData:Lcom/newrelic/agent/android/api/common/TransactionData;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->setErrorCode(I)V

    .line 6
    :cond_1
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setErrorCode(...) called on TransactionState in "

    .line 7
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->httpMethod:Ljava/lang/String;

    const-string v0, "http_method"

    .line 3
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setHttpMethod(...) called on TransactionState in "

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setState(Lcom/newrelic/agent/android/instrumentation/TransactionState$State;)Lcom/newrelic/agent/android/instrumentation/TransactionState$State;
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    return-object p1
.end method

.method public setStatusCode(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->statusCode:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "status_code"

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setStatusCode(...) called on TransactionState in "

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTrace(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->trace:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setCatPayload(...) called on TransactionState in "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/newrelic/agent/android/util/Util;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->url:Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentDisplayName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse host name from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :goto_0
    const-string v0, "uri"

    .line 6
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setUrl(...) called on TransactionState in "

    .line 8
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setWanType(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    const-string v0, "wan_type"

    .line 3
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "setWanType(...) called on TransactionState in "

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "TransactionState{url=\'"

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->url:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", httpMethod=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->httpMethod:Ljava/lang/String;

    const-string v3, ", statusCode="

    .line 5
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesSent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesReceived:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->startTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->endTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->appData:Ljava/lang/String;

    const-string v3, ", carrier=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    const-string v3, ", wanType=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    const-string v3, ", state="

    .line 11
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->state:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->contentType:Ljava/lang/String;

    const-string v3, ", transactionData="

    .line 13
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->transactionData:Lcom/newrelic/agent/android/api/common/TransactionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTransactionData()Lcom/newrelic/agent/android/api/common/TransactionData;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "toTransactionData() called on incomplete TransactionState"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Attempted to convert a TransactionState instance with no URL into a TransactionData"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    .line 5
    :cond_1
    iget-wide v1, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->endTime:J

    iget-wide v3, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->startTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    .line 6
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Invalid response duration detected: start["

    .line 7
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8
    iget-wide v4, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->startTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] end["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->endTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    const-string v3, "Supportability/AgentHealth/Network/Request/ResponseTime/InvalidDuration"

    invoke-virtual {v1, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    move v8, v2

    goto :goto_0

    :cond_2
    move v8, v1

    .line 10
    :goto_0
    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->transactionData:Lcom/newrelic/agent/android/api/common/TransactionData;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Lcom/newrelic/agent/android/api/common/TransactionData;

    iget-object v5, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->url:Ljava/lang/String;

    iget-object v6, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->httpMethod:Ljava/lang/String;

    iget-object v7, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->carrier:Ljava/lang/String;

    iget v9, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->statusCode:I

    iget v10, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->errorCode:I

    iget-wide v11, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesSent:J

    iget-wide v13, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->bytesReceived:J

    iget-object v15, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->appData:Ljava/lang/String;

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->wanType:Ljava/lang/String;

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->trace:Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    const/16 v18, 0x0

    move-object v4, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIJJLjava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/distributedtracing/TraceContext;Ljava/util/Map;)V

    iput-object v1, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->transactionData:Lcom/newrelic/agent/android/api/common/TransactionData;

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;->transactionData:Lcom/newrelic/agent/android/api/common/TransactionData;

    return-object v1
.end method
