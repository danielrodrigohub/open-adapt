.class public final Lm4/c;
.super Landroidx/fragment/app/r;
.source "SpliceInfoDecoder.java"


# instance fields
.field public final h:Lm5/w;

.field public final i:Lm5/v;

.field public j:Lm5/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, Lm4/c;->h:Lm5/w;

    .line 3
    new-instance v0, Lm5/v;

    invoke-direct {v0}, Lm5/v;-><init>()V

    iput-object v0, p0, Lm4/c;->i:Lm5/v;

    return-void
.end method


# virtual methods
.method public final g(Lf4/d;Ljava/nio/ByteBuffer;)Lf4/a;
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lm4/c;->j:Lm5/d0;

    if-eqz v2, :cond_0

    iget-wide v3, v1, Lf4/d;->p:J

    .line 2
    invoke-virtual {v2}, Lm5/d0;->d()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    new-instance v2, Lm5/d0;

    iget-wide v3, v1, Lq3/g;->l:J

    invoke-direct {v2, v3, v4}, Lm5/d0;-><init>(J)V

    iput-object v2, v0, Lm4/c;->j:Lm5/d0;

    .line 4
    iget-wide v3, v1, Lq3/g;->l:J

    iget-wide v5, v1, Lf4/d;->p:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lm5/d0;->a(J)J

    .line 5
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    .line 7
    iget-object v3, v0, Lm4/c;->h:Lm5/w;

    invoke-virtual {v3, v1, v2}, Lm5/w;->B([BI)V

    .line 8
    iget-object v3, v0, Lm4/c;->i:Lm5/v;

    invoke-virtual {v3, v1, v2}, Lm5/v;->j([BI)V

    .line 9
    iget-object v1, v0, Lm4/c;->i:Lm5/v;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lm5/v;->m(I)V

    .line 10
    iget-object v1, v0, Lm4/c;->i:Lm5/v;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lm5/v;->g(I)I

    move-result v1

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    .line 11
    iget-object v5, v0, Lm4/c;->i:Lm5/v;

    invoke-virtual {v5, v1}, Lm5/v;->g(I)I

    move-result v5

    int-to-long v5, v5

    or-long v11, v3, v5

    .line 12
    iget-object v3, v0, Lm4/c;->i:Lm5/v;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lm5/v;->m(I)V

    .line 13
    iget-object v3, v0, Lm4/c;->i:Lm5/v;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lm5/v;->g(I)I

    move-result v3

    .line 14
    iget-object v4, v0, Lm4/c;->i:Lm5/v;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lm5/v;->g(I)I

    move-result v4

    .line 15
    iget-object v5, v0, Lm4/c;->h:Lm5/w;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lm5/w;->E(I)V

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    const/16 v7, 0xff

    if-eq v4, v7, :cond_1c

    const/4 v3, 0x4

    const-wide/16 v7, 0x80

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x1

    if-eq v4, v3, :cond_10

    const/4 v3, 0x5

    if-eq v4, v3, :cond_3

    const/4 v1, 0x6

    if-eq v4, v1, :cond_2

    goto/16 :goto_16

    .line 16
    :cond_2
    iget-object v1, v0, Lm4/c;->h:Lm5/w;

    iget-object v3, v0, Lm4/c;->j:Lm5/d0;

    .line 17
    invoke-static {v1, v11, v12}, Lm4/g;->a(Lm5/w;J)J

    move-result-wide v4

    .line 18
    invoke-virtual {v3, v4, v5}, Lm5/d0;->b(J)J

    move-result-wide v7

    .line 19
    new-instance v1, Lm4/g;

    invoke-direct {v1, v4, v5, v7, v8}, Lm4/g;-><init>(JJ)V

    move-object v5, v1

    goto/16 :goto_16

    .line 20
    :cond_3
    iget-object v3, v0, Lm4/c;->h:Lm5/w;

    iget-object v4, v0, Lm4/c;->j:Lm5/d0;

    .line 21
    invoke-virtual {v3}, Lm5/w;->u()J

    move-result-wide v22

    .line 22
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    move/from16 v24, v2

    goto :goto_0

    :cond_4
    const/16 v24, 0x0

    .line 23
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    if-nez v24, :cond_f

    .line 24
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_5

    move v10, v2

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v21, v9, 0x40

    if-eqz v21, :cond_6

    move/from16 v21, v2

    goto :goto_2

    :cond_6
    const/16 v21, 0x0

    :goto_2
    and-int/lit8 v25, v9, 0x20

    if-eqz v25, :cond_7

    move/from16 v25, v2

    goto :goto_3

    :cond_7
    const/16 v25, 0x0

    :goto_3
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    if-eqz v21, :cond_9

    if-nez v9, :cond_9

    .line 25
    invoke-static {v3, v11, v12}, Lm4/g;->a(Lm5/w;J)J

    move-result-wide v26

    goto :goto_5

    :cond_9
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v21, :cond_c

    .line 26
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v5

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_b

    .line 28
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v29

    if-nez v9, :cond_a

    .line 29
    invoke-static {v3, v11, v12}, Lm4/g;->a(Lm5/w;J)J

    move-result-wide v30

    move-wide/from16 v13, v30

    goto :goto_7

    :cond_a
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    :goto_7
    new-instance v15, Lm4/d$b;

    .line 31
    invoke-virtual {v4, v13, v14}, Lm5/d0;->b(J)J

    move-result-wide v32

    const/16 v34, 0x0

    move-object/from16 v28, v15

    move-wide/from16 v30, v13

    invoke-direct/range {v28 .. v34}, Lm4/d$b;-><init>(IJJLm4/d$a;)V

    .line 32
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    move-object v5, v2

    :cond_c
    if-eqz v25, :cond_e

    .line 33
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v2

    int-to-long v11, v2

    and-long v6, v11, v7

    cmp-long v2, v6, v17

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    and-long v6, v11, v19

    shl-long/2addr v6, v1

    .line 34
    invoke-virtual {v3}, Lm5/w;->u()J

    move-result-wide v11

    or-long/2addr v6, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v6, v11

    const-wide/16 v11, 0x5a

    .line 35
    div-long/2addr v6, v11

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    :goto_9
    invoke-virtual {v3}, Lm5/w;->y()I

    move-result v1

    .line 37
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v8

    .line 38
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v3

    move/from16 v36, v1

    move/from16 v33, v2

    move/from16 v38, v3

    move-object/from16 v32, v5

    move-wide/from16 v34, v6

    move/from16 v37, v8

    move/from16 v25, v10

    move-wide/from16 v1, v26

    move/from16 v27, v9

    move/from16 v26, v21

    goto :goto_a

    :cond_f
    move-object/from16 v32, v5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 39
    :goto_a
    new-instance v5, Lm4/d;

    move-object/from16 v21, v5

    .line 40
    invoke-virtual {v4, v1, v2}, Lm5/d0;->b(J)J

    move-result-wide v30

    move-wide/from16 v28, v1

    invoke-direct/range {v21 .. v38}, Lm4/d;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    goto/16 :goto_16

    .line 41
    :cond_10
    iget-object v2, v0, Lm4/c;->h:Lm5/w;

    .line 42
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v3

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v3, :cond_1b

    .line 44
    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v40

    .line 45
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_11

    const/16 v42, 0x1

    goto :goto_c

    :cond_11
    const/16 v42, 0x0

    .line 46
    :goto_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v42, :cond_1a

    .line 47
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v10

    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    :goto_d
    and-int/lit8 v12, v10, 0x40

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    :goto_e
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    goto :goto_f

    :cond_14
    const/4 v10, 0x0

    :goto_f
    if-eqz v12, :cond_15

    .line 48
    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v13

    goto :goto_10

    :cond_15
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_10
    if-nez v12, :cond_17

    .line 49
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v9

    .line 50
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v9, :cond_16

    .line 51
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v7

    move/from16 v23, v9

    .line 52
    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v8

    move/from16 v24, v3

    .line 53
    new-instance v3, Lm4/f$b;

    invoke-direct {v3, v7, v8, v9, v5}, Lm4/f$b;-><init>(IJLm4/f$a;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v23

    move/from16 v3, v24

    const-wide/16 v7, 0x80

    goto :goto_11

    :cond_16
    move/from16 v24, v3

    move-object v9, v15

    goto :goto_12

    :cond_17
    move/from16 v24, v3

    :goto_12
    if-eqz v10, :cond_19

    .line 54
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v21, 0x80

    and-long v25, v7, v21

    cmp-long v1, v25, v17

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_13

    :cond_18
    const/4 v1, 0x0

    :goto_13
    and-long v7, v7, v19

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    .line 55
    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v15

    or-long/2addr v7, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v7, v15

    const-wide/16 v25, 0x5a

    .line 56
    div-long v7, v7, v25

    goto :goto_14

    :cond_19
    const/16 v3, 0x20

    const-wide/16 v15, 0x3e8

    const-wide/16 v21, 0x80

    const-wide/16 v25, 0x5a

    const/4 v1, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    :goto_14
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v10

    .line 58
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v23

    .line 59
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v27

    move/from16 v48, v1

    move-wide/from16 v49, v7

    move-object/from16 v45, v9

    move/from16 v51, v10

    move/from16 v43, v11

    move/from16 v44, v12

    move-wide/from16 v46, v13

    move/from16 v52, v23

    move/from16 v53, v27

    goto :goto_15

    :cond_1a
    move/from16 v24, v3

    move-wide/from16 v21, v7

    const-wide/16 v15, 0x3e8

    const-wide/16 v25, 0x5a

    move v3, v1

    move-object/from16 v45, v9

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide v46, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v48, 0x0

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    .line 60
    :goto_15
    new-instance v1, Lm4/f$c;

    move-object/from16 v39, v1

    invoke-direct/range {v39 .. v53}, Lm4/f$c;-><init>(JZZZLjava/util/List;JZJIII)V

    .line 61
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v1, v3

    move-wide/from16 v7, v21

    move/from16 v3, v24

    goto/16 :goto_b

    .line 62
    :cond_1b
    new-instance v5, Lm4/f;

    invoke-direct {v5, v4}, Lm4/f;-><init>(Ljava/util/List;)V

    goto :goto_16

    .line 63
    :cond_1c
    iget-object v1, v0, Lm4/c;->h:Lm5/w;

    .line 64
    invoke-virtual {v1}, Lm5/w;->u()J

    move-result-wide v8

    add-int/lit8 v3, v3, -0x4

    .line 65
    new-array v10, v3, [B

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v10, v2, v3}, Lm5/w;->d([BII)V

    .line 67
    new-instance v5, Lm4/a;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lm4/a;-><init>(J[BJ)V

    goto :goto_16

    .line 68
    :cond_1d
    new-instance v5, Lm4/e;

    invoke-direct {v5}, Lm4/e;-><init>()V

    :goto_16
    if-nez v5, :cond_1e

    .line 69
    new-instance v1, Lf4/a;

    const/4 v2, 0x0

    new-array v2, v2, [Lf4/a$b;

    invoke-direct {v1, v2}, Lf4/a;-><init>([Lf4/a$b;)V

    goto :goto_17

    :cond_1e
    const/4 v2, 0x0

    new-instance v1, Lf4/a;

    const/4 v3, 0x1

    new-array v3, v3, [Lf4/a$b;

    aput-object v5, v3, v2

    invoke-direct {v1, v3}, Lf4/a;-><init>([Lf4/a$b;)V

    :goto_17
    return-object v1
.end method
