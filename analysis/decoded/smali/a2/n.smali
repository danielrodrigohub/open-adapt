.class public final La2/n;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lb2/a$a;
.implements La2/j;
.implements La2/l;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ly1/e0;

.field public final f:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lg1/i;

.field public j:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, La2/n;->b:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Lg1/i;

    invoke-direct {v0}, Lg1/i;-><init>()V

    iput-object v0, p0, La2/n;->i:Lg1/i;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La2/n;->j:Lb2/a;

    .line 6
    iget-object v0, p3, Lf2/i;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p0, La2/n;->c:Ljava/lang/String;

    .line 8
    iget-boolean v0, p3, Lf2/i;->e:Z

    .line 9
    iput-boolean v0, p0, La2/n;->d:Z

    .line 10
    iput-object p1, p0, La2/n;->e:Ly1/e0;

    .line 11
    iget-object p1, p3, Lf2/i;->b:Le2/l;

    .line 12
    invoke-interface {p1}, Le2/l;->a()Lb2/a;

    move-result-object p1

    iput-object p1, p0, La2/n;->f:Lb2/a;

    .line 13
    iget-object v0, p3, Lf2/i;->c:Le2/l;

    .line 14
    invoke-interface {v0}, Le2/l;->a()Lb2/a;

    move-result-object v0

    iput-object v0, p0, La2/n;->g:Lb2/a;

    .line 15
    iget-object p3, p3, Lf2/i;->d:Le2/b;

    .line 16
    invoke-virtual {p3}, Le2/b;->a()Lb2/a;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lb2/d;

    iput-object v1, p0, La2/n;->h:Lb2/d;

    .line 17
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 18
    invoke-virtual {p2, v0}, Lg2/b;->f(Lb2/a;)V

    .line 19
    invoke-virtual {p2, p3}, Lg2/b;->f(Lb2/a;)V

    .line 20
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 21
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 22
    invoke-virtual {p3, p0}, Lb2/a;->a(Lb2/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 15

    .line 1
    iget-boolean v0, p0, La2/n;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v0, p0, La2/n;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, La2/n;->k:Z

    .line 6
    iget-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, La2/n;->g:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 8
    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    .line 10
    iget-object v4, p0, La2/n;->h:Lb2/d;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v4}, Lb2/d;->l()F

    move-result v4

    :goto_0
    cmpl-float v6, v4, v5

    if-nez v6, :cond_3

    .line 12
    iget-object v6, p0, La2/n;->j:Lb2/a;

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v6}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 14
    :cond_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_4

    move v4, v6

    .line 15
    :cond_4
    iget-object v6, p0, La2/n;->f:Lb2/a;

    invoke-virtual {v6}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 16
    iget-object v7, p0, La2/n;->a:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    iget-object v7, p0, La2/n;->a:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v7, v4, v5

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    if-lez v7, :cond_5

    .line 18
    iget-object v10, p0, La2/n;->b:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    mul-float v12, v4, v3

    sub-float v13, v11, v12

    iget v14, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v0

    sub-float v12, v14, v12

    invoke-virtual {v10, v13, v12, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object v10, p0, La2/n;->a:Landroid/graphics/Path;

    iget-object v11, p0, La2/n;->b:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v5, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 20
    :cond_5
    iget-object v5, p0, La2/n;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_6

    .line 21
    iget-object v5, p0, La2/n;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    mul-float v12, v4, v3

    sub-float v13, v11, v12

    add-float/2addr v12, v10

    invoke-virtual {v5, v10, v13, v12, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    iget-object v5, p0, La2/n;->a:Landroid/graphics/Path;

    iget-object v10, p0, La2/n;->b:Landroid/graphics/RectF;

    invoke-virtual {v5, v10, v9, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 23
    :cond_6
    iget-object v5, p0, La2/n;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_7

    .line 24
    iget-object v5, p0, La2/n;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    mul-float v12, v4, v3

    add-float v13, v10, v12

    add-float/2addr v12, v11

    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    iget-object v5, p0, La2/n;->a:Landroid/graphics/Path;

    iget-object v10, p0, La2/n;->b:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v5, v10, v11, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 26
    :cond_7
    iget-object v5, p0, La2/n;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v7, :cond_8

    .line 27
    iget-object v5, p0, La2/n;->b:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v2

    mul-float/2addr v4, v3

    sub-float v2, v7, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    add-float/2addr v4, v3

    invoke-virtual {v5, v2, v3, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    iget-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    iget-object v2, p0, La2/n;->b:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 29
    :cond_8
    iget-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 30
    iget-object v0, p0, La2/n;->i:Lg1/i;

    iget-object v2, p0, La2/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lg1/i;->b(Landroid/graphics/Path;)V

    .line 31
    iput-boolean v1, p0, La2/n;->k:Z

    .line 32
    iget-object v0, p0, La2/n;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La2/n;->k:Z

    .line 2
    iget-object v0, p0, La2/n;->e:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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

    if-ge p2, v1, :cond_2

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/b;

    .line 3
    instance-of v1, v0, La2/t;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, La2/t;

    .line 4
    iget v2, v1, La2/t;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v0, p0, La2/n;->i:Lg1/i;

    invoke-virtual {v0, v1}, Lg1/i;->a(La2/t;)V

    .line 6
    invoke-virtual {v1, p0}, La2/t;->f(Lb2/a$a;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v1, v0, La2/p;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, La2/p;

    .line 9
    iget-object v0, v0, La2/p;->b:Lb2/a;

    .line 10
    iput-object v0, p0, La2/n;->j:Lb2/a;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
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
    sget-object v0, Ly1/i0;->l:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, La2/n;->g:Lb2/a;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ly1/i0;->n:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, La2/n;->f:Lb2/a;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Ly1/i0;->m:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, La2/n;->h:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/n;->c:Ljava/lang/String;

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
