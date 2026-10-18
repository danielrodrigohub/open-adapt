.class public final Lc4/d;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lc4/j;


# instance fields
.field public final a:Lm5/v;

.field public final b:Lm5/w;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ls3/w;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Ln3/s0;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/v;

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 3
    invoke-direct {v0, v2, v1}, Lm5/v;-><init>([BI)V

    .line 4
    iput-object v0, p0, Lc4/d;->a:Lm5/v;

    .line 5
    new-instance v1, Lm5/w;

    iget-object v0, v0, Lm5/v;->a:[B

    invoke-direct {v1, v0}, Lm5/w;-><init>([B)V

    iput-object v1, p0, Lc4/d;->b:Lm5/w;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lc4/d;->f:I

    .line 7
    iput v0, p0, Lc4/d;->g:I

    .line 8
    iput-boolean v0, p0, Lc4/d;->h:Z

    .line 9
    iput-boolean v0, p0, Lc4/d;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v0, p0, Lc4/d;->m:J

    .line 11
    iput-object p1, p0, Lc4/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc4/d;->f:I

    .line 2
    iput v0, p0, Lc4/d;->g:I

    .line 3
    iput-boolean v0, p0, Lc4/d;->h:Z

    .line 4
    iput-boolean v0, p0, Lc4/d;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lc4/d;->m:J

    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lc4/d;->e:Ls3/w;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v0, p1, Lm5/w;->c:I

    iget v1, p1, Lm5/w;->b:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_f

    .line 3
    iget v1, p0, Lc4/d;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lc4/d;->l:I

    iget v2, p0, Lc4/d;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lc4/d;->e:Ls3/w;

    invoke-interface {v1, p1, v0}, Ls3/w;->f(Lm5/w;I)V

    .line 6
    iget v1, p0, Lc4/d;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lc4/d;->g:I

    .line 7
    iget v9, p0, Lc4/d;->l:I

    if-ne v1, v9, :cond_0

    .line 8
    iget-wide v6, p0, Lc4/d;->m:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v5, p0, Lc4/d;->e:Ls3/w;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 10
    iget-wide v0, p0, Lc4/d;->m:J

    iget-wide v2, p0, Lc4/d;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc4/d;->m:J

    .line 11
    :cond_2
    iput v4, p0, Lc4/d;->f:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lc4/d;->b:Lm5/w;

    .line 13
    iget-object v1, v1, Lm5/w;->a:[B

    .line 14
    iget v5, p0, Lc4/d;->g:I

    const/16 v6, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget v5, p0, Lc4/d;->g:I

    invoke-virtual {p1, v1, v5, v0}, Lm5/w;->d([BII)V

    .line 16
    iget v1, p0, Lc4/d;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lc4/d;->g:I

    if-ne v1, v6, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    .line 17
    iget-object v0, p0, Lc4/d;->a:Lm5/v;

    invoke-virtual {v0, v4}, Lm5/v;->k(I)V

    .line 18
    iget-object v0, p0, Lc4/d;->a:Lm5/v;

    invoke-static {v0}, Lp3/c;->b(Lm5/v;)Lp3/c$a;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lc4/d;->k:Ln3/s0;

    const-string v3, "audio/ac4"

    if-eqz v1, :cond_5

    iget v5, v1, Ln3/s0;->F:I

    if-ne v2, v5, :cond_5

    iget v5, v0, Lp3/c$a;->a:I

    iget v7, v1, Ln3/s0;->G:I

    if-ne v5, v7, :cond_5

    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 21
    :cond_5
    new-instance v1, Ln3/s0$a;

    invoke-direct {v1}, Ln3/s0$a;-><init>()V

    iget-object v5, p0, Lc4/d;->d:Ljava/lang/String;

    .line 22
    iput-object v5, v1, Ln3/s0$a;->a:Ljava/lang/String;

    .line 23
    iput-object v3, v1, Ln3/s0$a;->k:Ljava/lang/String;

    .line 24
    iput v2, v1, Ln3/s0$a;->x:I

    .line 25
    iget v3, v0, Lp3/c$a;->a:I

    .line 26
    iput v3, v1, Ln3/s0$a;->y:I

    .line 27
    iget-object v3, p0, Lc4/d;->c:Ljava/lang/String;

    .line 28
    iput-object v3, v1, Ln3/s0$a;->c:Ljava/lang/String;

    .line 29
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v1}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 30
    iput-object v3, p0, Lc4/d;->k:Ln3/s0;

    .line 31
    iget-object v1, p0, Lc4/d;->e:Ls3/w;

    invoke-interface {v1, v3}, Ls3/w;->b(Ln3/s0;)V

    .line 32
    :cond_6
    iget v1, v0, Lp3/c$a;->b:I

    iput v1, p0, Lc4/d;->l:I

    const-wide/32 v7, 0xf4240

    .line 33
    iget v0, v0, Lp3/c$a;->c:I

    int-to-long v0, v0

    mul-long/2addr v0, v7

    iget-object v3, p0, Lc4/d;->k:Ln3/s0;

    iget v3, v3, Ln3/s0;->G:I

    int-to-long v7, v3

    div-long/2addr v0, v7

    iput-wide v0, p0, Lc4/d;->j:J

    .line 34
    iget-object v0, p0, Lc4/d;->b:Lm5/w;

    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 35
    iget-object v0, p0, Lc4/d;->e:Ls3/w;

    iget-object v1, p0, Lc4/d;->b:Lm5/w;

    invoke-interface {v0, v1, v6}, Ls3/w;->f(Lm5/w;I)V

    .line 36
    iput v2, p0, Lc4/d;->f:I

    goto/16 :goto_0

    .line 37
    :cond_7
    :goto_2
    iget v0, p1, Lm5/w;->c:I

    iget v1, p1, Lm5/w;->b:I

    sub-int/2addr v0, v1

    const/16 v1, 0x41

    const/16 v5, 0x40

    if-lez v0, :cond_d

    .line 38
    iget-boolean v0, p0, Lc4/d;->h:Z

    const/16 v6, 0xac

    if-nez v0, :cond_9

    .line 39
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result v0

    if-ne v0, v6, :cond_8

    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lc4/d;->h:Z

    goto :goto_2

    .line 40
    :cond_9
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result v0

    if-ne v0, v6, :cond_a

    move v6, v3

    goto :goto_4

    :cond_a
    move v6, v4

    .line 41
    :goto_4
    iput-boolean v6, p0, Lc4/d;->h:Z

    if-eq v0, v5, :cond_b

    if-ne v0, v1, :cond_7

    :cond_b
    if-ne v0, v1, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v4

    .line 42
    :goto_5
    iput-boolean v0, p0, Lc4/d;->i:Z

    move v0, v3

    goto :goto_6

    :cond_d
    move v0, v4

    :goto_6
    if-eqz v0, :cond_0

    .line 43
    iput v3, p0, Lc4/d;->f:I

    .line 44
    iget-object v0, p0, Lc4/d;->b:Lm5/w;

    .line 45
    iget-object v0, v0, Lm5/w;->a:[B

    const/16 v6, -0x54

    .line 46
    aput-byte v6, v0, v4

    .line 47
    iget-boolean v4, p0, Lc4/d;->i:Z

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    move v1, v5

    :goto_7
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 48
    iput v2, p0, Lc4/d;->g:I

    goto/16 :goto_0

    :cond_f
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

    iput-wide p1, p0, Lc4/d;->m:J

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

    iput-object v0, p0, Lc4/d;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lc4/d;->e:Ls3/w;

    return-void
.end method
