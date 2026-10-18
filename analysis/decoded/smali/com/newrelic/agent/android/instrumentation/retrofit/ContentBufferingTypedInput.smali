.class public Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;
.super Ljava/lang/Object;
.source "ContentBufferingTypedInput.java"

# interfaces
.implements Lretrofit/mime/TypedInput;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private impl:Lretrofit/mime/TypedInput;

.field private inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lretrofit/mime/TypedInput;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private prepareInputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->impl:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    :cond_0
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v1, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "ContentBufferingTypedInput: "

    .line 6
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->prepareInputStream()V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    return-object v0
.end method

.method public length()J
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->prepareInputStream()V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->inputStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "ContentBufferingTypedInput generated an IO exception: "

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/retrofit/ContentBufferingTypedInput;->impl:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
