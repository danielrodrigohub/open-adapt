.class public final Lokhttp3/RequestBody$Companion$gzip$1;
.super Lokhttp3/RequestBody;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody$Companion;->gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_gzip:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$gzip$1;->$this_gzip:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/RequestBody$Companion$gzip$1;->$this_gzip:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public isOneShot()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/RequestBody$Companion$gzip$1;->$this_gzip:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v0

    return v0
.end method

.method public writeTo(Lde/e;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$gzip$1;->$this_gzip:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lde/e;)V

    .line 3
    check-cast p1, Lde/c0;

    invoke-virtual {p1}, Lde/c0;->close()V

    return-void
.end method
