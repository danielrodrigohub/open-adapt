.class public final Li2/t;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static b:Lp/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/h<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field

.field public static c:Lj2/c$a;

.field public static d:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Li2/t;->a:Landroid/view/animation/LinearInterpolator;

    const-string v1, "t"

    const-string v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v5, "i"

    const-string v6, "h"

    const-string v7, "to"

    const-string v8, "ti"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/t;->c:Lj2/c$a;

    const-string v0, "x"

    const-string v1, "y"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/t;->d:Lj2/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 8

    .line 1
    const-class v0, Li2/t;

    .line 2
    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lk2/f;->b(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 3
    iget v1, p0, Landroid/graphics/PointF;->y:F

    const/high16 v4, -0x3d380000    # -100.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v1, v4, v5}, Lk2/f;->b(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/PointF;->y:F

    .line 4
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2, v3}, Lk2/f;->b(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 5
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4, v5}, Lk2/f;->b(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 6
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sget-object v6, Lk2/g;->a:Lk2/g$a;

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_0

    const/16 v7, 0x20f

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v2, v7

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    cmpl-float v7, v4, v6

    if-eqz v7, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :cond_1
    cmpl-float v4, v5, v6

    if-eqz v4, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    :cond_2
    cmpl-float v4, v1, v6

    if-eqz v4, :cond_3

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 7
    :cond_3
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Li2/t;->b:Lp/h;

    if-nez v1, :cond_4

    .line 9
    new-instance v1, Lp/h;

    invoke-direct {v1}, Lp/h;-><init>()V

    sput-object v1, Li2/t;->b:Lp/h;

    .line 10
    :cond_4
    sget-object v1, Li2/t;->b:Lp/h;

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v2, v4}, Lp/h;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/ref/WeakReference;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Interpolator;

    :cond_5
    if-eqz v1, :cond_6

    if-nez v4, :cond_8

    .line 14
    :cond_6
    :try_start_1
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    .line 15
    invoke-static {v1, v4, v5, v7}, Ll0/a;->b(FFFF)Landroid/view/animation/PathInterpolator;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "The Path cannot loop back on itself."

    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 18
    invoke-static {v1, p0, v3, p1}, Ll0/a;->b(FFFF)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    goto :goto_1

    .line 19
    :cond_7
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_1
    move-object v4, p0

    .line 20
    :try_start_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 22
    :try_start_3
    sget-object p1, Li2/t;->b:Lp/h;

    invoke-virtual {p1, v2, p0}, Lp/h;->f(ILjava/lang/Object;)V

    .line 23
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_8
    :goto_2
    return-object v4

    :catchall_1
    move-exception p0

    .line 24
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public static b(Lj2/c;Ly1/i;FLi2/l0;ZZ)Ll2/a;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj2/c;",
            "Ly1/i;",
            "F",
            "Li2/l0<",
            "TT;>;ZZ)",
            "Ll2/a<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    if-eqz p4, :cond_16

    if-eqz p5, :cond_16

    const/4 v7, 0x3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 3
    sget-object v8, Li2/t;->c:Lj2/c$a;

    invoke-virtual {v0, v8}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move-object/from16 v21, v9

    move v3, v10

    const/4 v7, 0x7

    .line 4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto/16 :goto_b

    .line 5
    :pswitch_0
    invoke-static {v0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {v0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v6

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v8

    if-ne v8, v3, :cond_0

    move v10, v3

    :goto_1
    move-object/from16 v21, v9

    goto/16 :goto_6

    :cond_0
    move-object/from16 v21, v9

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 8
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v8

    if-ne v8, v7, :cond_8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 11
    sget-object v3, Li2/t;->d:Lj2/c$a;

    invoke-virtual {v0, v3}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v21, v9

    const/4 v9, 0x1

    if-eq v3, v9, :cond_1

    .line 12
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    move v3, v10

    goto :goto_5

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v3

    const/4 v9, 0x7

    if-ne v3, v9, :cond_2

    move v3, v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v9

    double-to-float v5, v9

    move v7, v5

    goto :goto_5

    :cond_2
    move v3, v10

    .line 15
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v9

    double-to-float v5, v9

    .line 17
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v7

    const/4 v9, 0x7

    if-ne v7, v9, :cond_3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v9

    double-to-float v7, v9

    goto :goto_3

    :cond_3
    move v7, v5

    .line 19
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    goto :goto_5

    :cond_4
    move-object/from16 v21, v9

    move v3, v10

    .line 20
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v4

    const/4 v8, 0x7

    if-ne v4, v8, :cond_5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v9

    double-to-float v4, v9

    move v8, v4

    goto :goto_5

    .line 22
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v9

    double-to-float v4, v9

    .line 24
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v9

    if-ne v9, v8, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v8, v8

    goto :goto_4

    :cond_6
    move v8, v4

    .line 26
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    :goto_5
    move v10, v3

    move-object/from16 v9, v21

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v21, v9

    move v3, v10

    .line 27
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 28
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    move-object v4, v9

    const/4 v7, 0x7

    goto/16 :goto_b

    :cond_8
    move-object/from16 v21, v9

    move v3, v10

    .line 30
    invoke-static {v0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v12

    :goto_6
    const/4 v7, 0x7

    goto/16 :goto_c

    :pswitch_4
    move-object/from16 v21, v9

    move v3, v10

    .line 31
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_10

    .line 32
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 33
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 34
    sget-object v15, Li2/t;->d:Lj2/c$a;

    invoke-virtual {v0, v15}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v15

    if-eqz v15, :cond_c

    const/4 v8, 0x1

    if-eq v15, v8, :cond_9

    .line 35
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    const/4 v15, 0x7

    goto :goto_a

    .line 36
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v8

    const/4 v15, 0x7

    if-ne v8, v15, :cond_a

    .line 37
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v9, v8

    move v13, v9

    goto :goto_a

    .line 38
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v9, v8

    .line 40
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v8

    if-ne v8, v15, :cond_b

    move v13, v9

    .line 41
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v8, v8

    goto :goto_8

    :cond_b
    move v13, v9

    move v8, v13

    .line 42
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    move v9, v13

    move v13, v8

    goto :goto_a

    :cond_c
    const/4 v15, 0x7

    .line 43
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v7

    if-ne v7, v15, :cond_d

    .line 44
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v7

    double-to-float v7, v7

    move v10, v7

    goto :goto_a

    .line 45
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lj2/c;->x()V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v7

    double-to-float v7, v7

    .line 47
    invoke-virtual/range {p0 .. p0}, Lj2/c;->o0()I

    move-result v8

    if-ne v8, v15, :cond_e

    move v10, v7

    .line 48
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v7

    double-to-float v7, v7

    goto :goto_9

    :cond_e
    move v10, v7

    .line 49
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lj2/c;->f0()V

    move/from16 v22, v10

    move v10, v7

    move/from16 v7, v22

    :goto_a
    const/4 v8, 0x3

    goto :goto_7

    :cond_f
    const/4 v15, 0x7

    .line 50
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 51
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v10, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    move-object v13, v7

    move v7, v15

    move-object v15, v8

    goto :goto_b

    :cond_10
    const/4 v7, 0x7

    .line 53
    invoke-static {v0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_b

    :pswitch_5
    move-object/from16 v21, v9

    move v3, v10

    const/4 v7, 0x7

    .line 54
    invoke-interface {v2, v0, v1}, Li2/l0;->a(Lj2/c;F)Ljava/lang/Object;

    move-result-object v16

    goto :goto_b

    :pswitch_6
    move-object/from16 v21, v9

    move v3, v10

    const/4 v7, 0x7

    .line 55
    invoke-interface {v2, v0, v1}, Li2/l0;->a(Lj2/c;F)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    goto :goto_b

    :pswitch_7
    move-object/from16 v21, v9

    move v3, v10

    const/4 v7, 0x7

    .line 56
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v8

    double-to-float v8, v8

    move/from16 v18, v8

    :goto_b
    move v10, v3

    :goto_c
    move-object/from16 v9, v21

    const/4 v3, 0x1

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_11
    move-object/from16 v21, v9

    move v3, v10

    .line 57
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    if-eqz v3, :cond_12

    .line 58
    sget-object v0, Li2/t;->a:Landroid/view/animation/LinearInterpolator;

    move-object/from16 v16, v14

    goto :goto_d

    :cond_12
    if-eqz v11, :cond_13

    if-eqz v12, :cond_13

    .line 59
    invoke-static {v11, v12}, Li2/t;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_d

    :cond_13
    if-eqz v15, :cond_14

    if-eqz v13, :cond_14

    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    .line 60
    invoke-static {v15, v4}, Li2/t;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 61
    invoke-static {v13, v5}, Li2/t;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object/from16 v17, v1

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 62
    :cond_14
    sget-object v0, Li2/t;->a:Landroid/view/animation/LinearInterpolator;

    :goto_d
    move-object/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_e
    if-eqz v16, :cond_15

    if-eqz v17, :cond_15

    .line 63
    new-instance v0, Ll2/a;

    move-object v12, v0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v18}, Ll2/a;-><init>(Ly1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V

    goto :goto_f

    .line 64
    :cond_15
    new-instance v1, Ll2/a;

    const/4 v2, 0x0

    move-object v12, v1

    move-object/from16 v13, p1

    move-object/from16 v16, v0

    move/from16 v17, v18

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Ll2/a;-><init>(Ly1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object v0, v1

    .line 65
    :goto_f
    iput-object v6, v0, Ll2/a;->o:Landroid/graphics/PointF;

    move-object/from16 v6, v21

    .line 66
    iput-object v6, v0, Ll2/a;->p:Landroid/graphics/PointF;

    return-object v0

    :cond_16
    if-eqz p4, :cond_1b

    .line 67
    invoke-virtual/range {p0 .. p0}, Lj2/c;->Y()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    .line 68
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lj2/c;->i0()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 69
    sget-object v7, Li2/t;->c:Lj2/c$a;

    invoke-virtual {v0, v7}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    packed-switch v7, :pswitch_data_1

    const/4 v11, 0x1

    .line 70
    invoke-virtual/range {p0 .. p0}, Lj2/c;->s0()V

    goto :goto_10

    .line 71
    :pswitch_8
    invoke-static {v0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_10

    .line 72
    :pswitch_9
    invoke-static {v0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_10

    .line 73
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lj2/c;->l0()I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_17

    move v9, v11

    goto :goto_10

    :cond_17
    const/4 v9, 0x0

    goto :goto_10

    :pswitch_b
    const/4 v11, 0x1

    .line 74
    invoke-static {v0, v8}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_10

    :pswitch_c
    const/4 v11, 0x1

    .line 75
    invoke-static {v0, v8}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object v6

    goto :goto_10

    :pswitch_d
    const/4 v11, 0x1

    .line 76
    invoke-interface {v2, v0, v1}, Li2/l0;->a(Lj2/c;F)Ljava/lang/Object;

    move-result-object v19

    goto :goto_10

    :pswitch_e
    const/4 v11, 0x1

    .line 77
    invoke-interface {v2, v0, v1}, Li2/l0;->a(Lj2/c;F)Ljava/lang/Object;

    move-result-object v10

    goto :goto_10

    :pswitch_f
    const/4 v11, 0x1

    .line 78
    invoke-virtual/range {p0 .. p0}, Lj2/c;->k0()D

    move-result-wide v7

    double-to-float v12, v7

    goto :goto_10

    .line 79
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lj2/c;->g0()V

    if-eqz v9, :cond_19

    .line 80
    sget-object v0, Li2/t;->a:Landroid/view/animation/LinearInterpolator;

    move-object v11, v0

    move-object/from16 v19, v10

    goto :goto_12

    :cond_19
    if-eqz v6, :cond_1a

    if-eqz v3, :cond_1a

    .line 81
    invoke-static {v6, v3}, Li2/t;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_11

    .line 82
    :cond_1a
    sget-object v0, Li2/t;->a:Landroid/view/animation/LinearInterpolator;

    :goto_11
    move-object v11, v0

    .line 83
    :goto_12
    new-instance v0, Ll2/a;

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v8, p1

    move-object v9, v10

    move-object/from16 v10, v19

    invoke-direct/range {v7 .. v13}, Ll2/a;-><init>(Ly1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 84
    iput-object v4, v0, Ll2/a;->o:Landroid/graphics/PointF;

    .line 85
    iput-object v5, v0, Ll2/a;->p:Landroid/graphics/PointF;

    return-object v0

    .line 86
    :cond_1b
    invoke-interface {v2, v0, v1}, Li2/l0;->a(Lj2/c;F)Ljava/lang/Object;

    move-result-object v0

    .line 87
    new-instance v1, Ll2/a;

    invoke-direct {v1, v0}, Ll2/a;-><init>(Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
