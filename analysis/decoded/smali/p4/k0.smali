.class public final Lp4/k0;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/k0$a;
    }
.end annotation


# instance fields
.field public final a:Ll5/b;

.field public final b:I

.field public final c:Lm5/w;

.field public d:Lp4/k0$a;

.field public e:Lp4/k0$a;

.field public f:Lp4/k0$a;

.field public g:J


# direct methods
.method public constructor <init>(Ll5/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/k0;->a:Ll5/b;

    .line 3
    check-cast p1, Ll5/n;

    .line 4
    iget p1, p1, Ll5/n;->b:I

    .line 5
    iput p1, p0, Lp4/k0;->b:I

    .line 6
    new-instance v0, Lm5/w;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, Lp4/k0;->c:Lm5/w;

    .line 7
    new-instance v0, Lp4/k0$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lp4/k0$a;-><init>(JI)V

    iput-object v0, p0, Lp4/k0;->d:Lp4/k0$a;

    .line 8
    iput-object v0, p0, Lp4/k0;->e:Lp4/k0$a;

    .line 9
    iput-object v0, p0, Lp4/k0;->f:Lp4/k0$a;

    return-void
.end method

.method public static d(Lp4/k0$a;JLjava/nio/ByteBuffer;I)Lp4/k0$a;
    .locals 3

    .line 1
    :goto_0
    iget-wide v0, p0, Lp4/k0$a;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p0, p0, Lp4/k0$a;->d:Lp4/k0$a;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 3
    iget-wide v0, p0, Lp4/k0$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lp4/k0$a;->c:Ll5/a;

    .line 5
    iget-object v1, v1, Ll5/a;->a:[B

    invoke-virtual {p0, p1, p2}, Lp4/k0$a;->a(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 6
    iget-wide v0, p0, Lp4/k0$a;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lp4/k0$a;->d:Lp4/k0$a;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static e(Lp4/k0$a;J[BI)Lp4/k0$a;
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lp4/k0$a;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p0, p0, Lp4/k0$a;->d:Lp4/k0$a;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 3
    iget-wide v1, p0, Lp4/k0$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lp4/k0$a;->c:Ll5/a;

    .line 5
    iget-object v2, v2, Ll5/a;->a:[B

    .line 6
    invoke-virtual {p0, p1, p2}, Lp4/k0$a;->a(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 7
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 8
    iget-wide v1, p0, Lp4/k0$a;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 9
    iget-object p0, p0, Lp4/k0$a;->d:Lp4/k0$a;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static f(Lp4/k0$a;Lq3/g;Lp4/l0$a;Lm5/w;)Lp4/k0$a;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lq3/g;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    iget-wide v0, p2, Lp4/l0$a;->b:J

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p3, v2}, Lm5/w;->A(I)V

    .line 4
    iget-object v3, p3, Lm5/w;->a:[B

    .line 5
    invoke-static {p0, v0, v1, v3, v2}, Lp4/k0;->e(Lp4/k0$a;J[BI)Lp4/k0$a;

    move-result-object p0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 6
    iget-object v3, p3, Lm5/w;->a:[B

    const/4 v4, 0x0

    .line 7
    aget-byte v3, v3, v4

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 8
    iget-object v6, p1, Lq3/g;->i:Lq3/c;

    .line 9
    iget-object v7, v6, Lq3/c;->a:[B

    if-nez v7, :cond_1

    const/16 v7, 0x10

    new-array v7, v7, [B

    .line 10
    iput-object v7, v6, Lq3/c;->a:[B

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 12
    :goto_1
    iget-object v7, v6, Lq3/c;->a:[B

    invoke-static {p0, v0, v1, v7, v3}, Lp4/k0;->e(Lp4/k0$a;J[BI)Lp4/k0$a;

    move-result-object p0

    int-to-long v7, v3

    add-long/2addr v0, v7

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    .line 13
    invoke-virtual {p3, v2}, Lm5/w;->A(I)V

    .line 14
    iget-object v3, p3, Lm5/w;->a:[B

    .line 15
    invoke-static {p0, v0, v1, v3, v2}, Lp4/k0;->e(Lp4/k0$a;J[BI)Lp4/k0$a;

    move-result-object p0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 16
    invoke-virtual {p3}, Lm5/w;->y()I

    move-result v2

    .line 17
    :cond_2
    iget-object v3, v6, Lq3/c;->d:[I

    if-eqz v3, :cond_3

    .line 18
    array-length v7, v3

    if-ge v7, v2, :cond_4

    .line 19
    :cond_3
    new-array v3, v2, [I

    .line 20
    :cond_4
    iget-object v7, v6, Lq3/c;->e:[I

    if-eqz v7, :cond_5

    .line 21
    array-length v8, v7

    if-ge v8, v2, :cond_6

    .line 22
    :cond_5
    new-array v7, v2, [I

    :cond_6
    if-eqz v5, :cond_7

    mul-int/lit8 v5, v2, 0x6

    .line 23
    invoke-virtual {p3, v5}, Lm5/w;->A(I)V

    .line 24
    iget-object v8, p3, Lm5/w;->a:[B

    .line 25
    invoke-static {p0, v0, v1, v8, v5}, Lp4/k0;->e(Lp4/k0$a;J[BI)Lp4/k0$a;

    move-result-object p0

    int-to-long v8, v5

    add-long/2addr v0, v8

    .line 26
    invoke-virtual {p3, v4}, Lm5/w;->D(I)V

    :goto_2
    if-ge v4, v2, :cond_8

    .line 27
    invoke-virtual {p3}, Lm5/w;->y()I

    move-result v5

    aput v5, v3, v4

    .line 28
    invoke-virtual {p3}, Lm5/w;->w()I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 29
    :cond_7
    aput v4, v3, v4

    .line 30
    iget v5, p2, Lp4/l0$a;->a:I

    iget-wide v8, p2, Lp4/l0$a;->b:J

    sub-long v8, v0, v8

    long-to-int v8, v8

    sub-int/2addr v5, v8

    aput v5, v7, v4

    .line 31
    :cond_8
    iget-object v4, p2, Lp4/l0$a;->c:Ls3/w$a;

    sget v5, Lm5/g0;->a:I

    .line 32
    iget-object v5, v4, Ls3/w$a;->b:[B

    iget-object v8, v6, Lq3/c;->a:[B

    iget v9, v4, Ls3/w$a;->a:I

    iget v10, v4, Ls3/w$a;->c:I

    iget v4, v4, Ls3/w$a;->d:I

    .line 33
    iput v2, v6, Lq3/c;->f:I

    .line 34
    iput-object v3, v6, Lq3/c;->d:[I

    .line 35
    iput-object v7, v6, Lq3/c;->e:[I

    .line 36
    iput-object v5, v6, Lq3/c;->b:[B

    .line 37
    iput-object v8, v6, Lq3/c;->a:[B

    .line 38
    iput v9, v6, Lq3/c;->c:I

    .line 39
    iput v10, v6, Lq3/c;->g:I

    .line 40
    iput v4, v6, Lq3/c;->h:I

    .line 41
    iget-object v11, v6, Lq3/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput v2, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 42
    iput-object v3, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 43
    iput-object v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 44
    iput-object v5, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 45
    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 46
    iput v9, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 47
    sget v2, Lm5/g0;->a:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    .line 48
    iget-object v2, v6, Lq3/c;->j:Lq3/c$a;

    .line 49
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v3, v2, Lq3/c$a;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v3, v10, v4}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 51
    iget-object v3, v2, Lq3/c$a;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v2, v2, Lq3/c$a;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 52
    :cond_9
    iget-wide v2, p2, Lp4/l0$a;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 53
    iput-wide v2, p2, Lp4/l0$a;->b:J

    .line 54
    iget v1, p2, Lp4/l0$a;->a:I

    sub-int/2addr v1, v0

    iput v1, p2, Lp4/l0$a;->a:I

    .line 55
    :cond_a
    invoke-virtual {p1}, Lq3/a;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    .line 56
    invoke-virtual {p3, v0}, Lm5/w;->A(I)V

    .line 57
    iget-wide v1, p2, Lp4/l0$a;->b:J

    .line 58
    iget-object v3, p3, Lm5/w;->a:[B

    .line 59
    invoke-static {p0, v1, v2, v3, v0}, Lp4/k0;->e(Lp4/k0$a;J[BI)Lp4/k0$a;

    move-result-object p0

    .line 60
    invoke-virtual {p3}, Lm5/w;->w()I

    move-result p3

    .line 61
    iget-wide v1, p2, Lp4/l0$a;->b:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lp4/l0$a;->b:J

    .line 62
    iget v1, p2, Lp4/l0$a;->a:I

    sub-int/2addr v1, v0

    iput v1, p2, Lp4/l0$a;->a:I

    .line 63
    invoke-virtual {p1, p3}, Lq3/g;->q(I)V

    .line 64
    iget-wide v0, p2, Lp4/l0$a;->b:J

    iget-object v2, p1, Lq3/g;->j:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lp4/k0;->d(Lp4/k0$a;JLjava/nio/ByteBuffer;I)Lp4/k0$a;

    move-result-object p0

    .line 65
    iget-wide v0, p2, Lp4/l0$a;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lp4/l0$a;->b:J

    .line 66
    iget v0, p2, Lp4/l0$a;->a:I

    sub-int/2addr v0, p3

    iput v0, p2, Lp4/l0$a;->a:I

    .line 67
    iget-object p3, p1, Lq3/g;->m:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    if-ge p3, v0, :cond_b

    goto :goto_3

    .line 68
    :cond_b
    iget-object p3, p1, Lq3/g;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    .line 69
    :cond_c
    :goto_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p1, Lq3/g;->m:Ljava/nio/ByteBuffer;

    .line 70
    :goto_4
    iget-wide v0, p2, Lp4/l0$a;->b:J

    iget-object p1, p1, Lq3/g;->m:Ljava/nio/ByteBuffer;

    iget p2, p2, Lp4/l0$a;->a:I

    .line 71
    invoke-static {p0, v0, v1, p1, p2}, Lp4/k0;->d(Lp4/k0$a;JLjava/nio/ByteBuffer;I)Lp4/k0$a;

    move-result-object p0

    goto :goto_5

    .line 72
    :cond_d
    iget p3, p2, Lp4/l0$a;->a:I

    invoke-virtual {p1, p3}, Lq3/g;->q(I)V

    .line 73
    iget-wide v0, p2, Lp4/l0$a;->b:J

    iget-object p1, p1, Lq3/g;->j:Ljava/nio/ByteBuffer;

    iget p2, p2, Lp4/l0$a;->a:I

    .line 74
    invoke-static {p0, v0, v1, p1, p2}, Lp4/k0;->d(Lp4/k0$a;JLjava/nio/ByteBuffer;I)Lp4/k0$a;

    move-result-object p0

    :goto_5
    return-object p0
.end method


# virtual methods
.method public final a(Lp4/k0$a;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lp4/k0$a;->c:Ll5/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lp4/k0;->a:Ll5/b;

    check-cast v0, Ll5/n;

    .line 3
    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 4
    :try_start_0
    iget-object v3, v0, Ll5/n;->f:[Ll5/a;

    iget v4, v0, Ll5/n;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Ll5/n;->e:I

    .line 5
    iget-object v5, v2, Lp4/k0$a;->c:Ll5/a;

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    aput-object v5, v3, v4

    .line 8
    iget v3, v0, Ll5/n;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Ll5/n;->d:I

    .line 9
    iget-object v2, v2, Lp4/k0$a;->d:Lp4/k0$a;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lp4/k0$a;->c:Ll5/a;

    if-nez v3, :cond_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    iput-object v1, p1, Lp4/k0$a;->c:Ll5/a;

    .line 13
    iput-object v1, p1, Lp4/k0$a;->d:Lp4/k0$a;

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1
.end method

.method public final b(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lp4/k0;->d:Lp4/k0$a;

    iget-wide v1, v0, Lp4/k0$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2
    iget-object v1, p0, Lp4/k0;->a:Ll5/b;

    iget-object v0, v0, Lp4/k0$a;->c:Ll5/a;

    check-cast v1, Ll5/n;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Ll5/n;->f:[Ll5/a;

    iget v3, v1, Ll5/n;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Ll5/n;->e:I

    aput-object v0, v2, v3

    .line 5
    iget v0, v1, Ll5/n;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Ll5/n;->d:I

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    .line 8
    iget-object v0, p0, Lp4/k0;->d:Lp4/k0$a;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lp4/k0$a;->c:Ll5/a;

    .line 10
    iget-object v2, v0, Lp4/k0$a;->d:Lp4/k0$a;

    .line 11
    iput-object v1, v0, Lp4/k0$a;->d:Lp4/k0$a;

    .line 12
    iput-object v2, p0, Lp4/k0;->d:Lp4/k0$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v1

    throw p1

    .line 14
    :cond_1
    iget-object p1, p0, Lp4/k0;->e:Lp4/k0$a;

    iget-wide p1, p1, Lp4/k0$a;->a:J

    iget-wide v1, v0, Lp4/k0$a;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    .line 15
    iput-object v0, p0, Lp4/k0;->e:Lp4/k0$a;

    :cond_2
    return-void
.end method

.method public final c(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lp4/k0;->f:Lp4/k0$a;

    iget-object v1, v0, Lp4/k0$a;->c:Ll5/a;

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lp4/k0;->a:Ll5/b;

    .line 3
    check-cast v1, Ll5/n;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget v2, v1, Ll5/n;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ll5/n;->d:I

    .line 6
    iget v3, v1, Ll5/n;->e:I

    if-lez v3, :cond_0

    .line 7
    iget-object v2, v1, Ll5/n;->f:[Ll5/a;

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Ll5/n;->e:I

    aget-object v2, v2, v3

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, v1, Ll5/n;->f:[Ll5/a;

    iget v4, v1, Ll5/n;->e:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Ll5/a;

    iget v4, v1, Ll5/n;->b:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ll5/a;-><init>([BI)V

    .line 11
    iget-object v4, v1, Ll5/n;->f:[Ll5/a;

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 12
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ll5/a;

    iput-object v2, v1, Ll5/n;->f:[Ll5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v2, v3

    .line 13
    :goto_0
    monitor-exit v1

    .line 14
    new-instance v1, Lp4/k0$a;

    iget-object v3, p0, Lp4/k0;->f:Lp4/k0$a;

    iget-wide v3, v3, Lp4/k0$a;->b:J

    iget v5, p0, Lp4/k0;->b:I

    invoke-direct {v1, v3, v4, v5}, Lp4/k0$a;-><init>(JI)V

    .line 15
    iput-object v2, v0, Lp4/k0$a;->c:Ll5/a;

    .line 16
    iput-object v1, v0, Lp4/k0$a;->d:Lp4/k0$a;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1

    throw p1

    .line 18
    :cond_2
    :goto_1
    iget-object v0, p0, Lp4/k0;->f:Lp4/k0$a;

    iget-wide v0, v0, Lp4/k0$a;->b:J

    iget-wide v2, p0, Lp4/k0;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
