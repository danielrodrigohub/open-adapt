.class public final Li2/h;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# static fields
.field public static final a:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/h;->a:Lj2/c$a;

    return-void
.end method

.method public static a(Lj2/c;Ly1/i;)Lf2/b;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v2, 0x2

    move v3, v2

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 3
    sget-object v4, Li2/h;->a:Lj2/c$a;

    invoke-virtual {v0, v4}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v4

    if-eqz v4, :cond_1

    if-eq v4, v5, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    return-object v6

    .line 8
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xca7

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eq v6, v7, :cond_1e

    const/16 v7, 0xcc6

    if-eq v6, v7, :cond_1c

    const/16 v7, 0xcdf

    if-eq v6, v7, :cond_1a

    const/16 v7, 0xda0

    if-eq v6, v7, :cond_18

    const/16 v7, 0xe3e

    if-eq v6, v7, :cond_16

    const/16 v7, 0xe55

    if-eq v6, v7, :cond_14

    const/16 v7, 0xe5f

    if-eq v6, v7, :cond_12

    const/16 v7, 0xe61

    if-eq v6, v7, :cond_10

    const/16 v7, 0xe79

    if-eq v6, v7, :cond_e

    const/16 v7, 0xe7e

    if-eq v6, v7, :cond_c

    const/16 v7, 0xceb

    if-eq v6, v7, :cond_a

    const/16 v7, 0xcec

    if-eq v6, v7, :cond_8

    const/16 v7, 0xe31

    if-eq v6, v7, :cond_6

    const/16 v7, 0xe32

    if-eq v6, v7, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v6, "rd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x7

    goto/16 :goto_3

    :cond_6
    const-string v6, "rc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x6

    goto/16 :goto_3

    :cond_8
    const-string v6, "gs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_2

    :cond_9
    move v6, v8

    goto/16 :goto_3

    :cond_a
    const-string v6, "gr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_2

    :cond_b
    move v6, v10

    goto/16 :goto_3

    :cond_c
    const-string v6, "tr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0xd

    goto/16 :goto_3

    :cond_e
    const-string v6, "tm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v6, 0xc

    goto/16 :goto_3

    :cond_10
    const-string v6, "st"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_2

    :cond_11
    const/16 v6, 0xb

    goto :goto_3

    :cond_12
    const-string v6, "sr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_2

    :cond_13
    const/16 v6, 0xa

    goto :goto_3

    :cond_14
    const-string v6, "sh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_2

    :cond_15
    const/16 v6, 0x9

    goto :goto_3

    :cond_16
    const-string v6, "rp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_2

    :cond_17
    const/16 v6, 0x8

    goto :goto_3

    :cond_18
    const-string v6, "mm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_2

    :cond_19
    move v6, v9

    goto :goto_3

    :cond_1a
    const-string v6, "gf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_2

    :cond_1b
    move v6, v2

    goto :goto_3

    :cond_1c
    const-string v6, "fl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_2

    :cond_1d
    move v6, v5

    goto :goto_3

    :cond_1e
    const-string v6, "el"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :cond_1f
    move v6, v11

    :goto_3
    const-string v7, "o"

    const-string v12, "g"

    const-string v13, "d"

    const/4 v14, 0x0

    const/16 v15, 0x64

    packed-switch v6, :pswitch_data_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk2/c;->b(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 10
    :pswitch_0
    invoke-static/range {p0 .. p1}, Li2/c;->a(Lj2/c;Ly1/i;)Le2/k;

    move-result-object v1

    goto/16 :goto_24

    .line 11
    :pswitch_1
    sget-object v3, Li2/k0;->a:Lj2/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v13, v3

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move v14, v11

    move/from16 v18, v14

    .line 12
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 13
    sget-object v3, Li2/k0;->a:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_27

    if-eq v3, v5, :cond_26

    if-eq v3, v2, :cond_25

    if-eq v3, v10, :cond_24

    if-eq v3, v8, :cond_21

    if-eq v3, v9, :cond_20

    .line 14
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_4

    .line 15
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v18

    goto :goto_4

    .line 16
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    if-eq v3, v5, :cond_23

    if-ne v3, v2, :cond_22

    move v14, v2

    goto :goto_4

    .line 17
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    .line 18
    invoke-static {v1, v3}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v14, v5

    goto :goto_4

    .line 20
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 21
    :cond_25
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v17

    goto :goto_4

    .line 22
    :cond_26
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v16

    goto :goto_4

    .line 23
    :cond_27
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v15

    goto :goto_4

    .line 24
    :cond_28
    new-instance v1, Lf2/q;

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lf2/q;-><init>(Ljava/lang/String;ILe2/b;Le2/b;Le2/b;Z)V

    goto/16 :goto_24

    .line 25
    :pswitch_2
    sget-object v3, Li2/j0;->a:Lj2/c$a;

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 v23, v11

    move/from16 v24, v23

    move/from16 v26, v24

    move/from16 v25, v14

    move-object/from16 v22, v16

    .line 27
    :cond_29
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 28
    sget-object v6, Li2/j0;->a:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 29
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_5

    .line 30
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 31
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 32
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 33
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 34
    sget-object v9, Li2/j0;->b:Lj2/c$a;

    invoke-virtual {v0, v9}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v9

    if-eqz v9, :cond_2b

    if-eq v9, v5, :cond_2a

    .line 35
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_7

    .line 37
    :cond_2a
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v6

    goto :goto_7

    .line 38
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 39
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    .line 40
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-eq v9, v15, :cond_31

    const/16 v14, 0x67

    if-eq v9, v14, :cond_2f

    const/16 v14, 0x6f

    if-eq v9, v14, :cond_2d

    goto :goto_8

    :cond_2d
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto :goto_8

    :cond_2e
    move v8, v2

    goto :goto_9

    :cond_2f
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    goto :goto_8

    :cond_30
    move v8, v5

    goto :goto_9

    :cond_31
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    :goto_8
    const/4 v8, -0x1

    goto :goto_9

    :cond_32
    move v8, v11

    :goto_9
    if-eqz v8, :cond_34

    if-eq v8, v5, :cond_34

    if-eq v8, v2, :cond_33

    goto :goto_6

    :cond_33
    move-object/from16 v18, v6

    goto :goto_6

    .line 41
    :cond_34
    iput-boolean v5, v1, Ly1/i;->n:Z

    .line 42
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_29

    .line 45
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le2/b;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 46
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v26

    goto/16 :goto_5

    .line 47
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v6, v8

    move/from16 v25, v6

    goto/16 :goto_5

    .line 48
    :pswitch_6
    invoke-static {v10}, Lq/g;->b(I)[I

    move-result-object v6

    .line 49
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v8

    sub-int/2addr v8, v5

    aget v24, v6, v8

    goto/16 :goto_5

    .line 50
    :pswitch_7
    invoke-static {v10}, Lq/g;->b(I)[I

    move-result-object v6

    .line 51
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v8

    sub-int/2addr v8, v5

    aget v23, v6, v8

    goto/16 :goto_5

    .line 52
    :pswitch_8
    invoke-static/range {p0 .. p1}, Li2/d;->d(Lj2/c;Ly1/i;)Le2/d;

    move-result-object v4

    goto/16 :goto_5

    .line 53
    :pswitch_9
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v22

    goto/16 :goto_5

    .line 54
    :pswitch_a
    invoke-static/range {p0 .. p1}, Li2/d;->b(Lj2/c;Ly1/i;)Le2/a;

    move-result-object v20

    goto/16 :goto_5

    .line 55
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    :cond_36
    if-nez v4, :cond_37

    .line 56
    new-instance v1, Le2/d;

    new-instance v2, Ll2/a;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Le2/d;-><init>(Ljava/util/List;)V

    move-object/from16 v21, v1

    goto :goto_a

    :cond_37
    move-object/from16 v21, v4

    .line 57
    :goto_a
    new-instance v1, Lf2/p;

    move-object/from16 v16, v1

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v26}, Lf2/p;-><init>(Ljava/lang/String;Le2/b;Ljava/util/List;Le2/a;Le2/d;Le2/b;IIFZ)V

    goto/16 :goto_24

    .line 58
    :pswitch_c
    sget-object v4, Li2/a0;->a:Lj2/c$a;

    if-ne v3, v10, :cond_38

    move v3, v5

    goto :goto_b

    :cond_38
    move v3, v11

    :goto_b
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v26, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v17, v11

    move/from16 v25, v17

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 59
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 60
    sget-object v3, Li2/a0;->a:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 61
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_c

    .line 63
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    if-ne v3, v10, :cond_39

    move/from16 v26, v5

    goto :goto_c

    :cond_39
    move/from16 v26, v11

    goto :goto_c

    .line 64
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v25

    goto :goto_c

    .line 65
    :pswitch_f
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v23

    goto :goto_c

    .line 66
    :pswitch_10
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v21

    goto :goto_c

    .line 67
    :pswitch_11
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v24

    goto :goto_c

    .line 68
    :pswitch_12
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v22

    goto :goto_c

    .line 69
    :pswitch_13
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v20

    goto :goto_c

    .line 70
    :pswitch_14
    invoke-static/range {p0 .. p1}, Li2/a;->b(Lj2/c;Ly1/i;)Le2/l;

    move-result-object v19

    goto :goto_c

    .line 71
    :pswitch_15
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v18

    goto :goto_c

    .line 72
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    .line 73
    invoke-static {v2}, Lq/g;->b(I)[I

    move-result-object v4

    .line 74
    array-length v6, v4

    move v7, v11

    :goto_d
    if-ge v7, v6, :cond_3b

    aget v17, v4, v7

    .line 75
    invoke-static/range {v17 .. v17}, Landroidx/appcompat/widget/o;->b(I)I

    move-result v8

    if-ne v8, v3, :cond_3a

    goto :goto_c

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_3b
    move/from16 v17, v11

    goto :goto_c

    .line 76
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v16

    goto :goto_c

    .line 77
    :cond_3c
    new-instance v1, Lf2/h;

    move-object v15, v1

    invoke-direct/range {v15 .. v26}, Lf2/h;-><init>(Ljava/lang/String;ILe2/b;Le2/l;Le2/b;Le2/b;Le2/b;Le2/b;Le2/b;ZZ)V

    goto/16 :goto_24

    .line 78
    :pswitch_18
    sget-object v3, Li2/i0;->a:Lj2/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v11

    move v7, v6

    .line 79
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 80
    sget-object v8, Li2/i0;->a:Lj2/c$a;

    invoke-virtual {v0, v8}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v8

    if-eqz v8, :cond_40

    if-eq v8, v5, :cond_3f

    if-eq v8, v2, :cond_3e

    if-eq v8, v10, :cond_3d

    .line 81
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_e

    .line 82
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v7

    goto :goto_e

    .line 83
    :cond_3e
    new-instance v3, Le2/h;

    .line 84
    invoke-static {}, Lk2/g;->c()F

    move-result v8

    sget-object v9, Li2/f0;->a:Li2/f0;

    .line 85
    invoke-static {v0, v1, v8, v9, v11}, Li2/u;->a(Lj2/c;Ly1/i;FLi2/l0;Z)Ljava/util/List;

    move-result-object v8

    .line 86
    invoke-direct {v3, v8}, Le2/h;-><init>(Ljava/util/List;)V

    goto :goto_e

    .line 87
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v6

    goto :goto_e

    .line 88
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 89
    :cond_41
    new-instance v1, Lf2/o;

    invoke-direct {v1, v4, v6, v3, v7}, Lf2/o;-><init>(Ljava/lang/String;ILe2/h;Z)V

    goto/16 :goto_24

    .line 90
    :pswitch_19
    sget-object v3, Li2/c0;->a:Lj2/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v11

    .line 91
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 92
    sget-object v3, Li2/c0;->a:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_46

    if-eq v3, v5, :cond_45

    if-eq v3, v2, :cond_44

    if-eq v3, v10, :cond_43

    if-eq v3, v8, :cond_42

    .line 93
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_f

    .line 94
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v17

    goto :goto_f

    .line 95
    :cond_43
    invoke-static/range {p0 .. p1}, Li2/c;->a(Lj2/c;Ly1/i;)Le2/k;

    move-result-object v16

    goto :goto_f

    .line 96
    :cond_44
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v15

    goto :goto_f

    .line 97
    :cond_45
    invoke-static {v0, v1, v11}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v14

    goto :goto_f

    .line 98
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    .line 99
    :cond_47
    new-instance v1, Lf2/j;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lf2/j;-><init>(Ljava/lang/String;Le2/b;Le2/b;Le2/k;Z)V

    goto/16 :goto_24

    .line 100
    :pswitch_1a
    sget-object v3, Li2/d0;->a:Lj2/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 102
    sget-object v6, Li2/d0;->a:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    if-eqz v6, :cond_4a

    if-eq v6, v5, :cond_49

    if-eq v6, v2, :cond_48

    .line 103
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_10

    .line 104
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v11

    goto :goto_10

    .line 105
    :cond_49
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v4

    goto :goto_10

    .line 106
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_4b
    if-eqz v11, :cond_4c

    goto/16 :goto_23

    .line 107
    :cond_4c
    new-instance v1, Lf2/k;

    invoke-direct {v1, v3, v4}, Lf2/k;-><init>(Ljava/lang/String;Le2/l;)V

    goto/16 :goto_24

    .line 108
    :pswitch_1b
    sget-object v3, Li2/b0;->a:Lj2/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v11

    .line 109
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 110
    sget-object v3, Li2/b0;->a:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_51

    if-eq v3, v5, :cond_50

    if-eq v3, v2, :cond_4f

    if-eq v3, v10, :cond_4e

    if-eq v3, v8, :cond_4d

    .line 111
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_11

    .line 112
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v17

    goto :goto_11

    .line 113
    :cond_4e
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v16

    goto :goto_11

    .line 114
    :cond_4f
    invoke-static/range {p0 .. p1}, Li2/d;->e(Lj2/c;Ly1/i;)Le2/f;

    move-result-object v15

    goto :goto_11

    .line 115
    :cond_50
    invoke-static/range {p0 .. p1}, Li2/a;->b(Lj2/c;Ly1/i;)Le2/l;

    move-result-object v14

    goto :goto_11

    .line 116
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    .line 117
    :cond_52
    new-instance v1, Lf2/i;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lf2/i;-><init>(Ljava/lang/String;Le2/l;Le2/l;Le2/b;Z)V

    goto/16 :goto_24

    .line 118
    :pswitch_1c
    sget-object v3, Li2/x;->a:Lj2/c$a;

    const/4 v3, 0x0

    move v4, v11

    .line 119
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 120
    sget-object v6, Li2/x;->a:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    if-eqz v6, :cond_5a

    if-eq v6, v5, :cond_54

    if-eq v6, v2, :cond_53

    .line 121
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_12

    .line 123
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v4

    goto :goto_12

    .line 124
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v6

    if-eq v6, v5, :cond_59

    if-eq v6, v2, :cond_58

    if-eq v6, v10, :cond_57

    if-eq v6, v8, :cond_56

    if-eq v6, v9, :cond_55

    goto :goto_13

    :cond_55
    move v11, v9

    goto :goto_12

    :cond_56
    move v11, v8

    goto :goto_12

    :cond_57
    move v11, v10

    goto :goto_12

    :cond_58
    move v11, v2

    goto :goto_12

    :cond_59
    :goto_13
    move v11, v5

    goto :goto_12

    .line 125
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 126
    :cond_5b
    new-instance v2, Lf2/g;

    invoke-direct {v2, v3, v11, v4}, Lf2/g;-><init>(Ljava/lang/String;IZ)V

    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 127
    invoke-virtual {v1, v3}, Ly1/i;->a(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_24

    .line 128
    :pswitch_1d
    sget-object v3, Li2/q;->a:Lj2/c$a;

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move/from16 v24, v11

    move/from16 v25, v24

    move/from16 v29, v25

    move/from16 v26, v14

    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v28, v18

    move-object/from16 v17, v6

    move/from16 v18, v29

    .line 130
    :cond_5c
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 131
    sget-object v6, Li2/q;->a:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    packed-switch v6, :pswitch_data_3

    .line 132
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_14

    .line 134
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 135
    :cond_5d
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 136
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 137
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 138
    sget-object v9, Li2/q;->c:Lj2/c$a;

    invoke-virtual {v0, v9}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v9

    if-eqz v9, :cond_5f

    if-eq v9, v5, :cond_5e

    .line 139
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_16

    .line 141
    :cond_5e
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v6

    goto :goto_16

    .line 142
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v8

    goto :goto_16

    .line 143
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    .line 144
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move-object/from16 v28, v6

    goto :goto_15

    .line 145
    :cond_61
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 146
    :cond_62
    iput-boolean v5, v1, Ly1/i;->n:Z

    .line 147
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 148
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_5c

    .line 150
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le2/b;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 151
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v29

    goto :goto_14

    .line 152
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v6, v8

    move/from16 v26, v6

    goto/16 :goto_14

    .line 153
    :pswitch_21
    invoke-static {v10}, Lq/g;->b(I)[I

    move-result-object v6

    .line 154
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v8

    sub-int/2addr v8, v5

    aget v25, v6, v8

    goto/16 :goto_14

    .line 155
    :pswitch_22
    invoke-static {v10}, Lq/g;->b(I)[I

    move-result-object v6

    .line 156
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v8

    sub-int/2addr v8, v5

    aget v24, v6, v8

    goto/16 :goto_14

    .line 157
    :pswitch_23
    invoke-static {v0, v1, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v23

    goto/16 :goto_14

    .line 158
    :pswitch_24
    invoke-static/range {p0 .. p1}, Li2/d;->e(Lj2/c;Ly1/i;)Le2/f;

    move-result-object v22

    goto/16 :goto_14

    .line 159
    :pswitch_25
    invoke-static/range {p0 .. p1}, Li2/d;->e(Lj2/c;Ly1/i;)Le2/f;

    move-result-object v21

    goto/16 :goto_14

    .line 160
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v6

    if-ne v6, v5, :cond_64

    move/from16 v18, v5

    goto/16 :goto_14

    :cond_64
    move/from16 v18, v2

    goto/16 :goto_14

    .line 161
    :pswitch_27
    invoke-static/range {p0 .. p1}, Li2/d;->d(Lj2/c;Ly1/i;)Le2/d;

    move-result-object v4

    goto/16 :goto_14

    .line 162
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v6, -0x1

    .line 163
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v8

    if-eqz v8, :cond_67

    .line 164
    sget-object v8, Li2/q;->b:Lj2/c$a;

    invoke-virtual {v0, v8}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v8

    if-eqz v8, :cond_66

    if-eq v8, v5, :cond_65

    .line 165
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_17

    .line 167
    :cond_65
    new-instance v8, Le2/c;

    new-instance v9, Li2/o;

    invoke-direct {v9, v6}, Li2/o;-><init>(I)V

    .line 168
    invoke-static {v0, v1, v9}, Li2/d;->a(Lj2/c;Ly1/i;Li2/l0;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Le2/c;-><init>(Ljava/util/List;)V

    move-object/from16 v19, v8

    goto :goto_17

    .line 169
    :cond_66
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v6

    goto :goto_17

    .line 170
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    goto/16 :goto_14

    .line 171
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_14

    :cond_68
    if-nez v4, :cond_69

    .line 172
    new-instance v1, Le2/d;

    new-instance v2, Ll2/a;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Le2/d;-><init>(Ljava/util/List;)V

    move-object/from16 v20, v1

    goto :goto_18

    :cond_69
    move-object/from16 v20, v4

    .line 173
    :goto_18
    new-instance v1, Lf2/e;

    move-object/from16 v16, v1

    move-object/from16 v27, v3

    invoke-direct/range {v16 .. v29}, Lf2/e;-><init>(Ljava/lang/String;ILe2/c;Le2/d;Le2/f;Le2/f;Le2/b;IIFLjava/util/List;Le2/b;Z)V

    goto/16 :goto_24

    .line 174
    :pswitch_2a
    sget-object v3, Li2/h0;->a:Lj2/c$a;

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 176
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 177
    sget-object v6, Li2/h0;->a:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    if-eqz v6, :cond_6e

    if-eq v6, v5, :cond_6d

    if-eq v6, v2, :cond_6a

    .line 178
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_19

    .line 179
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 180
    :cond_6b
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 181
    invoke-static/range {p0 .. p1}, Li2/h;->a(Lj2/c;Ly1/i;)Lf2/b;

    move-result-object v6

    if-eqz v6, :cond_6b

    .line 182
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 183
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    goto :goto_19

    .line 184
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v11

    goto :goto_19

    .line 185
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    .line 186
    :cond_6f
    new-instance v1, Lf2/n;

    invoke-direct {v1, v4, v3, v11}, Lf2/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_24

    .line 187
    :pswitch_2b
    sget-object v3, Li2/p;->a:Lj2/c$a;

    .line 188
    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v19, v3

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v18, v11

    move/from16 v24, v18

    .line 189
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 190
    sget-object v3, Li2/p;->a:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    packed-switch v3, :pswitch_data_4

    .line 191
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_1b

    .line 193
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v24

    goto :goto_1b

    .line 194
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    if-ne v3, v5, :cond_70

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1c

    :cond_70
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1c
    move-object/from16 v19, v3

    goto :goto_1b

    .line 195
    :pswitch_2e
    invoke-static/range {p0 .. p1}, Li2/d;->e(Lj2/c;Ly1/i;)Le2/f;

    move-result-object v23

    goto :goto_1b

    .line 196
    :pswitch_2f
    invoke-static/range {p0 .. p1}, Li2/d;->e(Lj2/c;Ly1/i;)Le2/f;

    move-result-object v22

    goto :goto_1b

    .line 197
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    if-ne v3, v5, :cond_71

    move/from16 v18, v5

    goto :goto_1b

    :cond_71
    move/from16 v18, v2

    goto :goto_1b

    .line 198
    :pswitch_31
    invoke-static/range {p0 .. p1}, Li2/d;->d(Lj2/c;Ly1/i;)Le2/d;

    move-result-object v4

    goto :goto_1b

    .line 199
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v3, -0x1

    .line 200
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 201
    sget-object v6, Li2/p;->b:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    if-eqz v6, :cond_73

    if-eq v6, v5, :cond_72

    .line 202
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_1d

    .line 204
    :cond_72
    new-instance v6, Le2/c;

    new-instance v7, Li2/o;

    invoke-direct {v7, v3}, Li2/o;-><init>(I)V

    .line 205
    invoke-static {v0, v1, v7}, Li2/d;->a(Lj2/c;Ly1/i;Li2/l0;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Le2/c;-><init>(Ljava/util/List;)V

    move-object/from16 v20, v6

    goto :goto_1d

    .line 206
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    goto :goto_1d

    .line 207
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    goto :goto_1b

    .line 208
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v17

    goto :goto_1b

    :cond_75
    if-nez v4, :cond_76

    .line 209
    new-instance v1, Le2/d;

    new-instance v2, Ll2/a;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Le2/d;-><init>(Ljava/util/List;)V

    move-object/from16 v21, v1

    goto :goto_1e

    :cond_76
    move-object/from16 v21, v4

    .line 210
    :goto_1e
    new-instance v1, Lf2/d;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v24}, Lf2/d;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Le2/c;Le2/d;Le2/f;Le2/f;Z)V

    goto/16 :goto_24

    .line 211
    :pswitch_34
    sget-object v3, Li2/g0;->a:Lj2/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v17, v4

    move v4, v5

    move-object/from16 v20, v6

    move/from16 v18, v11

    move/from16 v22, v18

    .line 212
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 213
    sget-object v6, Li2/g0;->a:Lj2/c$a;

    invoke-virtual {v0, v6}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v6

    if-eqz v6, :cond_7c

    if-eq v6, v5, :cond_7b

    if-eq v6, v2, :cond_7a

    if-eq v6, v10, :cond_79

    if-eq v6, v8, :cond_78

    if-eq v6, v9, :cond_77

    .line 214
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_1f

    .line 216
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v22

    goto :goto_1f

    .line 217
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v4

    goto :goto_1f

    .line 218
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v18

    goto :goto_1f

    .line 219
    :cond_7a
    invoke-static/range {p0 .. p1}, Li2/d;->d(Lj2/c;Ly1/i;)Le2/d;

    move-result-object v3

    goto :goto_1f

    .line 220
    :cond_7b
    invoke-static/range {p0 .. p1}, Li2/d;->b(Lj2/c;Ly1/i;)Le2/a;

    move-result-object v20

    goto :goto_1f

    .line 221
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v17

    goto :goto_1f

    :cond_7d
    if-nez v3, :cond_7e

    .line 222
    new-instance v3, Le2/d;

    new-instance v1, Ll2/a;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Le2/d;-><init>(Ljava/util/List;)V

    :cond_7e
    move-object/from16 v21, v3

    if-ne v4, v5, :cond_7f

    .line 223
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_20

    :cond_7f
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_20
    move-object/from16 v19, v1

    .line 224
    new-instance v1, Lf2/m;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lf2/m;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Le2/a;Le2/d;Z)V

    goto/16 :goto_24

    .line 225
    :pswitch_35
    sget-object v4, Li2/f;->a:Lj2/c$a;

    if-ne v3, v10, :cond_80

    move v3, v5

    goto :goto_21

    :cond_80
    move v3, v11

    :goto_21
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v16, v3

    move-object v13, v4

    move-object v14, v6

    move-object v15, v7

    move/from16 v17, v11

    .line 226
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 227
    sget-object v3, Li2/f;->a:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_86

    if-eq v3, v5, :cond_85

    if-eq v3, v2, :cond_84

    if-eq v3, v10, :cond_83

    if-eq v3, v8, :cond_81

    .line 228
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_22

    .line 230
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    if-ne v3, v10, :cond_82

    move/from16 v16, v5

    goto :goto_22

    :cond_82
    move/from16 v16, v11

    goto :goto_22

    .line 231
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v17

    goto :goto_22

    .line 232
    :cond_84
    invoke-static/range {p0 .. p1}, Li2/d;->e(Lj2/c;Ly1/i;)Le2/f;

    move-result-object v15

    goto :goto_22

    .line 233
    :cond_85
    invoke-static/range {p0 .. p1}, Li2/a;->b(Lj2/c;Ly1/i;)Le2/l;

    move-result-object v14

    goto :goto_22

    .line 234
    :cond_86
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v13

    goto :goto_22

    .line 235
    :cond_87
    new-instance v1, Lf2/a;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lf2/a;-><init>(Ljava/lang/String;Le2/l;Le2/f;ZZ)V

    goto :goto_24

    :goto_23
    const/4 v1, 0x0

    .line 236
    :goto_24
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 237
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_24

    .line 238
    :cond_88
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
.end method
