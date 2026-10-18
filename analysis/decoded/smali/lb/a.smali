.class public final Llb/a;
.super Lokhttp3/RequestBody;
.source "GzipRequestInterceptor.kt"


# instance fields
.field public final synthetic a:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0

    iput-object p1, p0, Llb/a;->a:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Llb/a;->a:Lokhttp3/RequestBody;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lde/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lde/p;

    invoke-direct {v0, p1}, Lde/p;-><init>(Lde/h0;)V

    invoke-static {v0}, Lde/w;->a(Lde/h0;)Lde/e;

    move-result-object p1

    iget-object v0, p0, Llb/a;->a:Lokhttp3/RequestBody;

    .line 2
    :try_start_0
    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lde/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
