.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;
.super Lokhttp3/ResponseBody;
.source "PrebufferedResponseBody.java"


# instance fields
.field private final contentLength:J

.field private final impl:Lokhttp3/ResponseBody;

.field private final source:Lde/f;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lde/f;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lde/c;

    invoke-direct {v1}, Lde/c;-><init>()V

    .line 5
    :try_start_0
    invoke-interface {v0, v1}, Lde/f;->E(Lde/h0;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    .line 8
    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->source:Lde/f;

    .line 9
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lde/f;->h()Lde/c;

    move-result-object p1

    .line 10
    iget-wide v0, p1, Lde/c;->i:J

    .line 11
    :goto_1
    iput-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    long-to-int v2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->source:Lde/f;

    invoke-interface {v0}, Lde/f;->h()Lde/c;

    move-result-object v0

    .line 3
    iget-wide v0, v0, Lde/c;->i:J

    :goto_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->impl:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lde/f;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/PrebufferedResponseBody;->source:Lde/f;

    return-object v0
.end method
