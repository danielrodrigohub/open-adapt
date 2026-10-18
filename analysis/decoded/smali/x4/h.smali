.class public final Lx4/h;
.super Ljava/lang/Object;
.source "RtpOpusReader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public b:Ls3/w;

.field public c:J

.field public d:J

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/h;->a:Lw4/f;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lx4/h;->c:J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lx4/h;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lx4/h;->b:Ls3/w;

    invoke-static {v3}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v3, v0, Lx4/h;->f:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    .line 3
    iget v3, v1, Lm5/w;->b:I

    .line 4
    iget v7, v1, Lm5/w;->c:I

    const/16 v8, 0x12

    if-le v7, v8, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const-string v8, "ID Header has insufficient data"

    .line 5
    invoke-static {v7, v8}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {v1, v4}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "OpusHead"

    .line 7
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "ID Header missing"

    invoke-static {v4, v7}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lm5/w;->t()I

    move-result v4

    if-ne v4, v6, :cond_1

    move v5, v6

    :cond_1
    const-string v4, "version number must always be 1"

    invoke-static {v5, v4}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 9
    invoke-virtual {v1, v3}, Lm5/w;->D(I)V

    .line 10
    iget-object v1, v1, Lm5/w;->a:[B

    .line 11
    invoke-static {v1}, Lp4/h;->d([B)Ljava/util/List;

    move-result-object v1

    .line 12
    iget-object v3, v0, Lx4/h;->a:Lw4/f;

    iget-object v3, v3, Lw4/f;->c:Ln3/s0;

    .line 13
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4, v3}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 14
    iput-object v1, v4, Ln3/s0$a;->m:Ljava/util/List;

    .line 15
    iget-object v1, v0, Lx4/h;->b:Ls3/w;

    .line 16
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v4}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 17
    invoke-interface {v1, v3}, Ls3/w;->b(Ln3/s0;)V

    .line 18
    iput-boolean v6, v0, Lx4/h;->f:Z

    goto :goto_1

    .line 19
    :cond_2
    iget-boolean v3, v0, Lx4/h;->g:Z

    if-nez v3, :cond_4

    .line 20
    iget v3, v1, Lm5/w;->c:I

    if-lt v3, v4, :cond_3

    move v5, v6

    :cond_3
    const-string v3, "Comment Header has insufficient data"

    .line 21
    invoke-static {v5, v3}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 22
    invoke-virtual {v1, v4}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpusTags"

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Comment Header should follow ID Header"

    invoke-static {v1, v3}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 24
    iput-boolean v6, v0, Lx4/h;->g:Z

    goto :goto_1

    .line 25
    :cond_4
    iget v3, v0, Lx4/h;->e:I

    invoke-static {v3}, Lw4/c;->a(I)I

    move-result v3

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    const-string v3, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 27
    invoke-static {v3, v4}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RtpOpusReader"

    .line 28
    invoke-static {v4, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_5
    iget v3, v1, Lm5/w;->c:I

    iget v4, v1, Lm5/w;->b:I

    sub-int v9, v3, v4

    .line 30
    iget-object v3, v0, Lx4/h;->b:Ls3/w;

    invoke-interface {v3, v1, v9}, Ls3/w;->f(Lm5/w;I)V

    .line 31
    iget-wide v3, v0, Lx4/h;->d:J

    iget-wide v5, v0, Lx4/h;->c:J

    sub-long v10, p2, v5

    const-wide/32 v12, 0xf4240

    const-wide/32 v14, 0xbb80

    .line 32
    invoke-static/range {v10 .. v15}, Lm5/g0;->R(JJJ)J

    move-result-wide v5

    add-long v6, v5, v3

    .line 33
    iget-object v5, v0, Lx4/h;->b:Ls3/w;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 34
    :goto_1
    iput v2, v0, Lx4/h;->e:I

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/h;->c:J

    .line 2
    iput-wide p3, p0, Lx4/h;->d:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lx4/h;->c:J

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/h;->b:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/h;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
