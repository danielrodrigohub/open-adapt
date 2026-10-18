.class public final Lc4/q;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lc4/j;


# instance fields
.field public final a:Lm5/w;

.field public final b:Lp3/b0$a;

.field public final c:Ljava/lang/String;

.field public d:Ls3/w;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc4/q;->f:I

    .line 3
    new-instance v1, Lm5/w;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lm5/w;-><init>(I)V

    iput-object v1, p0, Lc4/q;->a:Lm5/w;

    .line 4
    iget-object v1, v1, Lm5/w;->a:[B

    const/4 v2, -0x1

    .line 5
    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lp3/b0$a;

    invoke-direct {v0}, Lp3/b0$a;-><init>()V

    iput-object v0, p0, Lc4/q;->b:Lp3/b0$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lc4/q;->l:J

    .line 8
    iput-object p1, p0, Lc4/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc4/q;->f:I

    .line 2
    iput v0, p0, Lc4/q;->g:I

    .line 3
    iput-boolean v0, p0, Lc4/q;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lc4/q;->l:J

    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lc4/q;->d:Ls3/w;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget v0, p1, Lm5/w;->c:I

    iget v1, p1, Lm5/w;->b:I

    sub-int v2, v0, v1

    if-lez v2, :cond_c

    .line 3
    iget v3, p0, Lc4/q;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v6, :cond_3

    if-ne v3, v5, :cond_2

    .line 4
    iget v0, p0, Lc4/q;->k:I

    iget v1, p0, Lc4/q;->g:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lc4/q;->d:Ls3/w;

    invoke-interface {v1, p1, v0}, Ls3/w;->f(Lm5/w;I)V

    .line 6
    iget v1, p0, Lc4/q;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lc4/q;->g:I

    .line 7
    iget v9, p0, Lc4/q;->k:I

    if-ge v1, v9, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v6, p0, Lc4/q;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v5, p0, Lc4/q;->d:Ls3/w;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 10
    iget-wide v0, p0, Lc4/q;->l:J

    iget-wide v2, p0, Lc4/q;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc4/q;->l:J

    .line 11
    :cond_1
    iput v4, p0, Lc4/q;->g:I

    .line 12
    iput v4, p0, Lc4/q;->f:I

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 14
    :cond_3
    iget v0, p0, Lc4/q;->g:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget-object v2, p0, Lc4/q;->a:Lm5/w;

    .line 16
    iget-object v2, v2, Lm5/w;->a:[B

    .line 17
    iget v3, p0, Lc4/q;->g:I

    invoke-virtual {p1, v2, v3, v0}, Lm5/w;->d([BII)V

    .line 18
    iget v2, p0, Lc4/q;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lc4/q;->g:I

    if-ge v2, v1, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    iget-object v0, p0, Lc4/q;->a:Lm5/w;

    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 20
    iget-object v0, p0, Lc4/q;->b:Lp3/b0$a;

    iget-object v2, p0, Lc4/q;->a:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lp3/b0$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iput v4, p0, Lc4/q;->g:I

    .line 22
    iput v6, p0, Lc4/q;->f:I

    goto/16 :goto_0

    .line 23
    :cond_5
    iget-object v0, p0, Lc4/q;->b:Lp3/b0$a;

    iget v2, v0, Lp3/b0$a;->c:I

    iput v2, p0, Lc4/q;->k:I

    .line 24
    iget-boolean v2, p0, Lc4/q;->h:Z

    if-nez v2, :cond_6

    const-wide/32 v2, 0xf4240

    .line 25
    iget v7, v0, Lp3/b0$a;->g:I

    int-to-long v7, v7

    mul-long/2addr v7, v2

    iget v2, v0, Lp3/b0$a;->d:I

    int-to-long v9, v2

    div-long/2addr v7, v9

    iput-wide v7, p0, Lc4/q;->j:J

    .line 26
    new-instance v3, Ln3/s0$a;

    invoke-direct {v3}, Ln3/s0$a;-><init>()V

    iget-object v7, p0, Lc4/q;->e:Ljava/lang/String;

    .line 27
    iput-object v7, v3, Ln3/s0$a;->a:Ljava/lang/String;

    .line 28
    iget-object v7, v0, Lp3/b0$a;->b:Ljava/lang/String;

    .line 29
    iput-object v7, v3, Ln3/s0$a;->k:Ljava/lang/String;

    const/16 v7, 0x1000

    .line 30
    iput v7, v3, Ln3/s0$a;->l:I

    .line 31
    iget v0, v0, Lp3/b0$a;->e:I

    .line 32
    iput v0, v3, Ln3/s0$a;->x:I

    .line 33
    iput v2, v3, Ln3/s0$a;->y:I

    .line 34
    iget-object v0, p0, Lc4/q;->c:Ljava/lang/String;

    .line 35
    iput-object v0, v3, Ln3/s0$a;->c:Ljava/lang/String;

    .line 36
    new-instance v0, Ln3/s0;

    invoke-direct {v0, v3}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 37
    iget-object v2, p0, Lc4/q;->d:Ls3/w;

    invoke-interface {v2, v0}, Ls3/w;->b(Ln3/s0;)V

    .line 38
    iput-boolean v6, p0, Lc4/q;->h:Z

    .line 39
    :cond_6
    iget-object v0, p0, Lc4/q;->a:Lm5/w;

    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 40
    iget-object v0, p0, Lc4/q;->d:Ls3/w;

    iget-object v2, p0, Lc4/q;->a:Lm5/w;

    invoke-interface {v0, v2, v1}, Ls3/w;->f(Lm5/w;I)V

    .line 41
    iput v5, p0, Lc4/q;->f:I

    goto/16 :goto_0

    .line 42
    :cond_7
    iget-object v2, p1, Lm5/w;->a:[B

    :goto_1
    if-ge v1, v0, :cond_b

    .line 43
    aget-byte v3, v2, v1

    const/16 v7, 0xff

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_8

    move v3, v6

    goto :goto_2

    :cond_8
    move v3, v4

    .line 44
    :goto_2
    iget-boolean v7, p0, Lc4/q;->i:Z

    if-eqz v7, :cond_9

    aget-byte v7, v2, v1

    const/16 v8, 0xe0

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9

    move v7, v6

    goto :goto_3

    :cond_9
    move v7, v4

    .line 45
    :goto_3
    iput-boolean v3, p0, Lc4/q;->i:Z

    if-eqz v7, :cond_a

    add-int/lit8 v0, v1, 0x1

    .line 46
    invoke-virtual {p1, v0}, Lm5/w;->D(I)V

    .line 47
    iput-boolean v4, p0, Lc4/q;->i:Z

    .line 48
    iget-object v0, p0, Lc4/q;->a:Lm5/w;

    .line 49
    iget-object v0, v0, Lm5/w;->a:[B

    .line 50
    aget-byte v1, v2, v1

    aput-byte v1, v0, v6

    .line 51
    iput v5, p0, Lc4/q;->g:I

    .line 52
    iput v6, p0, Lc4/q;->f:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    :cond_b
    invoke-virtual {p1, v0}, Lm5/w;->D(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lc4/q;->l:J

    :cond_0
    return-void
.end method

.method public final f(Ls3/j;Lc4/d0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lc4/d0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lc4/d0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/q;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lc4/q;->d:Ls3/w;

    return-void
.end method
