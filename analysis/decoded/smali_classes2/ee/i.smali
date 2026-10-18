.class public final Lee/i;
.super Ljava/lang/Object;
.source "-FileSystem.kt"


# direct methods
.method public static final a(Lxd/f;Lde/k;Lgd/f;Lde/a0;ZZLjd/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxd/f<",
            "-",
            "Lde/a0;",
            ">;",
            "Lde/k;",
            "Lgd/f<",
            "Lde/a0;",
            ">;",
            "Lde/a0;",
            "ZZ",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move-object/from16 v3, p6

    instance-of v4, v3, Lee/i$a;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lee/i$a;

    iget v5, v4, Lee/i$a;->p:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lee/i$a;->p:I

    goto :goto_0

    :cond_0
    new-instance v4, Lee/i$a;

    invoke-direct {v4, v3}, Lee/i$a;-><init>(Ljd/d;)V

    :goto_0
    iget-object v3, v4, Lee/i$a;->o:Ljava/lang/Object;

    sget-object v5, Lkd/a;->h:Lkd/a;

    .line 1
    iget v6, v4, Lee/i$a;->p:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v7, :cond_2

    if-ne v6, v10, :cond_1

    invoke-static {v3}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-boolean v0, v4, Lee/i$a;->n:Z

    iget-boolean v1, v4, Lee/i$a;->m:Z

    iget-object v2, v4, Lee/i$a;->l:Ljava/util/Iterator;

    iget-object v6, v4, Lee/i$a;->k:Lde/a0;

    iget-object v12, v4, Lee/i$a;->j:Lgd/f;

    iget-object v13, v4, Lee/i$a;->i:Lde/k;

    iget-object v14, v4, Lee/i$a;->h:Lxd/f;

    :try_start_0
    invoke-static {v3}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    iget-boolean v0, v4, Lee/i$a;->n:Z

    iget-boolean v1, v4, Lee/i$a;->m:Z

    iget-object v2, v4, Lee/i$a;->k:Lde/a0;

    iget-object v6, v4, Lee/i$a;->j:Lgd/f;

    iget-object v12, v4, Lee/i$a;->i:Lde/k;

    iget-object v13, v4, Lee/i$a;->h:Lxd/f;

    invoke-static {v3}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v17, v2

    move v2, v0

    move v0, v1

    move-object/from16 v1, v17

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ld3/e;->p(Ljava/lang/Object;)V

    if-nez v2, :cond_5

    .line 4
    iput-object v0, v4, Lee/i$a;->h:Lxd/f;

    move-object/from16 v3, p1

    iput-object v3, v4, Lee/i$a;->i:Lde/k;

    move-object/from16 v6, p2

    iput-object v6, v4, Lee/i$a;->j:Lgd/f;

    iput-object v1, v4, Lee/i$a;->k:Lde/a0;

    move/from16 v12, p4

    iput-boolean v12, v4, Lee/i$a;->m:Z

    iput-boolean v2, v4, Lee/i$a;->n:Z

    iput v11, v4, Lee/i$a;->p:I

    invoke-virtual {v0, v1, v4}, Lxd/f;->a(Ljava/lang/Object;Ljd/d;)V

    return-object v5

    :cond_5
    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v12, p4

    move-object v13, v0

    move v0, v12

    move-object v12, v3

    .line 5
    :goto_1
    invoke-virtual {v12, v1}, Lde/k;->listOrNull(Lde/a0;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6

    sget-object v3, Lgd/p;->h:Lgd/p;

    .line 6
    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v11

    if-eqz v14, :cond_f

    move-object v14, v1

    move v15, v8

    :goto_2
    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {v6, v14}, Lgd/f;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "symlink cycle at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    const-string v11, "path"

    .line 8
    invoke-static {v14, v11}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v12, v14}, Lde/k;->metadata(Lde/a0;)Lde/j;

    move-result-object v11

    .line 10
    iget-object v11, v11, Lde/j;->c:Lde/a0;

    if-nez v11, :cond_9

    move-object v10, v9

    goto :goto_4

    .line 11
    :cond_9
    invoke-virtual {v14}, Lde/a0;->i()Lde/a0;

    move-result-object v10

    invoke-static {v10}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 12
    invoke-static {v10, v11, v8}, Lee/l;->c(Lde/a0;Lde/a0;Z)Lde/a0;

    move-result-object v10

    :goto_4
    if-nez v10, :cond_e

    if-nez v0, :cond_a

    if-nez v15, :cond_f

    .line 13
    :cond_a
    invoke-virtual {v6, v14}, Lgd/f;->n(Ljava/lang/Object;)V

    .line 14
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v13

    move-object v13, v12

    move-object v12, v6

    move-object v6, v1

    move v1, v0

    move v0, v2

    move-object v2, v3

    :cond_b
    :goto_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/a0;

    if-eqz v0, :cond_c

    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    move v10, v8

    .line 15
    :goto_6
    iput-object v14, v4, Lee/i$a;->h:Lxd/f;

    iput-object v13, v4, Lee/i$a;->i:Lde/k;

    iput-object v12, v4, Lee/i$a;->j:Lgd/f;

    iput-object v6, v4, Lee/i$a;->k:Lde/a0;

    iput-object v2, v4, Lee/i$a;->l:Ljava/util/Iterator;

    iput-boolean v1, v4, Lee/i$a;->m:Z

    iput-boolean v0, v4, Lee/i$a;->n:Z

    iput v7, v4, Lee/i$a;->p:I

    move-object/from16 p0, v14

    move-object/from16 p1, v13

    move-object/from16 p2, v12

    move-object/from16 p3, v3

    move/from16 p4, v1

    move/from16 p5, v10

    move-object/from16 p6, v4

    invoke-static/range {p0 .. p6}, Lee/i;->a(Lxd/f;Lde/k;Lgd/f;Lde/a0;ZZLjd/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v5, :cond_b

    return-object v5

    .line 16
    :cond_d
    invoke-virtual {v12}, Lgd/f;->v()Ljava/lang/Object;

    move v2, v0

    move-object v1, v6

    move-object v13, v14

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v12, v6

    :goto_7
    invoke-virtual {v12}, Lgd/f;->v()Ljava/lang/Object;

    throw v0

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move-object v14, v10

    const/4 v10, 0x3

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_f
    :goto_8
    if-eqz v2, :cond_10

    .line 17
    iput-object v9, v4, Lee/i$a;->h:Lxd/f;

    iput-object v9, v4, Lee/i$a;->i:Lde/k;

    iput-object v9, v4, Lee/i$a;->j:Lgd/f;

    iput-object v9, v4, Lee/i$a;->k:Lde/a0;

    iput-object v9, v4, Lee/i$a;->l:Ljava/util/Iterator;

    const/4 v0, 0x3

    iput v0, v4, Lee/i$a;->p:I

    invoke-virtual {v13, v1, v4}, Lxd/f;->a(Ljava/lang/Object;Ljd/d;)V

    return-object v5

    .line 18
    :cond_10
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
