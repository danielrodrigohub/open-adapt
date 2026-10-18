.class public Ld3/e;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Ld3/c;
.implements Lg7/q;


# static fields
.field public static final h:Ld3/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld3/e;

    invoke-direct {v0}, Ld3/e;-><init>()V

    sput-object v0, Ld3/e;->h:Ld3/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ls/e;Lq/d;Ljava/util/ArrayList;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    .line 1
    iget v1, v0, Ls/e;->A0:I

    .line 2
    iget-object v2, v0, Ls/e;->D0:[Ls/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Ls/e;->B0:I

    .line 4
    iget-object v2, v0, Ls/e;->C0:[Ls/b;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_6d

    .line 5
    aget-object v1, v15, v9

    .line 6
    iget-boolean v2, v1, Ls/b;->q:Z

    const/16 v17, 0x0

    const/4 v3, 0x3

    const/16 v8, 0x8

    const/4 v5, 0x1

    if-nez v2, :cond_16

    .line 7
    iget v2, v1, Ls/b;->l:I

    mul-int/2addr v2, v12

    .line 8
    iget-object v6, v1, Ls/b;->a:Ls/d;

    move-object v7, v6

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_11

    .line 9
    iget v13, v1, Ls/b;->i:I

    add-int/2addr v13, v5

    iput v13, v1, Ls/b;->i:I

    .line 10
    iget-object v13, v6, Ls/d;->o0:[Ls/d;

    iget v4, v1, Ls/b;->l:I

    aput-object v17, v13, v4

    .line 11
    iget-object v13, v6, Ls/d;->n0:[Ls/d;

    aput-object v17, v13, v4

    .line 12
    iget v13, v6, Ls/d;->i0:I

    if-eq v13, v8, :cond_c

    .line 13
    invoke-virtual {v6, v4}, Ls/d;->j(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 14
    iget v4, v1, Ls/b;->l:I

    .line 15
    :cond_1
    iget-object v4, v6, Ls/d;->R:[Ls/c;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ls/c;->d()I

    .line 16
    iget-object v4, v6, Ls/d;->R:[Ls/c;

    add-int/lit8 v13, v2, 0x1

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ls/c;->d()I

    .line 17
    iget-object v4, v6, Ls/d;->R:[Ls/c;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ls/c;->d()I

    .line 18
    iget-object v4, v6, Ls/d;->R:[Ls/c;

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ls/c;->d()I

    .line 19
    iget-object v4, v1, Ls/b;->b:Ls/d;

    if-nez v4, :cond_2

    .line 20
    iput-object v6, v1, Ls/b;->b:Ls/d;

    .line 21
    :cond_2
    iput-object v6, v1, Ls/b;->d:Ls/d;

    .line 22
    iget-object v4, v6, Ls/d;->U:[I

    iget v13, v1, Ls/b;->l:I

    aget v8, v4, v13

    if-ne v8, v3, :cond_c

    .line 23
    iget-object v8, v6, Ls/d;->t:[I

    aget v22, v8, v13

    if-eqz v22, :cond_3

    aget v5, v8, v13

    if-eq v5, v3, :cond_3

    aget v5, v8, v13

    if-ne v5, v12, :cond_c

    .line 24
    :cond_3
    iget v5, v1, Ls/b;->j:I

    const/16 v22, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Ls/b;->j:I

    .line 25
    iget-object v5, v6, Ls/d;->m0:[F

    aget v23, v5, v13

    const/16 v20, 0x0

    cmpl-float v24, v23, v20

    if-lez v24, :cond_4

    .line 26
    iget v12, v1, Ls/b;->k:F

    aget v5, v5, v13

    add-float/2addr v12, v5

    iput v12, v1, Ls/b;->k:F

    .line 27
    :cond_4
    iget v5, v6, Ls/d;->i0:I

    const/16 v12, 0x8

    if-eq v5, v12, :cond_6

    .line 28
    aget v4, v4, v13

    if-ne v4, v3, :cond_6

    aget v4, v8, v13

    if-eqz v4, :cond_5

    aget v4, v8, v13

    if-ne v4, v3, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_9

    const/4 v4, 0x0

    cmpg-float v5, v23, v4

    if-gez v5, :cond_7

    const/4 v4, 0x1

    .line 29
    iput-boolean v4, v1, Ls/b;->n:Z

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    .line 30
    iput-boolean v4, v1, Ls/b;->o:Z

    .line 31
    :goto_4
    iget-object v4, v1, Ls/b;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Ls/b;->h:Ljava/util/ArrayList;

    .line 33
    :cond_8
    iget-object v4, v1, Ls/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    iget-object v4, v1, Ls/b;->f:Ls/d;

    if-nez v4, :cond_a

    .line 35
    iput-object v6, v1, Ls/b;->f:Ls/d;

    .line 36
    :cond_a
    iget-object v4, v1, Ls/b;->g:Ls/d;

    if-eqz v4, :cond_b

    .line 37
    iget-object v4, v4, Ls/d;->n0:[Ls/d;

    iget v5, v1, Ls/b;->l:I

    aput-object v6, v4, v5

    .line 38
    :cond_b
    iput-object v6, v1, Ls/b;->g:Ls/d;

    :cond_c
    if-eq v7, v6, :cond_d

    .line 39
    iget-object v4, v7, Ls/d;->o0:[Ls/d;

    iget v5, v1, Ls/b;->l:I

    aput-object v6, v4, v5

    .line 40
    :cond_d
    iget-object v4, v6, Ls/d;->R:[Ls/c;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Ls/c;->f:Ls/c;

    if-eqz v4, :cond_e

    .line 41
    iget-object v4, v4, Ls/c;->d:Ls/d;

    .line 42
    iget-object v5, v4, Ls/d;->R:[Ls/c;

    aget-object v7, v5, v2

    iget-object v7, v7, Ls/c;->f:Ls/c;

    if-eqz v7, :cond_e

    aget-object v5, v5, v2

    iget-object v5, v5, Ls/c;->f:Ls/c;

    iget-object v5, v5, Ls/c;->d:Ls/d;

    if-eq v5, v6, :cond_f

    :cond_e
    move-object/from16 v4, v17

    :cond_f
    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move-object v4, v6

    const/16 v18, 0x1

    :goto_5
    move-object v7, v6

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v6, v4

    goto/16 :goto_2

    .line 43
    :cond_11
    iget-object v4, v1, Ls/b;->b:Ls/d;

    if-eqz v4, :cond_12

    .line 44
    iget-object v4, v4, Ls/d;->R:[Ls/c;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ls/c;->d()I

    .line 45
    :cond_12
    iget-object v4, v1, Ls/b;->d:Ls/d;

    if-eqz v4, :cond_13

    .line 46
    iget-object v4, v4, Ls/d;->R:[Ls/c;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ls/c;->d()I

    .line 47
    :cond_13
    iput-object v6, v1, Ls/b;->c:Ls/d;

    .line 48
    iget v2, v1, Ls/b;->l:I

    if-nez v2, :cond_14

    iget-boolean v2, v1, Ls/b;->m:Z

    if-eqz v2, :cond_14

    .line 49
    iput-object v6, v1, Ls/b;->e:Ls/d;

    goto :goto_6

    .line 50
    :cond_14
    iget-object v2, v1, Ls/b;->a:Ls/d;

    iput-object v2, v1, Ls/b;->e:Ls/d;

    .line 51
    :goto_6
    iget-boolean v2, v1, Ls/b;->o:Z

    if-eqz v2, :cond_15

    iget-boolean v2, v1, Ls/b;->n:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v1, Ls/b;->p:Z

    const/4 v2, 0x1

    goto :goto_8

    :cond_16
    move v2, v5

    .line 52
    :goto_8
    iput-boolean v2, v1, Ls/b;->q:Z

    if-eqz v11, :cond_18

    .line 53
    iget-object v2, v1, Ls/b;->a:Ls/d;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_9

    :cond_17
    move/from16 v18, v9

    move/from16 v29, v14

    move-object/from16 v31, v15

    const/16 v19, 0x0

    goto/16 :goto_42

    .line 54
    :cond_18
    :goto_9
    iget-object v12, v1, Ls/b;->a:Ls/d;

    .line 55
    iget-object v13, v1, Ls/b;->c:Ls/d;

    .line 56
    iget-object v8, v1, Ls/b;->b:Ls/d;

    .line 57
    iget-object v7, v1, Ls/b;->d:Ls/d;

    .line 58
    iget-object v2, v1, Ls/b;->e:Ls/d;

    .line 59
    iget v4, v1, Ls/b;->k:F

    .line 60
    iget-object v5, v0, Ls/d;->U:[I

    aget v5, v5, p3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    const/4 v5, 0x1

    goto :goto_a

    :cond_19
    const/4 v5, 0x0

    :goto_a
    if-nez p3, :cond_1c

    .line 61
    iget v3, v2, Ls/d;->k0:I

    const/4 v6, 0x1

    if-nez v3, :cond_1a

    const/16 v22, 0x1

    goto :goto_b

    :cond_1a
    const/16 v22, 0x0

    :goto_b
    if-ne v3, v6, :cond_1b

    move/from16 v23, v6

    const/4 v6, 0x2

    goto :goto_c

    :cond_1b
    const/4 v6, 0x2

    const/16 v23, 0x0

    :goto_c
    move/from16 v24, v22

    if-ne v3, v6, :cond_1f

    goto :goto_f

    .line 62
    :cond_1c
    iget v3, v2, Ls/d;->l0:I

    const/4 v6, 0x1

    if-nez v3, :cond_1d

    const/16 v24, 0x1

    goto :goto_d

    :cond_1d
    const/16 v24, 0x0

    :goto_d
    if-ne v3, v6, :cond_1e

    const/4 v6, 0x2

    const/16 v23, 0x1

    goto :goto_e

    :cond_1e
    const/4 v6, 0x2

    const/16 v23, 0x0

    :goto_e
    if-ne v3, v6, :cond_1f

    :goto_f
    const/4 v3, 0x1

    goto :goto_10

    :cond_1f
    const/4 v3, 0x0

    :goto_10
    move/from16 v26, v4

    move-object v6, v12

    const/16 v25, 0x0

    :goto_11
    if-nez v25, :cond_2d

    .line 63
    iget-object v4, v6, Ls/d;->R:[Ls/c;

    aget-object v4, v4, v16

    if-eqz v3, :cond_20

    const/16 v28, 0x1

    goto :goto_12

    :cond_20
    const/16 v28, 0x4

    .line 64
    :goto_12
    invoke-virtual {v4}, Ls/c;->d()I

    move-result v29

    move/from16 v30, v9

    .line 65
    iget-object v9, v6, Ls/d;->U:[I

    aget v9, v9, p3

    const/4 v11, 0x3

    if-ne v9, v11, :cond_21

    iget-object v9, v6, Ls/d;->t:[I

    aget v9, v9, p3

    if-nez v9, :cond_21

    const/4 v9, 0x1

    goto :goto_13

    :cond_21
    const/4 v9, 0x0

    .line 66
    :goto_13
    iget-object v11, v4, Ls/c;->f:Ls/c;

    if-eqz v11, :cond_22

    if-eq v6, v12, :cond_22

    .line 67
    invoke-virtual {v11}, Ls/c;->d()I

    move-result v11

    add-int v29, v11, v29

    :cond_22
    move/from16 v11, v29

    if-eqz v3, :cond_23

    if-eq v6, v12, :cond_23

    if-eq v6, v8, :cond_23

    move/from16 v29, v14

    const/16 v28, 0x8

    goto :goto_14

    :cond_23
    move/from16 v29, v14

    .line 68
    :goto_14
    iget-object v14, v4, Ls/c;->f:Ls/c;

    if-eqz v14, :cond_27

    if-ne v6, v8, :cond_24

    move-object/from16 v31, v15

    .line 69
    iget-object v15, v4, Ls/c;->i:Lq/h;

    iget-object v14, v14, Ls/c;->i:Lq/h;

    move-object/from16 v32, v2

    const/4 v2, 0x6

    invoke-virtual {v10, v15, v14, v11, v2}, Lq/d;->f(Lq/h;Lq/h;II)V

    goto :goto_15

    :cond_24
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    .line 70
    iget-object v2, v4, Ls/c;->i:Lq/h;

    iget-object v14, v14, Ls/c;->i:Lq/h;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v14, v11, v15}, Lq/d;->f(Lq/h;Lq/h;II)V

    :goto_15
    if-eqz v9, :cond_25

    if-nez v3, :cond_25

    const/16 v28, 0x5

    :cond_25
    if-ne v6, v8, :cond_26

    if-eqz v3, :cond_26

    .line 71
    iget-object v2, v6, Ls/d;->T:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_26

    const/4 v2, 0x5

    goto :goto_16

    :cond_26
    move/from16 v2, v28

    .line 72
    :goto_16
    iget-object v9, v4, Ls/c;->i:Lq/h;

    iget-object v4, v4, Ls/c;->f:Ls/c;

    iget-object v4, v4, Ls/c;->i:Lq/h;

    invoke-virtual {v10, v9, v4, v11, v2}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    goto :goto_17

    :cond_27
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    :goto_17
    if-eqz v5, :cond_29

    .line 73
    iget v2, v6, Ls/d;->i0:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_28

    .line 74
    iget-object v2, v6, Ls/d;->U:[I

    aget v2, v2, p3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_28

    .line 75
    iget-object v2, v6, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v4, v2, v4

    iget-object v4, v4, Ls/c;->i:Lq/h;

    aget-object v2, v2, v16

    iget-object v2, v2, Ls/c;->i:Lq/h;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v2, v11, v9}, Lq/d;->f(Lq/h;Lq/h;II)V

    goto :goto_18

    :cond_28
    const/4 v11, 0x0

    .line 76
    :goto_18
    iget-object v2, v6, Ls/d;->R:[Ls/c;

    aget-object v2, v2, v16

    iget-object v2, v2, Ls/c;->i:Lq/h;

    iget-object v4, v0, Ls/d;->R:[Ls/c;

    aget-object v4, v4, v16

    iget-object v4, v4, Ls/c;->i:Lq/h;

    const/16 v9, 0x8

    invoke-virtual {v10, v2, v4, v11, v9}, Lq/d;->f(Lq/h;Lq/h;II)V

    .line 77
    :cond_29
    iget-object v2, v6, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_2a

    .line 78
    iget-object v2, v2, Ls/c;->d:Ls/d;

    .line 79
    iget-object v4, v2, Ls/d;->R:[Ls/c;

    aget-object v9, v4, v16

    iget-object v9, v9, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_2a

    aget-object v4, v4, v16

    iget-object v4, v4, Ls/c;->f:Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    if-eq v4, v6, :cond_2b

    :cond_2a
    move-object/from16 v2, v17

    :cond_2b
    if-eqz v2, :cond_2c

    move-object v6, v2

    goto :goto_19

    :cond_2c
    const/16 v25, 0x1

    :goto_19
    move-object/from16 v11, p2

    move/from16 v14, v29

    move/from16 v9, v30

    move-object/from16 v15, v31

    move-object/from16 v2, v32

    goto/16 :goto_11

    :cond_2d
    move-object/from16 v32, v2

    move/from16 v30, v9

    move/from16 v29, v14

    move-object/from16 v31, v15

    if-eqz v7, :cond_31

    .line 80
    iget-object v2, v13, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_31

    .line 81
    iget-object v2, v7, Ls/d;->R:[Ls/c;

    aget-object v2, v2, v4

    .line 82
    iget-object v6, v7, Ls/d;->U:[I

    aget v6, v6, p3

    const/4 v9, 0x3

    if-ne v6, v9, :cond_2e

    iget-object v6, v7, Ls/d;->t:[I

    aget v6, v6, p3

    if-nez v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_1a

    :cond_2e
    const/4 v6, 0x0

    :goto_1a
    if-eqz v6, :cond_2f

    if-nez v3, :cond_2f

    .line 83
    iget-object v6, v2, Ls/c;->f:Ls/c;

    iget-object v9, v6, Ls/c;->d:Ls/d;

    if-ne v9, v0, :cond_2f

    .line 84
    iget-object v9, v2, Ls/c;->i:Lq/h;

    iget-object v6, v6, Ls/c;->i:Lq/h;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v6, v11, v14}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    goto :goto_1b

    :cond_2f
    const/4 v14, 0x5

    if-eqz v3, :cond_30

    .line 85
    iget-object v6, v2, Ls/c;->f:Ls/c;

    iget-object v9, v6, Ls/c;->d:Ls/d;

    if-ne v9, v0, :cond_30

    .line 86
    iget-object v9, v2, Ls/c;->i:Lq/h;

    iget-object v6, v6, Ls/c;->i:Lq/h;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    .line 87
    :cond_30
    :goto_1b
    iget-object v6, v2, Ls/c;->i:Lq/h;

    iget-object v9, v13, Ls/d;->R:[Ls/c;

    aget-object v4, v9, v4

    iget-object v4, v4, Ls/c;->f:Ls/c;

    iget-object v4, v4, Ls/c;->i:Lq/h;

    .line 88
    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    .line 89
    invoke-virtual {v10, v6, v4, v2, v9}, Lq/d;->g(Lq/h;Lq/h;II)V

    goto :goto_1c

    :cond_31
    const/4 v14, 0x5

    :goto_1c
    if-eqz v5, :cond_32

    .line 90
    iget-object v2, v0, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Ls/c;->i:Lq/h;

    iget-object v5, v13, Ls/d;->R:[Ls/c;

    aget-object v6, v5, v4

    iget-object v6, v6, Ls/c;->i:Lq/h;

    aget-object v4, v5, v4

    .line 91
    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    const/16 v5, 0x8

    .line 92
    invoke-virtual {v10, v2, v6, v4, v5}, Lq/d;->f(Lq/h;Lq/h;II)V

    .line 93
    :cond_32
    iget-object v2, v1, Ls/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3c

    .line 95
    iget-boolean v6, v1, Ls/b;->n:Z

    if-eqz v6, :cond_33

    iget-boolean v6, v1, Ls/b;->p:Z

    if-nez v6, :cond_33

    .line 96
    iget v6, v1, Ls/b;->j:I

    int-to-float v6, v6

    goto :goto_1d

    :cond_33
    move/from16 v6, v26

    :goto_1d
    move-object/from16 v15, v17

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v4, :cond_3c

    .line 97
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Ls/d;

    .line 98
    iget-object v14, v5, Ls/d;->m0:[F

    aget v14, v14, p3

    const/16 v18, 0x0

    cmpg-float v25, v14, v18

    if-gez v25, :cond_35

    .line 99
    iget-boolean v14, v1, Ls/b;->p:Z

    if-eqz v14, :cond_34

    .line 100
    iget-object v0, v5, Ls/d;->R:[Ls/c;

    add-int/lit8 v5, v16, 0x1

    aget-object v5, v0, v5

    iget-object v5, v5, Ls/c;->i:Lq/h;

    aget-object v0, v0, v16

    iget-object v0, v0, Ls/c;->i:Lq/h;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v10, v5, v0, v2, v14}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    move/from16 v25, v14

    move v14, v2

    goto :goto_20

    :cond_34
    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v25, 0x4

    goto :goto_1f

    :cond_35
    move-object/from16 v18, v2

    const/16 v25, 0x4

    const/4 v2, 0x0

    :goto_1f
    cmpl-float v26, v14, v2

    if-nez v26, :cond_36

    .line 101
    iget-object v0, v5, Ls/d;->R:[Ls/c;

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Ls/c;->i:Lq/h;

    aget-object v0, v0, v16

    iget-object v0, v0, Ls/c;->i:Lq/h;

    const/16 v5, 0x8

    const/4 v14, 0x0

    invoke-virtual {v10, v2, v0, v14, v5}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    :goto_20
    move-object/from16 v34, v1

    move/from16 v33, v4

    move/from16 v26, v6

    move/from16 v19, v14

    const/16 v20, 0x0

    goto/16 :goto_25

    :cond_36
    const/16 v19, 0x0

    if-eqz v15, :cond_3b

    .line 102
    iget-object v2, v15, Ls/d;->R:[Ls/c;

    aget-object v15, v2, v16

    iget-object v15, v15, Ls/c;->i:Lq/h;

    add-int/lit8 v27, v16, 0x1

    .line 103
    aget-object v2, v2, v27

    iget-object v2, v2, Ls/c;->i:Lq/h;

    .line 104
    iget-object v0, v5, Ls/d;->R:[Ls/c;

    move/from16 v33, v4

    aget-object v4, v0, v16

    iget-object v4, v4, Ls/c;->i:Lq/h;

    .line 105
    aget-object v0, v0, v27

    iget-object v0, v0, Ls/c;->i:Lq/h;

    move-object/from16 v27, v5

    .line 106
    invoke-virtual/range {p1 .. p1}, Lq/d;->m()Lq/b;

    move-result-object v5

    move-object/from16 v34, v1

    const/4 v1, 0x0

    .line 107
    iput v1, v5, Lq/b;->b:F

    cmpl-float v20, v6, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v20, :cond_3a

    cmpl-float v20, v9, v14

    if-nez v20, :cond_37

    goto :goto_22

    :cond_37
    const/16 v20, 0x0

    cmpl-float v35, v9, v20

    if-nez v35, :cond_38

    .line 108
    iget-object v0, v5, Lq/b;->d:Lq/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v15, v4}, Lq/b$a;->d(Lq/h;F)V

    .line 109
    iget-object v0, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v0, v2, v1}, Lq/b$a;->d(Lq/h;F)V

    goto :goto_21

    :cond_38
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v26, :cond_39

    .line 110
    iget-object v2, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v2, v4, v1}, Lq/b$a;->d(Lq/h;F)V

    .line 111
    iget-object v1, v5, Lq/b;->d:Lq/b$a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2}, Lq/b$a;->d(Lq/h;F)V

    :goto_21
    move/from16 v26, v6

    goto :goto_23

    :cond_39
    div-float/2addr v9, v6

    div-float v26, v14, v6

    div-float v9, v9, v26

    move/from16 v26, v6

    .line 112
    iget-object v6, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v6, v15, v1}, Lq/b$a;->d(Lq/h;F)V

    .line 113
    iget-object v1, v5, Lq/b;->d:Lq/b$a;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v6}, Lq/b$a;->d(Lq/h;F)V

    .line 114
    iget-object v1, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v1, v0, v9}, Lq/b$a;->d(Lq/h;F)V

    .line 115
    iget-object v0, v5, Lq/b;->d:Lq/b$a;

    neg-float v1, v9

    invoke-interface {v0, v4, v1}, Lq/b$a;->d(Lq/h;F)V

    goto :goto_23

    :cond_3a
    :goto_22
    move/from16 v26, v6

    const/16 v20, 0x0

    move v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    iget-object v9, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v9, v15, v1}, Lq/b$a;->d(Lq/h;F)V

    .line 117
    iget-object v9, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v9, v2, v6}, Lq/b$a;->d(Lq/h;F)V

    .line 118
    iget-object v2, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v2, v0, v1}, Lq/b$a;->d(Lq/h;F)V

    .line 119
    iget-object v0, v5, Lq/b;->d:Lq/b$a;

    invoke-interface {v0, v4, v6}, Lq/b$a;->d(Lq/h;F)V

    .line 120
    :goto_23
    invoke-virtual {v10, v5}, Lq/d;->c(Lq/b;)V

    goto :goto_24

    :cond_3b
    move-object/from16 v34, v1

    move/from16 v33, v4

    move-object/from16 v27, v5

    move/from16 v26, v6

    const/16 v20, 0x0

    :goto_24
    move v9, v14

    move-object/from16 v15, v27

    :goto_25
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    move/from16 v6, v26

    move/from16 v4, v33

    move-object/from16 v1, v34

    const/4 v5, 0x1

    const/4 v14, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_1e

    :cond_3c
    move-object/from16 v34, v1

    const/16 v19, 0x0

    const/16 v25, 0x4

    if-eqz v8, :cond_43

    if-eq v8, v7, :cond_3d

    if-eqz v3, :cond_43

    .line 121
    :cond_3d
    iget-object v0, v12, Ls/d;->R:[Ls/c;

    aget-object v0, v0, v16

    .line 122
    iget-object v1, v13, Ls/d;->R:[Ls/c;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    .line 123
    iget-object v0, v0, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_3e

    iget-object v0, v0, Ls/c;->i:Lq/h;

    move-object v3, v0

    goto :goto_26

    :cond_3e
    move-object/from16 v3, v17

    .line 124
    :goto_26
    iget-object v0, v1, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Ls/c;->i:Lq/h;

    move-object v6, v0

    goto :goto_27

    :cond_3f
    move-object/from16 v6, v17

    .line 125
    :goto_27
    iget-object v0, v8, Ls/d;->R:[Ls/c;

    aget-object v0, v0, v16

    if-eqz v7, :cond_40

    .line 126
    iget-object v1, v7, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v2

    :cond_40
    if-eqz v3, :cond_42

    if-eqz v6, :cond_42

    if-nez p3, :cond_41

    move-object/from16 v2, v32

    .line 127
    iget v2, v2, Ls/d;->f0:F

    goto :goto_28

    :cond_41
    move-object/from16 v2, v32

    .line 128
    iget v2, v2, Ls/d;->g0:F

    :goto_28
    move v5, v2

    .line 129
    invoke-virtual {v0}, Ls/c;->d()I

    move-result v4

    .line 130
    invoke-virtual {v1}, Ls/c;->d()I

    move-result v9

    .line 131
    iget-object v2, v0, Ls/c;->i:Lq/h;

    iget-object v0, v1, Ls/c;->i:Lq/h;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    const/4 v14, 0x2

    move-object v15, v7

    move-object v7, v0

    move-object v0, v8

    move v8, v9

    move/from16 v18, v30

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lq/d;->b(Lq/h;Lq/h;IFLq/h;Lq/h;II)V

    goto/16 :goto_3e

    :cond_42
    move-object v15, v7

    move-object v0, v8

    move/from16 v18, v30

    const/4 v14, 0x2

    goto/16 :goto_3e

    :cond_43
    move-object v15, v7

    move-object v0, v8

    move/from16 v18, v30

    const/4 v14, 0x2

    if-eqz v24, :cond_54

    if-eqz v0, :cond_54

    move-object/from16 v1, v34

    .line 132
    iget v2, v1, Ls/b;->j:I

    if-lez v2, :cond_44

    iget v1, v1, Ls/b;->i:I

    if-ne v1, v2, :cond_44

    const/16 v22, 0x1

    goto :goto_29

    :cond_44
    move/from16 v22, v19

    :goto_29
    move-object v9, v0

    move-object v11, v9

    :goto_2a
    if-eqz v11, :cond_64

    .line 133
    iget-object v1, v11, Ls/d;->o0:[Ls/d;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_2b
    if-eqz v8, :cond_45

    .line 134
    iget v1, v8, Ls/d;->i0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_46

    .line 135
    iget-object v1, v8, Ls/d;->o0:[Ls/d;

    aget-object v8, v1, p3

    goto :goto_2b

    :cond_45
    const/16 v7, 0x8

    :cond_46
    if-nez v8, :cond_48

    if-ne v11, v15, :cond_47

    goto :goto_2c

    :cond_47
    move-object v14, v8

    move-object/from16 v20, v9

    goto/16 :goto_32

    .line 136
    :cond_48
    :goto_2c
    iget-object v1, v11, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v16

    .line 137
    iget-object v2, v1, Ls/c;->i:Lq/h;

    .line 138
    iget-object v3, v1, Ls/c;->f:Ls/c;

    if-eqz v3, :cond_49

    iget-object v3, v3, Ls/c;->i:Lq/h;

    goto :goto_2d

    :cond_49
    move-object/from16 v3, v17

    :goto_2d
    if-eq v9, v11, :cond_4a

    .line 139
    iget-object v3, v9, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Ls/c;->i:Lq/h;

    goto :goto_2e

    :cond_4a
    if-ne v11, v0, :cond_4c

    .line 140
    iget-object v3, v12, Ls/d;->R:[Ls/c;

    aget-object v4, v3, v16

    iget-object v4, v4, Ls/c;->f:Ls/c;

    if-eqz v4, :cond_4b

    aget-object v3, v3, v16

    iget-object v3, v3, Ls/c;->f:Ls/c;

    iget-object v3, v3, Ls/c;->i:Lq/h;

    goto :goto_2e

    :cond_4b
    move-object/from16 v3, v17

    .line 141
    :cond_4c
    :goto_2e
    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    .line 142
    iget-object v4, v11, Ls/d;->R:[Ls/c;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    if-eqz v8, :cond_4d

    .line 143
    iget-object v6, v8, Ls/d;->R:[Ls/c;

    aget-object v6, v6, v16

    .line 144
    iget-object v7, v6, Ls/c;->i:Lq/h;

    goto :goto_2f

    .line 145
    :cond_4d
    iget-object v6, v13, Ls/d;->R:[Ls/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Ls/c;->f:Ls/c;

    if-eqz v6, :cond_4e

    .line 146
    iget-object v7, v6, Ls/c;->i:Lq/h;

    goto :goto_2f

    :cond_4e
    move-object/from16 v7, v17

    .line 147
    :goto_2f
    iget-object v14, v11, Ls/d;->R:[Ls/c;

    aget-object v14, v14, v5

    iget-object v14, v14, Ls/c;->i:Lq/h;

    if-eqz v6, :cond_4f

    .line 148
    invoke-virtual {v6}, Ls/c;->d()I

    move-result v6

    add-int/2addr v4, v6

    .line 149
    :cond_4f
    iget-object v6, v9, Ls/d;->R:[Ls/c;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ls/c;->d()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v2, :cond_47

    if-eqz v3, :cond_47

    if-eqz v7, :cond_47

    if-eqz v14, :cond_47

    if-ne v11, v0, :cond_50

    .line 150
    iget-object v1, v0, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    move v6, v1

    :cond_50
    if-ne v11, v15, :cond_51

    .line 151
    iget-object v1, v15, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    move/from16 v20, v1

    goto :goto_30

    :cond_51
    move/from16 v20, v4

    :goto_30
    if-eqz v22, :cond_52

    const/16 v25, 0x8

    goto :goto_31

    :cond_52
    const/16 v25, 0x5

    :goto_31
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v4, v6

    move-object v6, v7

    const/16 v21, 0x8

    move-object v7, v14

    move-object v14, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v25

    .line 152
    invoke-virtual/range {v1 .. v9}, Lq/d;->b(Lq/h;Lq/h;IFLq/h;Lq/h;II)V

    .line 153
    :goto_32
    iget v1, v11, Ls/d;->i0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_53

    move-object/from16 v20, v11

    :cond_53
    move-object v11, v14

    move-object/from16 v9, v20

    const/4 v14, 0x2

    goto/16 :goto_2a

    :cond_54
    move-object/from16 v1, v34

    const/16 v9, 0x8

    if-eqz v23, :cond_64

    if-eqz v0, :cond_64

    .line 154
    iget v2, v1, Ls/b;->j:I

    if-lez v2, :cond_55

    iget v1, v1, Ls/b;->i:I

    if-ne v1, v2, :cond_55

    const/16 v22, 0x1

    goto :goto_33

    :cond_55
    move/from16 v22, v19

    :goto_33
    move-object v11, v0

    move-object v14, v11

    :goto_34
    if-eqz v11, :cond_60

    .line 155
    iget-object v1, v11, Ls/d;->o0:[Ls/d;

    aget-object v1, v1, p3

    :goto_35
    if-eqz v1, :cond_56

    .line 156
    iget v2, v1, Ls/d;->i0:I

    if-ne v2, v9, :cond_56

    .line 157
    iget-object v1, v1, Ls/d;->o0:[Ls/d;

    aget-object v1, v1, p3

    goto :goto_35

    :cond_56
    if-eq v11, v0, :cond_5e

    if-eq v11, v15, :cond_5e

    if-eqz v1, :cond_5e

    if-ne v1, v15, :cond_57

    move-object/from16 v8, v17

    goto :goto_36

    :cond_57
    move-object v8, v1

    .line 158
    :goto_36
    iget-object v1, v11, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v16

    .line 159
    iget-object v2, v1, Ls/c;->i:Lq/h;

    .line 160
    iget-object v3, v14, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Ls/c;->i:Lq/h;

    .line 161
    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    .line 162
    iget-object v5, v11, Ls/d;->R:[Ls/c;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ls/c;->d()I

    move-result v5

    if-eqz v8, :cond_59

    .line 163
    iget-object v6, v8, Ls/d;->R:[Ls/c;

    aget-object v6, v6, v16

    .line 164
    iget-object v7, v6, Ls/c;->i:Lq/h;

    .line 165
    iget-object v9, v6, Ls/c;->f:Ls/c;

    if-eqz v9, :cond_58

    iget-object v9, v9, Ls/c;->i:Lq/h;

    goto :goto_38

    :cond_58
    move-object/from16 v9, v17

    goto :goto_38

    .line 166
    :cond_59
    iget-object v6, v15, Ls/d;->R:[Ls/c;

    aget-object v6, v6, v16

    if-eqz v6, :cond_5a

    .line 167
    iget-object v7, v6, Ls/c;->i:Lq/h;

    goto :goto_37

    :cond_5a
    move-object/from16 v7, v17

    .line 168
    :goto_37
    iget-object v9, v11, Ls/d;->R:[Ls/c;

    aget-object v9, v9, v4

    iget-object v9, v9, Ls/c;->i:Lq/h;

    :goto_38
    if-eqz v6, :cond_5b

    .line 169
    invoke-virtual {v6}, Ls/c;->d()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v20, v6

    goto :goto_39

    :cond_5b
    move/from16 v20, v5

    .line 170
    :goto_39
    iget-object v5, v14, Ls/d;->R:[Ls/c;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ls/c;->d()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v22, :cond_5c

    const/16 v21, 0x8

    goto :goto_3a

    :cond_5c
    move/from16 v21, v25

    :goto_3a
    if-eqz v2, :cond_5d

    if-eqz v3, :cond_5d

    if-eqz v7, :cond_5d

    if-eqz v9, :cond_5d

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v26, v8

    move/from16 v8, v20

    move-object/from16 v20, v14

    const/16 v14, 0x8

    move/from16 v9, v21

    .line 171
    invoke-virtual/range {v1 .. v9}, Lq/d;->b(Lq/h;Lq/h;IFLq/h;Lq/h;II)V

    goto :goto_3b

    :cond_5d
    move-object/from16 v26, v8

    move-object/from16 v20, v14

    const/16 v14, 0x8

    :goto_3b
    move-object/from16 v8, v26

    goto :goto_3c

    :cond_5e
    move-object/from16 v20, v14

    move v14, v9

    move-object v8, v1

    .line 172
    :goto_3c
    iget v1, v11, Ls/d;->i0:I

    if-eq v1, v14, :cond_5f

    move-object/from16 v20, v11

    :cond_5f
    move-object v11, v8

    move v9, v14

    move-object/from16 v14, v20

    goto/16 :goto_34

    .line 173
    :cond_60
    iget-object v1, v0, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v16

    .line 174
    iget-object v2, v12, Ls/d;->R:[Ls/c;

    aget-object v2, v2, v16

    iget-object v2, v2, Ls/c;->f:Ls/c;

    .line 175
    iget-object v3, v15, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v11, v3, v4

    .line 176
    iget-object v3, v13, Ls/d;->R:[Ls/c;

    aget-object v3, v3, v4

    iget-object v12, v3, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_62

    if-eq v0, v15, :cond_61

    .line 177
    iget-object v3, v1, Ls/c;->i:Lq/h;

    iget-object v2, v2, Ls/c;->i:Lq/h;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    const/4 v14, 0x5

    invoke-virtual {v10, v3, v2, v1, v14}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    goto :goto_3d

    :cond_61
    const/4 v14, 0x5

    if-eqz v12, :cond_63

    .line 178
    iget-object v3, v1, Ls/c;->i:Lq/h;

    iget-object v4, v2, Ls/c;->i:Lq/h;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v11, Ls/c;->i:Lq/h;

    iget-object v8, v12, Ls/c;->i:Lq/h;

    .line 179
    invoke-virtual {v11}, Ls/c;->d()I

    move-result v9

    const/16 v20, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move/from16 v9, v20

    .line 180
    invoke-virtual/range {v1 .. v9}, Lq/d;->b(Lq/h;Lq/h;IFLq/h;Lq/h;II)V

    goto :goto_3d

    :cond_62
    const/4 v14, 0x5

    :cond_63
    :goto_3d
    if-eqz v12, :cond_64

    if-eq v0, v15, :cond_64

    .line 181
    iget-object v1, v11, Ls/c;->i:Lq/h;

    iget-object v2, v12, Ls/c;->i:Lq/h;

    invoke-virtual {v11}, Ls/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v1, v2, v3, v14}, Lq/d;->d(Lq/h;Lq/h;II)Lq/b;

    :cond_64
    :goto_3e
    if-nez v24, :cond_65

    if-eqz v23, :cond_6c

    :cond_65
    if-eqz v0, :cond_6c

    if-eq v0, v15, :cond_6c

    .line 182
    iget-object v1, v0, Ls/d;->R:[Ls/c;

    aget-object v2, v1, v16

    if-nez v15, :cond_66

    move-object v8, v0

    goto :goto_3f

    :cond_66
    move-object v8, v15

    .line 183
    :goto_3f
    iget-object v3, v8, Ls/d;->R:[Ls/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    .line 184
    iget-object v5, v2, Ls/c;->f:Ls/c;

    if-eqz v5, :cond_67

    iget-object v5, v5, Ls/c;->i:Lq/h;

    goto :goto_40

    :cond_67
    move-object/from16 v5, v17

    .line 185
    :goto_40
    iget-object v6, v3, Ls/c;->f:Ls/c;

    if-eqz v6, :cond_68

    iget-object v6, v6, Ls/c;->i:Lq/h;

    goto :goto_41

    :cond_68
    move-object/from16 v6, v17

    :goto_41
    if-eq v13, v8, :cond_6a

    .line 186
    iget-object v6, v13, Ls/d;->R:[Ls/c;

    aget-object v6, v6, v4

    .line 187
    iget-object v6, v6, Ls/c;->f:Ls/c;

    if-eqz v6, :cond_69

    iget-object v6, v6, Ls/c;->i:Lq/h;

    move-object/from16 v17, v6

    :cond_69
    move-object/from16 v6, v17

    :cond_6a
    if-ne v0, v8, :cond_6b

    .line 188
    aget-object v2, v1, v16

    .line 189
    aget-object v3, v1, v4

    :cond_6b
    if-eqz v5, :cond_6c

    if-eqz v6, :cond_6c

    const/high16 v0, 0x3f000000    # 0.5f

    .line 190
    invoke-virtual {v2}, Ls/c;->d()I

    move-result v7

    .line 191
    iget-object v1, v8, Ls/d;->R:[Ls/c;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v8

    .line 192
    iget-object v2, v2, Ls/c;->i:Lq/h;

    iget-object v9, v3, Ls/c;->i:Lq/h;

    const/4 v11, 0x5

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v7

    move v5, v0

    move-object v7, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lq/d;->b(Lq/h;Lq/h;IFLq/h;Lq/h;II)V

    :cond_6c
    :goto_42
    add-int/lit8 v9, v18, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v29

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_6d
    return-void
.end method

.method public static final c(I)I
    .locals 5

    .line 1
    new-instance v0, Lvd/e;

    const/4 v1, 0x2

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lvd/e;-><init>(II)V

    invoke-virtual {v0, p0}, Lvd/e;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "radix "

    const-string v4, " was not in valid range "

    .line 3
    invoke-static {v3, p0, v4}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 4
    new-instance v3, Lvd/e;

    invoke-direct {v3, v1, v2}, Lvd/e;-><init>(II)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p1, p0}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final e(DLzd/c;Lzd/c;)D
    .locals 6

    const-string v0, "sourceUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUnit"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p3, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p2, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    long-to-double p2, v0

    mul-double/2addr p0, p2

    return-wide p0

    .line 3
    :cond_0
    iget-object p2, p2, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p3, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {p2, v2, v3, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static final f(JLzd/c;Lzd/c;)J
    .locals 1

    const-string v0, "sourceUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUnit"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p3, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p2, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final g(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfd/f$a;

    invoke-direct {v0, p0}, Lfd/f$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final i(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    .line 3
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static final j()Lfb/e;
    .locals 1

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v0, Lv9/t;->d:Lfb/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adaptKitLog"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final k()Leb/e;
    .locals 1

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v0, Lv9/t;->i:Leb/f;

    return-object v0
.end method

.method public static l()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Looper"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMainLooper"

    new-array v3, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static final m(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public static o(Lm5/w;II)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lm5/w;->D(I)V

    .line 2
    iget p1, p0, Lm5/w;->c:I

    iget v0, p0, Lm5/w;->b:I

    sub-int/2addr p1, v0

    const/4 v0, 0x5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p1, v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    const v0, 0x1fff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, p2, :cond_2

    return-wide v1

    :cond_2
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-nez p1, :cond_4

    return-wide v1

    .line 4
    :cond_4
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_6

    .line 5
    iget p1, p0, Lm5/w;->c:I

    iget v4, p0, Lm5/w;->b:I

    sub-int/2addr p1, v4

    if-lt p1, v3, :cond_6

    .line 6
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result p1

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_5

    move p1, p2

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    if-eqz p1, :cond_6

    const/4 p1, 0x6

    new-array v1, p1, [B

    .line 7
    invoke-virtual {p0, v1, v0, p1}, Lm5/w;->d([BII)V

    aget-byte p0, v1, v0

    int-to-long p0, p0

    const-wide/16 v4, 0xff

    and-long/2addr p0, v4

    const/16 v0, 0x19

    shl-long/2addr p0, v0

    aget-byte v0, v1, p2

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x11

    shl-long/2addr v6, v0

    or-long/2addr p0, v6

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x9

    shl-long/2addr v6, v0

    or-long/2addr p0, v6

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    shl-long/2addr v6, p2

    or-long/2addr p0, v6

    const/4 p2, 0x4

    aget-byte p2, v1, p2

    int-to-long v0, p2

    and-long/2addr v0, v4

    shr-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_6
    return-wide v1
.end method

.method public static final p(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lfd/f$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lfd/f$a;

    iget-object p0, p0, Lfd/f$a;->h:Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public b(Lr2/w;Lp2/h;)Lr2/w;
    .locals 0

    return-object p1
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lg7/p;

    invoke-direct {v0}, Lg7/p;-><init>()V

    return-object v0
.end method
