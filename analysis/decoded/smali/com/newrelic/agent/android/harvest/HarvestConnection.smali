.class public Lcom/newrelic/agent/android/harvest/HarvestConnection;
.super Ljava/lang/Object;
.source "HarvestConnection.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/type/HarvestErrorCodes;


# static fields
.field private static final COLLECTOR_CONNECT_URI:Ljava/lang/String; = "/mobile/v4/connect"

.field private static final COLLECTOR_DATA_URI:Ljava/lang/String; = "/mobile/v3/data"

.field private static final CONNECTION_TIMEOUT:I

.field private static final MAX_PLAINTEXT_MESSAGE_SIZE:I = 0x200

.field private static final READ_TIMEOUT:I

.field private static final READ_TIMEOUT_IN_SECONDS:I = 0x4

.field private static final RESPONSE_BUFFER_SIZE:I = 0x2000

.field private static final TIMEOUT_IN_SECONDS:I = 0x14


# instance fields
.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private serverTimestamp:J

.field private useSsl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-int v2, v2

    sput v2, Lcom/newrelic/agent/android/harvest/HarvestConnection;->CONNECTION_TIMEOUT:I

    const-wide/16 v2, 0x4

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->READ_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl:Z

    return-void
.end method

.method private getCollectorConnectUri()Ljava/lang/String;
    .locals 1

    const-string v0, "/mobile/v4/connect"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollectorDataUri()Ljava/lang/String;
    .locals 1

    const-string v0, "/mobile/v3/data"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollectorUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "https://"

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1, p1}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private recordCollectorError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestConnection: Attempting to convert network exception "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to error code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Collector/ResponseErrorCodes/"

    .line 5
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/newrelic/agent/android/util/ExceptionHelper;->exceptionToErrorCode(Ljava/lang/Exception;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createConnectPost()Ljava/net/HttpURLConnection;
    .locals 1

    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorConnectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createPost(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public createDataPost()Ljava/net/HttpURLConnection;
    .locals 1

    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorDataUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createPost(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public createPost(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "POST"

    .line 3
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    sget v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->CONNECTION_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    sget v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->READ_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v0, "X-App-License-Key"

    .line 9
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http.agent"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "User-Agent"

    .line 13
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-string v2, "X-NewRelic-Connect-Time"

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 16
    :goto_0
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    const-string v2, "Supportability/AgentHealth/Collector/Connection/Errors"

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Failed to create data POST: "

    .line 18
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object p1
.end method

.method public readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/16 v1, 0x2000

    new-array v1, v1, [C

    .line 2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v0, v1, v3, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 7
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public send(Ljava/net/HttpURLConnection;Ljava/lang/String;)Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .locals 5

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestResponse;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestResponse;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "deflate"

    const/16 v3, 0x200

    if-gt v1, v3, :cond_0

    const-string v1, "identity"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    :try_start_0
    new-instance v3, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v3}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 4
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/newrelic/agent/android/util/Deflator;->deflate([B)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 8
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v2, "Content-Encoding"

    .line 9
    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 13
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setResponseTime(J)V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setStatusCode(I)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setResponseBody(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v1

    const-string v2, "Supportability/Mobile/Android/<framework>/<destination>/<subdestination>/Output/Bytes"

    const-string v3, "<framework>"

    .line 17
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getApplicationFramework()Lcom/newrelic/agent/android/ApplicationFramework;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<destination>"

    const-string v3, "Collector"

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mobile/v4/connect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, "<subdestination>"

    if-eqz v2, :cond_2

    :try_start_3
    const-string v2, "connect"

    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/mobile/v3/data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "data"

    .line 22
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_3
    :goto_2
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    array-length p2, p2

    int-to-float p2, p2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleMetricDataUsage(Ljava/lang/String;FF)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    .line 25
    :try_start_6
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send POST to collector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->recordCollectorError(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :catch_1
    move-exception p2

    .line 28
    :try_start_7
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve collector response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->recordCollectorError(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 30
    :goto_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31
    throw p2
.end method

.method public sendConnect()Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createConnectPost()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Failed to create connect POST"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v1}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 6
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->send(Ljava/net/HttpURLConnection;Ljava/lang/String;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v3

    const-string v1, "Supportability/AgentHealth/Collector/Connect"

    invoke-virtual {v2, v1, v3, v4}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public sendData(Lcom/newrelic/agent/android/harvest/type/Harvestable;)Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createDataPost()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "Failed to create data POST"

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/newrelic/agent/android/harvest/type/Harvestable;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->send(Ljava/net/HttpURLConnection;Ljava/lang/String;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    return-void
.end method

.method public setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    return-void
.end method

.method public setServerTimestamp(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting server timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 2
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    return-void
.end method

.method public useSsl(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "Unencrypted http requests are no longer supported"

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl:Z

    return-void
.end method
