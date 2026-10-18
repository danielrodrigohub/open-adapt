.class public final Lde/p;
.super Ljava/lang/Object;
.source "GzipSink.kt"

# interfaces
.implements Lde/h0;


# instance fields
.field public final h:Lde/c0;

.field public final i:Ljava/util/zip/Deflater;

.field public final j:Lde/h;

.field public k:Z

.field public final l:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lde/h0;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lde/c0;

    invoke-direct {v0, p1}, Lde/c0;-><init>(Lde/h0;)V

    iput-object v0, p0, Lde/p;->h:Lde/c0;

    .line 3
    new-instance p1, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lde/p;->i:Ljava/util/zip/Deflater;

    .line 4
    new-instance v1, Lde/h;

    invoke-direct {v1, v0, p1}, Lde/h;-><init>(Lde/e;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lde/p;->j:Lde/h;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lde/p;->l:Ljava/util/zip/CRC32;

    .line 6
    iget-object p1, v0, Lde/c0;->i:Lde/c;

    const/16 v0, 0x1f8b

    .line 7
    invoke-virtual {p1, v0}, Lde/c;->D0(I)Lde/c;

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Lde/c;->y0(I)Lde/c;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lde/c;->y0(I)Lde/c;

    .line 10
    invoke-virtual {p1, v0}, Lde/c;->B0(I)Lde/c;

    .line 11
    invoke-virtual {p1, v0}, Lde/c;->y0(I)Lde/c;

    .line 12
    invoke-virtual {p1, v0}, Lde/c;->y0(I)Lde/c;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lde/p;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lde/p;->j:Lde/h;

    .line 3
    iget-object v2, v1, Lde/h;->i:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lde/h;->x(Z)V

    .line 5
    iget-object v1, p0, Lde/p;->h:Lde/c0;

    iget-object v2, p0, Lde/p;->l:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lde/c0;->x(I)Lde/e;

    .line 6
    iget-object v1, p0, Lde/p;->h:Lde/c0;

    iget-object v2, p0, Lde/p;->i:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lde/c0;->x(I)Lde/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :goto_0
    :try_start_1
    iget-object v1, p0, Lde/p;->i:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 8
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lde/p;->h:Lde/c0;

    invoke-virtual {v1}, Lde/c0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lde/p;->k:Z

    if-nez v0, :cond_3

    return-void

    .line 10
    :cond_3
    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lde/p;->j:Lde/h;

    invoke-virtual {v0}, Lde/h;->flush()V

    return-void
.end method

.method public final timeout()Lde/k0;
    .locals 1

    iget-object v0, p0, Lde/p;->h:Lde/c0;

    invoke-virtual {v0}, Lde/c0;->timeout()Lde/k0;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lde/c;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-nez v2, :cond_1

    return-void

    .line 1
    :cond_1
    iget-object v2, p1, Lde/c;->h:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    move-wide v3, p2

    :goto_1
    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    .line 2
    iget v5, v2, Lde/e0;->c:I

    iget v6, v2, Lde/e0;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    .line 3
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 4
    iget-object v6, p0, Lde/p;->l:Ljava/util/zip/CRC32;

    iget-object v7, v2, Lde/e0;->a:[B

    iget v8, v2, Lde/e0;->b:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 5
    iget-object v2, v2, Lde/e0;->f:Lde/e0;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lde/p;->j:Lde/h;

    invoke-virtual {v0, p1, p2, p3}, Lde/h;->write(Lde/c;J)V

    return-void

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 7
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
