.class public abstract Lj5/n;
.super Lj5/s;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj5/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj5/n$a;

    return-void
.end method

.method public final c([Ln3/t1;Lp4/u0;)Lj5/t;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lp4/t0;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    .line 4
    iget v8, v1, Lp4/u0;->h:I

    new-array v9, v8, [Lp4/t0;

    aput-object v9, v5, v7

    .line 5
    new-array v8, v8, [[I

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, v0

    new-array v14, v4, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    .line 7
    aget-object v8, v0, v7

    invoke-interface {v8}, Ln3/t1;->j()I

    move-result v8

    aput v8, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget v7, v1, Lp4/u0;->h:I

    if-ge v4, v7, :cond_a

    .line 9
    invoke-virtual {v1, v4}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v7

    .line 10
    iget v8, v7, Lp4/t0;->j:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    .line 11
    :goto_3
    array-length v9, v0

    move v12, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 12
    :goto_4
    array-length v15, v0

    if-ge v10, v15, :cond_7

    .line 13
    aget-object v15, v0, v10

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 14
    :goto_5
    iget v1, v7, Lp4/t0;->h:I

    if-ge v13, v1, :cond_3

    .line 15
    iget-object v1, v7, Lp4/t0;->k:[Ln3/s0;

    aget-object v1, v1, v13

    .line 16
    invoke-interface {v15, v1}, Ln3/t1;->a(Ln3/s0;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 17
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 18
    :cond_3
    aget v1, v2, v10

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    if-gt v3, v11, :cond_5

    if-ne v3, v11, :cond_6

    if-eqz v8, :cond_6

    if-nez v12, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v12, v1

    move v11, v3

    move v9, v10

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    goto :goto_4

    .line 19
    :cond_7
    array-length v1, v0

    if-ne v9, v1, :cond_8

    .line 20
    iget v1, v7, Lp4/t0;->h:I

    new-array v1, v1, [I

    goto :goto_8

    .line 21
    :cond_8
    aget-object v1, v0, v9

    .line 22
    iget v3, v7, Lp4/t0;->h:I

    new-array v3, v3, [I

    const/4 v8, 0x0

    .line 23
    :goto_7
    iget v10, v7, Lp4/t0;->h:I

    if-ge v8, v10, :cond_9

    .line 24
    iget-object v10, v7, Lp4/t0;->k:[Ln3/s0;

    aget-object v10, v10, v8

    .line 25
    invoke-interface {v1, v10}, Ln3/t1;->a(Ln3/s0;)I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    .line 26
    :goto_8
    aget v3, v2, v9

    .line 27
    aget-object v8, v5, v9

    aput-object v7, v8, v3

    .line 28
    aget-object v7, v6, v9

    aput-object v1, v7, v3

    .line 29
    aget v1, v2, v9

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aput v1, v2, v9

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 30
    :cond_a
    array-length v1, v0

    new-array v9, v1, [Lp4/u0;

    .line 31
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 32
    array-length v3, v0

    new-array v8, v3, [I

    const/4 v3, 0x0

    .line 33
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_b

    .line 34
    aget v4, v2, v3

    .line 35
    new-instance v7, Lp4/u0;

    aget-object v10, v5, v3

    .line 36
    invoke-static {v10, v4}, Lm5/g0;->N([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lp4/t0;

    invoke-direct {v7, v10}, Lp4/u0;-><init>([Lp4/t0;)V

    aput-object v7, v9, v3

    .line 37
    aget-object v7, v6, v3

    .line 38
    invoke-static {v7, v4}, Lm5/g0;->N([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v6, v3

    .line 39
    aget-object v4, v0, v3

    invoke-interface {v4}, Ln3/t1;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 40
    aget-object v4, v0, v3

    check-cast v4, Ln3/f;

    .line 41
    iget v4, v4, Ln3/f;->h:I

    .line 42
    aput v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 43
    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    .line 44
    new-instance v12, Lp4/u0;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 45
    invoke-static {v0, v1}, Lm5/g0;->N([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp4/t0;

    invoke-direct {v12, v0}, Lp4/u0;-><init>([Lp4/t0;)V

    .line 46
    new-instance v0, Lj5/n$a;

    move-object v7, v0

    move-object v10, v14

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lj5/n$a;-><init>([I[Lp4/u0;[I[[[ILp4/u0;)V

    .line 47
    move-object/from16 v1, p0

    check-cast v1, Lj5/i;

    .line 48
    iget-object v2, v1, Lj5/i;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v3, v1, Lj5/i;->f:Lj5/i$c;

    .line 50
    iget-boolean v4, v3, Lj5/i$c;->R:Z

    const/16 v5, 0x20

    if-eqz v4, :cond_c

    sget v4, Lm5/g0;->a:I

    if-lt v4, v5, :cond_c

    iget-object v4, v1, Lj5/i;->g:Lj5/i$e;

    if-eqz v4, :cond_c

    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v7}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Lj5/i$e;->b(Lj5/i;Landroid/os/Looper;)V

    .line 52
    :cond_c
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget v2, v0, Lj5/n$a;->a:I

    .line 54
    new-array v4, v2, [Lj5/l$a;

    .line 55
    new-instance v11, Lo3/i0;

    const/4 v13, 0x3

    invoke-direct {v11, v3, v14, v13}, Lo3/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v12, Ll4/d;->i:Ll4/d;

    const/4 v8, 0x2

    move-object v7, v1

    move-object v9, v0

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lj5/i;->k(ILj5/n$a;[[[ILj5/i$g$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 56
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lj5/l$a;

    aput-object v7, v4, v8

    :cond_d
    const/4 v7, 0x0

    .line 57
    :goto_a
    iget v8, v0, Lj5/n$a;->a:I

    const/4 v14, 0x2

    if-ge v7, v8, :cond_f

    .line 58
    iget-object v8, v0, Lj5/n$a;->b:[I

    aget v8, v8, v7

    if-ne v14, v8, :cond_e

    .line 59
    iget-object v8, v0, Lj5/n$a;->c:[Lp4/u0;

    aget-object v8, v8, v7

    .line 60
    iget v8, v8, Lp4/u0;->h:I

    if-lez v8, :cond_e

    const/4 v7, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_b
    const/4 v8, 0x1

    .line 61
    new-instance v11, Lj5/d;

    invoke-direct {v11, v1, v3, v7}, Lj5/d;-><init>(Lj5/i;Lj5/i$c;Z)V

    sget-object v12, Lj5/e;->i:Lj5/e;

    move-object v7, v1

    move-object v9, v0

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lj5/i;->k(ILj5/n$a;[[[ILj5/i$g$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 62
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lj5/l$a;

    aput-object v9, v4, v8

    :cond_10
    if-nez v7, :cond_11

    const/4 v7, 0x0

    goto :goto_c

    .line 63
    :cond_11
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lj5/l$a;

    iget-object v8, v7, Lj5/l$a;->a:Lp4/t0;

    iget-object v7, v7, Lj5/l$a;->b:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    .line 64
    iget-object v8, v8, Lp4/t0;->k:[Ln3/s0;

    aget-object v7, v8, v7

    .line 65
    iget-object v7, v7, Ln3/s0;->j:Ljava/lang/String;

    .line 66
    :goto_c
    new-instance v11, Lo3/h0;

    invoke-direct {v11, v3, v7, v14}, Lo3/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v12, Ls4/a;->j:Ls4/a;

    const/4 v8, 0x3

    move-object v7, v1

    move-object v9, v0

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lj5/i;->k(ILj5/n$a;[[[ILj5/i$g$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 67
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lj5/l$a;

    aput-object v7, v4, v8

    :cond_12
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v2, :cond_1a

    .line 68
    iget-object v8, v0, Lj5/n$a;->b:[I

    aget v8, v8, v7

    if-eq v8, v14, :cond_19

    const/4 v9, 0x1

    if-eq v8, v9, :cond_19

    if-eq v8, v13, :cond_19

    .line 69
    iget-object v8, v0, Lj5/n$a;->c:[Lp4/u0;

    aget-object v8, v8, v7

    .line 70
    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    .line 71
    :goto_e
    iget v13, v8, Lp4/u0;->h:I

    if-ge v10, v13, :cond_17

    .line 72
    invoke-virtual {v8, v10}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v13

    .line 73
    aget-object v17, v9, v10

    move-object/from16 v14, v16

    const/4 v5, 0x0

    .line 74
    :goto_f
    iget v15, v13, Lp4/t0;->h:I

    if-ge v5, v15, :cond_16

    .line 75
    aget v15, v17, v5

    move-object/from16 v18, v8

    iget-boolean v8, v3, Lj5/i$c;->S:Z

    invoke-static {v15, v8}, Lj5/i;->h(IZ)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 76
    iget-object v8, v13, Lp4/t0;->k:[Ln3/s0;

    aget-object v8, v8, v5

    .line 77
    new-instance v15, Lj5/i$b;

    move-object/from16 v19, v9

    aget v9, v17, v5

    invoke-direct {v15, v8, v9}, Lj5/i$b;-><init>(Ln3/s0;I)V

    if-eqz v14, :cond_13

    .line 78
    invoke-virtual {v15, v14}, Lj5/i$b;->b(Lj5/i$b;)I

    move-result v8

    if-lez v8, :cond_15

    :cond_13
    move v11, v5

    move-object v12, v13

    move-object v14, v15

    goto :goto_10

    :cond_14
    move-object/from16 v19, v9

    :cond_15
    :goto_10
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    goto :goto_f

    :cond_16
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v16, v14

    const/16 v5, 0x20

    const/4 v14, 0x2

    goto :goto_e

    :cond_17
    if-nez v12, :cond_18

    const/4 v5, 0x0

    goto :goto_11

    .line 79
    :cond_18
    new-instance v5, Lj5/l$a;

    const/4 v8, 0x1

    new-array v9, v8, [I

    const/4 v8, 0x0

    aput v11, v9, v8

    .line 80
    invoke-direct {v5, v12, v9, v8}, Lj5/l$a;-><init>(Lp4/t0;[II)V

    .line 81
    :goto_11
    aput-object v5, v4, v7

    :cond_19
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x20

    const/4 v13, 0x3

    const/4 v14, 0x2

    goto :goto_d

    .line 82
    :cond_1a
    iget v5, v0, Lj5/n$a;->a:I

    .line 83
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v5, :cond_1b

    .line 84
    iget-object v9, v0, Lj5/n$a;->c:[Lp4/u0;

    aget-object v9, v9, v8

    .line 85
    invoke-static {v9, v3, v7}, Lj5/i;->f(Lp4/u0;Lj5/q;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 86
    :cond_1b
    iget-object v8, v0, Lj5/n$a;->f:Lp4/u0;

    .line 87
    invoke-static {v8, v3, v7}, Lj5/i;->f(Lp4/u0;Lj5/q;Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_13
    const/4 v9, -0x1

    if-ge v8, v5, :cond_1e

    .line 88
    iget-object v10, v0, Lj5/n$a;->b:[I

    aget v10, v10, v8

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj5/p;

    if-nez v10, :cond_1c

    goto :goto_15

    .line 90
    :cond_1c
    iget-object v11, v10, Lj5/p;->i:Lu6/v;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 91
    iget-object v11, v0, Lj5/n$a;->c:[Lp4/u0;

    aget-object v11, v11, v8

    .line 92
    iget-object v12, v10, Lj5/p;->h:Lp4/t0;

    invoke-virtual {v11, v12}, Lp4/u0;->c(Lp4/t0;)I

    move-result v11

    if-eq v11, v9, :cond_1d

    .line 93
    new-instance v9, Lj5/l$a;

    iget-object v11, v10, Lj5/p;->h:Lp4/t0;

    iget-object v10, v10, Lj5/p;->i:Lu6/v;

    .line 94
    invoke-static {v10}, Lw6/a;->d(Ljava/util/Collection;)[I

    move-result-object v10

    const/4 v12, 0x0

    .line 95
    invoke-direct {v9, v11, v10, v12}, Lj5/l$a;-><init>(Lp4/t0;[II)V

    goto :goto_14

    :cond_1d
    const/4 v9, 0x0

    .line 96
    :goto_14
    aput-object v9, v4, v8

    :goto_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 97
    :cond_1e
    iget v5, v0, Lj5/n$a;->a:I

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v5, :cond_23

    .line 98
    iget-object v8, v0, Lj5/n$a;->c:[Lp4/u0;

    aget-object v8, v8, v7

    .line 99
    iget-object v10, v3, Lj5/i$c;->V:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-eqz v10, :cond_1f

    .line 101
    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v10, 0x1

    goto :goto_17

    :cond_1f
    const/4 v10, 0x0

    :goto_17
    if-nez v10, :cond_20

    goto :goto_1a

    .line 102
    :cond_20
    iget-object v10, v3, Lj5/i$c;->V:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-eqz v10, :cond_21

    .line 104
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj5/i$d;

    goto :goto_18

    :cond_21
    const/4 v10, 0x0

    :goto_18
    if-eqz v10, :cond_22

    .line 105
    iget-object v11, v10, Lj5/i$d;->i:[I

    array-length v11, v11

    if-eqz v11, :cond_22

    .line 106
    new-instance v11, Lj5/l$a;

    iget v12, v10, Lj5/i$d;->h:I

    .line 107
    invoke-virtual {v8, v12}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v8

    iget-object v12, v10, Lj5/i$d;->i:[I

    iget v10, v10, Lj5/i$d;->j:I

    invoke-direct {v11, v8, v12, v10}, Lj5/l$a;-><init>(Lp4/t0;[II)V

    goto :goto_19

    :cond_22
    const/4 v11, 0x0

    .line 108
    :goto_19
    aput-object v11, v4, v7

    :goto_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_23
    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v2, :cond_26

    .line 109
    iget-object v7, v0, Lj5/n$a;->b:[I

    aget v7, v7, v5

    .line 110
    iget-object v8, v3, Lj5/i$c;->W:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_24

    .line 111
    iget-object v8, v3, Lj5/q;->G:Lu6/a0;

    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lu6/t;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    :cond_24
    const/4 v7, 0x0

    .line 113
    aput-object v7, v4, v5

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 114
    :cond_26
    iget-object v5, v1, Lj5/i;->d:Lj5/l$b;

    .line 115
    iget-object v1, v1, Lj5/s;->b:Ll5/e;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    check-cast v5, Lj5/a$b;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1c
    const-wide/16 v10, 0x0

    if-ge v7, v2, :cond_28

    .line 118
    aget-object v8, v4, v7

    if-eqz v8, :cond_27

    aget-object v8, v4, v7

    iget-object v8, v8, Lj5/l$a;->b:[I

    array-length v8, v8

    const/4 v12, 0x1

    if-le v8, v12, :cond_27

    .line 119
    sget-object v8, Lu6/v;->i:Lu6/v$b;

    .line 120
    new-instance v8, Lu6/v$a;

    invoke-direct {v8}, Lu6/v$a;-><init>()V

    .line 121
    new-instance v12, Lj5/a$a;

    invoke-direct {v12, v10, v11, v10, v11}, Lj5/a$a;-><init>(JJ)V

    invoke-virtual {v8, v12}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    .line 122
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_1d

    :cond_27
    const/4 v8, 0x0

    .line 123
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_28
    const/4 v8, 0x0

    .line 124
    new-array v7, v2, [[J

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v2, :cond_2b

    .line 125
    aget-object v13, v4, v12

    if-nez v13, :cond_29

    const/4 v14, 0x0

    new-array v13, v14, [J

    .line 126
    aput-object v13, v7, v12

    goto :goto_20

    .line 127
    :cond_29
    iget-object v14, v13, Lj5/l$a;->b:[I

    array-length v14, v14

    new-array v14, v14, [J

    aput-object v14, v7, v12

    const/4 v14, 0x0

    .line 128
    :goto_1f
    iget-object v15, v13, Lj5/l$a;->b:[I

    array-length v8, v15

    if-ge v14, v8, :cond_2a

    .line 129
    aget-object v8, v7, v12

    iget-object v10, v13, Lj5/l$a;->a:Lp4/t0;

    aget v11, v15, v14

    .line 130
    iget-object v10, v10, Lp4/t0;->k:[Ln3/s0;

    aget-object v10, v10, v11

    .line 131
    iget v10, v10, Ln3/s0;->o:I

    int-to-long v10, v10

    aput-wide v10, v8, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    goto :goto_1f

    .line 132
    :cond_2a
    aget-object v8, v7, v12

    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    :goto_20
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    goto :goto_1e

    .line 133
    :cond_2b
    new-array v8, v2, [I

    .line 134
    new-array v10, v2, [J

    const/4 v11, 0x0

    :goto_21
    if-ge v11, v2, :cond_2d

    .line 135
    aget-object v12, v7, v11

    array-length v12, v12

    if-nez v12, :cond_2c

    const-wide/16 v14, 0x0

    goto :goto_22

    :cond_2c
    aget-object v12, v7, v11

    const/4 v13, 0x0

    aget-wide v14, v12, v13

    :goto_22
    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 136
    :cond_2d
    invoke-static {v5, v10}, Lj5/a;->u(Ljava/util/List;[J)V

    .line 137
    sget-object v11, Lu6/m0;->h:Lu6/m0;

    const-string v12, "expectedValuesPerKey"

    const/4 v13, 0x2

    .line 138
    invoke-static {v13, v12}, Lu6/h;->b(ILjava/lang/String;)I

    .line 139
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 140
    new-instance v11, Lu6/j0;

    invoke-direct {v11, v13}, Lu6/j0;-><init>(I)V

    .line 141
    new-instance v13, Lu6/k0;

    invoke-direct {v13, v12, v11}, Lu6/k0;-><init>(Ljava/util/Map;Lt6/o;)V

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v2, :cond_33

    .line 142
    aget-object v12, v7, v11

    array-length v12, v12

    const/4 v14, 0x1

    if-gt v12, v14, :cond_2e

    move-object/from16 v17, v0

    move-object/from16 v30, v1

    goto/16 :goto_28

    .line 143
    :cond_2e
    aget-object v12, v7, v11

    array-length v12, v12

    new-array v14, v12, [D

    const/4 v15, 0x0

    .line 144
    :goto_24
    aget-object v9, v7, v11

    array-length v9, v9

    const-wide/16 v18, 0x0

    if-ge v15, v9, :cond_30

    .line 145
    aget-object v9, v7, v11

    aget-wide v20, v9, v15

    const-wide/16 v22, -0x1

    cmp-long v9, v20, v22

    if-nez v9, :cond_2f

    move-object/from16 v17, v0

    move-object/from16 v30, v1

    goto :goto_25

    :cond_2f
    aget-object v9, v7, v11

    move-object/from16 v17, v0

    move-object/from16 v30, v1

    aget-wide v0, v9, v15

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    :goto_25
    aput-wide v18, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    goto :goto_24

    :cond_30
    move-object/from16 v17, v0

    move-object/from16 v30, v1

    add-int/lit8 v12, v12, -0x1

    .line 146
    aget-wide v0, v14, v12

    const/4 v9, 0x0

    aget-wide v20, v14, v9

    sub-double v0, v0, v20

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v12, :cond_32

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 147
    aget-wide v22, v14, v9

    add-int/lit8 v9, v9, 0x1

    aget-wide v24, v14, v9

    add-double v22, v22, v24

    mul-double v22, v22, v20

    cmpl-double v15, v0, v18

    if-nez v15, :cond_31

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto :goto_27

    :cond_31
    const/4 v15, 0x0

    .line 148
    aget-wide v20, v14, v15

    sub-double v22, v22, v20

    div-double v20, v22, v0

    .line 149
    :goto_27
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-wide/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Lu6/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-wide/from16 v0, v20

    goto :goto_26

    :cond_32
    :goto_28
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    const/4 v9, -0x1

    goto/16 :goto_23

    :cond_33
    move-object/from16 v17, v0

    move-object/from16 v30, v1

    .line 150
    iget-object v0, v13, Lu6/f;->i:Ljava/util/Collection;

    if-nez v0, :cond_34

    .line 151
    new-instance v0, Lu6/f$a;

    invoke-direct {v0, v13}, Lu6/f$a;-><init>(Lu6/f;)V

    .line 152
    iput-object v0, v13, Lu6/f;->i:Ljava/util/Collection;

    .line 153
    :cond_34
    invoke-static {v0}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    :goto_29
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v1, v9, :cond_35

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 156
    aget v11, v8, v9

    const/4 v12, 0x1

    add-int/2addr v11, v12

    aput v11, v8, v9

    .line 157
    aget-object v12, v7, v9

    aget-wide v11, v12, v11

    aput-wide v11, v10, v9

    .line 158
    invoke-static {v5, v10}, Lj5/a;->u(Ljava/util/List;[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_35
    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v2, :cond_37

    .line 159
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 160
    aget-wide v7, v10, v0

    const-wide/16 v11, 0x2

    mul-long/2addr v7, v11

    aput-wide v7, v10, v0

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 161
    :cond_37
    invoke-static {v5, v10}, Lj5/a;->u(Ljava/util/List;[J)V

    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    .line 162
    invoke-static {v1, v0}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 163
    :goto_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_3a

    .line 164
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lu6/v$a;

    if-nez v9, :cond_38

    .line 165
    sget-object v9, Lu6/p0;->l:Lu6/p0;

    goto :goto_2c

    .line 166
    :cond_38
    invoke-virtual {v9}, Lu6/v$a;->e()Lu6/v;

    move-result-object v9

    .line 167
    :goto_2c
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v8, 0x1

    .line 168
    array-length v11, v0

    if-ge v11, v10, :cond_39

    .line 169
    array-length v11, v0

    .line 170
    invoke-static {v11, v10}, Lu6/t$b;->a(II)I

    move-result v11

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 171
    :cond_39
    aput-object v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_2b

    .line 172
    :cond_3a
    invoke-static {v0, v8}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v0

    .line 173
    new-array v5, v2, [Lj5/l;

    const/4 v9, 0x0

    :goto_2d
    if-ge v9, v2, :cond_3e

    .line 174
    aget-object v7, v4, v9

    if-eqz v7, :cond_3d

    .line 175
    iget-object v8, v7, Lj5/l$a;->b:[I

    array-length v10, v8

    if-nez v10, :cond_3b

    goto :goto_2f

    .line 176
    :cond_3b
    array-length v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3c

    .line 177
    new-instance v10, Lj5/m;

    iget-object v11, v7, Lj5/l$a;->a:Lp4/t0;

    const/4 v12, 0x0

    aget v8, v8, v12

    iget v7, v7, Lj5/l$a;->c:I

    invoke-direct {v10, v11, v8, v7}, Lj5/m;-><init>(Lp4/t0;II)V

    goto :goto_2e

    .line 178
    :cond_3c
    iget-object v10, v7, Lj5/l$a;->a:Lp4/t0;

    iget v7, v7, Lj5/l$a;->c:I

    .line 179
    move-object v11, v0

    check-cast v11, Lu6/p0;

    invoke-virtual {v11, v9}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v29, v11

    check-cast v29, Lu6/v;

    .line 180
    new-instance v11, Lj5/a;

    const/16 v12, 0x2710

    int-to-long v12, v12

    const/16 v14, 0x61a8

    int-to-long v14, v14

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v8

    move/from16 v21, v7

    move-object/from16 v22, v30

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-wide/from16 v27, v14

    invoke-direct/range {v18 .. v29}, Lj5/a;-><init>(Lp4/t0;[IILl5/e;JJJLjava/util/List;)V

    move-object v10, v11

    .line 181
    :goto_2e
    aput-object v10, v5, v9

    :cond_3d
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 182
    :cond_3e
    new-array v0, v2, [Ln3/u1;

    const/4 v9, 0x0

    :goto_30
    if-ge v9, v2, :cond_44

    move-object/from16 v4, v17

    .line 183
    iget-object v7, v4, Lj5/n$a;->b:[I

    aget v7, v7, v9

    .line 184
    iget-object v8, v3, Lj5/i$c;->W:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_40

    .line 185
    iget-object v8, v3, Lj5/q;->G:Lu6/a0;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lu6/t;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    goto :goto_31

    :cond_3f
    const/4 v7, 0x0

    goto :goto_32

    :cond_40
    :goto_31
    const/4 v7, 0x1

    :goto_32
    if-nez v7, :cond_42

    .line 186
    iget-object v7, v4, Lj5/n$a;->b:[I

    aget v7, v7, v9

    const/4 v8, -0x2

    if-eq v7, v8, :cond_41

    .line 187
    aget-object v7, v5, v9

    if-eqz v7, :cond_42

    :cond_41
    const/4 v7, 0x1

    goto :goto_33

    :cond_42
    const/4 v7, 0x0

    :goto_33
    if-eqz v7, :cond_43

    .line 188
    sget-object v7, Ln3/u1;->b:Ln3/u1;

    goto :goto_34

    :cond_43
    const/4 v7, 0x0

    :goto_34
    aput-object v7, v0, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v4

    goto :goto_30

    :cond_44
    move-object/from16 v4, v17

    .line 189
    iget-boolean v2, v3, Lj5/i$c;->T:Z

    if-eqz v2, :cond_4f

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v9, 0x0

    .line 190
    :goto_35
    iget v7, v4, Lj5/n$a;->a:I

    if-ge v9, v7, :cond_4d

    .line 191
    iget-object v7, v4, Lj5/n$a;->b:[I

    aget v7, v7, v9

    .line 192
    aget-object v8, v5, v9

    const/4 v10, 0x1

    if-eq v7, v10, :cond_46

    const/4 v10, 0x2

    if-ne v7, v10, :cond_45

    goto :goto_36

    :cond_45
    const/16 v15, 0x20

    goto :goto_3a

    :cond_46
    const/4 v10, 0x2

    :goto_36
    if-eqz v8, :cond_45

    .line 193
    aget-object v11, v6, v9

    .line 194
    iget-object v12, v4, Lj5/n$a;->c:[Lp4/u0;

    aget-object v12, v12, v9

    .line 195
    invoke-interface {v8}, Lj5/o;->l()Lp4/t0;

    move-result-object v13

    invoke-virtual {v12, v13}, Lp4/u0;->c(Lp4/t0;)I

    move-result v12

    const/4 v13, 0x0

    .line 196
    :goto_37
    invoke-interface {v8}, Lj5/o;->length()I

    move-result v14

    if-ge v13, v14, :cond_48

    .line 197
    aget-object v14, v11, v12

    invoke-interface {v8, v13}, Lj5/o;->i(I)I

    move-result v15

    aget v14, v14, v15

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_47

    const/4 v8, 0x0

    goto :goto_38

    :cond_47
    add-int/lit8 v13, v13, 0x1

    goto :goto_37

    :cond_48
    const/16 v15, 0x20

    const/4 v8, 0x1

    :goto_38
    if-eqz v8, :cond_4c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4a

    const/4 v7, -0x1

    if-eq v3, v7, :cond_49

    goto :goto_39

    :cond_49
    move v3, v9

    goto :goto_3a

    :cond_4a
    const/4 v7, -0x1

    if-eq v2, v7, :cond_4b

    :goto_39
    const/4 v6, 0x0

    goto :goto_3b

    :cond_4b
    move v2, v9

    :cond_4c
    :goto_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_4d
    const/4 v6, 0x1

    :goto_3b
    const/4 v7, -0x1

    if-eq v3, v7, :cond_4e

    if-eq v2, v7, :cond_4e

    const/4 v7, 0x1

    goto :goto_3c

    :cond_4e
    const/4 v7, 0x0

    :goto_3c
    and-int/2addr v6, v7

    if-eqz v6, :cond_4f

    .line 198
    new-instance v6, Ln3/u1;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ln3/u1;-><init>(Z)V

    .line 199
    aput-object v6, v0, v3

    .line 200
    aput-object v6, v0, v2

    .line 201
    :cond_4f
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 202
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lj5/o;

    .line 203
    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v9, 0x0

    .line 204
    :goto_3d
    array-length v5, v2

    if-ge v9, v5, :cond_51

    .line 205
    aget-object v5, v2, v9

    if-eqz v5, :cond_50

    .line 206
    invoke-static {v5}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v5

    goto :goto_3e

    :cond_50
    sget-object v5, Lu6/v;->i:Lu6/v$b;

    .line 207
    sget-object v5, Lu6/p0;->l:Lu6/p0;

    .line 208
    :goto_3e
    aput-object v5, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 209
    :cond_51
    new-instance v2, Lu6/v$a;

    invoke-direct {v2}, Lu6/v$a;-><init>()V

    const/4 v9, 0x0

    .line 210
    :goto_3f
    iget v5, v4, Lj5/n$a;->a:I

    if-ge v9, v5, :cond_5d

    .line 211
    iget-object v5, v4, Lj5/n$a;->c:[Lp4/u0;

    aget-object v5, v5, v9

    .line 212
    aget-object v6, v3, v9

    const/4 v7, 0x0

    .line 213
    :goto_40
    iget v8, v5, Lp4/u0;->h:I

    if-ge v7, v8, :cond_5c

    .line 214
    invoke-virtual {v5, v7}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v8

    .line 215
    iget-object v10, v4, Lj5/n$a;->c:[Lp4/u0;

    aget-object v10, v10, v9

    invoke-virtual {v10, v7}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v10

    iget v10, v10, Lp4/t0;->h:I

    .line 216
    new-array v11, v10, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_41
    if-ge v12, v10, :cond_53

    .line 217
    iget-object v14, v4, Lj5/n$a;->e:[[[I

    aget-object v14, v14, v9

    aget-object v14, v14, v7

    aget v14, v14, v12

    and-int/lit8 v14, v14, 0x7

    if-eq v14, v1, :cond_52

    goto :goto_42

    :cond_52
    add-int/lit8 v14, v13, 0x1

    .line 218
    aput v12, v11, v13

    move v13, v14

    :goto_42
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    .line 219
    :cond_53
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    const/16 v11, 0x10

    move v15, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 220
    :goto_43
    array-length v1, v10

    if-ge v12, v1, :cond_55

    .line 221
    aget v1, v10, v12

    move-object/from16 v16, v3

    .line 222
    iget-object v3, v4, Lj5/n$a;->c:[Lp4/u0;

    aget-object v3, v3, v9

    .line 223
    invoke-virtual {v3, v7}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v3

    .line 224
    iget-object v3, v3, Lp4/t0;->k:[Ln3/s0;

    aget-object v1, v3, v1

    .line 225
    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    add-int/lit8 v3, v14, 0x1

    if-nez v14, :cond_54

    move-object v11, v1

    const/4 v14, 0x1

    goto :goto_44

    .line 226
    :cond_54
    invoke-static {v11, v1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v14, 0x1

    xor-int/2addr v1, v14

    or-int/2addr v1, v13

    move v13, v1

    .line 227
    :goto_44
    iget-object v1, v4, Lj5/n$a;->e:[[[I

    aget-object v1, v1, v9

    aget-object v1, v1, v7

    aget v1, v1, v12

    and-int/lit8 v1, v1, 0x18

    .line 228
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/lit8 v12, v12, 0x1

    move v14, v3

    move-object/from16 v3, v16

    goto :goto_43

    :cond_55
    move-object/from16 v16, v3

    const/4 v14, 0x1

    if-eqz v13, :cond_56

    .line 229
    iget-object v1, v4, Lj5/n$a;->d:[I

    aget v1, v1, v9

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_56
    if-eqz v15, :cond_57

    move v3, v14

    goto :goto_45

    :cond_57
    const/4 v3, 0x0

    .line 230
    :goto_45
    iget v1, v8, Lp4/t0;->h:I

    new-array v10, v1, [I

    .line 231
    new-array v1, v1, [Z

    const/4 v11, 0x0

    .line 232
    :goto_46
    iget v12, v8, Lp4/t0;->h:I

    if-ge v11, v12, :cond_5b

    .line 233
    iget-object v12, v4, Lj5/n$a;->e:[[[I

    aget-object v12, v12, v9

    aget-object v12, v12, v7

    aget v12, v12, v11

    and-int/lit8 v12, v12, 0x7

    .line 234
    aput v12, v10, v11

    const/4 v12, 0x0

    .line 235
    :goto_47
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_5a

    .line 236
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lj5/o;

    .line 237
    invoke-interface {v13}, Lj5/o;->l()Lp4/t0;

    move-result-object v15

    invoke-virtual {v15, v8}, Lp4/t0;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_58

    .line 238
    invoke-interface {v13, v11}, Lj5/o;->t(I)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_59

    move v12, v14

    goto :goto_48

    :cond_58
    const/4 v15, -0x1

    :cond_59
    add-int/lit8 v12, v12, 0x1

    goto :goto_47

    :cond_5a
    const/4 v15, -0x1

    const/4 v12, 0x0

    .line 239
    :goto_48
    aput-boolean v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    :cond_5b
    const/4 v15, -0x1

    .line 240
    new-instance v11, Ln3/c2$a;

    invoke-direct {v11, v8, v3, v10, v1}, Ln3/c2$a;-><init>(Lp4/t0;Z[I[Z)V

    invoke-virtual {v2, v11}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    const/4 v1, 0x4

    goto/16 :goto_40

    :cond_5c
    move-object/from16 v16, v3

    const/4 v14, 0x1

    const/4 v15, -0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x4

    goto/16 :goto_3f

    .line 241
    :cond_5d
    iget-object v1, v4, Lj5/n$a;->f:Lp4/u0;

    const/4 v9, 0x0

    .line 242
    :goto_49
    iget v3, v1, Lp4/u0;->h:I

    if-ge v9, v3, :cond_5e

    .line 243
    invoke-virtual {v1, v9}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v3

    .line 244
    iget v5, v3, Lp4/t0;->h:I

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 245
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 246
    iget v7, v3, Lp4/t0;->h:I

    new-array v7, v7, [Z

    .line 247
    new-instance v8, Ln3/c2$a;

    invoke-direct {v8, v3, v6, v5, v7}, Ln3/c2$a;-><init>(Lp4/t0;Z[I[Z)V

    invoke-virtual {v2, v8}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    .line 248
    :cond_5e
    new-instance v1, Ln3/c2;

    invoke-virtual {v2}, Lu6/v$a;->e()Lu6/v;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/c2;-><init>(Ljava/util/List;)V

    .line 249
    new-instance v2, Lj5/t;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Ln3/u1;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lj5/l;

    invoke-direct {v2, v3, v0, v1, v4}, Lj5/t;-><init>([Ln3/u1;[Lj5/l;Ln3/c2;Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 250
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
