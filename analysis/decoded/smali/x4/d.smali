.class public final Lx4/d;
.super Ljava/lang/Object;
.source "RtpH263Reader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public b:Ls3/w;

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/d;->a:Lw4/f;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lx4/d;->c:J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lx4/d;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v0, Lx4/d;->b:Ls3/w;

    invoke-static {v5}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v5, v1, Lm5/w;->b:I

    .line 3
    invoke-virtual/range {p1 .. p1}, Lm5/w;->y()I

    move-result v6

    and-int/lit16 v7, v6, 0x400

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    and-int/lit16 v10, v6, 0x200

    const-string v11, "RtpH263Reader"

    if-nez v10, :cond_e

    and-int/lit16 v10, v6, 0x1f8

    if-nez v10, :cond_e

    and-int/lit8 v6, v6, 0x7

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    const/16 v6, 0x80

    const/4 v10, 0x2

    if-eqz v7, :cond_3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lm5/w;->b()I

    move-result v7

    and-int/lit16 v7, v7, 0xfc

    if-ge v7, v6, :cond_2

    const-string v1, "Picture start Code (PSC) missing, dropping packet."

    .line 5
    invoke-static {v11, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    iget-object v7, v1, Lm5/w;->a:[B

    .line 7
    aput-byte v9, v7, v5

    add-int/lit8 v11, v5, 0x1

    .line 8
    aput-byte v9, v7, v11

    .line 9
    invoke-virtual {v1, v5}, Lm5/w;->D(I)V

    goto :goto_1

    .line 10
    :cond_3
    iget v5, v0, Lx4/d;->e:I

    invoke-static {v5}, Lw4/c;->a(I)I

    move-result v5

    if-eq v4, v5, :cond_4

    new-array v1, v10, [Ljava/lang/Object;

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 12
    invoke-static {v2, v1}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v11, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    :goto_1
    iget v5, v0, Lx4/d;->d:I

    if-nez v5, :cond_b

    .line 15
    iget-boolean v5, v0, Lx4/d;->i:Z

    .line 16
    iget v7, v1, Lm5/w;->b:I

    .line 17
    invoke-virtual/range {p1 .. p1}, Lm5/w;->u()J

    move-result-wide v11

    const/16 v13, 0xa

    shr-long/2addr v11, v13

    const-wide/16 v13, 0x3f

    and-long/2addr v11, v13

    const-wide/16 v13, 0x20

    cmp-long v11, v11, v13

    if-nez v11, :cond_8

    .line 18
    invoke-virtual/range {p1 .. p1}, Lm5/w;->b()I

    move-result v11

    shr-int/lit8 v12, v11, 0x1

    and-int/2addr v12, v8

    if-nez v5, :cond_6

    if-nez v12, :cond_6

    shr-int/lit8 v5, v11, 0x2

    and-int/lit8 v5, v5, 0x7

    if-ne v5, v8, :cond_5

    .line 19
    iput v6, v0, Lx4/d;->f:I

    const/16 v5, 0x60

    .line 20
    iput v5, v0, Lx4/d;->g:I

    goto :goto_2

    :cond_5
    const/16 v6, 0xb0

    add-int/lit8 v5, v5, -0x2

    shl-int/2addr v6, v5

    .line 21
    iput v6, v0, Lx4/d;->f:I

    const/16 v6, 0x90

    shl-int v5, v6, v5

    .line 22
    iput v5, v0, Lx4/d;->g:I

    .line 23
    :cond_6
    :goto_2
    invoke-virtual {v1, v7}, Lm5/w;->D(I)V

    if-nez v12, :cond_7

    move v5, v8

    goto :goto_3

    :cond_7
    move v5, v9

    .line 24
    :goto_3
    iput-boolean v5, v0, Lx4/d;->h:Z

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {v1, v7}, Lm5/w;->D(I)V

    .line 26
    iput-boolean v9, v0, Lx4/d;->h:Z

    .line 27
    :goto_4
    iget-boolean v5, v0, Lx4/d;->i:Z

    if-nez v5, :cond_b

    iget-boolean v5, v0, Lx4/d;->h:Z

    if-eqz v5, :cond_b

    .line 28
    iget v5, v0, Lx4/d;->f:I

    iget-object v6, v0, Lx4/d;->a:Lw4/f;

    iget-object v6, v6, Lw4/f;->c:Ln3/s0;

    iget v7, v6, Ln3/s0;->x:I

    if-ne v5, v7, :cond_9

    iget v5, v0, Lx4/d;->g:I

    iget v7, v6, Ln3/s0;->y:I

    if-eq v5, v7, :cond_a

    .line 29
    :cond_9
    iget-object v5, v0, Lx4/d;->b:Ls3/w;

    .line 30
    new-instance v7, Ln3/s0$a;

    invoke-direct {v7, v6}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 31
    iget v6, v0, Lx4/d;->f:I

    .line 32
    iput v6, v7, Ln3/s0$a;->p:I

    .line 33
    iget v6, v0, Lx4/d;->g:I

    .line 34
    iput v6, v7, Ln3/s0$a;->q:I

    .line 35
    new-instance v6, Ln3/s0;

    invoke-direct {v6, v7}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 36
    invoke-interface {v5, v6}, Ls3/w;->b(Ln3/s0;)V

    .line 37
    :cond_a
    iput-boolean v8, v0, Lx4/d;->i:Z

    .line 38
    :cond_b
    iget v5, v1, Lm5/w;->c:I

    iget v6, v1, Lm5/w;->b:I

    sub-int/2addr v5, v6

    .line 39
    iget-object v6, v0, Lx4/d;->b:Ls3/w;

    invoke-interface {v6, v1, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 40
    iget v1, v0, Lx4/d;->d:I

    add-int/2addr v1, v5

    iput v1, v0, Lx4/d;->d:I

    if-eqz p5, :cond_d

    .line 41
    iget-wide v5, v0, Lx4/d;->c:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-nez v1, :cond_c

    .line 42
    iput-wide v2, v0, Lx4/d;->c:J

    .line 43
    :cond_c
    iget-wide v5, v0, Lx4/d;->j:J

    iget-wide v7, v0, Lx4/d;->c:J

    sub-long v10, v2, v7

    const-wide/32 v12, 0xf4240

    const-wide/32 v14, 0x15f90

    .line 44
    invoke-static/range {v10 .. v15}, Lm5/g0;->R(JJJ)J

    move-result-wide v1

    add-long v11, v1, v5

    .line 45
    iget-object v10, v0, Lx4/d;->b:Ls3/w;

    .line 46
    iget-boolean v13, v0, Lx4/d;->h:Z

    iget v14, v0, Lx4/d;->d:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 47
    invoke-interface/range {v10 .. v16}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 48
    iput v9, v0, Lx4/d;->d:I

    .line 49
    iput-boolean v9, v0, Lx4/d;->h:Z

    .line 50
    :cond_d
    iput v4, v0, Lx4/d;->e:I

    return-void

    :cond_e
    :goto_5
    const-string v1, "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero"

    .line 51
    invoke-static {v11, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/d;->c:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lx4/d;->d:I

    .line 3
    iput-wide p3, p0, Lx4/d;->j:J

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

    iput-object p1, p0, Lx4/d;->b:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/d;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
