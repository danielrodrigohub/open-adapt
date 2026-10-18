.class public final La2/m;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements La2/l;
.implements Lb2/a$a;
.implements La2/j;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Ly1/e0;

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lg1/i;

.field public o:Z


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/h;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/m;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Lg1/i;

    invoke-direct {v0}, Lg1/i;-><init>()V

    iput-object v0, p0, La2/m;->n:Lg1/i;

    .line 4
    iput-object p1, p0, La2/m;->c:Ly1/e0;

    .line 5
    iget-object p1, p3, Lf2/h;->a:Ljava/lang/String;

    .line 6
    iput-object p1, p0, La2/m;->b:Ljava/lang/String;

    .line 7
    iget p1, p3, Lf2/h;->b:I

    .line 8
    iput p1, p0, La2/m;->d:I

    .line 9
    iget-boolean v0, p3, Lf2/h;->j:Z

    .line 10
    iput-boolean v0, p0, La2/m;->e:Z

    .line 11
    iget-boolean v0, p3, Lf2/h;->k:Z

    .line 12
    iput-boolean v0, p0, La2/m;->f:Z

    .line 13
    iget-object v0, p3, Lf2/h;->c:Le2/b;

    .line 14
    invoke-virtual {v0}, Le2/b;->a()Lb2/a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb2/d;

    iput-object v1, p0, La2/m;->g:Lb2/d;

    .line 15
    iget-object v1, p3, Lf2/h;->d:Le2/l;

    .line 16
    invoke-interface {v1}, Le2/l;->a()Lb2/a;

    move-result-object v1

    iput-object v1, p0, La2/m;->h:Lb2/a;

    .line 17
    iget-object v2, p3, Lf2/h;->e:Le2/b;

    .line 18
    invoke-virtual {v2}, Le2/b;->a()Lb2/a;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lb2/d;

    iput-object v3, p0, La2/m;->i:Lb2/d;

    .line 19
    iget-object v3, p3, Lf2/h;->g:Le2/b;

    .line 20
    invoke-virtual {v3}, Le2/b;->a()Lb2/a;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lb2/d;

    iput-object v4, p0, La2/m;->k:Lb2/d;

    .line 21
    iget-object v4, p3, Lf2/h;->i:Le2/b;

    .line 22
    invoke-virtual {v4}, Le2/b;->a()Lb2/a;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lb2/d;

    iput-object v5, p0, La2/m;->m:Lb2/d;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 23
    iget-object v6, p3, Lf2/h;->f:Le2/b;

    .line 24
    invoke-virtual {v6}, Le2/b;->a()Lb2/a;

    move-result-object v6

    check-cast v6, Lb2/d;

    iput-object v6, p0, La2/m;->j:Lb2/d;

    .line 25
    iget-object p3, p3, Lf2/h;->h:Le2/b;

    .line 26
    invoke-virtual {p3}, Le2/b;->a()Lb2/a;

    move-result-object p3

    check-cast p3, Lb2/d;

    iput-object p3, p0, La2/m;->l:Lb2/d;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 27
    iput-object p3, p0, La2/m;->j:Lb2/d;

    .line 28
    iput-object p3, p0, La2/m;->l:Lb2/d;

    .line 29
    :goto_0
    invoke-virtual {p2, v0}, Lg2/b;->f(Lb2/a;)V

    .line 30
    invoke-virtual {p2, v1}, Lg2/b;->f(Lb2/a;)V

    .line 31
    invoke-virtual {p2, v2}, Lg2/b;->f(Lb2/a;)V

    .line 32
    invoke-virtual {p2, v3}, Lg2/b;->f(Lb2/a;)V

    .line 33
    invoke-virtual {p2, v4}, Lg2/b;->f(Lb2/a;)V

    if-ne p1, v5, :cond_1

    .line 34
    iget-object p3, p0, La2/m;->j:Lb2/d;

    invoke-virtual {p2, p3}, Lg2/b;->f(Lb2/a;)V

    .line 35
    iget-object p3, p0, La2/m;->l:Lb2/d;

    invoke-virtual {p2, p3}, Lg2/b;->f(Lb2/a;)V

    .line 36
    :cond_1
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 37
    invoke-virtual {v1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 38
    invoke-virtual {v2, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 39
    invoke-virtual {v3, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 40
    invoke-virtual {v4, p0}, Lb2/a;->a(Lb2/a$a;)V

    if-ne p1, v5, :cond_2

    .line 41
    iget-object p1, p0, La2/m;->j:Lb2/d;

    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 42
    iget-object p1, p0, La2/m;->l:Lb2/d;

    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 41

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, La2/m;->o:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    return-object v1

    .line 3
    :cond_0
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v1, v0, La2/m;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, v0, La2/m;->o:Z

    .line 6
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    return-object v1

    .line 7
    :cond_1
    iget v1, v0, La2/m;->d:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_2

    goto/16 :goto_12

    .line 8
    :cond_2
    iget-object v1, v0, La2/m;->g:Lb2/d;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 9
    iget-object v2, v0, La2/m;->i:Lb2/d;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    :goto_0
    sub-double/2addr v8, v6

    .line 10
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v4, v4

    .line 11
    iget-object v5, v0, La2/m;->m:Lb2/d;

    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v3

    .line 12
    iget-object v3, v0, La2/m;->k:Lb2/d;

    invoke-virtual {v3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v8, v3

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v10, v10

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v11, v11

    .line 15
    iget-object v12, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v12, v4

    add-double/2addr v6, v12

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const/4 v4, 0x0

    :goto_1
    int-to-double v14, v4

    cmpg-double v14, v14, v1

    if-gez v14, :cond_5

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    double-to-float v14, v14

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-wide/from16 v23, v1

    mul-double v1, v15, v8

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_4

    move-wide/from16 v25, v8

    float-to-double v8, v11

    move-wide/from16 v27, v6

    float-to-double v6, v10

    .line 19
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v8

    double-to-float v2, v6

    float-to-double v6, v2

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v1

    move-wide/from16 v29, v12

    float-to-double v12, v14

    .line 22
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v12

    double-to-float v7, v7

    float-to-double v7, v7

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 24
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v3, v5

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v8, v12

    mul-float/2addr v2, v8

    mul-float/2addr v6, v8

    mul-float/2addr v9, v8

    mul-float/2addr v8, v7

    .line 25
    iget-object v7, v0, La2/m;->a:Landroid/graphics/Path;

    sub-float v17, v10, v2

    sub-float v18, v11, v6

    add-float v19, v14, v9

    add-float v20, v1, v8

    move-object/from16 v16, v7

    move/from16 v21, v14

    move/from16 v22, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_4
    move-wide/from16 v27, v6

    move-wide/from16 v25, v8

    move-wide/from16 v29, v12

    .line 26
    iget-object v2, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v6, v27, v29

    add-int/lit8 v4, v4, 0x1

    move v11, v1

    move v10, v14

    move-wide/from16 v1, v23

    move-wide/from16 v8, v25

    move-wide/from16 v12, v29

    goto/16 :goto_1

    .line 27
    :cond_5
    iget-object v1, v0, La2/m;->h:Lb2/a;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 28
    iget-object v2, v0, La2/m;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 29
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_12

    .line 30
    :cond_6
    iget-object v1, v0, La2/m;->g:Lb2/d;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 31
    iget-object v2, v0, La2/m;->i:Lb2/d;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    :goto_3
    sub-double/2addr v8, v6

    .line 32
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    float-to-double v8, v1

    div-double/2addr v4, v8

    double-to-float v2, v4

    .line 33
    iget-boolean v4, v0, La2/m;->f:Z

    if-eqz v4, :cond_8

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    :cond_8
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    float-to-int v5, v1

    int-to-float v5, v5

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v1

    mul-float/2addr v10, v4

    float-to-double v10, v10

    add-double/2addr v6, v10

    .line 34
    :cond_9
    iget-object v10, v0, La2/m;->k:Lb2/d;

    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 35
    iget-object v11, v0, La2/m;->j:Lb2/d;

    invoke-virtual {v11}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 36
    iget-object v12, v0, La2/m;->l:Lb2/d;

    if-eqz v12, :cond_a

    .line 37
    invoke-virtual {v12}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v12, v3

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    .line 38
    :goto_4
    iget-object v13, v0, La2/m;->m:Lb2/d;

    if-eqz v13, :cond_b

    .line 39
    invoke-virtual {v13}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v3

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_5
    if-eqz v5, :cond_c

    invoke-static {v10, v11, v1, v11}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v3

    float-to-double v14, v3

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move/from16 v18, v11

    move/from16 v19, v12

    mul-double v11, v16, v14

    double-to-float v11, v11

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v12, v14

    .line 42
    iget-object v14, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v14, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v14, v2, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v6, v14

    goto :goto_6

    :cond_c
    move/from16 v18, v11

    move/from16 v19, v12

    float-to-double v11, v10

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    double-to-float v3, v14

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    double-to-float v12, v14

    .line 45
    iget-object v11, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v11, v3, v12}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v14, v4

    add-double/2addr v6, v14

    const/4 v11, 0x0

    move/from16 v40, v11

    move v11, v3

    move/from16 v3, v40

    .line 46
    :goto_6
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v14, v16

    move/from16 v15, v17

    :goto_7
    int-to-double v4, v14

    cmpg-double v22, v4, v8

    if-gez v22, :cond_17

    if-eqz v15, :cond_d

    move/from16 v22, v10

    goto :goto_8

    :cond_d
    move/from16 v22, v18

    :goto_8
    const/16 v23, 0x0

    cmpl-float v23, v3, v23

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-eqz v23, :cond_e

    sub-double v24, v8, v16

    cmpl-double v24, v4, v24

    if-nez v24, :cond_e

    mul-float v24, v2, v1

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v40, v24

    move/from16 v24, v2

    move/from16 v2, v40

    goto :goto_9

    :cond_e
    move/from16 v24, v2

    move/from16 v2, v20

    :goto_9
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    if-eqz v23, :cond_f

    sub-double v27, v8, v25

    cmpl-double v23, v4, v27

    if-nez v23, :cond_f

    move/from16 v22, v2

    move/from16 v23, v3

    goto :goto_a

    :cond_f
    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v2

    :goto_a
    float-to-double v2, v3

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move-wide/from16 v29, v4

    mul-double v4, v27, v2

    double-to-float v4, v4

    .line 48
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v5, v19, v3

    if-nez v5, :cond_10

    cmpl-float v3, v13, v3

    if-nez v3, :cond_10

    .line 49
    iget-object v3, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v38, v2

    move-wide/from16 v27, v6

    move/from16 v39, v13

    :goto_b
    move/from16 v2, v22

    goto/16 :goto_11

    :cond_10
    move-wide/from16 v27, v6

    float-to-double v5, v12

    move v7, v12

    move v3, v13

    float-to-double v12, v11

    .line 50
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v5, v12

    double-to-float v5, v5

    float-to-double v5, v5

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 52
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    move v13, v7

    float-to-double v6, v2

    move/from16 v38, v2

    move/from16 v39, v3

    float-to-double v2, v4

    .line 53
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v6

    double-to-float v2, v2

    float-to-double v2, v2

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz v15, :cond_11

    move/from16 v3, v19

    goto :goto_c

    :cond_11
    move/from16 v3, v39

    :goto_c
    if-eqz v15, :cond_12

    move/from16 v7, v39

    goto :goto_d

    :cond_12
    move/from16 v7, v19

    :goto_d
    if-eqz v15, :cond_13

    move/from16 v31, v18

    goto :goto_e

    :cond_13
    move/from16 v31, v10

    :goto_e
    if-eqz v15, :cond_14

    move/from16 v32, v10

    goto :goto_f

    :cond_14
    move/from16 v32, v18

    :goto_f
    mul-float v31, v31, v3

    const v3, 0x3ef4e26d

    mul-float v31, v31, v3

    mul-float v12, v12, v31

    mul-float v31, v31, v5

    mul-float v32, v32, v7

    mul-float v32, v32, v3

    mul-float v6, v6, v32

    mul-float v32, v32, v2

    if-eqz v21, :cond_16

    if-nez v14, :cond_15

    mul-float/2addr v12, v1

    mul-float v31, v31, v1

    goto :goto_10

    :cond_15
    sub-double v2, v8, v25

    cmpl-double v2, v29, v2

    if-nez v2, :cond_16

    mul-float/2addr v6, v1

    mul-float v32, v32, v1

    .line 56
    :cond_16
    :goto_10
    iget-object v2, v0, La2/m;->a:Landroid/graphics/Path;

    sub-float v3, v11, v12

    sub-float v33, v13, v31

    add-float v34, v4, v6

    add-float v35, v38, v32

    move-object/from16 v31, v2

    move/from16 v32, v3

    move/from16 v36, v4

    move/from16 v37, v38

    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_b

    :goto_11
    float-to-double v2, v2

    add-double v6, v27, v2

    xor-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v11, v4

    move/from16 v3, v23

    move/from16 v2, v24

    move/from16 v12, v38

    move/from16 v13, v39

    goto/16 :goto_7

    .line 57
    :cond_17
    iget-object v1, v0, La2/m;->h:Lb2/a;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 58
    iget-object v2, v0, La2/m;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 59
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 60
    :goto_12
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 61
    iget-object v1, v0, La2/m;->n:Lg1/i;

    iget-object v2, v0, La2/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lg1/i;->b(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, v0, La2/m;->o:Z

    .line 63
    iget-object v1, v0, La2/m;->a:Landroid/graphics/Path;

    return-object v1
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La2/m;->o:Z

    .line 2
    iget-object v0, p0, La2/m;->c:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La2/b;",
            ">;",
            "Ljava/util/List<",
            "La2/b;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/b;

    .line 3
    instance-of v1, v0, La2/t;

    if-eqz v1, :cond_0

    check-cast v0, La2/t;

    .line 4
    iget v1, v0, La2/t;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, La2/m;->n:Lg1/i;

    invoke-virtual {v1, v0}, Lg1/i;->a(La2/t;)V

    .line 6
    invoke-virtual {v0, p0}, La2/t;->f(Lb2/a$a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(Ljava/lang/Object;Ll2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ll2/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ly1/i0;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, La2/m;->g:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ly1/i0;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, La2/m;->i:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Ly1/i0;->n:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, La2/m;->h:Lb2/a;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Ly1/i0;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, La2/m;->j:Lb2/d;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Ly1/i0;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 10
    iget-object p1, p0, La2/m;->k:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 11
    :cond_4
    sget-object v0, Ly1/i0;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, La2/m;->l:Lb2/d;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 13
    :cond_5
    sget-object v0, Ly1/i0;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 14
    iget-object p1, p0, La2/m;->m:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ld2/e;ILjava/util/List;Ld2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/e;",
            "I",
            "Ljava/util/List<",
            "Ld2/e;",
            ">;",
            "Ld2/e;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lk2/f;->f(Ld2/e;ILjava/util/List;Ld2/e;La2/j;)V

    return-void
.end method
