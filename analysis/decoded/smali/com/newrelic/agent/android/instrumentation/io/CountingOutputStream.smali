.class public Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private count:J

.field private final impl:Ljava/io/OutputStream;

.field private final listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    .line 3
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "CountingOutputStream: output stream cannot be null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private notifyStreamComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    invoke-direct {v1, p0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->notifyStreamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    :cond_0
    return-void
.end method

.method private notifyStreamError(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->notifyStreamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 4
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 5
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 3
    throw v0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    return-wide v0
.end method

.method public removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->listenerManager:Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 4
    throw p1
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 6
    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 8
    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 10
    iget-wide p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->notifyStreamError(Ljava/lang/Exception;)V

    .line 12
    throw p1
.end method
