.class public final Lx4/l;
.super Ljava/lang/Object;
.source "RtpVp9Reader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public b:Ls3/w;

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/l;->a:Lw4/f;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lx4/l;->c:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lx4/l;->d:J

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lx4/l;->e:I

    .line 6
    iput p1, p0, Lx4/l;->g:I

    .line 7
    iput p1, p0, Lx4/l;->h:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lx4/l;->i:Z

    .line 9
    iput-boolean p1, p0, Lx4/l;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v0, Lx4/l;->b:Ls3/w;

    invoke-static {v5}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v5

    .line 3
    iget-boolean v6, v0, Lx4/l;->i:Z

    const/4 v7, 0x1

    const-string v8, "RtpVp9Reader"

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v6, :cond_1

    and-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    const-string v5, "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet."

    .line 4
    invoke-static {v8, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5
    :cond_0
    iput-boolean v7, v0, Lx4/l;->i:Z

    goto :goto_0

    .line 6
    :cond_1
    iget v6, v0, Lx4/l;->e:I

    invoke-static {v6}, Lw4/c;->a(I)I

    move-result v6

    if-eq v4, v6, :cond_2

    new-array v5, v9, [Ljava/lang/Object;

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 8
    invoke-static {v6, v5}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v8, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    .line 11
    iget v6, v1, Lm5/w;->c:I

    iget v8, v1, Lm5/w;->b:I

    sub-int/2addr v6, v8

    if-ge v6, v7, :cond_3

    goto/16 :goto_4

    :cond_3
    and-int/lit8 v6, v5, 0x10

    if-nez v6, :cond_4

    move v8, v7

    goto :goto_1

    :cond_4
    move v8, v10

    :goto_1
    const-string v11, "VP9 flexible mode is not supported."

    .line 12
    invoke-static {v8, v11}, Lm5/a;->b(ZLjava/lang/Object;)V

    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_6

    .line 13
    invoke-virtual {v1, v7}, Lm5/w;->E(I)V

    .line 14
    iget v8, v1, Lm5/w;->c:I

    iget v11, v1, Lm5/w;->b:I

    sub-int/2addr v8, v11

    if-ge v8, v7, :cond_5

    goto :goto_4

    :cond_5
    if-nez v6, :cond_6

    .line 15
    invoke-virtual {v1, v7}, Lm5/w;->E(I)V

    :cond_6
    and-int/2addr v5, v9

    if-eqz v5, :cond_b

    .line 16
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v5

    shr-int/lit8 v6, v5, 0x5

    and-int/lit8 v6, v6, 0x7

    and-int/lit8 v8, v5, 0x10

    if-eqz v8, :cond_8

    add-int/2addr v6, v7

    .line 17
    iget v8, v1, Lm5/w;->c:I

    iget v11, v1, Lm5/w;->b:I

    sub-int/2addr v8, v11

    mul-int/lit8 v11, v6, 0x4

    if-ge v8, v11, :cond_7

    goto :goto_4

    :cond_7
    move v8, v10

    :goto_2
    if-ge v8, v6, :cond_8

    .line 18
    invoke-virtual/range {p1 .. p1}, Lm5/w;->y()I

    move-result v11

    iput v11, v0, Lx4/l;->g:I

    .line 19
    invoke-virtual/range {p1 .. p1}, Lm5/w;->y()I

    move-result v11

    iput v11, v0, Lx4/l;->h:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_b

    .line 20
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v5

    .line 21
    iget v6, v1, Lm5/w;->c:I

    iget v8, v1, Lm5/w;->b:I

    sub-int/2addr v6, v8

    if-ge v6, v5, :cond_9

    goto :goto_4

    :cond_9
    move v6, v10

    :goto_3
    if-ge v6, v5, :cond_b

    .line 22
    invoke-virtual/range {p1 .. p1}, Lm5/w;->y()I

    move-result v8

    and-int/lit8 v8, v8, 0xc

    shr-int/2addr v8, v9

    .line 23
    iget v11, v1, Lm5/w;->c:I

    iget v12, v1, Lm5/w;->b:I

    sub-int/2addr v11, v12

    if-ge v11, v8, :cond_a

    :goto_4
    move v5, v10

    goto :goto_5

    .line 24
    :cond_a
    invoke-virtual {v1, v8}, Lm5/w;->E(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    move v5, v7

    :goto_5
    if-eqz v5, :cond_12

    .line 25
    iget v5, v0, Lx4/l;->f:I

    if-nez v5, :cond_c

    iget-boolean v5, v0, Lx4/l;->i:Z

    if-eqz v5, :cond_c

    .line 26
    invoke-virtual/range {p1 .. p1}, Lm5/w;->b()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_c

    move v14, v7

    goto :goto_6

    :cond_c
    move v14, v10

    .line 27
    :goto_6
    iget-boolean v5, v0, Lx4/l;->j:Z

    if-nez v5, :cond_f

    iget v5, v0, Lx4/l;->g:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    iget v8, v0, Lx4/l;->h:I

    if-eq v8, v6, :cond_f

    .line 28
    iget-object v6, v0, Lx4/l;->a:Lw4/f;

    iget-object v6, v6, Lw4/f;->c:Ln3/s0;

    iget v9, v6, Ln3/s0;->x:I

    if-ne v5, v9, :cond_d

    iget v5, v6, Ln3/s0;->y:I

    if-eq v8, v5, :cond_e

    .line 29
    :cond_d
    iget-object v5, v0, Lx4/l;->b:Ls3/w;

    .line 30
    new-instance v8, Ln3/s0$a;

    invoke-direct {v8, v6}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 31
    iget v6, v0, Lx4/l;->g:I

    .line 32
    iput v6, v8, Ln3/s0$a;->p:I

    .line 33
    iget v6, v0, Lx4/l;->h:I

    .line 34
    iput v6, v8, Ln3/s0$a;->q:I

    .line 35
    new-instance v6, Ln3/s0;

    invoke-direct {v6, v8}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 36
    invoke-interface {v5, v6}, Ls3/w;->b(Ln3/s0;)V

    .line 37
    :cond_e
    iput-boolean v7, v0, Lx4/l;->j:Z

    .line 38
    :cond_f
    iget v5, v1, Lm5/w;->c:I

    iget v6, v1, Lm5/w;->b:I

    sub-int/2addr v5, v6

    .line 39
    iget-object v6, v0, Lx4/l;->b:Ls3/w;

    invoke-interface {v6, v1, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 40
    iget v1, v0, Lx4/l;->f:I

    add-int/2addr v1, v5

    iput v1, v0, Lx4/l;->f:I

    if-eqz p5, :cond_11

    .line 41
    iget-wide v5, v0, Lx4/l;->c:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-nez v1, :cond_10

    .line 42
    iput-wide v2, v0, Lx4/l;->c:J

    .line 43
    :cond_10
    iget-wide v5, v0, Lx4/l;->d:J

    iget-wide v7, v0, Lx4/l;->c:J

    sub-long v15, v2, v7

    const-wide/32 v17, 0xf4240

    const-wide/32 v19, 0x15f90

    .line 44
    invoke-static/range {v15 .. v20}, Lm5/g0;->R(JJJ)J

    move-result-wide v1

    add-long v12, v1, v5

    .line 45
    iget-object v11, v0, Lx4/l;->b:Ls3/w;

    iget v15, v0, Lx4/l;->f:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 46
    iput v10, v0, Lx4/l;->f:I

    .line 47
    iput-boolean v10, v0, Lx4/l;->i:Z

    .line 48
    :cond_11
    iput v4, v0, Lx4/l;->e:I

    :cond_12
    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/l;->c:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lx4/l;->f:I

    .line 3
    iput-wide p3, p0, Lx4/l;->d:J

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

    iput-object p1, p0, Lx4/l;->b:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/l;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
