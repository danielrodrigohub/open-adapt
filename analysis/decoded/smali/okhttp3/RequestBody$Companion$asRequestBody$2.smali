.class public final Lokhttp3/RequestBody$Companion$asRequestBody$2;
.super Lokhttp3/RequestBody;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody$Companion;->create(Lde/a0;Lde/k;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $contentType:Lokhttp3/MediaType;

.field public final synthetic $fileSystem:Lde/k;

.field public final synthetic $this_asRequestBody:Lde/a0;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lde/k;Lde/a0;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$fileSystem:Lde/k;

    iput-object p3, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$this_asRequestBody:Lde/a0;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$fileSystem:Lde/k;

    iget-object v1, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$this_asRequestBody:Lde/a0;

    invoke-virtual {v0, v1}, Lde/k;->metadata(Lde/a0;)Lde/j;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lde/j;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lde/e;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$fileSystem:Lde/k;

    iget-object v1, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$this_asRequestBody:Lde/a0;

    invoke-virtual {v0, v1}, Lde/k;->source(Lde/a0;)Lde/j0;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Lde/e;->s(Lde/j0;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
