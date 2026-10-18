.class public final Lb2/m;
.super Lb2/a;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb2/a<",
        "Lf2/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lf2/l;

.field public final j:Landroid/graphics/Path;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La2/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll2/a<",
            "Lf2/l;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb2/a;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Lf2/l;

    invoke-direct {p1}, Lf2/l;-><init>()V

    iput-object p1, p0, Lb2/m;->i:Lf2/l;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lb2/m;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final g(Ll2/a;F)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v1, Ll2/a;->b:Ljava/lang/Object;

    check-cast v3, Lf2/l;

    .line 2
    iget-object v1, v1, Ll2/a;->c:Ljava/lang/Object;

    check-cast v1, Lf2/l;

    .line 3
    iget-object v4, v0, Lb2/m;->i:Lf2/l;

    .line 4
    iget-object v5, v4, Lf2/l;->b:Landroid/graphics/PointF;

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, v4, Lf2/l;->b:Landroid/graphics/PointF;

    .line 6
    :cond_0
    iget-boolean v5, v3, Lf2/l;->c:Z

    const/4 v7, 0x1

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lf2/l;->c:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v7

    .line 7
    :goto_1
    iput-boolean v5, v4, Lf2/l;->c:Z

    .line 8
    iget-object v5, v3, Lf2/l;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 10
    iget-object v8, v1, Lf2/l;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v5, v8, :cond_3

    const-string v5, "Curves must have the same number of control points. Shape 1: "

    .line 12
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 13
    iget-object v8, v3, Lf2/l;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\tShape 2: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v8, v1, Lf2/l;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v5}, Lk2/c;->b(Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object v5, v3, Lf2/l;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 20
    iget-object v8, v1, Lf2/l;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 22
    iget-object v8, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v5, :cond_4

    .line 23
    iget-object v8, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_2
    if-ge v8, v5, :cond_5

    .line 24
    iget-object v9, v4, Lf2/l;->a:Ljava/util/ArrayList;

    new-instance v10, Ld2/a;

    invoke-direct {v10}, Ld2/a;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 25
    :cond_4
    iget-object v8, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_5

    .line 26
    iget-object v8, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_3
    if-lt v8, v5, :cond_5

    .line 27
    iget-object v9, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 28
    :cond_5
    iget-object v5, v3, Lf2/l;->b:Landroid/graphics/PointF;

    .line 29
    iget-object v8, v1, Lf2/l;->b:Landroid/graphics/PointF;

    .line 30
    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v8, Landroid/graphics/PointF;->x:F

    sget-object v11, Lk2/f;->a:Landroid/graphics/PointF;

    invoke-static {v10, v9, v2, v9}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    invoke-virtual {v4, v9, v8}, Lf2/l;->a(FF)V

    .line 31
    iget-object v5, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_4
    if-ltz v5, :cond_6

    .line 32
    iget-object v8, v3, Lf2/l;->a:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld2/a;

    .line 34
    iget-object v9, v1, Lf2/l;->a:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld2/a;

    .line 36
    iget-object v10, v8, Ld2/a;->a:Landroid/graphics/PointF;

    .line 37
    iget-object v11, v8, Ld2/a;->b:Landroid/graphics/PointF;

    .line 38
    iget-object v8, v8, Ld2/a;->c:Landroid/graphics/PointF;

    .line 39
    iget-object v12, v9, Ld2/a;->a:Landroid/graphics/PointF;

    .line 40
    iget-object v13, v9, Ld2/a;->b:Landroid/graphics/PointF;

    .line 41
    iget-object v9, v9, Ld2/a;->c:Landroid/graphics/PointF;

    .line 42
    iget-object v14, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ld2/a;

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v15, v2, v15}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v6

    .line 43
    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v10

    mul-float/2addr v12, v2

    add-float/2addr v12, v10

    .line 44
    invoke-virtual {v14, v6, v12}, Ld2/a;->a(FF)V

    .line 45
    iget-object v6, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld2/a;

    iget v10, v11, Landroid/graphics/PointF;->x:F

    iget v12, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v10, v2, v10}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v10

    .line 46
    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v11

    mul-float/2addr v12, v2

    add-float/2addr v12, v11

    .line 47
    invoke-virtual {v6, v10, v12}, Ld2/a;->b(FF)V

    .line 48
    iget-object v6, v4, Lf2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld2/a;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v11, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v11, v10, v2, v10}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v10

    .line 49
    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    .line 50
    invoke-virtual {v6, v10, v9}, Ld2/a;->c(FF)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 51
    :cond_6
    iget-object v1, v0, Lb2/m;->i:Lf2/l;

    .line 52
    iget-object v2, v0, Lb2/m;->k:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    :goto_5
    if-ltz v2, :cond_7

    .line 54
    iget-object v3, v0, Lb2/m;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/r;

    invoke-interface {v3, v1}, La2/r;->c(Lf2/l;)Lf2/l;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 55
    :cond_7
    iget-object v9, v0, Lb2/m;->j:Landroid/graphics/Path;

    .line 56
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 57
    iget-object v2, v1, Lf2/l;->b:Landroid/graphics/PointF;

    .line 58
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    sget-object v3, Lk2/f;->a:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v10, 0x0

    .line 60
    :goto_6
    iget-object v2, v1, Lf2/l;->a:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_9

    .line 62
    iget-object v2, v1, Lf2/l;->a:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/a;

    .line 64
    iget-object v3, v2, Ld2/a;->a:Landroid/graphics/PointF;

    .line 65
    iget-object v4, v2, Ld2/a;->b:Landroid/graphics/PointF;

    .line 66
    iget-object v11, v2, Ld2/a;->c:Landroid/graphics/PointF;

    .line 67
    sget-object v12, Lk2/f;->a:Landroid/graphics/PointF;

    invoke-virtual {v3, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 68
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    .line 69
    :cond_8
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget v13, v11, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->y:F

    move-object v2, v9

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v13

    move v8, v14

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 70
    :goto_7
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 71
    :cond_9
    iget-boolean v1, v1, Lf2/l;->c:Z

    if-eqz v1, :cond_a

    .line 72
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 73
    :cond_a
    iget-object v1, v0, Lb2/m;->j:Landroid/graphics/Path;

    return-object v1
.end method
