.class public final La2/f;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements La2/d;
.implements Lb2/a$a;
.implements La2/j;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Lz1/a;

.field public final c:Lg2/b;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La2/l;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lb2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lb2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ly1/e0;

.field public k:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public l:F

.field public m:Lb2/c;


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/f;->a:Landroid/graphics/Path;

    .line 3
    new-instance v1, Lz1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lz1/a;-><init>(I)V

    iput-object v1, p0, La2/f;->b:Lz1/a;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La2/f;->f:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, La2/f;->c:Lg2/b;

    .line 6
    iget-object v1, p3, Lf2/m;->c:Ljava/lang/String;

    .line 7
    iput-object v1, p0, La2/f;->d:Ljava/lang/String;

    .line 8
    iget-boolean v1, p3, Lf2/m;->f:Z

    .line 9
    iput-boolean v1, p0, La2/f;->e:Z

    .line 10
    iput-object p1, p0, La2/f;->j:Ly1/e0;

    .line 11
    invoke-virtual {p2}, Lg2/b;->m()Lf/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p2}, Lg2/b;->m()Lf/p;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lf/p;->h:Ljava/lang/Object;

    check-cast p1, Le2/b;

    .line 14
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    iput-object p1, p0, La2/f;->k:Lb2/a;

    .line 15
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 16
    iget-object p1, p0, La2/f;->k:Lb2/a;

    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 17
    :cond_0
    invoke-virtual {p2}, Lg2/b;->o()Li2/j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    new-instance p1, Lb2/c;

    invoke-virtual {p2}, Lg2/b;->o()Li2/j;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Lb2/c;-><init>(Lb2/a$a;Lg2/b;Li2/j;)V

    iput-object p1, p0, La2/f;->m:Lb2/c;

    .line 19
    :cond_1
    iget-object p1, p3, Lf2/m;->d:Le2/a;

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p3, Lf2/m;->e:Le2/d;

    if-nez p1, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p3, Lf2/m;->b:Landroid/graphics/Path$FillType;

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 23
    iget-object p1, p3, Lf2/m;->d:Le2/a;

    .line 24
    invoke-virtual {p1}, Le2/a;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/b;

    iput-object v0, p0, La2/f;->g:Lb2/b;

    .line 25
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 26
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 27
    iget-object p1, p3, Lf2/m;->e:Le2/d;

    .line 28
    invoke-virtual {p1}, Le2/d;->a()Lb2/a;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lb2/f;

    iput-object p3, p0, La2/f;->h:Lb2/f;

    .line 29
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 30
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, La2/f;->g:Lb2/b;

    .line 32
    iput-object p1, p0, La2/f;->h:Lb2/f;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, La2/f;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, La2/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, La2/f;->a:Landroid/graphics/Path;

    iget-object v2, p0, La2/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/l;

    invoke-interface {v2}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, La2/f;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La2/f;->j:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/b;

    .line 3
    instance-of v1, v0, La2/l;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, La2/f;->f:Ljava/util/ArrayList;

    check-cast v0, La2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(Ljava/lang/Object;Ll2/c;)V
    .locals 2
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
    sget-object v0, Ly1/i0;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, La2/f;->g:Lb2/b;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Ly1/i0;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, La2/f;->h:Lb2/f;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object v0, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, La2/f;->i:Lb2/r;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, La2/f;->c:Lg2/b;

    invoke-virtual {v0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_2
    if-nez p2, :cond_3

    .line 8
    iput-object v1, p0, La2/f;->i:Lb2/r;

    goto/16 :goto_0

    .line 9
    :cond_3
    new-instance p1, Lb2/r;

    .line 10
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, La2/f;->i:Lb2/r;

    .line 12
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 13
    iget-object p1, p0, La2/f;->c:Lg2/b;

    iget-object p2, p0, La2/f;->i:Lb2/r;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object v0, Ly1/i0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 15
    iget-object p1, p0, La2/f;->k:Lb2/a;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 17
    :cond_5
    new-instance p1, Lb2/r;

    .line 18
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 19
    iput-object p1, p0, La2/f;->k:Lb2/a;

    .line 20
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 21
    iget-object p1, p0, La2/f;->c:Lg2/b;

    iget-object p2, p0, La2/f;->k:Lb2/a;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 22
    :cond_6
    sget-object v0, Ly1/i0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, La2/f;->m:Lb2/c;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0, p2}, Lb2/c;->b(Ll2/c;)V

    goto :goto_0

    .line 24
    :cond_7
    sget-object v0, Ly1/i0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, La2/f;->m:Lb2/c;

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {v0, p2}, Lb2/c;->f(Ll2/c;)V

    goto :goto_0

    .line 26
    :cond_8
    sget-object v0, Ly1/i0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, La2/f;->m:Lb2/c;

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v0, p2}, Lb2/c;->c(Ll2/c;)V

    goto :goto_0

    .line 28
    :cond_9
    sget-object v0, Ly1/i0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, La2/f;->m:Lb2/c;

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {v0, p2}, Lb2/c;->e(Ll2/c;)V

    goto :goto_0

    .line 30
    :cond_a
    sget-object v0, Ly1/i0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, La2/f;->m:Lb2/c;

    if-eqz p1, :cond_b

    .line 31
    invoke-virtual {p1, p2}, Lb2/c;->g(Ll2/c;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, La2/f;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La2/f;->g:Lb2/b;

    .line 3
    invoke-virtual {v0}, Lb2/a;->b()Ll2/a;

    move-result-object v1

    invoke-virtual {v0}, Lb2/a;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb2/b;->l(Ll2/a;F)I

    move-result v0

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 4
    iget-object v2, p0, La2/f;->h:Lb2/f;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 5
    iget-object v1, p0, La2/f;->b:Lz1/a;

    const/4 v2, 0x0

    invoke-static {p3}, Lk2/f;->c(I)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v3, 0xffffff

    and-int/2addr v0, v3

    or-int/2addr p3, v0

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p3, p0, La2/f;->i:Lb2/r;

    if-eqz p3, :cond_1

    .line 7
    iget-object v0, p0, La2/f;->b:Lz1/a;

    invoke-virtual {p3}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    :cond_1
    iget-object p3, p0, La2/f;->k:Lb2/a;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, La2/f;->b:Lz1/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, La2/f;->l:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, La2/f;->c:Lg2/b;

    invoke-virtual {v0, p3}, Lg2/b;->n(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v0

    .line 13
    iget-object v1, p0, La2/f;->b:Lz1/a;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 14
    :cond_3
    :goto_0
    iput p3, p0, La2/f;->l:F

    .line 15
    :cond_4
    iget-object p3, p0, La2/f;->m:Lb2/c;

    if-eqz p3, :cond_5

    .line 16
    iget-object v0, p0, La2/f;->b:Lz1/a;

    invoke-virtual {p3, v0}, Lb2/c;->a(Landroid/graphics/Paint;)V

    .line 17
    :cond_5
    iget-object p3, p0, La2/f;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 18
    :goto_1
    iget-object p3, p0, La2/f;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v2, p3, :cond_6

    .line 19
    iget-object p3, p0, La2/f;->a:Landroid/graphics/Path;

    iget-object v0, p0, La2/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/l;

    invoke-interface {v0}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_6
    iget-object p2, p0, La2/f;->a:Landroid/graphics/Path;

    iget-object p3, p0, La2/f;->b:Lz1/a;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    invoke-static {}, Lp4/h;->p()V

    return-void
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
