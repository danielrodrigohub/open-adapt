.class public final Ly2/x;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/x$a;
    }
.end annotation


# instance fields
.field public volatile h:[B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public final m:Ls2/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ls2/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ly2/x;->k:I

    .line 3
    iput-object p2, p0, Ly2/x;->m:Ls2/b;

    .line 4
    const-class p1, [B

    const/high16 v0, 0x10000

    invoke-interface {p2, v0, p1}, Ls2/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Ly2/x;->h:[B

    return-void
.end method

.method public static f0()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized Y()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly2/x;->h:[B

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ly2/x;->m:Ls2/b;

    iget-object v1, p0, Ly2/x;->h:[B

    invoke-interface {v0, v1}, Ls2/b;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ly2/x;->h:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    iget-object v1, p0, Ly2/x;->h:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Ly2/x;->i:I

    iget v2, p0, Ly2/x;->l:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/x;->h:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ly2/x;->m:Ls2/b;

    iget-object v2, p0, Ly2/x;->h:[B

    invoke-interface {v0, v2}, Ls2/b;->c(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Ly2/x;->h:[B

    .line 4
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 5
    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Ly2/x;->j:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ly2/x;->j:I

    .line 2
    iget p1, p0, Ly2/x;->l:I

    iput p1, p0, Ly2/x;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly2/x;->h:[B

    .line 2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 3
    iget v3, p0, Ly2/x;->l:I

    iget v4, p0, Ly2/x;->i:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v1, v0}, Ly2/x;->x(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_0

    .line 4
    monitor-exit p0

    return v5

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Ly2/x;->h:[B

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Ly2/x;->h:[B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v2

    .line 8
    :cond_2
    :goto_0
    iget v1, p0, Ly2/x;->i:I

    iget v2, p0, Ly2/x;->l:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 9
    iput v1, p0, Ly2/x;->l:I

    aget-byte v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 10
    :cond_3
    monitor-exit p0

    return v5

    .line 11
    :cond_4
    :try_start_2
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Ly2/x;->h:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 13
    monitor-exit p0

    return p1

    .line 14
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_f

    .line 15
    iget v3, p0, Ly2/x;->l:I

    iget v4, p0, Ly2/x;->i:I

    if-ge v3, v4, :cond_4

    sub-int v5, v4, v3

    if-lt v5, p3, :cond_1

    move v4, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v3

    .line 16
    :goto_0
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v3, p0, Ly2/x;->l:I

    add-int/2addr v3, v4

    iput v3, p0, Ly2/x;->l:I

    if-eq v4, p3, :cond_3

    .line 18
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p2, v4

    sub-int v3, p3, v4

    goto :goto_2

    .line 19
    :cond_3
    :goto_1
    monitor-exit p0

    return v4

    :cond_4
    move v3, p3

    .line 20
    :goto_2
    :try_start_2
    iget v4, p0, Ly2/x;->k:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    array-length v4, v0

    if-lt v3, v4, :cond_6

    .line 21
    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v5, :cond_c

    if-ne v3, p3, :cond_5

    goto :goto_3

    :cond_5
    sub-int v5, p3, v3

    .line 22
    :goto_3
    monitor-exit p0

    return v5

    .line 23
    :cond_6
    :try_start_3
    invoke-virtual {p0, v2, v0}, Ly2/x;->x(Ljava/io/InputStream;[B)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v5, :cond_8

    if-ne v3, p3, :cond_7

    goto :goto_4

    :cond_7
    sub-int v5, p3, v3

    .line 24
    :goto_4
    monitor-exit p0

    return v5

    .line 25
    :cond_8
    :try_start_4
    iget-object v4, p0, Ly2/x;->h:[B

    if-eq v0, v4, :cond_a

    .line 26
    iget-object v0, p0, Ly2/x;->h:[B

    if-eqz v0, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v1

    .line 28
    :cond_a
    :goto_5
    iget v4, p0, Ly2/x;->i:I

    iget v5, p0, Ly2/x;->l:I

    sub-int v6, v4, v5

    if-lt v6, v3, :cond_b

    move v4, v3

    goto :goto_6

    :cond_b
    sub-int/2addr v4, v5

    .line 29
    :goto_6
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v5, p0, Ly2/x;->l:I

    add-int/2addr v5, v4

    iput v5, p0, Ly2/x;->l:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    sub-int/2addr v3, v4

    if-nez v3, :cond_d

    .line 31
    monitor-exit p0

    return p3

    .line 32
    :cond_d
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_e

    sub-int/2addr p3, v3

    .line 33
    monitor-exit p0

    return p3

    :cond_e
    add-int/2addr p2, v4

    goto :goto_2

    .line 34
    :cond_f
    :try_start_6
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v1

    .line 35
    :cond_10
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly2/x;->h:[B

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 2
    iget v1, p0, Ly2/x;->k:I

    if-eq v0, v1, :cond_0

    .line 3
    iput v1, p0, Ly2/x;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ly2/x$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark has been invalidated, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly2/x;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly2/x;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ly2/x$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    .line 1
    monitor-exit p0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Ly2/x;->h:[B

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 3
    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_6

    .line 4
    iget v3, p0, Ly2/x;->i:I

    iget v5, p0, Ly2/x;->l:I

    sub-int v6, v3, v5

    int-to-long v6, v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_1

    int-to-long v0, v5

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 5
    iput v0, p0, Ly2/x;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-wide p1

    :cond_1
    int-to-long v6, v3

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 7
    :try_start_1
    iput v3, p0, Ly2/x;->l:I

    .line 8
    iget v3, p0, Ly2/x;->k:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    iget v3, p0, Ly2/x;->j:I

    int-to-long v8, v3

    cmp-long v3, p1, v8

    if-gtz v3, :cond_4

    .line 9
    invoke-virtual {p0, v4, v0}, Ly2/x;->x(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v5, :cond_2

    .line 10
    monitor-exit p0

    return-wide v6

    .line 11
    :cond_2
    :try_start_2
    iget v0, p0, Ly2/x;->i:I

    iget v1, p0, Ly2/x;->l:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    sub-long v4, p1, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    int-to-long v0, v1

    add-long/2addr v0, p1

    sub-long/2addr v0, v6

    long-to-int v0, v0

    .line 12
    iput v0, p0, Ly2/x;->l:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-wide p1

    :cond_3
    int-to-long p1, v0

    add-long/2addr v6, p1

    int-to-long p1, v1

    sub-long/2addr v6, p1

    .line 14
    :try_start_3
    iput v0, p0, Ly2/x;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit p0

    return-wide v6

    :cond_4
    sub-long/2addr p1, v6

    .line 16
    :try_start_4
    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-lez v0, :cond_5

    .line 17
    iput v5, p0, Ly2/x;->k:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    add-long/2addr v6, p1

    .line 18
    monitor-exit p0

    return-wide v6

    .line 19
    :cond_6
    :try_start_5
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v3

    .line 20
    :cond_7
    invoke-static {}, Ly2/x;->f0()Ljava/io/IOException;

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final x(Ljava/io/InputStream;[B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ly2/x;->k:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    iget v3, p0, Ly2/x;->l:I

    sub-int/2addr v3, v0

    iget v4, p0, Ly2/x;->j:I

    if-lt v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-nez v0, :cond_2

    .line 2
    array-length v1, p2

    if-le v4, v1, :cond_2

    iget v1, p0, Ly2/x;->i:I

    array-length v3, p2

    if-ne v1, v3, :cond_2

    .line 3
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    .line 4
    :goto_0
    iget-object v0, p0, Ly2/x;->m:Ls2/b;

    const-class v1, [B

    invoke-interface {v0, v4, v1}, Ls2/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v0, p0, Ly2/x;->h:[B

    .line 7
    iget-object v1, p0, Ly2/x;->m:Ls2/b;

    invoke-interface {v1, p2}, Ls2/b;->c(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    .line 8
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_3
    :goto_1
    iget v0, p0, Ly2/x;->l:I

    iget v1, p0, Ly2/x;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Ly2/x;->l:I

    .line 10
    iput v2, p0, Ly2/x;->k:I

    iput v2, p0, Ly2/x;->i:I

    .line 11
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 12
    iget p2, p0, Ly2/x;->l:I

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p2, p1

    :goto_2
    iput p2, p0, Ly2/x;->i:I

    return p1

    .line 13
    :cond_5
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_6

    .line 14
    iput v1, p0, Ly2/x;->k:I

    .line 15
    iput v2, p0, Ly2/x;->l:I

    .line 16
    iput p1, p0, Ly2/x;->i:I

    :cond_6
    return p1
.end method
