.class public final Lx4/f;
.super Ljava/lang/Object;
.source "RtpH265Reader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lm5/w;

.field public final b:Lm5/w;

.field public final c:Lw4/f;

.field public d:Ls3/w;

.field public e:I

.field public f:J

.field public g:I

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, Lx4/f;->a:Lm5/w;

    .line 3
    new-instance v0, Lm5/w;

    sget-object v1, Lm5/t;->a:[B

    invoke-direct {v0, v1}, Lm5/w;-><init>([B)V

    iput-object v0, p0, Lx4/f;->b:Lm5/w;

    .line 4
    iput-object p1, p0, Lx4/f;->c:Lw4/f;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lx4/f;->f:J

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lx4/f;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v1, Lm5/w;->a:[B

    .line 2
    array-length v6, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    .line 3
    aget-byte v5, v5, v6

    const/4 v8, 0x1

    shr-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x3f

    .line 4
    iget-object v9, v0, Lx4/f;->d:Ls3/w;

    invoke-static {v9}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x14

    const/16 v10, 0x13

    const/16 v11, 0x30

    if-ltz v5, :cond_2

    if-ge v5, v11, :cond_2

    .line 5
    iget v5, v1, Lm5/w;->c:I

    iget v7, v1, Lm5/w;->b:I

    sub-int/2addr v5, v7

    .line 6
    iget v7, v0, Lx4/f;->h:I

    invoke-virtual/range {p0 .. p0}, Lx4/f;->e()I

    move-result v11

    add-int/2addr v11, v7

    iput v11, v0, Lx4/f;->h:I

    .line 7
    iget-object v7, v0, Lx4/f;->d:Ls3/w;

    invoke-interface {v7, v1, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 8
    iget v7, v0, Lx4/f;->h:I

    add-int/2addr v7, v5

    iput v7, v0, Lx4/f;->h:I

    .line 9
    iget-object v1, v1, Lm5/w;->a:[B

    .line 10
    aget-byte v1, v1, v6

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0x3f

    if-eq v1, v10, :cond_1

    if-ne v1, v9, :cond_0

    goto :goto_0

    :cond_0
    move v8, v6

    .line 11
    :cond_1
    :goto_0
    iput v8, v0, Lx4/f;->e:I

    goto/16 :goto_5

    :cond_2
    if-eq v5, v11, :cond_e

    const/16 v11, 0x31

    if-ne v5, v11, :cond_d

    .line 12
    iget-object v5, v1, Lm5/w;->a:[B

    .line 13
    array-length v11, v5

    const/4 v12, 0x3

    if-lt v11, v12, :cond_c

    .line 14
    aget-byte v7, v5, v8

    and-int/lit8 v7, v7, 0x7

    const/4 v11, 0x2

    .line 15
    aget-byte v13, v5, v11

    and-int/lit8 v14, v13, 0x3f

    and-int/lit16 v15, v13, 0x80

    if-lez v15, :cond_3

    move v15, v8

    goto :goto_1

    :cond_3
    move v15, v6

    :goto_1
    and-int/lit8 v13, v13, 0x40

    if-lez v13, :cond_4

    move v13, v8

    goto :goto_2

    :cond_4
    move v13, v6

    :goto_2
    if-eqz v15, :cond_5

    .line 16
    iget v5, v0, Lx4/f;->h:I

    invoke-virtual/range {p0 .. p0}, Lx4/f;->e()I

    move-result v12

    add-int/2addr v12, v5

    iput v12, v0, Lx4/f;->h:I

    .line 17
    iget-object v1, v1, Lm5/w;->a:[B

    shl-int/lit8 v5, v14, 0x1

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 18
    aput-byte v5, v1, v8

    int-to-byte v5, v7

    .line 19
    aput-byte v5, v1, v11

    .line 20
    iget-object v5, v0, Lx4/f;->a:Lm5/w;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    array-length v7, v1

    invoke-virtual {v5, v1, v7}, Lm5/w;->B([BI)V

    .line 22
    iget-object v1, v0, Lx4/f;->a:Lm5/w;

    invoke-virtual {v1, v8}, Lm5/w;->D(I)V

    goto :goto_3

    .line 23
    :cond_5
    iget v1, v0, Lx4/f;->g:I

    add-int/2addr v1, v8

    const v7, 0xffff

    rem-int/2addr v1, v7

    if-eq v4, v1, :cond_6

    new-array v5, v11, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    const-string v1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 25
    invoke-static {v1, v5}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "RtpH265Reader"

    .line 26
    invoke-static {v5, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 27
    :cond_6
    iget-object v1, v0, Lx4/f;->a:Lm5/w;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    array-length v7, v5

    invoke-virtual {v1, v5, v7}, Lm5/w;->B([BI)V

    .line 29
    iget-object v1, v0, Lx4/f;->a:Lm5/w;

    invoke-virtual {v1, v12}, Lm5/w;->D(I)V

    .line 30
    :goto_3
    iget-object v1, v0, Lx4/f;->a:Lm5/w;

    .line 31
    iget v5, v1, Lm5/w;->c:I

    iget v7, v1, Lm5/w;->b:I

    sub-int/2addr v5, v7

    .line 32
    iget-object v7, v0, Lx4/f;->d:Ls3/w;

    invoke-interface {v7, v1, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 33
    iget v1, v0, Lx4/f;->h:I

    add-int/2addr v1, v5

    iput v1, v0, Lx4/f;->h:I

    if-eqz v13, :cond_9

    if-eq v14, v10, :cond_8

    if-ne v14, v9, :cond_7

    goto :goto_4

    :cond_7
    move v8, v6

    .line 34
    :cond_8
    :goto_4
    iput v8, v0, Lx4/f;->e:I

    :cond_9
    :goto_5
    if-eqz p5, :cond_b

    .line 35
    iget-wide v7, v0, Lx4/f;->f:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    .line 36
    iput-wide v2, v0, Lx4/f;->f:J

    .line 37
    :cond_a
    iget-wide v7, v0, Lx4/f;->i:J

    iget-wide v9, v0, Lx4/f;->f:J

    sub-long v11, v2, v9

    const-wide/32 v13, 0xf4240

    const-wide/32 v15, 0x15f90

    .line 38
    invoke-static/range {v11 .. v16}, Lm5/g0;->R(JJJ)J

    move-result-wide v1

    add-long v10, v1, v7

    .line 39
    iget-object v9, v0, Lx4/f;->d:Ls3/w;

    iget v12, v0, Lx4/f;->e:I

    iget v13, v0, Lx4/f;->h:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 40
    iput v6, v0, Lx4/f;->h:I

    .line 41
    :cond_b
    iput v4, v0, Lx4/f;->g:I

    return-void

    :cond_c
    const-string v1, "Malformed FU header."

    .line 42
    invoke-static {v1, v7}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_d
    new-array v1, v8, [Ljava/lang/Object;

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "RTP H265 payload type [%d] not supported."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1, v7}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 45
    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "need to implement processAggregationPacket"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const-string v1, "Empty RTP data packet."

    .line 46
    invoke-static {v1, v7}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/f;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lx4/f;->h:I

    .line 3
    iput-wide p3, p0, Lx4/f;->i:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/f;->d:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/f;->c:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method

.method public final e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lx4/f;->b:Lm5/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm5/w;->D(I)V

    .line 2
    iget-object v0, p0, Lx4/f;->b:Lm5/w;

    .line 3
    iget v1, v0, Lm5/w;->c:I

    iget v0, v0, Lm5/w;->b:I

    sub-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lx4/f;->d:Ls3/w;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lx4/f;->b:Lm5/w;

    invoke-interface {v0, v2, v1}, Ls3/w;->f(Lm5/w;I)V

    return v1
.end method
