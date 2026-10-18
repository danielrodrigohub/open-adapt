.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "PrebufferedResponseBody.java"


# instance fields
.field public impl:Lcom/squareup/okhttp/ResponseBody;

.field private source:Lde/f;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ResponseBody;Lde/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    .line 3
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->source:Lde/f;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    long-to-int v2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->source:Lde/f;

    invoke-interface {v0}, Lde/f;->h()Lde/c;

    move-result-object v0

    .line 3
    iget-wide v0, v0, Lde/c;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->source:Lde/f;

    invoke-interface {v0}, Lde/f;->h()Lde/c;

    move-result-object v0

    .line 5
    iget-wide v0, v0, Lde/c;->i:J

    :goto_0
    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lde/f;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->source:Lde/f;

    return-object v0
.end method
