.class public final La2/h;
.super La2/a;
.source "GradientStrokeContent.java"


# instance fields
.field public final A:Lb2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lb2/r;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Lp/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/d<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lp/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/d<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Landroid/graphics/RectF;

.field public final w:I

.field public final x:I

.field public final y:Lb2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Lf2/c;",
            "Lf2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lb2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/e;)V
    .locals 11

    .line 1
    iget v0, p3, Lf2/e;->h:I

    .line 2
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v4, v0

    .line 6
    iget v0, p3, Lf2/e;->i:I

    .line 7
    invoke-static {v0}, Landroidx/recyclerview/widget/d;->a(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 8
    iget v6, p3, Lf2/e;->j:F

    .line 9
    iget-object v7, p3, Lf2/e;->d:Le2/d;

    .line 10
    iget-object v8, p3, Lf2/e;->g:Le2/b;

    .line 11
    iget-object v9, p3, Lf2/e;->k:Ljava/util/List;

    .line 12
    iget-object v10, p3, Lf2/e;->l:Le2/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 13
    invoke-direct/range {v1 .. v10}, La2/a;-><init>(Ly1/e0;Lg2/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLe2/d;Le2/b;Ljava/util/List;Le2/b;)V

    .line 14
    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iput-object v0, p0, La2/h;->t:Lp/d;

    .line 15
    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iput-object v0, p0, La2/h;->u:Lp/d;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, La2/h;->v:Landroid/graphics/RectF;

    .line 17
    iget-object v0, p3, Lf2/e;->a:Ljava/lang/String;

    .line 18
    iput-object v0, p0, La2/h;->r:Ljava/lang/String;

    .line 19
    iget v0, p3, Lf2/e;->b:I

    .line 20
    iput v0, p0, La2/h;->w:I

    .line 21
    iget-boolean v0, p3, Lf2/e;->m:Z

    .line 22
    iput-boolean v0, p0, La2/h;->s:Z

    .line 23
    iget-object p1, p1, Ly1/e0;->h:Ly1/i;

    .line 24
    invoke-virtual {p1}, Ly1/i;->b()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, La2/h;->x:I

    .line 25
    iget-object p1, p3, Lf2/e;->c:Le2/c;

    .line 26
    invoke-virtual {p1}, Le2/c;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/e;

    iput-object v0, p0, La2/h;->y:Lb2/e;

    .line 27
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 28
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 29
    iget-object p1, p3, Lf2/e;->e:Le2/f;

    .line 30
    invoke-virtual {p1}, Le2/f;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/k;

    iput-object v0, p0, La2/h;->z:Lb2/k;

    .line 31
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 32
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 33
    iget-object p1, p3, Lf2/e;->f:Le2/f;

    .line 34
    invoke-virtual {p1}, Le2/f;->a()Lb2/a;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lb2/k;

    iput-object p3, p0, La2/h;->A:Lb2/k;

    .line 35
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 36
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    return-void
.end method


# virtual methods
.method public final f([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, La2/h;->B:Lb2/r;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 3
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 5
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 7
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 8
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
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
    invoke-super {p0, p1, p2}, La2/a;->g(Ljava/lang/Object;Ll2/c;)V

    .line 2
    sget-object v0, Ly1/i0;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, La2/h;->B:Lb2/r;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, La2/a;->f:Lg2/b;

    invoke-virtual {v0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 5
    iput-object p1, p0, La2/h;->B:Lb2/r;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lb2/r;

    .line 7
    invoke-direct {v0, p2, p1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, La2/h;->B:Lb2/r;

    .line 9
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 10
    iget-object p1, p0, La2/a;->f:Lg2/b;

    iget-object p2, p0, La2/h;->B:Lb2/r;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, La2/h;->s:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, La2/h;->v:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, La2/a;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 3
    iget v2, v0, La2/h;->w:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual/range {p0 .. p0}, La2/h;->j()I

    move-result v2

    .line 5
    iget-object v3, v0, La2/h;->t:Lp/d;

    int-to-long v5, v2

    .line 6
    invoke-virtual {v3, v5, v6, v4}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v2, v0, La2/h;->z:Lb2/k;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 9
    iget-object v3, v0, La2/h;->A:Lb2/k;

    invoke-virtual {v3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 10
    iget-object v4, v0, La2/h;->y:Lb2/e;

    invoke-virtual {v4}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf2/c;

    .line 11
    iget-object v7, v4, Lf2/c;->b:[I

    .line 12
    invoke-virtual {v0, v7}, La2/h;->f([I)[I

    move-result-object v13

    .line 13
    iget-object v14, v4, Lf2/c;->a:[F

    .line 14
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 15
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 16
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 17
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 18
    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 19
    iget-object v3, v0, La2/h;->t:Lp/d;

    invoke-virtual {v3, v5, v6, v2}, Lp/d;->f(JLjava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual/range {p0 .. p0}, La2/h;->j()I

    move-result v2

    .line 21
    iget-object v3, v0, La2/h;->u:Lp/d;

    int-to-long v5, v2

    .line 22
    invoke-virtual {v3, v5, v6, v4}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    iget-object v2, v0, La2/h;->z:Lb2/k;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 25
    iget-object v3, v0, La2/h;->A:Lb2/k;

    invoke-virtual {v3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 26
    iget-object v4, v0, La2/h;->y:Lb2/e;

    invoke-virtual {v4}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf2/c;

    .line 27
    iget-object v7, v4, Lf2/c;->b:[I

    .line 28
    invoke-virtual {v0, v7}, La2/h;->f([I)[I

    move-result-object v12

    .line 29
    iget-object v13, v4, Lf2/c;->a:[F

    .line 30
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 31
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 32
    iget v2, v3, Landroid/graphics/PointF;->x:F

    .line 33
    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v9

    float-to-double v7, v2

    sub-float/2addr v3, v10

    float-to-double v2, v3

    .line 34
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v11, v2

    .line 35
    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 36
    iget-object v3, v0, La2/h;->u:Lp/d;

    invoke-virtual {v3, v5, v6, v2}, Lp/d;->f(JLjava/lang/Object;)V

    .line 37
    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 38
    iget-object v3, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 39
    invoke-super/range {p0 .. p3}, La2/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final j()I
    .locals 4

    .line 1
    iget-object v0, p0, La2/h;->z:Lb2/k;

    .line 2
    iget v0, v0, Lb2/a;->d:F

    .line 3
    iget v1, p0, La2/h;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    iget-object v1, p0, La2/h;->A:Lb2/k;

    .line 5
    iget v1, v1, Lb2/a;->d:F

    .line 6
    iget v2, p0, La2/h;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 7
    iget-object v2, p0, La2/h;->y:Lb2/e;

    .line 8
    iget v2, v2, Lb2/a;->d:F

    .line 9
    iget v3, p0, La2/h;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    :cond_2
    return v0
.end method
