.class public final Lc4/t;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lc4/d0;


# instance fields
.field public final a:Lc4/j;

.field public final b:Lm5/v;

.field public c:I

.field public d:I

.field public e:Lm5/d0;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lc4/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/t;->a:Lc4/j;

    .line 3
    new-instance p1, Lm5/v;

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 4
    invoke-direct {p1, v1, v0}, Lm5/v;-><init>([BI)V

    .line 5
    iput-object p1, p0, Lc4/t;->b:Lm5/v;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc4/t;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc4/t;->c:I

    .line 2
    iput v0, p0, Lc4/t;->d:I

    .line 3
    iput-boolean v0, p0, Lc4/t;->h:Z

    .line 4
    iget-object v0, p0, Lc4/t;->a:Lc4/j;

    invoke-interface {v0}, Lc4/j;->a()V

    return-void
.end method

.method public final b(Lm5/d0;Ls3/j;Lc4/d0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc4/t;->e:Lm5/d0;

    .line 2
    iget-object p1, p0, Lc4/t;->a:Lc4/j;

    invoke-interface {p1, p2, p3}, Lc4/j;->f(Ls3/j;Lc4/d0$d;)V

    return-void
.end method

.method public final c(Lm5/w;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc4/t;->e:Lm5/d0;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const-string v1, "PesReader"

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lc4/t;->c:I

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    .line 3
    iget v0, p0, Lc4/t;->j:I

    if-eq v0, v2, :cond_0

    const-string v0, "Unexpected start indicator: expected "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget v6, p0, Lc4/t;->j:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " more bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lc4/t;->a:Lc4/j;

    invoke-interface {v0}, Lc4/j;->d()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 8
    invoke-static {v1, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Lc4/t;->e(I)V

    .line 10
    :cond_4
    :goto_1
    iget v0, p1, Lm5/w;->c:I

    iget v6, p1, Lm5/w;->b:I

    sub-int v7, v0, v6

    if-lez v7, :cond_13

    .line 11
    iget v7, p0, Lc4/t;->c:I

    if-eqz v7, :cond_12

    const/4 v8, 0x0

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_8

    if-ne v7, v3, :cond_7

    sub-int/2addr v0, v6

    .line 12
    iget v7, p0, Lc4/t;->j:I

    if-ne v7, v2, :cond_5

    goto :goto_2

    :cond_5
    sub-int v8, v0, v7

    :goto_2
    if-lez v8, :cond_6

    sub-int/2addr v0, v8

    add-int/2addr v6, v0

    .line 13
    invoke-virtual {p1, v6}, Lm5/w;->C(I)V

    .line 14
    :cond_6
    iget-object v6, p0, Lc4/t;->a:Lc4/j;

    invoke-interface {v6, p1}, Lc4/j;->c(Lm5/w;)V

    .line 15
    iget v6, p0, Lc4/t;->j:I

    if-eq v6, v2, :cond_4

    sub-int/2addr v6, v0

    .line 16
    iput v6, p0, Lc4/t;->j:I

    if-nez v6, :cond_4

    .line 17
    iget-object v0, p0, Lc4/t;->a:Lc4/j;

    invoke-interface {v0}, Lc4/j;->d()V

    .line 18
    invoke-virtual {p0, v5}, Lc4/t;->e(I)V

    goto :goto_1

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    const/16 v0, 0xa

    .line 20
    iget v2, p0, Lc4/t;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 21
    iget-object v2, p0, Lc4/t;->b:Lm5/v;

    iget-object v2, v2, Lm5/v;->a:[B

    invoke-virtual {p0, p1, v2, v0}, Lc4/t;->d(Lm5/w;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iget v2, p0, Lc4/t;->i:I

    .line 22
    invoke-virtual {p0, p1, v0, v2}, Lc4/t;->d(Lm5/w;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v8}, Lm5/v;->k(I)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    iput-wide v6, p0, Lc4/t;->l:J

    .line 25
    iget-boolean v0, p0, Lc4/t;->f:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v2}, Lm5/v;->m(I)V

    .line 27
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v3}, Lm5/v;->g(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    .line 28
    iget-object v3, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v3, v5}, Lm5/v;->m(I)V

    .line 29
    iget-object v3, p0, Lc4/t;->b:Lm5/v;

    const/16 v9, 0xf

    invoke-virtual {v3, v9}, Lm5/v;->g(I)I

    move-result v3

    shl-int/2addr v3, v9

    int-to-long v10, v3

    or-long/2addr v6, v10

    .line 30
    iget-object v3, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v3, v5}, Lm5/v;->m(I)V

    .line 31
    iget-object v3, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v3, v9}, Lm5/v;->g(I)I

    move-result v3

    int-to-long v10, v3

    or-long/2addr v6, v10

    .line 32
    iget-object v3, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v3, v5}, Lm5/v;->m(I)V

    .line 33
    iget-boolean v3, p0, Lc4/t;->h:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lc4/t;->g:Z

    if-eqz v3, :cond_9

    .line 34
    iget-object v3, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v3, v2}, Lm5/v;->m(I)V

    .line 35
    iget-object v2, p0, Lc4/t;->b:Lm5/v;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lm5/v;->g(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v0

    .line 36
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v5}, Lm5/v;->m(I)V

    .line 37
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v9}, Lm5/v;->g(I)I

    move-result v0

    shl-int/2addr v0, v9

    int-to-long v10, v0

    or-long/2addr v2, v10

    .line 38
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v5}, Lm5/v;->m(I)V

    .line 39
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v9}, Lm5/v;->g(I)I

    move-result v0

    int-to-long v9, v0

    or-long/2addr v2, v9

    .line 40
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v5}, Lm5/v;->m(I)V

    .line 41
    iget-object v0, p0, Lc4/t;->e:Lm5/d0;

    invoke-virtual {v0, v2, v3}, Lm5/d0;->b(J)J

    .line 42
    iput-boolean v5, p0, Lc4/t;->h:Z

    .line 43
    :cond_9
    iget-object v0, p0, Lc4/t;->e:Lm5/d0;

    invoke-virtual {v0, v6, v7}, Lm5/d0;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lc4/t;->l:J

    .line 44
    :cond_a
    iget-boolean v0, p0, Lc4/t;->k:Z

    if-eqz v0, :cond_b

    const/4 v8, 0x4

    :cond_b
    or-int/2addr p2, v8

    .line 45
    iget-object v0, p0, Lc4/t;->a:Lc4/j;

    iget-wide v2, p0, Lc4/t;->l:J

    invoke-interface {v0, v2, v3, p2}, Lc4/j;->e(JI)V

    const/4 v3, 0x3

    .line 46
    invoke-virtual {p0, v3}, Lc4/t;->e(I)V

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 47
    :cond_c
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    iget-object v0, v0, Lm5/v;->a:[B

    const/16 v2, 0x9

    invoke-virtual {p0, p1, v0, v2}, Lc4/t;->d(Lm5/w;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v0, v8}, Lm5/v;->k(I)V

    .line 49
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lm5/v;->g(I)I

    move-result v0

    if-eq v0, v5, :cond_d

    const-string v2, "Unexpected start code prefix: "

    .line 50
    invoke-static {v2, v0, v1}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lc4/t;->j:I

    move v2, v8

    goto :goto_4

    .line 52
    :cond_d
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lm5/v;->m(I)V

    .line 53
    iget-object v0, p0, Lc4/t;->b:Lm5/v;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lm5/v;->g(I)I

    move-result v0

    .line 54
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lm5/v;->m(I)V

    .line 55
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v6}, Lm5/v;->f()Z

    move-result v6

    iput-boolean v6, p0, Lc4/t;->k:Z

    .line 56
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v6, v4}, Lm5/v;->m(I)V

    .line 57
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v6}, Lm5/v;->f()Z

    move-result v6

    iput-boolean v6, p0, Lc4/t;->f:Z

    .line 58
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v6}, Lm5/v;->f()Z

    move-result v6

    iput-boolean v6, p0, Lc4/t;->g:Z

    .line 59
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lm5/v;->m(I)V

    .line 60
    iget-object v6, p0, Lc4/t;->b:Lm5/v;

    invoke-virtual {v6, v2}, Lm5/v;->g(I)I

    move-result v2

    iput v2, p0, Lc4/t;->i:I

    if-nez v0, :cond_e

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lc4/t;->j:I

    goto :goto_3

    :cond_e
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v2

    .line 62
    iput v0, p0, Lc4/t;->j:I

    if-gez v0, :cond_f

    const-string v0, "Found negative packet payload size: "

    .line 63
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget v2, p0, Lc4/t;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lc4/t;->j:I

    goto :goto_3

    :cond_f
    const/4 v0, -0x1

    :goto_3
    move v2, v5

    :goto_4
    if-eqz v2, :cond_10

    move v8, v4

    .line 66
    :cond_10
    invoke-virtual {p0, v8}, Lc4/t;->e(I)V

    goto :goto_5

    :cond_11
    const/4 v0, -0x1

    :goto_5
    move v2, v0

    goto/16 :goto_1

    :cond_12
    sub-int/2addr v0, v6

    .line 67
    invoke-virtual {p1, v0}, Lm5/w;->E(I)V

    goto/16 :goto_1

    :cond_13
    return-void
.end method

.method public final d(Lm5/w;[BI)Z
    .locals 3

    .line 1
    iget v0, p1, Lm5/w;->c:I

    iget v1, p1, Lm5/w;->b:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Lc4/t;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lm5/w;->E(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget v2, p0, Lc4/t;->d:I

    invoke-virtual {p1, p2, v2, v0}, Lm5/w;->d([BII)V

    .line 5
    :goto_0
    iget p1, p0, Lc4/t;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lc4/t;->d:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc4/t;->c:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc4/t;->d:I

    return-void
.end method
