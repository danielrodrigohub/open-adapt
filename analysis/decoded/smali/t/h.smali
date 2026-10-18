.class public final Lt/h;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field public static a:Lt/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt/b$a;

    invoke-direct {v0}, Lt/b$a;-><init>()V

    sput-object v0, Lt/h;->a:Lt/b$a;

    return-void
.end method

.method public static a(Ls/d;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ls/d;->U:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aget v0, v0, v3

    .line 3
    iget-object v4, p0, Ls/d;->V:Ls/d;

    if-eqz v4, :cond_0

    .line 4
    check-cast v4, Ls/e;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 5
    iget-object v5, v4, Ls/d;->U:[I

    aget v5, v5, v1

    :cond_1
    if-eqz v4, :cond_2

    .line 6
    iget-object v4, v4, Ls/d;->U:[I

    aget v4, v4, v3

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v3, :cond_5

    .line 7
    invoke-virtual {p0}, Ls/d;->B()Z

    move-result v7

    if-nez v7, :cond_5

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_3

    iget v7, p0, Ls/d;->r:I

    if-nez v7, :cond_3

    iget v7, p0, Ls/d;->Y:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Ls/d;->u(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-ne v2, v5, :cond_4

    iget v2, p0, Ls/d;->r:I

    if-ne v2, v3, :cond_4

    .line 9
    invoke-virtual {p0}, Ls/d;->r()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ls/d;->v(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v3, :cond_8

    .line 10
    invoke-virtual {p0}, Ls/d;->C()Z

    move-result v7

    if-nez v7, :cond_8

    if-eq v0, v6, :cond_8

    if-ne v0, v5, :cond_6

    iget v6, p0, Ls/d;->s:I

    if-nez v6, :cond_6

    iget v6, p0, Ls/d;->Y:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_6

    .line 11
    invoke-virtual {p0, v3}, Ls/d;->u(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    if-ne v0, v5, :cond_7

    iget v0, p0, Ls/d;->s:I

    if-ne v0, v3, :cond_7

    .line 12
    invoke-virtual {p0}, Ls/d;->k()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ls/d;->v(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    .line 13
    :goto_4
    iget p0, p0, Ls/d;->Y:F

    cmpl-float p0, p0, v4

    if-lez p0, :cond_a

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public static b(ILs/d;Lt/b$b;Z)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1
    iget-boolean v3, v0, Ls/d;->m:Z

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v3, v0, Ls/e;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Ls/d;->A()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Lt/h;->a(Ls/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    new-instance v3, Lt/b$a;

    invoke-direct {v3}, Lt/b$a;-><init>()V

    .line 4
    invoke-static {v0, v1, v3}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 5
    :cond_1
    sget-object v3, Ls/c$a;->h:Ls/c$a;

    invoke-virtual {v0, v3}, Ls/d;->h(Ls/c$a;)Ls/c;

    move-result-object v3

    .line 6
    sget-object v5, Ls/c$a;->j:Ls/c$a;

    invoke-virtual {v0, v5}, Ls/d;->h(Ls/c$a;)Ls/c;

    move-result-object v5

    .line 7
    invoke-virtual {v3}, Ls/c;->c()I

    move-result v6

    .line 8
    invoke-virtual {v5}, Ls/c;->c()I

    move-result v7

    .line 9
    iget-object v8, v3, Ls/c;->a:Ljava/util/HashSet;

    const/4 v12, 0x3

    if-eqz v8, :cond_d

    .line 10
    iget-boolean v3, v3, Ls/c;->c:Z

    if-eqz v3, :cond_d

    .line 11
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls/c;

    .line 12
    iget-object v13, v8, Ls/c;->d:Ls/d;

    add-int/lit8 v14, p0, 0x1

    .line 13
    invoke-static {v13}, Lt/h;->a(Ls/d;)Z

    move-result v15

    .line 14
    invoke-virtual {v13}, Ls/d;->A()Z

    move-result v16

    if-eqz v16, :cond_3

    if-eqz v15, :cond_3

    .line 15
    new-instance v11, Lt/b$a;

    invoke-direct {v11}, Lt/b$a;-><init>()V

    .line 16
    invoke-static {v13, v1, v11}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 17
    :cond_3
    iget-object v11, v13, Ls/d;->J:Ls/c;

    if-ne v8, v11, :cond_4

    iget-object v9, v13, Ls/d;->L:Ls/c;

    iget-object v9, v9, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_4

    .line 18
    iget-boolean v9, v9, Ls/c;->c:Z

    if-nez v9, :cond_5

    .line 19
    :cond_4
    iget-object v9, v13, Ls/d;->L:Ls/c;

    if-ne v8, v9, :cond_6

    iget-object v9, v11, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_6

    .line 20
    iget-boolean v9, v9, Ls/c;->c:Z

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    move v9, v4

    .line 21
    :goto_1
    iget-object v11, v13, Ls/d;->U:[I

    aget v10, v11, v4

    if-ne v10, v12, :cond_9

    if-eqz v15, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    aget v8, v11, v4

    if-ne v8, v12, :cond_2

    .line 23
    iget v8, v13, Ls/d;->v:I

    if-ltz v8, :cond_2

    iget v8, v13, Ls/d;->u:I

    if-ltz v8, :cond_2

    .line 24
    iget v8, v13, Ls/d;->i0:I

    const/16 v10, 0x8

    if-eq v8, v10, :cond_8

    .line 25
    iget v8, v13, Ls/d;->r:I

    if-nez v8, :cond_2

    .line 26
    iget v8, v13, Ls/d;->Y:F

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-nez v8, :cond_2

    .line 27
    :cond_8
    invoke-virtual {v13}, Ls/d;->y()Z

    move-result v8

    if-nez v8, :cond_2

    .line 28
    iget-boolean v8, v13, Ls/d;->G:Z

    if-nez v8, :cond_2

    if-eqz v9, :cond_2

    .line 29
    invoke-virtual {v13}, Ls/d;->y()Z

    move-result v8

    if-nez v8, :cond_2

    .line 30
    invoke-static {v14, v0, v1, v13, v2}, Lt/h;->d(ILs/d;Lt/b$b;Ls/d;Z)V

    goto :goto_0

    .line 31
    :cond_9
    :goto_2
    invoke-virtual {v13}, Ls/d;->A()Z

    move-result v10

    if-eqz v10, :cond_a

    goto/16 :goto_0

    .line 32
    :cond_a
    iget-object v10, v13, Ls/d;->J:Ls/c;

    if-ne v8, v10, :cond_b

    iget-object v11, v13, Ls/d;->L:Ls/c;

    iget-object v11, v11, Ls/c;->f:Ls/c;

    if-nez v11, :cond_b

    .line 33
    invoke-virtual {v10}, Ls/c;->d()I

    move-result v8

    add-int/2addr v8, v6

    .line 34
    invoke-virtual {v13}, Ls/d;->r()I

    move-result v9

    add-int/2addr v9, v8

    .line 35
    invoke-virtual {v13, v8, v9}, Ls/d;->J(II)V

    .line 36
    invoke-static {v14, v13, v1, v2}, Lt/h;->b(ILs/d;Lt/b$b;Z)V

    goto/16 :goto_0

    .line 37
    :cond_b
    iget-object v11, v13, Ls/d;->L:Ls/c;

    if-ne v8, v11, :cond_c

    iget-object v8, v10, Ls/c;->f:Ls/c;

    if-nez v8, :cond_c

    .line 38
    invoke-virtual {v11}, Ls/c;->d()I

    move-result v8

    sub-int v8, v6, v8

    .line 39
    invoke-virtual {v13}, Ls/d;->r()I

    move-result v9

    sub-int v9, v8, v9

    .line 40
    invoke-virtual {v13, v9, v8}, Ls/d;->J(II)V

    .line 41
    invoke-static {v14, v13, v1, v2}, Lt/h;->b(ILs/d;Lt/b$b;Z)V

    goto/16 :goto_0

    :cond_c
    if-eqz v9, :cond_2

    .line 42
    invoke-virtual {v13}, Ls/d;->y()Z

    move-result v8

    if-nez v8, :cond_2

    .line 43
    invoke-static {v14, v1, v13, v2}, Lt/h;->c(ILt/b$b;Ls/d;Z)V

    goto/16 :goto_0

    .line 44
    :cond_d
    instance-of v3, v0, Ls/f;

    if-eqz v3, :cond_e

    return-void

    .line 45
    :cond_e
    iget-object v3, v5, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    .line 46
    iget-boolean v5, v5, Ls/c;->c:Z

    if-eqz v5, :cond_1c

    .line 47
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/c;

    .line 48
    iget-object v6, v5, Ls/c;->d:Ls/d;

    const/4 v8, 0x1

    add-int/lit8 v9, p0, 0x1

    .line 49
    invoke-static {v6}, Lt/h;->a(Ls/d;)Z

    move-result v8

    .line 50
    invoke-virtual {v6}, Ls/d;->A()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v8, :cond_10

    .line 51
    new-instance v10, Lt/b$a;

    invoke-direct {v10}, Lt/b$a;-><init>()V

    .line 52
    invoke-static {v6, v1, v10}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 53
    :cond_10
    iget-object v10, v6, Ls/d;->J:Ls/c;

    if-ne v5, v10, :cond_11

    iget-object v11, v6, Ls/d;->L:Ls/c;

    iget-object v11, v11, Ls/c;->f:Ls/c;

    if-eqz v11, :cond_11

    .line 54
    iget-boolean v11, v11, Ls/c;->c:Z

    if-nez v11, :cond_12

    .line 55
    :cond_11
    iget-object v11, v6, Ls/d;->L:Ls/c;

    if-ne v5, v11, :cond_13

    iget-object v10, v10, Ls/c;->f:Ls/c;

    if-eqz v10, :cond_13

    .line 56
    iget-boolean v10, v10, Ls/c;->c:Z

    if-eqz v10, :cond_13

    :cond_12
    const/4 v10, 0x1

    goto :goto_4

    :cond_13
    move v10, v4

    .line 57
    :goto_4
    iget-object v11, v6, Ls/d;->U:[I

    aget v13, v11, v4

    if-ne v13, v12, :cond_18

    if-eqz v8, :cond_14

    goto :goto_6

    .line 58
    :cond_14
    aget v5, v11, v4

    if-ne v5, v12, :cond_16

    .line 59
    iget v5, v6, Ls/d;->v:I

    if-ltz v5, :cond_16

    iget v5, v6, Ls/d;->u:I

    if-ltz v5, :cond_16

    .line 60
    iget v5, v6, Ls/d;->i0:I

    const/16 v8, 0x8

    if-eq v5, v8, :cond_15

    .line 61
    iget v5, v6, Ls/d;->r:I

    if-nez v5, :cond_17

    .line 62
    iget v5, v6, Ls/d;->Y:F

    const/4 v11, 0x0

    cmpl-float v5, v5, v11

    if-nez v5, :cond_f

    goto :goto_5

    :cond_15
    const/4 v11, 0x0

    .line 63
    :goto_5
    invoke-virtual {v6}, Ls/d;->y()Z

    move-result v5

    if-nez v5, :cond_f

    .line 64
    iget-boolean v5, v6, Ls/d;->G:Z

    if-nez v5, :cond_f

    if-eqz v10, :cond_f

    .line 65
    invoke-virtual {v6}, Ls/d;->y()Z

    move-result v5

    if-nez v5, :cond_f

    .line 66
    invoke-static {v9, v0, v1, v6, v2}, Lt/h;->d(ILs/d;Lt/b$b;Ls/d;Z)V

    goto :goto_3

    :cond_16
    const/16 v8, 0x8

    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_18
    :goto_6
    const/16 v8, 0x8

    const/4 v11, 0x0

    .line 67
    invoke-virtual {v6}, Ls/d;->A()Z

    move-result v13

    if-eqz v13, :cond_19

    goto/16 :goto_3

    .line 68
    :cond_19
    iget-object v13, v6, Ls/d;->J:Ls/c;

    if-ne v5, v13, :cond_1a

    iget-object v14, v6, Ls/d;->L:Ls/c;

    iget-object v14, v14, Ls/c;->f:Ls/c;

    if-nez v14, :cond_1a

    .line 69
    invoke-virtual {v13}, Ls/c;->d()I

    move-result v5

    add-int/2addr v5, v7

    .line 70
    invoke-virtual {v6}, Ls/d;->r()I

    move-result v10

    add-int/2addr v10, v5

    .line 71
    invoke-virtual {v6, v5, v10}, Ls/d;->J(II)V

    .line 72
    invoke-static {v9, v6, v1, v2}, Lt/h;->b(ILs/d;Lt/b$b;Z)V

    goto/16 :goto_3

    .line 73
    :cond_1a
    iget-object v14, v6, Ls/d;->L:Ls/c;

    if-ne v5, v14, :cond_1b

    iget-object v5, v13, Ls/c;->f:Ls/c;

    if-nez v5, :cond_1b

    .line 74
    invoke-virtual {v14}, Ls/c;->d()I

    move-result v5

    sub-int v5, v7, v5

    .line 75
    invoke-virtual {v6}, Ls/d;->r()I

    move-result v10

    sub-int v10, v5, v10

    .line 76
    invoke-virtual {v6, v10, v5}, Ls/d;->J(II)V

    .line 77
    invoke-static {v9, v6, v1, v2}, Lt/h;->b(ILs/d;Lt/b$b;Z)V

    goto/16 :goto_3

    :cond_1b
    if-eqz v10, :cond_f

    .line 78
    invoke-virtual {v6}, Ls/d;->y()Z

    move-result v5

    if-nez v5, :cond_f

    .line 79
    invoke-static {v9, v1, v6, v2}, Lt/h;->c(ILt/b$b;Ls/d;Z)V

    goto/16 :goto_3

    :cond_1c
    const/4 v1, 0x1

    .line 80
    iput-boolean v1, v0, Ls/d;->m:Z

    return-void
.end method

.method public static c(ILt/b$b;Ls/d;Z)V
    .locals 6

    .line 1
    iget v0, p2, Ls/d;->f0:F

    .line 2
    iget-object v1, p2, Ls/d;->J:Ls/c;

    iget-object v1, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v1}, Ls/c;->c()I

    move-result v1

    .line 3
    iget-object v2, p2, Ls/d;->L:Ls/c;

    iget-object v2, v2, Ls/c;->f:Ls/c;

    invoke-virtual {v2}, Ls/c;->c()I

    move-result v2

    .line 4
    iget-object v3, p2, Ls/d;->J:Ls/c;

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p2, Ls/d;->L:Ls/c;

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 6
    :goto_0
    invoke-virtual {p2}, Ls/d;->r()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    if-lez v4, :cond_2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_1
    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_3

    sub-int v4, v0, v3

    .line 7
    :cond_3
    invoke-virtual {p2, v0, v4}, Ls/d;->J(II)V

    add-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {p0, p2, p1, p3}, Lt/h;->b(ILs/d;Lt/b$b;Z)V

    return-void
.end method

.method public static d(ILs/d;Lt/b$b;Ls/d;Z)V
    .locals 7

    .line 1
    iget v0, p3, Ls/d;->f0:F

    .line 2
    iget-object v1, p3, Ls/d;->J:Ls/c;

    iget-object v1, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v1}, Ls/c;->c()I

    move-result v1

    iget-object v2, p3, Ls/d;->J:Ls/c;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    add-int/2addr v2, v1

    .line 3
    iget-object v1, p3, Ls/d;->L:Ls/c;

    iget-object v1, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v1}, Ls/c;->c()I

    move-result v1

    iget-object v3, p3, Ls/d;->L:Ls/c;

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    .line 4
    invoke-virtual {p3}, Ls/d;->r()I

    move-result v3

    .line 5
    iget v4, p3, Ls/d;->i0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 6
    iget v4, p3, Ls/d;->r:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7
    instance-of v3, p1, Ls/e;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Ls/d;->r()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Ls/d;->V:Ls/d;

    .line 10
    invoke-virtual {p1}, Ls/d;->r()I

    move-result p1

    .line 11
    :goto_0
    iget v3, p3, Ls/d;->f0:F

    mul-float/2addr v3, v6

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    .line 12
    :cond_2
    :goto_1
    iget p1, p3, Ls/d;->u:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 13
    iget p1, p3, Ls/d;->v:I

    if-lez p1, :cond_3

    .line 14
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v2, p1

    add-int/2addr v3, v2

    .line 15
    invoke-virtual {p3, v2, v3}, Ls/d;->J(II)V

    add-int/lit8 p0, p0, 0x1

    .line 16
    invoke-static {p0, p3, p2, p4}, Lt/h;->b(ILs/d;Lt/b$b;Z)V

    :cond_4
    return-void
.end method

.method public static e(ILt/b$b;Ls/d;)V
    .locals 6

    .line 1
    iget v0, p2, Ls/d;->g0:F

    .line 2
    iget-object v1, p2, Ls/d;->K:Ls/c;

    iget-object v1, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v1}, Ls/c;->c()I

    move-result v1

    .line 3
    iget-object v2, p2, Ls/d;->M:Ls/c;

    iget-object v2, v2, Ls/c;->f:Ls/c;

    invoke-virtual {v2}, Ls/c;->c()I

    move-result v2

    .line 4
    iget-object v3, p2, Ls/d;->K:Ls/c;

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p2, Ls/d;->M:Ls/c;

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 6
    :goto_0
    invoke-virtual {p2}, Ls/d;->k()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    if-lez v4, :cond_2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_1
    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_3

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 7
    :cond_3
    invoke-virtual {p2, v4, v5}, Ls/d;->K(II)V

    add-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {p0, p2, p1}, Lt/h;->g(ILs/d;Lt/b$b;)V

    return-void
.end method

.method public static f(ILs/d;Lt/b$b;Ls/d;)V
    .locals 7

    .line 1
    iget v0, p3, Ls/d;->g0:F

    .line 2
    iget-object v1, p3, Ls/d;->K:Ls/c;

    iget-object v1, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v1}, Ls/c;->c()I

    move-result v1

    iget-object v2, p3, Ls/d;->K:Ls/c;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    add-int/2addr v2, v1

    .line 3
    iget-object v1, p3, Ls/d;->M:Ls/c;

    iget-object v1, v1, Ls/c;->f:Ls/c;

    invoke-virtual {v1}, Ls/c;->c()I

    move-result v1

    iget-object v3, p3, Ls/d;->M:Ls/c;

    invoke-virtual {v3}, Ls/c;->d()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    .line 4
    invoke-virtual {p3}, Ls/d;->k()I

    move-result v3

    .line 5
    iget v4, p3, Ls/d;->i0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 6
    iget v4, p3, Ls/d;->s:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7
    instance-of v3, p1, Ls/e;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Ls/d;->k()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Ls/d;->V:Ls/d;

    .line 10
    invoke-virtual {p1}, Ls/d;->k()I

    move-result p1

    :goto_0
    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    .line 11
    :cond_2
    :goto_1
    iget p1, p3, Ls/d;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 12
    iget p1, p3, Ls/d;->y:I

    if-lez p1, :cond_3

    .line 13
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v2, p1

    add-int/2addr v3, v2

    .line 14
    invoke-virtual {p3, v2, v3}, Ls/d;->K(II)V

    add-int/lit8 p0, p0, 0x1

    .line 15
    invoke-static {p0, p3, p2}, Lt/h;->g(ILs/d;Lt/b$b;)V

    :cond_4
    return-void
.end method

.method public static g(ILs/d;Lt/b$b;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Ls/d;->n:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v2, v0, Ls/e;

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ls/d;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lt/h;->a(Ls/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v2, Lt/b$a;

    invoke-direct {v2}, Lt/b$a;-><init>()V

    .line 4
    invoke-static {v0, v1, v2}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 5
    :cond_1
    sget-object v2, Ls/c$a;->i:Ls/c$a;

    invoke-virtual {v0, v2}, Ls/d;->h(Ls/c$a;)Ls/c;

    move-result-object v2

    .line 6
    sget-object v3, Ls/c$a;->k:Ls/c$a;

    invoke-virtual {v0, v3}, Ls/d;->h(Ls/c$a;)Ls/c;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Ls/c;->c()I

    move-result v4

    .line 8
    invoke-virtual {v3}, Ls/c;->c()I

    move-result v5

    .line 9
    iget-object v6, v2, Ls/c;->a:Ljava/util/HashSet;

    const/16 v7, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x3

    if-eqz v6, :cond_d

    .line 10
    iget-boolean v2, v2, Ls/c;->c:Z

    if-eqz v2, :cond_d

    .line 11
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/c;

    .line 12
    iget-object v12, v6, Ls/c;->d:Ls/d;

    add-int/lit8 v13, p0, 0x1

    .line 13
    invoke-static {v12}, Lt/h;->a(Ls/d;)Z

    move-result v14

    .line 14
    invoke-virtual {v12}, Ls/d;->A()Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    .line 15
    new-instance v15, Lt/b$a;

    invoke-direct {v15}, Lt/b$a;-><init>()V

    .line 16
    invoke-static {v12, v1, v15}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 17
    :cond_3
    iget-object v15, v12, Ls/d;->K:Ls/c;

    if-ne v6, v15, :cond_4

    iget-object v9, v12, Ls/d;->M:Ls/c;

    iget-object v9, v9, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_4

    .line 18
    iget-boolean v9, v9, Ls/c;->c:Z

    if-nez v9, :cond_5

    .line 19
    :cond_4
    iget-object v9, v12, Ls/d;->M:Ls/c;

    if-ne v6, v9, :cond_6

    iget-object v9, v15, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_6

    .line 20
    iget-boolean v9, v9, Ls/c;->c:Z

    if-eqz v9, :cond_6

    :cond_5
    move v9, v10

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    .line 21
    :goto_1
    iget-object v15, v12, Ls/d;->U:[I

    aget v8, v15, v10

    if-ne v8, v11, :cond_9

    if-eqz v14, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    aget v6, v15, v10

    if-ne v6, v11, :cond_2

    .line 23
    iget v6, v12, Ls/d;->y:I

    if-ltz v6, :cond_2

    iget v6, v12, Ls/d;->x:I

    if-ltz v6, :cond_2

    .line 24
    iget v6, v12, Ls/d;->i0:I

    if-eq v6, v7, :cond_8

    .line 25
    iget v6, v12, Ls/d;->s:I

    if-nez v6, :cond_2

    .line 26
    iget v6, v12, Ls/d;->Y:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 27
    :cond_8
    invoke-virtual {v12}, Ls/d;->z()Z

    move-result v6

    if-nez v6, :cond_2

    .line 28
    iget-boolean v6, v12, Ls/d;->G:Z

    if-nez v6, :cond_2

    if-eqz v9, :cond_2

    .line 29
    invoke-virtual {v12}, Ls/d;->z()Z

    move-result v6

    if-nez v6, :cond_2

    .line 30
    invoke-static {v13, v0, v1, v12}, Lt/h;->f(ILs/d;Lt/b$b;Ls/d;)V

    goto :goto_0

    .line 31
    :cond_9
    :goto_2
    invoke-virtual {v12}, Ls/d;->A()Z

    move-result v8

    if-eqz v8, :cond_a

    goto/16 :goto_0

    .line 32
    :cond_a
    iget-object v8, v12, Ls/d;->K:Ls/c;

    if-ne v6, v8, :cond_b

    iget-object v14, v12, Ls/d;->M:Ls/c;

    iget-object v14, v14, Ls/c;->f:Ls/c;

    if-nez v14, :cond_b

    .line 33
    invoke-virtual {v8}, Ls/c;->d()I

    move-result v6

    add-int/2addr v6, v4

    .line 34
    invoke-virtual {v12}, Ls/d;->k()I

    move-result v8

    add-int/2addr v8, v6

    .line 35
    invoke-virtual {v12, v6, v8}, Ls/d;->K(II)V

    .line 36
    invoke-static {v13, v12, v1}, Lt/h;->g(ILs/d;Lt/b$b;)V

    goto/16 :goto_0

    .line 37
    :cond_b
    iget-object v14, v12, Ls/d;->M:Ls/c;

    if-ne v6, v14, :cond_c

    iget-object v6, v8, Ls/c;->f:Ls/c;

    if-nez v6, :cond_c

    .line 38
    invoke-virtual {v14}, Ls/c;->d()I

    move-result v6

    sub-int v6, v4, v6

    .line 39
    invoke-virtual {v12}, Ls/d;->k()I

    move-result v8

    sub-int v8, v6, v8

    .line 40
    invoke-virtual {v12, v8, v6}, Ls/d;->K(II)V

    .line 41
    invoke-static {v13, v12, v1}, Lt/h;->g(ILs/d;Lt/b$b;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v9, :cond_2

    .line 42
    invoke-virtual {v12}, Ls/d;->z()Z

    move-result v6

    if-nez v6, :cond_2

    .line 43
    invoke-static {v13, v1, v12}, Lt/h;->e(ILt/b$b;Ls/d;)V

    goto/16 :goto_0

    .line 44
    :cond_d
    instance-of v2, v0, Ls/f;

    if-eqz v2, :cond_e

    return-void

    .line 45
    :cond_e
    iget-object v2, v3, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_1b

    .line 46
    iget-boolean v3, v3, Ls/c;->c:Z

    if-eqz v3, :cond_1b

    .line 47
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/c;

    .line 48
    iget-object v4, v3, Ls/c;->d:Ls/d;

    add-int/lit8 v6, p0, 0x1

    .line 49
    invoke-static {v4}, Lt/h;->a(Ls/d;)Z

    move-result v8

    .line 50
    invoke-virtual {v4}, Ls/d;->A()Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v8, :cond_10

    .line 51
    new-instance v9, Lt/b$a;

    invoke-direct {v9}, Lt/b$a;-><init>()V

    .line 52
    invoke-static {v4, v1, v9}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 53
    :cond_10
    iget-object v9, v4, Ls/d;->K:Ls/c;

    if-ne v3, v9, :cond_11

    iget-object v12, v4, Ls/d;->M:Ls/c;

    iget-object v12, v12, Ls/c;->f:Ls/c;

    if-eqz v12, :cond_11

    .line 54
    iget-boolean v12, v12, Ls/c;->c:Z

    if-nez v12, :cond_12

    .line 55
    :cond_11
    iget-object v12, v4, Ls/d;->M:Ls/c;

    if-ne v3, v12, :cond_13

    iget-object v9, v9, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_13

    .line 56
    iget-boolean v9, v9, Ls/c;->c:Z

    if-eqz v9, :cond_13

    :cond_12
    move v9, v10

    goto :goto_4

    :cond_13
    const/4 v9, 0x0

    .line 57
    :goto_4
    iget-object v12, v4, Ls/d;->U:[I

    aget v13, v12, v10

    if-ne v13, v11, :cond_17

    if-eqz v8, :cond_14

    goto :goto_6

    .line 58
    :cond_14
    aget v3, v12, v10

    if-ne v3, v11, :cond_16

    .line 59
    iget v3, v4, Ls/d;->y:I

    if-ltz v3, :cond_16

    iget v3, v4, Ls/d;->x:I

    if-ltz v3, :cond_16

    .line 60
    iget v3, v4, Ls/d;->i0:I

    if-eq v3, v7, :cond_15

    .line 61
    iget v3, v4, Ls/d;->s:I

    if-nez v3, :cond_16

    .line 62
    iget v3, v4, Ls/d;->Y:F

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-nez v3, :cond_f

    goto :goto_5

    :cond_15
    const/4 v8, 0x0

    .line 63
    :goto_5
    invoke-virtual {v4}, Ls/d;->z()Z

    move-result v3

    if-nez v3, :cond_f

    .line 64
    iget-boolean v3, v4, Ls/d;->G:Z

    if-nez v3, :cond_f

    if-eqz v9, :cond_f

    .line 65
    invoke-virtual {v4}, Ls/d;->z()Z

    move-result v3

    if-nez v3, :cond_f

    .line 66
    invoke-static {v6, v0, v1, v4}, Lt/h;->f(ILs/d;Lt/b$b;Ls/d;)V

    goto :goto_3

    :cond_16
    const/4 v8, 0x0

    goto :goto_3

    :cond_17
    :goto_6
    const/4 v8, 0x0

    .line 67
    invoke-virtual {v4}, Ls/d;->A()Z

    move-result v12

    if-eqz v12, :cond_18

    goto/16 :goto_3

    .line 68
    :cond_18
    iget-object v12, v4, Ls/d;->K:Ls/c;

    if-ne v3, v12, :cond_19

    iget-object v13, v4, Ls/d;->M:Ls/c;

    iget-object v13, v13, Ls/c;->f:Ls/c;

    if-nez v13, :cond_19

    .line 69
    invoke-virtual {v12}, Ls/c;->d()I

    move-result v3

    add-int/2addr v3, v5

    .line 70
    invoke-virtual {v4}, Ls/d;->k()I

    move-result v9

    add-int/2addr v9, v3

    .line 71
    invoke-virtual {v4, v3, v9}, Ls/d;->K(II)V

    .line 72
    invoke-static {v6, v4, v1}, Lt/h;->g(ILs/d;Lt/b$b;)V

    goto/16 :goto_3

    .line 73
    :cond_19
    iget-object v13, v4, Ls/d;->M:Ls/c;

    if-ne v3, v13, :cond_1a

    iget-object v3, v12, Ls/c;->f:Ls/c;

    if-nez v3, :cond_1a

    .line 74
    invoke-virtual {v13}, Ls/c;->d()I

    move-result v3

    sub-int v3, v5, v3

    .line 75
    invoke-virtual {v4}, Ls/d;->k()I

    move-result v9

    sub-int v9, v3, v9

    .line 76
    invoke-virtual {v4, v9, v3}, Ls/d;->K(II)V

    .line 77
    invoke-static {v6, v4, v1}, Lt/h;->g(ILs/d;Lt/b$b;)V

    goto/16 :goto_3

    :cond_1a
    if-eqz v9, :cond_f

    .line 78
    invoke-virtual {v4}, Ls/d;->z()Z

    move-result v3

    if-nez v3, :cond_f

    .line 79
    invoke-static {v6, v1, v4}, Lt/h;->e(ILt/b$b;Ls/d;)V

    goto/16 :goto_3

    .line 80
    :cond_1b
    sget-object v2, Ls/c$a;->l:Ls/c$a;

    invoke-virtual {v0, v2}, Ls/d;->h(Ls/c$a;)Ls/c;

    move-result-object v2

    .line 81
    iget-object v3, v2, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_21

    .line 82
    iget-boolean v3, v2, Ls/c;->c:Z

    if-eqz v3, :cond_21

    .line 83
    invoke-virtual {v2}, Ls/c;->c()I

    move-result v3

    .line 84
    iget-object v2, v2, Ls/c;->a:Ljava/util/HashSet;

    .line 85
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    .line 86
    iget-object v5, v4, Ls/c;->d:Ls/d;

    add-int/lit8 v6, p0, 0x1

    .line 87
    invoke-static {v5}, Lt/h;->a(Ls/d;)Z

    move-result v7

    .line 88
    invoke-virtual {v5}, Ls/d;->A()Z

    move-result v8

    if-eqz v8, :cond_1d

    if-eqz v7, :cond_1d

    .line 89
    new-instance v8, Lt/b$a;

    invoke-direct {v8}, Lt/b$a;-><init>()V

    .line 90
    invoke-static {v5, v1, v8}, Ls/e;->c0(Ls/d;Lt/b$b;Lt/b$a;)Z

    .line 91
    :cond_1d
    iget-object v8, v5, Ls/d;->U:[I

    aget v8, v8, v10

    if-ne v8, v11, :cond_1e

    if-eqz v7, :cond_1c

    .line 92
    :cond_1e
    invoke-virtual {v5}, Ls/d;->A()Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_7

    .line 93
    :cond_1f
    iget-object v7, v5, Ls/d;->N:Ls/c;

    if-ne v4, v7, :cond_1c

    .line 94
    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    add-int/2addr v4, v3

    .line 95
    iget-boolean v7, v5, Ls/d;->E:Z

    if-nez v7, :cond_20

    goto :goto_8

    .line 96
    :cond_20
    iget v7, v5, Ls/d;->c0:I

    sub-int v7, v4, v7

    .line 97
    iget v8, v5, Ls/d;->X:I

    add-int/2addr v8, v7

    .line 98
    iput v7, v5, Ls/d;->b0:I

    .line 99
    iget-object v9, v5, Ls/d;->K:Ls/c;

    invoke-virtual {v9, v7}, Ls/c;->j(I)V

    .line 100
    iget-object v7, v5, Ls/d;->M:Ls/c;

    invoke-virtual {v7, v8}, Ls/c;->j(I)V

    .line 101
    iget-object v7, v5, Ls/d;->N:Ls/c;

    invoke-virtual {v7, v4}, Ls/c;->j(I)V

    .line 102
    iput-boolean v10, v5, Ls/d;->l:Z

    .line 103
    :goto_8
    invoke-static {v6, v5, v1}, Lt/h;->g(ILs/d;Lt/b$b;)V

    goto :goto_7

    .line 104
    :cond_21
    iput-boolean v10, v0, Ls/d;->n:Z

    return-void
.end method
