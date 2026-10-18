.class public final Lokhttp3/internal/ws/MessageDeflater;
.super Ljava/lang/Object;
.source "MessageDeflater.kt"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final deflatedBytes:Lde/c;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lde/h;

.field private final noContextTakeover:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    .line 3
    new-instance p1, Lde/c;

    invoke-direct {p1}, Lde/c;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lde/c;

    .line 4
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    .line 5
    new-instance v1, Lde/h;

    invoke-direct {v1, p1, v0}, Lde/h;-><init>(Lde/h0;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lde/h;

    return-void
.end method

.method private final endsWith(Lde/c;Lde/g;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lde/c;->i:J

    .line 2
    invoke-virtual {p2}, Lde/g;->j()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lde/c;->a0(JLde/g;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lde/h;

    invoke-virtual {v0}, Lde/h;->close()V

    return-void
.end method

.method public final deflate(Lde/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lde/c;

    .line 2
    iget-wide v0, v0, Lde/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 5
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lde/h;

    .line 6
    iget-wide v2, p1, Lde/c;->i:J

    .line 7
    invoke-virtual {v0, p1, v2, v3}, Lde/h;->write(Lde/c;J)V

    .line 8
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lde/h;

    invoke-virtual {v0}, Lde/h;->flush()V

    .line 9
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lde/c;

    invoke-static {}, Lokhttp3/internal/ws/MessageDeflaterKt;->access$getEMPTY_DEFLATE_BLOCK$p()Lde/g;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lokhttp3/internal/ws/MessageDeflater;->endsWith(Lde/c;Lde/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lde/c;

    .line 11
    iget-wide v1, v0, Lde/c;->i:J

    const/4 v3, 0x4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 12
    sget-object v3, Lde/n0;->a:Lde/c$a;

    .line 13
    invoke-virtual {v0, v3}, Lde/c;->m0(Lde/c$a;)Lde/c$a;

    move-result-object v0

    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lde/c$a;->x(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v3}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

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

    .line 16
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lde/c;

    invoke-virtual {v0, v1}, Lde/c;->y0(I)Lde/c;

    .line 17
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lde/c;

    .line 18
    iget-wide v1, v0, Lde/c;->i:J

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Lde/c;->write(Lde/c;J)V

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
