.class public final Li2/v;
.super Ljava/lang/Object;
.source "LayerParser.java"


# static fields
.field public static final a:Lj2/c$a;

.field public static final b:Lj2/c$a;

.field public static final c:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    .line 1
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/v;->a:Lj2/c$a;

    const-string v0, "d"

    const-string v1, "a"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/v;->b:Lj2/c$a;

    const-string v0, "ty"

    const-string v1, "nm"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/v;->c:Lj2/c$a;

    return-void
.end method

.method public static a(Lj2/c;Ly1/i;)Lg2/f;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    .line 5
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "UNSET"

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move/from16 v25, v1

    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v27, v24

    move/from16 v28, v27

    move/from16 v33, v28

    move/from16 v31, v4

    move/from16 v26, v11

    move/from16 v36, v26

    move-wide/from16 v18, v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v16, v36

    move-wide v14, v13

    move-object v13, v6

    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 7
    sget-object v1, Li2/v;->a:Lj2/c$a;

    invoke-virtual {v0, v1}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v1

    const/4 v11, 0x2

    const/16 v41, -0x1

    packed-switch v1, :pswitch_data_0

    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    const/4 v3, 0x7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto/16 :goto_1e

    .line 10
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v33

    goto/16 :goto_21

    .line 11
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_21

    .line 12
    :pswitch_2
    invoke-static {v0, v7, v3}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v32

    goto/16 :goto_21

    .line 13
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v36, v1

    goto/16 :goto_21

    .line 14
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v16, v1

    goto/16 :goto_21

    .line 15
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lk2/g;->c()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move/from16 v28, v1

    goto/16 :goto_21

    .line 16
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lk2/g;->c()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move/from16 v27, v1

    goto/16 :goto_21

    .line 17
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v26, v1

    goto/16 :goto_21

    .line 18
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v25, v1

    goto/16 :goto_21

    .line 19
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v39

    if-eqz v39, :cond_1f

    .line 22
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    .line 23
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 24
    sget-object v3, Li2/v;->c:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto/16 :goto_c

    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    const/16 v2, 0x1d

    if-ne v3, v2, :cond_b

    .line 30
    sget-object v2, Li2/e;->a:Lj2/c$a;

    const/16 v34, 0x0

    .line 31
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 32
    sget-object v2, Li2/e;->a:Lj2/c$a;

    invoke-virtual {v0, v2}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_3

    .line 35
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 36
    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v2, 0x0

    :cond_4
    const/4 v3, 0x0

    .line 38
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v39

    if-eqz v39, :cond_8

    .line 39
    sget-object v5, Li2/e;->b:Lj2/c$a;

    invoke-virtual {v0, v5}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v5

    if-eqz v5, :cond_7

    if-eq v5, v4, :cond_5

    .line 40
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_6

    .line 42
    new-instance v2, Lf/p;

    .line 43
    invoke-static {v0, v7, v4}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v5

    .line 44
    invoke-direct {v2, v5}, Lf/p;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    .line 45
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_5

    .line 46
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_5

    .line 47
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    if-eqz v2, :cond_3

    move-object/from16 v34, v2

    goto :goto_4

    .line 48
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x19

    if-ne v3, v2, :cond_1d

    .line 49
    new-instance v2, Li2/k;

    invoke-direct {v2}, Li2/k;-><init>()V

    .line 50
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 51
    sget-object v3, Li2/k;->f:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_c

    .line 52
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_6

    .line 54
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 55
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 56
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const-string v3, ""

    .line 57
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 58
    sget-object v5, Li2/k;->g:Lj2/c$a;

    invoke-virtual {v0, v5}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v5

    if-eqz v5, :cond_18

    if-eq v5, v4, :cond_d

    .line 59
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto/16 :goto_b

    .line 61
    :cond_d
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_9
    move/from16 v5, v41

    goto :goto_a

    :sswitch_0
    const-string v5, "Softness"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    const/4 v5, 0x4

    goto :goto_a

    :sswitch_1
    const-string v5, "Shadow Color"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    const/4 v5, 0x3

    goto :goto_a

    :sswitch_2
    const-string v5, "Direction"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_9

    :cond_10
    move v5, v11

    goto :goto_a

    :sswitch_3
    const-string v5, "Opacity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_9

    :cond_11
    move v5, v4

    goto :goto_a

    :sswitch_4
    const-string v5, "Distance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_9

    :cond_12
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_17

    if-eq v5, v4, :cond_16

    if-eq v5, v11, :cond_15

    const/4 v11, 0x3

    if-eq v5, v11, :cond_14

    const/4 v11, 0x4

    if-eq v5, v11, :cond_13

    .line 62
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_b

    .line 63
    :cond_13
    invoke-static {v0, v7, v4}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v5

    .line 64
    iput-object v5, v2, Li2/k;->e:Le2/b;

    goto :goto_b

    .line 65
    :cond_14
    invoke-static/range {p0 .. p1}, Li2/d;->b(Lj2/c;Ly1/i;)Le2/a;

    move-result-object v5

    iput-object v5, v2, Li2/k;->a:Le2/a;

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    .line 66
    invoke-static {v0, v7, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v11

    iput-object v11, v2, Li2/k;->c:Le2/b;

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    .line 67
    invoke-static {v0, v7, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v11

    iput-object v11, v2, Li2/k;->b:Le2/b;

    goto :goto_b

    .line 68
    :cond_17
    invoke-static {v0, v7, v4}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v5

    .line 69
    iput-object v5, v2, Li2/k;->d:Le2/b;

    goto :goto_b

    .line 70
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v3

    :goto_b
    const/4 v11, 0x2

    goto/16 :goto_8

    .line 71
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    const/4 v11, 0x2

    goto/16 :goto_7

    .line 72
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    const/4 v11, 0x2

    goto/16 :goto_6

    .line 73
    :cond_1b
    iget-object v3, v2, Li2/k;->a:Le2/a;

    if-eqz v3, :cond_1c

    iget-object v5, v2, Li2/k;->b:Le2/b;

    if-eqz v5, :cond_1c

    iget-object v11, v2, Li2/k;->c:Le2/b;

    if-eqz v11, :cond_1c

    iget-object v4, v2, Li2/k;->d:Le2/b;

    if-eqz v4, :cond_1c

    iget-object v2, v2, Li2/k;->e:Le2/b;

    if-eqz v2, :cond_1c

    .line 74
    new-instance v35, Li2/j;

    move-object/from16 v42, v35

    move-object/from16 v43, v3

    move-object/from16 v44, v5

    move-object/from16 v45, v11

    move-object/from16 v46, v4

    move-object/from16 v47, v2

    invoke-direct/range {v42 .. v47}, Li2/j;-><init>(Le2/a;Le2/b;Le2/b;Le2/b;Le2/b;)V

    goto :goto_c

    :cond_1c
    const/16 v35, 0x0

    :cond_1d
    :goto_c
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x2

    goto/16 :goto_2

    .line 75
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x2

    goto/16 :goto_1

    .line 76
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ly1/i;->a(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 78
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    .line 79
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 80
    sget-object v1, Li2/v;->b:Lj2/c$a;

    invoke-virtual {v0, v1}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    .line 81
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_d

    .line 83
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 85
    sget-object v1, Li2/b;->a:Lj2/c$a;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v1, 0x0

    .line 87
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 88
    sget-object v2, Li2/b;->a:Lj2/c$a;

    invoke-virtual {v0, v2}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v2

    if-eqz v2, :cond_21

    .line 89
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_e

    .line 91
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 92
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 93
    sget-object v5, Li2/b;->b:Lj2/c$a;

    invoke-virtual {v0, v5}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v5

    if-eqz v5, :cond_25

    const/4 v11, 0x1

    if-eq v5, v11, :cond_24

    const/4 v11, 0x2

    if-eq v5, v11, :cond_23

    const/4 v11, 0x3

    if-eq v5, v11, :cond_22

    .line 94
    invoke-virtual/range {p0 .. p0}, Lj2/c;->r0()V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_f

    :cond_22
    const/4 v5, 0x1

    .line 96
    invoke-static {v0, v7, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v4

    goto :goto_f

    :cond_23
    const/4 v5, 0x1

    .line 97
    invoke-static {v0, v7, v5}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v3

    goto :goto_f

    .line 98
    :cond_24
    invoke-static/range {p0 .. p1}, Li2/d;->b(Lj2/c;Ly1/i;)Le2/a;

    move-result-object v2

    goto :goto_f

    .line 99
    :cond_25
    invoke-static/range {p0 .. p1}, Li2/d;->b(Lj2/c;Ly1/i;)Le2/a;

    move-result-object v1

    goto :goto_f

    .line 100
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    .line 101
    new-instance v5, Lq/c;

    invoke-direct {v5, v1, v2, v3, v4}, Lq/c;-><init>(Le2/a;Le2/a;Le2/b;Le2/b;)V

    move-object v1, v5

    goto :goto_e

    .line 102
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    if-nez v1, :cond_28

    .line 103
    new-instance v1, Lq/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lq/c;-><init>(Le2/a;Le2/a;Le2/b;Le2/b;)V

    goto :goto_10

    :cond_28
    const/4 v2, 0x0

    :goto_10
    move-object/from16 v30, v1

    goto :goto_11

    :cond_29
    const/4 v2, 0x0

    .line 104
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 105
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_11

    .line 106
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    goto/16 :goto_d

    :cond_2b
    const/4 v2, 0x0

    .line 107
    new-instance v1, Le2/j;

    sget-object v3, Li2/i;->a:Li2/i;

    invoke-static {v0, v7, v3}, Li2/d;->a(Lj2/c;Ly1/i;Li2/l0;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Le2/j;-><init>(Ljava/util/List;)V

    move-object/from16 v29, v1

    goto/16 :goto_d

    :cond_2c
    const/4 v2, 0x0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    :goto_12
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_21

    :pswitch_b
    const/4 v2, 0x0

    .line 109
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 110
    :cond_2d
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 111
    invoke-static/range {p0 .. p1}, Li2/h;->a(Lj2/c;Ly1/i;)Lf2/b;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 112
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 113
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    move-object/from16 v42, v6

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v6, 0x0

    goto/16 :goto_1e

    :pswitch_c
    const/4 v2, 0x0

    .line 114
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 115
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 116
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    move-object v1, v2

    move-object v3, v1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 117
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 118
    invoke-virtual/range {p0 .. p0}, Lj2/c;->m0()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v42, v6

    const/16 v6, 0x6f

    if-eq v2, v6, :cond_35

    const/16 v6, 0xe04

    if-eq v2, v6, :cond_33

    const v6, 0x197f1

    if-eq v2, v6, :cond_31

    const v6, 0x3339a3

    if-eq v2, v6, :cond_2f

    :goto_16
    move/from16 v2, v41

    goto :goto_17

    :cond_2f
    const-string v2, "mode"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_16

    :cond_30
    const/4 v2, 0x3

    goto :goto_17

    :cond_31
    const-string v2, "inv"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_16

    :cond_32
    const/4 v2, 0x2

    goto :goto_17

    :cond_33
    const-string v2, "pt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_16

    :cond_34
    const/4 v2, 0x1

    goto :goto_17

    :cond_35
    const-string v2, "o"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_16

    :cond_36
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_46

    const/4 v6, 0x1

    if-eq v2, v6, :cond_45

    const/4 v6, 0x2

    if-eq v2, v6, :cond_44

    const/4 v6, 0x3

    if-eq v2, v6, :cond_37

    .line 120
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto/16 :goto_1b

    .line 121
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v11, 0x61

    if-eq v6, v11, :cond_3e

    const/16 v11, 0x69

    if-eq v6, v11, :cond_3c

    const/16 v11, 0x6e

    if-eq v6, v11, :cond_3a

    const/16 v11, 0x73

    if-eq v6, v11, :cond_38

    :goto_18
    move/from16 v2, v41

    goto :goto_19

    :cond_38
    const-string v6, "s"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_18

    :cond_39
    const/4 v2, 0x3

    goto :goto_19

    :cond_3a
    const-string v6, "n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_18

    :cond_3b
    const/4 v2, 0x2

    goto :goto_19

    :cond_3c
    const-string v6, "i"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_18

    :cond_3d
    const/4 v2, 0x1

    goto :goto_19

    :cond_3e
    const-string v6, "a"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_18

    :cond_3f
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_43

    const/4 v6, 0x1

    if-eq v2, v6, :cond_42

    const/4 v6, 0x2

    if-eq v2, v6, :cond_41

    const/4 v11, 0x3

    if-eq v2, v11, :cond_40

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown mask mode "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Defaulting to Add."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lk2/c;->b(Ljava/lang/String;)V

    goto :goto_1a

    :cond_40
    move v11, v6

    goto :goto_1b

    :cond_41
    move-object/from16 v6, v42

    const/4 v2, 0x0

    const/4 v11, 0x4

    goto/16 :goto_15

    :cond_42
    const/4 v6, 0x2

    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 123
    invoke-virtual {v7, v2}, Ly1/i;->a(Ljava/lang/String;)V

    move-object/from16 v6, v42

    const/4 v2, 0x0

    const/4 v11, 0x3

    goto/16 :goto_15

    :cond_43
    const/4 v6, 0x2

    :goto_1a
    move-object/from16 v6, v42

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto/16 :goto_15

    .line 124
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lj2/c;->j0()Z

    move-result v5

    goto :goto_1b

    :cond_45
    const/4 v6, 0x2

    .line 125
    new-instance v1, Le2/h;

    .line 126
    invoke-static {}, Lk2/g;->c()F

    move-result v2

    sget-object v4, Li2/f0;->a:Li2/f0;

    const/4 v6, 0x0

    .line 127
    invoke-static {v0, v7, v2, v4, v6}, Li2/u;->a(Lj2/c;Ly1/i;FLi2/l0;Z)Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-direct {v1, v2}, Le2/h;-><init>(Ljava/util/List;)V

    goto :goto_1b

    :cond_46
    const/4 v6, 0x0

    .line 129
    invoke-static/range {p0 .. p1}, Li2/d;->d(Lj2/c;Ly1/i;)Le2/d;

    move-result-object v3

    :goto_1b
    move-object/from16 v6, v42

    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_47
    move-object/from16 v42, v6

    const/4 v6, 0x0

    .line 130
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    .line 131
    new-instance v2, Lf2/f;

    invoke-direct {v2, v11, v1, v3, v5}, Lf2/f;-><init>(ILe2/h;Le2/d;Z)V

    .line 132
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v42

    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_48
    move-object/from16 v42, v6

    const/4 v6, 0x0

    .line 133
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    iget v2, v7, Ly1/i;->o:I

    add-int/2addr v2, v1

    iput v2, v7, Ly1/i;->o:I

    .line 135
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    :goto_1c
    const/4 v2, 0x1

    const/4 v3, 0x7

    goto/16 :goto_1e

    :pswitch_d
    move-object/from16 v42, v6

    move v6, v3

    .line 136
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    const/4 v2, 0x6

    .line 137
    invoke-static {v2}, Lq/g;->b(I)[I

    move-result-object v3

    .line 138
    array-length v2, v3

    if-lt v1, v2, :cond_49

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported matte type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ly1/i;->a(Ljava/lang/String;)V

    goto :goto_1c

    :cond_49
    const/4 v2, 0x6

    .line 140
    invoke-static {v2}, Lq/g;->b(I)[I

    move-result-object v2

    .line 141
    aget v31, v2, v1

    .line 142
    invoke-static/range {v31 .. v31}, Lq/g;->a(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4a

    goto :goto_1d

    :cond_4a
    const-string v1, "Unsupported matte type: Luma Inverted"

    .line 143
    invoke-virtual {v7, v1}, Ly1/i;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_4b
    const-string v1, "Unsupported matte type: Luma"

    .line 144
    invoke-virtual {v7, v1}, Ly1/i;->a(Ljava/lang/String;)V

    .line 145
    :goto_1d
    iget v1, v7, Ly1/i;->o:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Ly1/i;->o:I

    goto/16 :goto_1e

    :pswitch_e
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    .line 146
    invoke-static/range {p0 .. p1}, Li2/c;->a(Lj2/c;Ly1/i;)Le2/k;

    move-result-object v21

    goto/16 :goto_20

    :pswitch_f
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    .line 147
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_20

    :pswitch_10
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    .line 148
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lk2/g;->c()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    move/from16 v23, v1

    goto/16 :goto_1f

    :pswitch_11
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    .line 149
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lk2/g;->c()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    move/from16 v22, v1

    goto :goto_1f

    :pswitch_12
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    .line 150
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    int-to-long v3, v1

    move-wide/from16 v18, v3

    move v3, v6

    move-object/from16 v6, v42

    const/4 v11, 0x0

    move v4, v2

    goto/16 :goto_0

    :pswitch_13
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    .line 151
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_4c

    const/4 v3, 0x7

    .line 152
    invoke-static {v3}, Lq/g;->b(I)[I

    move-result-object v4

    .line 153
    aget v17, v4, v1

    :goto_1e
    move v4, v2

    goto :goto_1f

    :cond_4c
    const/4 v3, 0x7

    move v4, v2

    move/from16 v17, v3

    goto :goto_1f

    :pswitch_14
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    const/4 v3, 0x7

    .line 154
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v20

    goto :goto_1f

    :pswitch_15
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    const/4 v3, 0x7

    .line 155
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v1

    int-to-long v14, v1

    goto :goto_1f

    :pswitch_16
    move v2, v4

    move-object/from16 v42, v6

    move v6, v3

    const/4 v3, 0x7

    .line 156
    invoke-virtual/range {p0 .. p0}, Lj2/c;->n0()Ljava/lang/String;

    move-result-object v13

    :goto_1f
    move v3, v6

    :goto_20
    move-object/from16 v6, v42

    :goto_21
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4d
    move-object/from16 v42, v6

    .line 157
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    .line 158
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v16, v0

    if-lez v1, :cond_4e

    .line 159
    new-instance v6, Ll2/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v39, v10

    move-wide/from16 v40, v14

    move-object/from16 v10, v42

    move-object v14, v6

    move-object/from16 v6, v38

    invoke-direct/range {v0 .. v6}, Ll2/a;-><init>(Ly1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 160
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4e
    move-object/from16 v39, v10

    move-wide/from16 v40, v14

    move-object/from16 v10, v42

    :goto_22
    const/4 v0, 0x0

    cmpl-float v0, v36, v0

    if-lez v0, :cond_4f

    goto :goto_23

    .line 161
    :cond_4f
    iget v0, v7, Ly1/i;->l:F

    move/from16 v36, v0

    .line 162
    :goto_23
    new-instance v14, Ll2/a;

    const/4 v4, 0x0

    .line 163
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Ll2/a;-><init>(Ly1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 164
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v9, Ll2/a;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 166
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v12

    move-object v3, v12

    move/from16 v5, v36

    invoke-direct/range {v0 .. v6}, Ll2/a;-><init>(Ly1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 167
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 168
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_50
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 169
    invoke-virtual {v7, v0}, Ly1/i;->a(Ljava/lang/String;)V

    .line 170
    :cond_51
    new-instance v36, Lg2/f;

    move-object/from16 v0, v36

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v40

    move/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v10, v39

    move-object/from16 v37, v11

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v37

    move/from16 v22, v31

    move-object/from16 v23, v32

    move/from16 v24, v33

    move-object/from16 v25, v34

    move-object/from16 v26, v35

    invoke-direct/range {v0 .. v26}, Lg2/f;-><init>(Ljava/util/List;Ly1/i;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Le2/k;IIIFFIILe2/j;Lq/c;Ljava/util/List;ILe2/b;ZLf/p;Li2/j;)V

    return-object v36

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch
.end method
