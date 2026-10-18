.class public final Lwc/a;
.super Ljava/lang/Object;
.source "Coroutines.kt"


# direct methods
.method public static final a(Lwc/b;Lqd/l;Lqd/p;Ljd/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwc/b;",
            "Lqd/l<",
            "-",
            "Ljd/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lqd/p<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljd/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lwc/a$a;

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lwc/a$a;

    iget v4, v2, Lwc/a$a;->r:I

    and-int v5, v4, v3

    if-eqz v5, :cond_0

    sub-int/2addr v4, v3

    iput v4, v2, Lwc/a$a;->r:I

    goto :goto_0

    :cond_0
    new-instance v2, Lwc/a$a;

    invoke-direct {v2, v1}, Lwc/a$a;-><init>(Ljd/d;)V

    :goto_0
    iget-object v1, v2, Lwc/a$a;->q:Ljava/lang/Object;

    sget-object v3, Lkd/a;->h:Lkd/a;

    .line 1
    iget v4, v2, Lwc/a$a;->r:I

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    iget v0, v2, Lwc/a$a;->o:I

    iget v4, v2, Lwc/a$a;->n:I

    iget v5, v2, Lwc/a$a;->m:I

    iget-object v6, v2, Lwc/a$a;->k:Lrd/v;

    iget-object v7, v2, Lwc/a$a;->j:Lqd/p;

    iget-object v8, v2, Lwc/a$a;->i:Lqd/l;

    iget-object v9, v2, Lwc/a$a;->h:Lwc/b;

    invoke-static {v1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v0, v2, Lwc/a$a;->p:I

    iget v4, v2, Lwc/a$a;->o:I

    iget v6, v2, Lwc/a$a;->n:I

    iget v7, v2, Lwc/a$a;->m:I

    iget-object v8, v2, Lwc/a$a;->k:Lrd/v;

    iget-object v10, v2, Lwc/a$a;->j:Lqd/p;

    iget-object v11, v2, Lwc/a$a;->i:Lqd/l;

    iget-object v12, v2, Lwc/a$a;->h:Lwc/b;

    invoke-static {v1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v1, v5

    move v5, v7

    move-object v7, v10

    goto/16 :goto_6

    :cond_3
    iget v4, v2, Lwc/a$a;->p:I

    iget v6, v2, Lwc/a$a;->o:I

    iget v8, v2, Lwc/a$a;->n:I

    iget v10, v2, Lwc/a$a;->m:I

    iget-object v11, v2, Lwc/a$a;->k:Lrd/v;

    iget-object v12, v2, Lwc/a$a;->j:Lqd/p;

    iget-object v13, v2, Lwc/a$a;->i:Lqd/l;

    iget-object v14, v2, Lwc/a$a;->h:Lwc/b;

    :try_start_0
    invoke-static {v1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v13

    move v13, v4

    goto/16 :goto_4

    :cond_4
    invoke-static {v1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget v1, v0, Lwc/b;->a:I

    if-ne v1, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v1, 0x1

    .line 5
    :goto_1
    new-instance v1, Lrd/v;

    invoke-direct {v1}, Lrd/v;-><init>()V

    .line 6
    iget-wide v10, v0, Lwc/b;->b:J

    .line 7
    iput-wide v10, v1, Lrd/v;->h:J

    const/4 v4, 0x0

    move-object v12, v1

    move v11, v6

    move v8, v7

    move v10, v9

    move-object v1, v0

    move v9, v4

    move v7, v11

    move-object v4, v2

    move-object v6, v5

    move-object/from16 v2, p1

    move-object v5, v3

    move-object/from16 v3, p2

    :goto_2
    if-ge v9, v7, :cond_2c

    .line 8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 10
    :try_start_1
    iput-object v1, v4, Lwc/a$a;->h:Lwc/b;

    iput-object v2, v4, Lwc/a$a;->i:Lqd/l;

    iput-object v3, v4, Lwc/a$a;->j:Lqd/p;

    iput-object v12, v4, Lwc/a$a;->k:Lrd/v;

    iput-object v6, v4, Lwc/a$a;->l:Lfd/f$a;

    iput v11, v4, Lwc/a$a;->m:I

    iput v9, v4, Lwc/a$a;->n:I

    iput v7, v4, Lwc/a$a;->o:I

    iput v13, v4, Lwc/a$a;->p:I

    iput v10, v4, Lwc/a$a;->r:I

    invoke-interface {v2, v4}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v5, :cond_6

    return-object v5

    :cond_6
    :goto_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v14, v1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v20, v12

    move-object v12, v3

    move-object v3, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object/from16 v11, v20

    :goto_4
    invoke-static {v0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 12
    instance-of v15, v4, Ljava/util/concurrent/CancellationException;

    if-nez v15, :cond_8

    if-nez v12, :cond_7

    goto :goto_5

    .line 13
    :cond_7
    iput-object v14, v2, Lwc/a$a;->h:Lwc/b;

    iput-object v1, v2, Lwc/a$a;->i:Lqd/l;

    iput-object v12, v2, Lwc/a$a;->j:Lqd/p;

    iput-object v11, v2, Lwc/a$a;->k:Lrd/v;

    check-cast v0, Lfd/f$a;

    iput-object v0, v2, Lwc/a$a;->l:Lfd/f$a;

    iput v10, v2, Lwc/a$a;->m:I

    iput v8, v2, Lwc/a$a;->n:I

    iput v6, v2, Lwc/a$a;->o:I

    iput v13, v2, Lwc/a$a;->p:I

    iput v7, v2, Lwc/a$a;->r:I

    invoke-interface {v12, v4, v2}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    .line 14
    :cond_8
    throw v4

    :cond_9
    :goto_5
    move v4, v6

    move v6, v8

    move-object v8, v11

    move-object v7, v12

    move v0, v13

    move-object v12, v14

    move-object v11, v1

    move-object v1, v5

    move v5, v10

    :goto_6
    add-int/2addr v0, v9

    if-ge v0, v5, :cond_2b

    .line 15
    iget-wide v9, v8, Lrd/v;->h:J

    iput-object v12, v2, Lwc/a$a;->h:Lwc/b;

    iput-object v11, v2, Lwc/a$a;->i:Lqd/l;

    iput-object v7, v2, Lwc/a$a;->j:Lqd/p;

    iput-object v8, v2, Lwc/a$a;->k:Lrd/v;

    iput-object v1, v2, Lwc/a$a;->l:Lfd/f$a;

    iput v5, v2, Lwc/a$a;->m:I

    iput v6, v2, Lwc/a$a;->n:I

    iput v4, v2, Lwc/a$a;->o:I

    const/4 v0, 0x3

    iput v0, v2, Lwc/a$a;->r:I

    invoke-static {v9, v10, v2}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLjd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    move v0, v4

    move v4, v6

    move-object v6, v8

    move-object v8, v11

    move-object v9, v12

    .line 16
    :goto_7
    iget-wide v10, v6, Lrd/v;->h:J

    .line 17
    iget-wide v12, v9, Lwc/b;->d:D

    .line 18
    sget-object v1, Lzd/a;->i:Lzd/a$a;

    .line 19
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-string v14, "Cannot round NaN value."

    if-nez v1, :cond_2a

    const-wide v15, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v1, v12, v15

    if-lez v1, :cond_b

    const v1, 0x7fffffff

    :goto_8
    move/from16 p0, v0

    :goto_9
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    goto :goto_a

    :cond_b
    const-wide/high16 v15, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v1, v12, v15

    if-gez v1, :cond_c

    const/high16 v1, -0x80000000

    goto :goto_8

    :cond_c
    move/from16 p0, v0

    .line 20
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_9

    :goto_a
    int-to-double v2, v1

    cmpg-double v0, v2, v12

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_23

    .line 21
    invoke-static {v10, v11}, Lzd/a;->m(J)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v1, :cond_f

    if-lez v1, :cond_e

    goto :goto_c

    :cond_e
    const/4 v0, 0x1

    shr-long v1, v10, v0

    neg-long v1, v1

    long-to-int v3, v10

    and-int/2addr v3, v0

    shl-long v0, v1, v0

    int-to-long v2, v3

    add-long v10, v0, v2

    .line 22
    sget v0, Lzd/b;->a:I

    :goto_c
    move/from16 p3, v4

    move/from16 v17, v5

    goto/16 :goto_12

    .line 23
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v0, 0x1

    if-nez v1, :cond_11

    move/from16 p3, v4

    move/from16 v17, v5

    const-wide/16 v10, 0x0

    goto/16 :goto_12

    :cond_11
    shr-long v12, v10, v0

    int-to-long v14, v1

    mul-long v2, v12, v14

    .line 24
    invoke-static {v10, v11}, Lzd/a;->l(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 25
    new-instance v0, Lvd/h;

    const-wide/32 v10, -0x7fffffff

    move/from16 p3, v4

    move/from16 v17, v5

    const-wide/32 v4, 0x7fffffff

    invoke-direct {v0, v10, v11, v4, v5}, Lvd/h;-><init>(JJ)V

    invoke-virtual {v0, v12, v13}, Lvd/h;->n(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 26
    invoke-static {v2, v3}, Lc3/d;->l(J)J

    move-result-wide v10

    goto/16 :goto_12

    .line 27
    :cond_12
    div-long v4, v2, v14

    cmp-long v0, v4, v12

    if-nez v0, :cond_14

    .line 28
    new-instance v0, Lvd/h;

    const-wide v4, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v10, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v0, v4, v5, v10, v11}, Lvd/h;-><init>(JJ)V

    invoke-virtual {v0, v2, v3}, Lvd/h;->n(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 29
    invoke-static {v2, v3}, Lc3/d;->l(J)J

    move-result-wide v10

    goto/16 :goto_12

    :cond_13
    const v0, 0xf4240

    int-to-long v0, v0

    .line 30
    div-long/2addr v2, v0

    .line 31
    invoke-static {v2, v3}, Lc3/d;->k(J)J

    move-result-wide v10

    goto/16 :goto_12

    :cond_14
    const v0, 0xf4240

    int-to-long v2, v0

    .line 32
    div-long v4, v12, v2

    mul-long v10, v4, v2

    sub-long v10, v12, v10

    mul-long v18, v4, v14

    mul-long/2addr v10, v14

    .line 33
    div-long/2addr v10, v2

    add-long v10, v10, v18

    .line 34
    div-long v2, v18, v14

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    xor-long v2, v10, v18

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_16

    .line 35
    new-instance v0, Lvd/h;

    const-wide v1, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v0, v1, v2, v3, v4}, Lvd/h;-><init>(JJ)V

    invoke-static {v10, v11, v0}, Landroidx/activity/k;->b(JLvd/b;)J

    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Lc3/d;->k(J)J

    move-result-wide v10

    goto/16 :goto_12

    :cond_15
    const-wide/16 v4, 0x0

    :cond_16
    cmp-long v0, v12, v4

    if-gez v0, :cond_17

    const/4 v0, -0x1

    goto :goto_d

    :cond_17
    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    :goto_d
    if-gez v1, :cond_19

    const/4 v1, -0x1

    goto :goto_e

    :cond_19
    if-lez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    :goto_e
    mul-int/2addr v0, v1

    if-lez v0, :cond_1b

    .line 37
    sget-wide v10, Lzd/a;->j:J

    goto/16 :goto_12

    :cond_1b
    sget-wide v10, Lzd/a;->k:J

    goto/16 :goto_12

    :cond_1c
    move/from16 p3, v4

    move/from16 v17, v5

    .line 38
    div-long v4, v2, v14

    cmp-long v0, v4, v12

    if-nez v0, :cond_1d

    .line 39
    new-instance v0, Lvd/h;

    const-wide v4, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v10, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v0, v4, v5, v10, v11}, Lvd/h;-><init>(JJ)V

    invoke-static {v2, v3, v0}, Landroidx/activity/k;->b(JLvd/b;)J

    move-result-wide v0

    .line 40
    invoke-static {v0, v1}, Lc3/d;->k(J)J

    move-result-wide v10

    goto/16 :goto_12

    :cond_1d
    const-wide/16 v2, 0x0

    cmp-long v0, v12, v2

    if-gez v0, :cond_1e

    const/4 v0, -0x1

    goto :goto_f

    :cond_1e
    if-lez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    :goto_f
    if-gez v1, :cond_20

    const/4 v1, -0x1

    goto :goto_10

    :cond_20
    if-lez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_10

    :cond_21
    const/4 v1, 0x0

    :goto_10
    mul-int/2addr v0, v1

    if-lez v0, :cond_22

    .line 41
    sget-wide v10, Lzd/a;->j:J

    goto/16 :goto_12

    :cond_22
    sget-wide v10, Lzd/a;->k:J

    goto/16 :goto_12

    :cond_23
    move/from16 p3, v4

    move/from16 v17, v5

    .line 42
    invoke-static {v10, v11}, Lzd/a;->j(J)Lzd/c;

    move-result-object v0

    .line 43
    invoke-static {v10, v11, v0}, Lzd/a;->o(JLzd/c;)D

    move-result-wide v1

    mul-double/2addr v1, v12

    .line 44
    sget-object v3, Lzd/c;->i:Lzd/c;

    invoke-static {v1, v2, v0, v3}, Ld3/e;->e(DLzd/c;Lzd/c;)D

    move-result-wide v3

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_29

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 47
    new-instance v5, Lvd/h;

    const-wide v10, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v12, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v5, v10, v11, v12, v13}, Lvd/h;-><init>(JJ)V

    invoke-virtual {v5, v3, v4}, Lvd/h;->n(J)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 48
    invoke-static {v3, v4}, Lc3/d;->l(J)J

    move-result-wide v0

    :goto_11
    move-wide v10, v0

    goto :goto_12

    .line 49
    :cond_24
    sget-object v3, Lzd/c;->j:Lzd/c;

    invoke-static {v1, v2, v0, v3}, Ld3/e;->e(DLzd/c;Lzd/c;)D

    move-result-wide v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 51
    new-instance v2, Lvd/h;

    const-wide v3, -0x431bde82d7aL

    const-wide v10, 0x431bde82d7aL

    invoke-direct {v2, v3, v4, v10, v11}, Lvd/h;-><init>(JJ)V

    invoke-virtual {v2, v0, v1}, Lvd/h;->n(J)Z

    move-result v2

    if-eqz v2, :cond_25

    const v2, 0xf4240

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 52
    invoke-static {v0, v1}, Lc3/d;->l(J)J

    move-result-wide v0

    goto :goto_11

    .line 53
    :cond_25
    invoke-static {v0, v1}, Landroidx/activity/k;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lc3/d;->k(J)J

    move-result-wide v0

    goto :goto_11

    .line 54
    :goto_12
    new-instance v0, Lzd/a;

    invoke-direct {v0, v10, v11}, Lzd/a;-><init>(J)V

    .line 55
    iget-wide v1, v9, Lwc/b;->c:J

    .line 56
    new-instance v3, Lzd/a;

    invoke-direct {v3, v1, v2}, Lzd/a;-><init>(J)V

    .line 57
    invoke-virtual {v0, v3}, Lzd/a;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_26

    move-object v0, v3

    .line 58
    :cond_26
    iget-wide v0, v0, Lzd/a;->h:J

    .line 59
    iput-wide v0, v6, Lrd/v;->h:J

    const/4 v0, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v10, v0

    move-object v12, v6

    move-object v3, v7

    move-object v2, v8

    move-object v1, v9

    move/from16 v11, v17

    move/from16 v7, p0

    move/from16 v6, p3

    goto :goto_13

    .line 60
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration value cannot be NaN."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move v10, v9

    move-object v1, v12

    move-object v12, v8

    move/from16 v20, v4

    move-object v4, v2

    move-object v2, v11

    move v11, v5

    move-object v5, v3

    move-object v3, v7

    move/from16 v7, v20

    :goto_13
    add-int/lit8 v9, v6, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    goto/16 :goto_2

    .line 64
    :cond_2c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "runWithRetry failed after "

    const-string v2, " attempts"

    .line 65
    invoke-static {v1, v11, v2}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
