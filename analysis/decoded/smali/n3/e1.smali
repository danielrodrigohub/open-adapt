.class public final Ln3/e1;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field public final a:Ln3/b2$b;

.field public final b:Ln3/b2$d;

.field public final c:Lo3/a;

.field public final d:Landroid/os/Handler;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Ln3/b1;

.field public i:Ln3/b1;

.field public j:Ln3/b1;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:J


# direct methods
.method public constructor <init>(Lo3/a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e1;->c:Lo3/a;

    .line 3
    iput-object p2, p0, Ln3/e1;->d:Landroid/os/Handler;

    .line 4
    new-instance p1, Ln3/b2$b;

    invoke-direct {p1}, Ln3/b2$b;-><init>()V

    iput-object p1, p0, Ln3/e1;->a:Ln3/b2$b;

    .line 5
    new-instance p1, Ln3/b2$d;

    invoke-direct {p1}, Ln3/b2$d;-><init>()V

    iput-object p1, p0, Ln3/e1;->b:Ln3/b2$d;

    return-void
.end method

.method public static o(Ln3/b2;Ljava/lang/Object;JJLn3/b2$d;Ln3/b2$b;)Lp4/x$b;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p7}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 2
    iget v0, p7, Ln3/b2$b;->j:I

    invoke-virtual {p0, v0, p6}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 3
    invoke-virtual {p0, p1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    .line 4
    :goto_0
    iget-wide v3, p7, Ln3/b2$b;->k:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p7, Ln3/b2$b;->n:Lq4/a;

    iget v3, p1, Lq4/a;->i:I

    if-lez v3, :cond_0

    .line 6
    iget p1, p1, Lq4/a;->l:I

    .line 7
    invoke-virtual {p7, p1}, Ln3/b2$b;->h(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p7, v5, v6}, Ln3/b2$b;->d(J)I

    move-result p1

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, v0, 0x1

    iget v3, p6, Ln3/b2$d;->w:I

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, p7, v0}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    .line 10
    iget-object v2, p7, Ln3/b2$b;->i:Ljava/lang/Object;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v2, p7}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 13
    invoke-virtual {p7, p2, p3}, Ln3/b2$b;->d(J)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 14
    invoke-virtual {p7, p2, p3}, Ln3/b2$b;->c(J)I

    move-result p0

    .line 15
    new-instance p1, Lp4/x$b;

    invoke-direct {p1, v2, p4, p5, p0}, Lp4/x$b;-><init>(Ljava/lang/Object;JI)V

    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p7, v3}, Ln3/b2$b;->g(I)I

    move-result v4

    .line 17
    new-instance p0, Lp4/x$b;

    move-object v1, p0

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lp4/x$b;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method


# virtual methods
.method public final a()Ln3/b1;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e1;->h:Ln3/b1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Ln3/e1;->i:Ln3/b1;

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v2, v0, Ln3/b1;->l:Ln3/b1;

    .line 4
    iput-object v2, p0, Ln3/e1;->i:Ln3/b1;

    .line 5
    :cond_1
    invoke-virtual {v0}, Ln3/b1;->h()V

    .line 6
    iget v0, p0, Ln3/e1;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln3/e1;->k:I

    if-nez v0, :cond_2

    .line 7
    iput-object v1, p0, Ln3/e1;->j:Ln3/b1;

    .line 8
    iget-object v0, p0, Ln3/e1;->h:Ln3/b1;

    iget-object v1, v0, Ln3/b1;->b:Ljava/lang/Object;

    iput-object v1, p0, Ln3/e1;->l:Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v0, v0, Ln3/c1;->a:Lp4/x$b;

    iget-wide v0, v0, Lp4/w;->d:J

    iput-wide v0, p0, Ln3/e1;->m:J

    .line 10
    :cond_2
    iget-object v0, p0, Ln3/e1;->h:Ln3/b1;

    .line 11
    iget-object v0, v0, Ln3/b1;->l:Ln3/b1;

    .line 12
    iput-object v0, p0, Ln3/e1;->h:Ln3/b1;

    .line 13
    invoke-virtual {p0}, Ln3/e1;->l()V

    .line 14
    iget-object v0, p0, Ln3/e1;->h:Ln3/b1;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Ln3/e1;->k:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e1;->h:Ln3/b1;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Ln3/b1;->b:Ljava/lang/Object;

    iput-object v1, p0, Ln3/e1;->l:Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v1, v1, Ln3/c1;->a:Lp4/x$b;

    iget-wide v1, v1, Lp4/w;->d:J

    iput-wide v1, p0, Ln3/e1;->m:J

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ln3/b1;->h()V

    .line 6
    iget-object v0, v0, Ln3/b1;->l:Ln3/b1;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln3/e1;->h:Ln3/b1;

    .line 8
    iput-object v0, p0, Ln3/e1;->j:Ln3/b1;

    .line 9
    iput-object v0, p0, Ln3/e1;->i:Ln3/b1;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Ln3/e1;->k:I

    .line 11
    invoke-virtual {p0}, Ln3/e1;->l()V

    return-void
.end method

.method public final c(Ln3/b2;Ln3/b1;J)Ln3/c1;
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v11, v10, Ln3/b1;->f:Ln3/c1;

    .line 2
    iget-wide v0, v10, Ln3/b1;->o:J

    .line 3
    iget-wide v2, v11, Ln3/c1;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 4
    iget-boolean v0, v11, Ln3/c1;->g:Z

    const/4 v13, -0x1

    const/4 v14, 0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v11, Ln3/c1;->a:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    .line 6
    iget-object v2, v9, Ln3/e1;->a:Ln3/b2$b;

    iget-object v3, v9, Ln3/e1;->b:Ln3/b2$d;

    iget v0, v9, Ln3/e1;->f:I

    iget-boolean v5, v9, Ln3/e1;->g:Z

    move v4, v0

    move-object/from16 v0, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Ln3/b2;->f(ILn3/b2$b;Ln3/b2$d;IZ)I

    move-result v0

    if-ne v0, v13, :cond_0

    return-object v17

    .line 8
    :cond_0
    iget-object v1, v9, Ln3/e1;->a:Ln3/b2$b;

    .line 9
    invoke-virtual {v8, v0, v1, v14}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v1

    iget v3, v1, Ln3/b2$b;->j:I

    .line 10
    iget-object v1, v9, Ln3/e1;->a:Ln3/b2$b;

    iget-object v1, v1, Ln3/b2$b;->i:Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, v11, Ln3/c1;->a:Lp4/x$b;

    iget-wide v4, v2, Lp4/w;->d:J

    .line 13
    iget-object v2, v9, Ln3/e1;->b:Ln3/b2$d;

    invoke-virtual {v8, v3, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v2

    iget v2, v2, Ln3/b2$d;->v:I

    if-ne v2, v0, :cond_3

    .line 14
    iget-object v1, v9, Ln3/e1;->b:Ln3/b2$d;

    iget-object v2, v9, Ln3/e1;->a:Ln3/b2$b;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    .line 15
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 16
    invoke-virtual/range {v0 .. v7}, Ln3/b2;->m(Ln3/b2$d;Ln3/b2$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v17

    .line 17
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 19
    iget-object v0, v10, Ln3/b1;->l:Ln3/b1;

    if-eqz v0, :cond_2

    .line 20
    iget-object v2, v0, Ln3/b1;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v0, v0, Ln3/c1;->a:Lp4/x$b;

    iget-wide v2, v0, Lp4/w;->d:J

    goto :goto_0

    .line 22
    :cond_2
    iget-wide v2, v9, Ln3/e1;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, v9, Ln3/e1;->e:J

    :goto_0
    move-wide v12, v4

    move-wide/from16 v17, v15

    move-wide v4, v2

    goto :goto_1

    :cond_3
    const-wide/16 v12, 0x0

    move-wide/from16 v17, v12

    .line 23
    :goto_1
    iget-object v6, v9, Ln3/e1;->b:Ln3/b2$d;

    iget-object v7, v9, Ln3/e1;->a:Ln3/b2$b;

    move-object/from16 v0, p1

    move-wide v2, v12

    .line 24
    invoke-static/range {v0 .. v7}, Ln3/e1;->o(Ln3/b2;Ljava/lang/Object;JJLn3/b2$d;Ln3/b2$b;)Lp4/x$b;

    move-result-object v2

    cmp-long v0, v17, v15

    if-eqz v0, :cond_6

    .line 25
    iget-wide v0, v11, Ln3/c1;->c:J

    cmp-long v0, v0, v15

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, v11, Ln3/c1;->a:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-object v1, v9, Ln3/e1;->a:Ln3/b2$b;

    .line 27
    invoke-virtual {v8, v0, v1}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    .line 28
    iget-object v0, v0, Ln3/b2$b;->n:Lq4/a;

    iget v0, v0, Lq4/a;->i:I

    if-lez v0, :cond_4

    .line 29
    iget-object v0, v9, Ln3/e1;->a:Ln3/b2$b;

    .line 30
    iget-object v1, v0, Ln3/b2$b;->n:Lq4/a;

    iget v1, v1, Lq4/a;->l:I

    .line 31
    invoke-virtual {v0, v1}, Ln3/b2$b;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 32
    :goto_2
    invoke-virtual {v2}, Lp4/w;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v14, :cond_5

    .line 33
    iget-wide v0, v11, Ln3/c1;->c:J

    move-wide v3, v0

    move-wide v5, v12

    goto :goto_4

    :cond_5
    if-eqz v14, :cond_6

    .line 34
    iget-wide v0, v11, Ln3/c1;->c:J

    move-wide v5, v0

    goto :goto_3

    :cond_6
    move-wide v5, v12

    :goto_3
    move-wide/from16 v3, v17

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 35
    invoke-virtual/range {v0 .. v6}, Ln3/e1;->d(Ln3/b2;Lp4/x$b;JJ)Ln3/c1;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v13

    const-wide/16 v12, 0x0

    .line 36
    iget-object v10, v11, Ln3/c1;->a:Lp4/x$b;

    .line 37
    iget-object v1, v10, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, v9, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v8, v1, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 38
    invoke-virtual {v10}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 39
    iget v3, v10, Lp4/w;->b:I

    .line 40
    iget-object v1, v9, Ln3/e1;->a:Ln3/b2$b;

    .line 41
    iget-object v1, v1, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v1, v3}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v1

    iget v1, v1, Lq4/a$a;->i:I

    if-ne v1, v0, :cond_8

    return-object v17

    .line 42
    :cond_8
    iget-object v0, v9, Ln3/e1;->a:Ln3/b2$b;

    iget v2, v10, Lp4/w;->c:I

    .line 43
    iget-object v0, v0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, v3}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lq4/a$a;->b(I)I

    move-result v4

    if-ge v4, v1, :cond_9

    .line 44
    iget-object v2, v10, Lp4/w;->a:Ljava/lang/Object;

    iget-wide v5, v11, Ln3/c1;->c:J

    iget-wide v10, v10, Lp4/w;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Ln3/e1;->e(Ln3/b2;Ljava/lang/Object;IIJJ)Ln3/c1;

    move-result-object v0

    return-object v0

    .line 45
    :cond_9
    iget-wide v0, v11, Ln3/c1;->c:J

    cmp-long v2, v0, v15

    if-nez v2, :cond_b

    .line 46
    iget-object v1, v9, Ln3/e1;->b:Ln3/b2$d;

    iget-object v2, v9, Ln3/e1;->a:Ln3/b2$b;

    iget v3, v2, Ln3/b2$b;->j:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 48
    invoke-virtual/range {v0 .. v7}, Ln3/b2;->m(Ln3/b2$d;Ln3/b2$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v17

    .line 49
    :cond_a
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 50
    :cond_b
    iget-object v2, v10, Lp4/w;->a:Ljava/lang/Object;

    iget v3, v10, Lp4/w;->b:I

    .line 51
    invoke-virtual {v9, v8, v2, v3}, Ln3/e1;->g(Ln3/b2;Ljava/lang/Object;I)J

    move-result-wide v2

    .line 52
    iget-object v4, v10, Lp4/w;->a:Ljava/lang/Object;

    .line 53
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v11, v11, Ln3/c1;->c:J

    iget-wide v13, v10, Lp4/w;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v11

    move-wide v7, v13

    .line 54
    invoke-virtual/range {v0 .. v8}, Ln3/e1;->f(Ln3/b2;Ljava/lang/Object;JJJ)Ln3/c1;

    move-result-object v0

    return-object v0

    .line 55
    :cond_c
    iget-object v0, v9, Ln3/e1;->a:Ln3/b2$b;

    iget v1, v10, Lp4/w;->e:I

    invoke-virtual {v0, v1}, Ln3/b2$b;->g(I)I

    move-result v4

    .line 56
    iget-object v0, v9, Ln3/e1;->a:Ln3/b2$b;

    iget v1, v10, Lp4/w;->e:I

    .line 57
    invoke-virtual {v0, v1}, Ln3/b2$b;->h(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Ln3/e1;->a:Ln3/b2$b;

    iget v1, v10, Lp4/w;->e:I

    .line 58
    invoke-virtual {v0, v1, v4}, Ln3/b2$b;->f(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    move v12, v14

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    .line 59
    :goto_5
    iget-object v0, v9, Ln3/e1;->a:Ln3/b2$b;

    iget v1, v10, Lp4/w;->e:I

    .line 60
    iget-object v0, v0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, v1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v0

    iget v0, v0, Lq4/a$a;->i:I

    if-eq v4, v0, :cond_f

    if-eqz v12, :cond_e

    goto :goto_6

    .line 61
    :cond_e
    iget-object v2, v10, Lp4/w;->a:Ljava/lang/Object;

    iget v3, v10, Lp4/w;->e:I

    iget-wide v5, v11, Ln3/c1;->e:J

    iget-wide v10, v10, Lp4/w;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Ln3/e1;->e(Ln3/b2;Ljava/lang/Object;IIJJ)Ln3/c1;

    move-result-object v0

    return-object v0

    .line 62
    :cond_f
    :goto_6
    iget-object v0, v10, Lp4/w;->a:Ljava/lang/Object;

    iget v1, v10, Lp4/w;->e:I

    .line 63
    invoke-virtual {v9, v8, v0, v1}, Ln3/e1;->g(Ln3/b2;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 64
    iget-object v2, v10, Lp4/w;->a:Ljava/lang/Object;

    iget-wide v5, v11, Ln3/c1;->e:J

    iget-wide v10, v10, Lp4/w;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Ln3/e1;->f(Ln3/b2;Ljava/lang/Object;JJJ)Ln3/c1;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ln3/b2;Lp4/x$b;JJ)Ln3/c1;
    .locals 12

    move-object v0, p2

    .line 1
    iget-object v1, v0, Lp4/w;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Ln3/e1;->a:Ln3/b2$b;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 2
    invoke-virtual {p2}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v4, v0, Lp4/w;->a:Ljava/lang/Object;

    iget v5, v0, Lp4/w;->b:I

    iget v6, v0, Lp4/w;->c:I

    iget-wide v9, v0, Lp4/w;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Ln3/e1;->e(Ln3/b2;Ljava/lang/Object;IIJJ)Ln3/c1;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v4, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lp4/w;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Ln3/e1;->f(Ln3/b2;Ljava/lang/Object;JJJ)Ln3/c1;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ln3/b2;Ljava/lang/Object;IIJJ)Ln3/c1;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p3

    move/from16 v8, p4

    .line 1
    new-instance v9, Lp4/x$b;

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lp4/x$b;-><init>(Ljava/lang/Object;IIJ)V

    .line 2
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3
    invoke-virtual {v2, v3, v1}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v7, v8}, Ln3/b2$b;->b(II)J

    move-result-wide v10

    .line 5
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v1, v7}, Ln3/b2$b;->g(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v8, v1, :cond_0

    .line 6
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 7
    iget-object v1, v1, Ln3/b2$b;->n:Lq4/a;

    iget-wide v4, v1, Lq4/a;->j:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 8
    :goto_0
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 9
    invoke-virtual {v1, v7}, Ln3/b2$b;->h(I)Z

    move-result v12

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v10, v6

    if-eqz v1, :cond_1

    cmp-long v1, v4, v10

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    .line 10
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    move-wide v3, v4

    .line 11
    :goto_1
    new-instance v15, Ln3/c1;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v9

    move-wide/from16 v5, p5

    move-wide v9, v10

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Ln3/c1;-><init>(Lp4/x$b;JJJJZZZZ)V

    return-object v15
.end method

.method public final f(Ln3/b2;Ljava/lang/Object;JJJ)Ln3/c1;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v1, v2, v5}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 2
    iget-object v5, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v5, v3, v4}, Ln3/b2$b;->c(J)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    .line 3
    iget-object v9, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 4
    iget-object v10, v9, Ln3/b2$b;->n:Lq4/a;

    iget v11, v10, Lq4/a;->i:I

    if-lez v11, :cond_1

    .line 5
    iget v10, v10, Lq4/a;->l:I

    .line 6
    invoke-virtual {v9, v10}, Ln3/b2$b;->h(I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v9, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v9, v5}, Ln3/b2$b;->h(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 8
    invoke-virtual {v9, v5}, Ln3/b2$b;->e(I)J

    move-result-wide v9

    iget-object v11, v0, Ln3/e1;->a:Ln3/b2$b;

    iget-wide v12, v11, Ln3/b2$b;->k:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_1

    .line 9
    iget-object v9, v11, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v9, v5}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lq4/a$a;->c()Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v9, :cond_1

    move v5, v6

    :goto_0
    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 10
    :goto_1
    new-instance v11, Lp4/x$b;

    move-wide/from16 v12, p7

    invoke-direct {v11, v2, v12, v13, v5}, Lp4/x$b;-><init>(Ljava/lang/Object;JI)V

    .line 11
    invoke-virtual {v0, v11}, Ln3/e1;->i(Lp4/x$b;)Z

    move-result v2

    .line 12
    invoke-virtual {v0, v1, v11}, Ln3/e1;->k(Ln3/b2;Lp4/x$b;)Z

    move-result v22

    .line 13
    invoke-virtual {v0, v1, v11, v2}, Ln3/e1;->j(Ln3/b2;Lp4/x$b;Z)Z

    move-result v23

    if-eq v5, v6, :cond_2

    .line 14
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 15
    invoke-virtual {v1, v5}, Ln3/b2$b;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v20, v8

    goto :goto_2

    :cond_2
    move/from16 v20, v7

    :goto_2
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v6, :cond_3

    .line 16
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v1, v5}, Ln3/b2$b;->e(I)J

    move-result-wide v5

    :goto_3
    move-wide/from16 v16, v5

    goto :goto_4

    :cond_3
    if-eqz v9, :cond_4

    .line 17
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    iget-wide v5, v1, Ln3/b2$b;->k:J

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v12

    :goto_4
    cmp-long v1, v16, v12

    if-eqz v1, :cond_6

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v16, v5

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v18, v16

    goto :goto_6

    .line 18
    :cond_6
    :goto_5
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    iget-wide v5, v1, Ln3/b2$b;->k:J

    move-wide/from16 v18, v5

    :goto_6
    cmp-long v1, v18, v12

    if-eqz v1, :cond_9

    cmp-long v1, v3, v18

    if-ltz v1, :cond_9

    if-nez v23, :cond_7

    if-nez v9, :cond_8

    :cond_7
    move v7, v8

    :cond_8
    const-wide/16 v3, 0x0

    int-to-long v5, v7

    sub-long v5, v18, v5

    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_9
    move-wide v12, v3

    .line 20
    new-instance v1, Ln3/c1;

    move-object v10, v1

    move-wide/from16 v14, p5

    move/from16 v21, v2

    invoke-direct/range {v10 .. v23}, Ln3/c1;-><init>(Lp4/x$b;JJJJZZZZ)V

    return-object v1
.end method

.method public final g(Ln3/b2;Ljava/lang/Object;I)J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 2
    iget-object p1, p0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {p1, p3}, Ln3/b2$b;->e(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Ln3/e1;->a:Ln3/b2$b;

    iget-wide p1, p1, Ln3/b2$b;->k:J

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/e1;->a:Ln3/b2$b;

    .line 5
    iget-object v0, v0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, p3}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p3

    iget-wide v0, p3, Lq4/a$a;->m:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final h(Ln3/b2;Ln3/c1;)Ln3/c1;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Ln3/c1;->a:Lp4/x$b;

    .line 2
    invoke-virtual {v0, v3}, Ln3/e1;->i(Lp4/x$b;)Z

    move-result v12

    .line 3
    invoke-virtual {v0, v1, v3}, Ln3/e1;->k(Ln3/b2;Lp4/x$b;)Z

    move-result v13

    .line 4
    invoke-virtual {v0, v1, v3, v12}, Ln3/e1;->j(Ln3/b2;Lp4/x$b;Z)Z

    move-result v14

    .line 5
    iget-object v4, v2, Ln3/c1;->a:Lp4/x$b;

    iget-object v4, v4, Lp4/w;->a:Ljava/lang/Object;

    iget-object v5, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v1, v4, v5}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 6
    invoke-virtual {v3}, Lp4/w;->a()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lp4/w;->e:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v7, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {v7, v1}, Ln3/b2$b;->e(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    .line 8
    :goto_1
    invoke-virtual {v3}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    iget v5, v3, Lp4/w;->b:I

    iget v6, v3, Lp4/w;->c:I

    invoke-virtual {v1, v5, v6}, Ln3/b2$b;->b(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_4

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    .line 10
    :cond_4
    :goto_3
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 11
    iget-wide v5, v1, Ln3/b2$b;->k:J

    goto :goto_2

    .line 12
    :goto_4
    invoke-virtual {v3}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, v0, Ln3/e1;->a:Ln3/b2$b;

    iget v4, v3, Lp4/w;->b:I

    invoke-virtual {v1, v4}, Ln3/b2$b;->h(I)Z

    move-result v1

    :goto_5
    move v11, v1

    goto :goto_6

    .line 14
    :cond_5
    iget v1, v3, Lp4/w;->e:I

    if-eq v1, v4, :cond_6

    iget-object v4, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 15
    invoke-virtual {v4, v1}, Ln3/b2$b;->h(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 16
    :goto_6
    new-instance v15, Ln3/c1;

    iget-wide v4, v2, Ln3/c1;->b:J

    iget-wide v1, v2, Ln3/c1;->c:J

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Ln3/c1;-><init>(Lp4/x$b;JJJJZZZZ)V

    return-object v15
.end method

.method public final i(Lp4/x$b;)Z
    .locals 1

    invoke-virtual {p1}, Lp4/w;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lp4/w;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j(Ln3/b2;Lp4/x$b;Z)Z
    .locals 8

    .line 1
    iget-object p2, p2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget-object p2, p0, Ln3/e1;->a:Ln3/b2$b;

    const/4 v6, 0x0

    .line 3
    invoke-virtual {p1, v1, p2, v6}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object p2

    .line 4
    iget p2, p2, Ln3/b2$b;->j:I

    .line 5
    iget-object v0, p0, Ln3/e1;->b:Ln3/b2$d;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object p2

    iget-boolean p2, p2, Ln3/b2$d;->p:Z

    const/4 v7, 0x1

    if-nez p2, :cond_1

    iget-object v2, p0, Ln3/e1;->a:Ln3/b2$b;

    iget-object v3, p0, Ln3/e1;->b:Ln3/b2$d;

    iget v4, p0, Ln3/e1;->f:I

    iget-boolean v5, p0, Ln3/e1;->g:Z

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Ln3/b2;->f(ILn3/b2$b;Ln3/b2$d;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    move p1, v7

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    move v6, v7

    :cond_1
    return v6
.end method

.method public final k(Ln3/b2;Lp4/x$b;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Ln3/e1;->i(Lp4/x$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p2, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {p1, v0, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    iget v0, v0, Ln3/b2$b;->j:I

    .line 3
    iget-object p2, p2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p2

    .line 4
    iget-object v2, p0, Ln3/e1;->b:Ln3/b2$d;

    invoke-virtual {p1, v0, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object p1

    iget p1, p1, Ln3/b2$d;->w:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final l()V
    .locals 4

    .line 1
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    .line 2
    new-instance v0, Lu6/v$a;

    invoke-direct {v0}, Lu6/v$a;-><init>()V

    .line 3
    iget-object v1, p0, Ln3/e1;->h:Ln3/b1;

    :goto_0
    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v2, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {v0, v2}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    .line 5
    iget-object v1, v1, Ln3/b1;->l:Ln3/b1;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Ln3/e1;->i:Ln3/b1;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Ln3/b1;->f:Ln3/c1;

    iget-object v1, v1, Ln3/c1;->a:Lp4/x$b;

    .line 7
    :goto_1
    iget-object v2, p0, Ln3/e1;->d:Landroid/os/Handler;

    new-instance v3, Ln3/d1;

    invoke-direct {v3, p0, v0, v1}, Ln3/d1;-><init>(Ln3/e1;Lu6/v$a;Lp4/x$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e1;->j:Ln3/b1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b1;->g()Z

    move-result v1

    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 3
    iget-boolean v1, v0, Ln3/b1;->d:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Ln3/b1;->a:Lp4/v;

    .line 5
    iget-wide v2, v0, Ln3/b1;->o:J

    sub-long/2addr p1, v2

    .line 6
    invoke-interface {v1, p1, p2}, Lp4/v;->g(J)V

    :cond_0
    return-void
.end method

.method public final n(Ln3/b1;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 2
    iget-object v2, p0, Ln3/e1;->j:Ln3/b1;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 3
    :cond_1
    iput-object p1, p0, Ln3/e1;->j:Ln3/b1;

    .line 4
    :goto_1
    iget-object p1, p1, Ln3/b1;->l:Ln3/b1;

    if-eqz p1, :cond_3

    .line 5
    iget-object v2, p0, Ln3/e1;->i:Ln3/b1;

    if-ne p1, v2, :cond_2

    .line 6
    iget-object v1, p0, Ln3/e1;->h:Ln3/b1;

    iput-object v1, p0, Ln3/e1;->i:Ln3/b1;

    move v1, v0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ln3/b1;->h()V

    .line 8
    iget v2, p0, Ln3/e1;->k:I

    sub-int/2addr v2, v0

    iput v2, p0, Ln3/e1;->k:I

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Ln3/e1;->j:Ln3/b1;

    const/4 v0, 0x0

    .line 10
    iget-object v2, p1, Ln3/b1;->l:Ln3/b1;

    if-nez v2, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Ln3/b1;->b()V

    .line 12
    iput-object v0, p1, Ln3/b1;->l:Ln3/b1;

    .line 13
    invoke-virtual {p1}, Ln3/b1;->c()V

    .line 14
    :goto_2
    invoke-virtual {p0}, Ln3/e1;->l()V

    return v1
.end method

.method public final p(Ln3/b2;Ljava/lang/Object;J)Lp4/x$b;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    iget-object v3, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {p1, p2, v3}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v3

    iget v3, v3, Ln3/b2$b;->j:I

    .line 2
    iget-object v4, v0, Ln3/e1;->l:Ljava/lang/Object;

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1, v4}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 4
    iget-object v7, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 5
    invoke-virtual {p1, v4, v7, v6}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v4

    .line 6
    iget v4, v4, Ln3/b2$b;->j:I

    if-ne v4, v3, :cond_1

    .line 7
    iget-wide v3, v0, Ln3/e1;->m:J

    :cond_0
    :goto_0
    move-wide v7, v3

    goto :goto_3

    .line 8
    :cond_1
    iget-object v4, v0, Ln3/e1;->h:Ln3/b1;

    :goto_1
    if-eqz v4, :cond_3

    .line 9
    iget-object v7, v4, Ln3/b1;->b:Ljava/lang/Object;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    iget-object v3, v4, Ln3/b1;->f:Ln3/c1;

    iget-object v3, v3, Ln3/c1;->a:Lp4/x$b;

    iget-wide v3, v3, Lp4/w;->d:J

    goto :goto_0

    .line 11
    :cond_2
    iget-object v4, v4, Ln3/b1;->l:Ln3/b1;

    goto :goto_1

    .line 12
    :cond_3
    iget-object v4, v0, Ln3/e1;->h:Ln3/b1;

    :goto_2
    if-eqz v4, :cond_5

    .line 13
    iget-object v7, v4, Ln3/b1;->b:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v5, :cond_4

    .line 14
    iget-object v8, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 15
    invoke-virtual {p1, v7, v8, v6}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v7

    .line 16
    iget v7, v7, Ln3/b2$b;->j:I

    if-ne v7, v3, :cond_4

    .line 17
    iget-object v3, v4, Ln3/b1;->f:Ln3/c1;

    iget-object v3, v3, Ln3/c1;->a:Lp4/x$b;

    iget-wide v3, v3, Lp4/w;->d:J

    goto :goto_0

    .line 18
    :cond_4
    iget-object v4, v4, Ln3/b1;->l:Ln3/b1;

    goto :goto_2

    .line 19
    :cond_5
    iget-wide v3, v0, Ln3/e1;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, v0, Ln3/e1;->e:J

    .line 20
    iget-object v7, v0, Ln3/e1;->h:Ln3/b1;

    if-nez v7, :cond_0

    .line 21
    iput-object v2, v0, Ln3/e1;->l:Ljava/lang/Object;

    .line 22
    iput-wide v3, v0, Ln3/e1;->m:J

    goto :goto_0

    .line 23
    :goto_3
    iget-object v3, v0, Ln3/e1;->a:Ln3/b2$b;

    invoke-virtual {p1, p2, v3}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 24
    iget-object v3, v0, Ln3/e1;->a:Ln3/b2$b;

    iget v3, v3, Ln3/b2$b;->j:I

    iget-object v4, v0, Ln3/e1;->b:Ln3/b2$d;

    invoke-virtual {p1, v3, v4}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 25
    invoke-virtual {p1, p2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v3

    move v4, v6

    :goto_4
    iget-object v9, v0, Ln3/e1;->b:Ln3/b2$d;

    iget v9, v9, Ln3/b2$d;->v:I

    if-lt v3, v9, :cond_9

    .line 26
    iget-object v9, v0, Ln3/e1;->a:Ln3/b2$b;

    const/4 v10, 0x1

    invoke-virtual {p1, v3, v9, v10}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    .line 27
    iget-object v9, v0, Ln3/e1;->a:Ln3/b2$b;

    .line 28
    iget-object v11, v9, Ln3/b2$b;->n:Lq4/a;

    iget v11, v11, Lq4/a;->i:I

    if-lez v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, v6

    :goto_5
    or-int/2addr v4, v10

    .line 29
    iget-wide v11, v9, Ln3/b2$b;->k:J

    invoke-virtual {v9, v11, v12}, Ln3/b2$b;->d(J)I

    move-result v9

    if-eq v9, v5, :cond_7

    .line 30
    iget-object v2, v0, Ln3/e1;->a:Ln3/b2$b;

    iget-object v2, v2, Ln3/b2$b;->i:Ljava/lang/Object;

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v10, :cond_9

    .line 32
    iget-object v9, v0, Ln3/e1;->a:Ln3/b2$b;

    iget-wide v9, v9, Ln3/b2$b;->k:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 33
    :cond_9
    :goto_6
    iget-object v9, v0, Ln3/e1;->b:Ln3/b2$d;

    iget-object v10, v0, Ln3/e1;->a:Ln3/b2$b;

    move-object v1, p1

    move-wide/from16 v3, p3

    move-wide v5, v7

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Ln3/e1;->o(Ln3/b2;Ljava/lang/Object;JJLn3/b2$d;Ln3/b2$b;)Lp4/x$b;

    move-result-object v1

    return-object v1
.end method

.method public final q(Ln3/b2;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e1;->h:Ln3/b1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, v0, Ln3/b1;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Ln3/e1;->a:Ln3/b2$b;

    iget-object v5, p0, Ln3/e1;->b:Ln3/b2$d;

    iget v6, p0, Ln3/e1;->f:I

    iget-boolean v7, p0, Ln3/e1;->g:Z

    move-object v2, p1

    .line 4
    invoke-virtual/range {v2 .. v7}, Ln3/b2;->f(ILn3/b2$b;Ln3/b2$d;IZ)I

    move-result v3

    .line 5
    :goto_1
    iget-object v2, v0, Ln3/b1;->l:Ln3/b1;

    if-eqz v2, :cond_1

    .line 6
    iget-object v4, v0, Ln3/b1;->f:Ln3/c1;

    iget-boolean v4, v4, Ln3/c1;->g:Z

    if-nez v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, v2, Ln3/b1;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 8
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Ln3/e1;->n(Ln3/b1;)Z

    move-result v2

    .line 9
    iget-object v3, v0, Ln3/b1;->f:Ln3/c1;

    invoke-virtual {p0, p1, v3}, Ln3/e1;->h(Ln3/b2;Ln3/c1;)Ln3/c1;

    move-result-object p1

    iput-object p1, v0, Ln3/b1;->f:Ln3/c1;

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public final r(Ln3/b2;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ln3/e1;->h:Ln3/b1;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    .line 2
    iget-object v5, v2, Ln3/b1;->f:Ln3/c1;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v0, v1, v5}, Ln3/e1;->h(Ln3/b2;Ln3/c1;)Ln3/c1;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_3

    :cond_0
    move-wide/from16 v7, p2

    .line 4
    invoke-virtual {v0, v1, v3, v7, v8}, Ln3/e1;->c(Ln3/b2;Ln3/b1;J)Ln3/c1;

    move-result-object v9

    if-nez v9, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Ln3/e1;->n(Ln3/b1;)Z

    move-result v1

    :goto_1
    xor-int/2addr v1, v4

    return v1

    .line 6
    :cond_1
    iget-wide v10, v5, Ln3/c1;->b:J

    iget-wide v12, v9, Ln3/c1;->b:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    iget-object v10, v5, Ln3/c1;->a:Lp4/x$b;

    iget-object v11, v9, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {v10, v11}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v6

    :goto_2
    if-nez v10, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Ln3/e1;->n(Ln3/b1;)Z

    move-result v1

    goto :goto_1

    :cond_3
    move-object v3, v9

    .line 8
    :goto_3
    iget-wide v9, v5, Ln3/c1;->c:J

    .line 9
    invoke-virtual {v3, v9, v10}, Ln3/c1;->a(J)Ln3/c1;

    move-result-object v9

    iput-object v9, v2, Ln3/b1;->f:Ln3/c1;

    .line 10
    iget-wide v9, v5, Ln3/c1;->e:J

    iget-wide v11, v3, Ln3/c1;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v13

    if-eqz v5, :cond_5

    cmp-long v5, v9, v11

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v6

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v4

    :goto_5
    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v2}, Ln3/b1;->j()V

    .line 12
    iget-wide v7, v3, Ln3/c1;->e:J

    cmp-long v1, v7, v13

    if-nez v1, :cond_6

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_6

    .line 13
    :cond_6
    iget-wide v9, v2, Ln3/b1;->o:J

    add-long/2addr v7, v9

    .line 14
    :goto_6
    iget-object v1, v0, Ln3/e1;->i:Ln3/b1;

    if-ne v2, v1, :cond_8

    iget-object v1, v2, Ln3/b1;->f:Ln3/c1;

    iget-boolean v1, v1, Ln3/c1;->f:Z

    if-nez v1, :cond_8

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_7

    cmp-long v1, p4, v7

    if-ltz v1, :cond_8

    :cond_7
    move v1, v4

    goto :goto_7

    :cond_8
    move v1, v6

    .line 15
    :goto_7
    invoke-virtual {v0, v2}, Ln3/e1;->n(Ln3/b1;)Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    move v4, v6

    :goto_8
    return v4

    .line 16
    :cond_a
    iget-object v3, v2, Ln3/b1;->l:Ln3/b1;

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_0

    :cond_b
    return v4
.end method
