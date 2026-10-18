.class public abstract La2/a;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lb2/a$a;
.implements La2/j;
.implements La2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/PathMeasure;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public final e:Ly1/e0;

.field public final f:Lg2/b;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:[F

.field public final i:Lz1/a;

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

.field public final k:Lb2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
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

.field public n:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public p:F

.field public q:Lb2/c;


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLe2/d;Le2/b;Ljava/util/List;Le2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/e0;",
            "Lg2/b;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Le2/d;",
            "Le2/b;",
            "Ljava/util/List<",
            "Le2/b;",
            ">;",
            "Le2/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, La2/a;->a:Landroid/graphics/PathMeasure;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/a;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/a;->c:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, La2/a;->d:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/a;->g:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lz1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz1/a;-><init>(I)V

    iput-object v0, p0, La2/a;->i:Lz1/a;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, La2/a;->p:F

    .line 9
    iput-object p1, p0, La2/a;->e:Ly1/e0;

    .line 10
    iput-object p2, p0, La2/a;->f:Lg2/b;

    .line 11
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 14
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 15
    invoke-virtual {p6}, Le2/d;->a()Lb2/a;

    move-result-object p1

    check-cast p1, Lb2/f;

    iput-object p1, p0, La2/a;->k:Lb2/f;

    .line 16
    invoke-virtual {p7}, Le2/b;->a()Lb2/a;

    move-result-object p1

    check-cast p1, Lb2/d;

    iput-object p1, p0, La2/a;->j:Lb2/d;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, La2/a;->m:Lb2/d;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p9}, Le2/b;->a()Lb2/a;

    move-result-object p1

    check-cast p1, Lb2/d;

    iput-object p1, p0, La2/a;->m:Lb2/d;

    .line 19
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, La2/a;->l:Ljava/util/ArrayList;

    .line 20
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, La2/a;->h:[F

    const/4 p1, 0x0

    move p3, p1

    .line 21
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 22
    iget-object p4, p0, La2/a;->l:Ljava/util/ArrayList;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Le2/b;

    invoke-virtual {p5}, Le2/b;->a()Lb2/a;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 23
    :cond_1
    iget-object p3, p0, La2/a;->k:Lb2/f;

    invoke-virtual {p2, p3}, Lg2/b;->f(Lb2/a;)V

    .line 24
    iget-object p3, p0, La2/a;->j:Lb2/d;

    invoke-virtual {p2, p3}, Lg2/b;->f(Lb2/a;)V

    move p3, p1

    .line 25
    :goto_2
    iget-object p4, p0, La2/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 26
    iget-object p4, p0, La2/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb2/a;

    invoke-virtual {p2, p4}, Lg2/b;->f(Lb2/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 27
    :cond_2
    iget-object p3, p0, La2/a;->m:Lb2/d;

    if-eqz p3, :cond_3

    .line 28
    invoke-virtual {p2, p3}, Lg2/b;->f(Lb2/a;)V

    .line 29
    :cond_3
    iget-object p3, p0, La2/a;->k:Lb2/f;

    invoke-virtual {p3, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 30
    iget-object p3, p0, La2/a;->j:Lb2/d;

    invoke-virtual {p3, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 31
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 32
    iget-object p3, p0, La2/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb2/a;

    invoke-virtual {p3, p0}, Lb2/a;->a(Lb2/a$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 33
    :cond_4
    iget-object p1, p0, La2/a;->m:Lb2/d;

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 35
    :cond_5
    invoke-virtual {p2}, Lg2/b;->m()Lf/p;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 36
    invoke-virtual {p2}, Lg2/b;->m()Lf/p;

    move-result-object p1

    .line 37
    iget-object p1, p1, Lf/p;->h:Ljava/lang/Object;

    check-cast p1, Le2/b;

    .line 38
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    iput-object p1, p0, La2/a;->o:Lb2/a;

    .line 39
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 40
    iget-object p1, p0, La2/a;->o:Lb2/a;

    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 41
    :cond_6
    invoke-virtual {p2}, Lg2/b;->o()Li2/j;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 42
    new-instance p1, Lb2/c;

    invoke-virtual {p2}, Lg2/b;->o()Li2/j;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lb2/c;-><init>(Lb2/a$a;Lg2/b;Li2/j;)V

    iput-object p1, p0, La2/a;->q:Lb2/c;

    :cond_7
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 1
    iget-object p3, p0, La2/a;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, La2/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, La2/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/a$a;

    move v2, p3

    .line 4
    :goto_1
    iget-object v3, v1, La2/a$a;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    iget-object v3, p0, La2/a;->b:Landroid/graphics/Path;

    .line 7
    iget-object v4, v1, La2/a$a;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/l;

    invoke-interface {v4}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, La2/a;->b:Landroid/graphics/Path;

    iget-object v0, p0, La2/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 10
    iget-object p2, p0, La2/a;->j:Lb2/d;

    invoke-virtual {p2}, Lb2/d;->l()F

    move-result p2

    .line 11
    iget-object p3, p0, La2/a;->d:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    iget-object p2, p0, La2/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
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

    .line 14
    invoke-static {}, Lp4/h;->p()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La2/a;->e:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 6
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

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/b;

    .line 3
    instance-of v5, v4, La2/t;

    if-eqz v5, :cond_0

    check-cast v4, La2/t;

    .line 4
    iget v5, v4, La2/t;->c:I

    if-ne v5, v3, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, p0}, La2/t;->f(Lb2/a$a;)V

    .line 6
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_7

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/b;

    .line 8
    instance-of v4, v0, La2/t;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, La2/t;

    .line 9
    iget v5, v4, La2/t;->c:I

    if-ne v5, v3, :cond_4

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, La2/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    new-instance v0, La2/a$a;

    invoke-direct {v0, v4}, La2/a$a;-><init>(La2/t;)V

    .line 12
    invoke-virtual {v4, p0}, La2/t;->f(Lb2/a$a;)V

    move-object v1, v0

    goto :goto_2

    .line 13
    :cond_4
    instance-of v4, v0, La2/l;

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    .line 14
    new-instance v1, La2/a$a;

    invoke-direct {v1, v2}, La2/a$a;-><init>(La2/t;)V

    .line 15
    :cond_5
    iget-object v4, v1, La2/a$a;->a:Ljava/util/ArrayList;

    .line 16
    check-cast v0, La2/l;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 17
    iget-object p1, p0, La2/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public g(Ljava/lang/Object;Ll2/c;)V
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
    sget-object v0, Ly1/i0;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, La2/a;->k:Lb2/f;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Ly1/i0;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, La2/a;->j:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object v0, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, La2/a;->n:Lb2/r;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, La2/a;->f:Lg2/b;

    invoke-virtual {v0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_2
    if-nez p2, :cond_3

    .line 8
    iput-object v1, p0, La2/a;->n:Lb2/r;

    goto/16 :goto_0

    .line 9
    :cond_3
    new-instance p1, Lb2/r;

    .line 10
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, La2/a;->n:Lb2/r;

    .line 12
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 13
    iget-object p1, p0, La2/a;->f:Lg2/b;

    iget-object p2, p0, La2/a;->n:Lb2/r;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object v0, Ly1/i0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 15
    iget-object p1, p0, La2/a;->o:Lb2/a;

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
    iput-object p1, p0, La2/a;->o:Lb2/a;

    .line 20
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 21
    iget-object p1, p0, La2/a;->f:Lg2/b;

    iget-object p2, p0, La2/a;->o:Lb2/a;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 22
    :cond_6
    sget-object v0, Ly1/i0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, La2/a;->q:Lb2/c;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0, p2}, Lb2/c;->b(Ll2/c;)V

    goto :goto_0

    .line 24
    :cond_7
    sget-object v0, Ly1/i0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, La2/a;->q:Lb2/c;

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {v0, p2}, Lb2/c;->f(Ll2/c;)V

    goto :goto_0

    .line 26
    :cond_8
    sget-object v0, Ly1/i0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, La2/a;->q:Lb2/c;

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v0, p2}, Lb2/c;->c(Ll2/c;)V

    goto :goto_0

    .line 28
    :cond_9
    sget-object v0, Ly1/i0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, La2/a;->q:Lb2/c;

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {v0, p2}, Lb2/c;->e(Ll2/c;)V

    goto :goto_0

    .line 30
    :cond_a
    sget-object v0, Ly1/i0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, La2/a;->q:Lb2/c;

    if-eqz p1, :cond_b

    .line 31
    invoke-virtual {p1, p2}, Lb2/c;->g(Ll2/c;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lk2/g;->d:Lk2/g$d;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    aput v5, v3, v4

    const/4 v6, 0x1

    .line 3
    aput v5, v3, v6

    const/4 v7, 0x2

    const v8, 0x471212bb

    .line 4
    aput v8, v3, v7

    const/4 v8, 0x3

    const v9, 0x471a973c

    .line 5
    aput v9, v3, v8

    .line 6
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 7
    aget v9, v3, v4

    aget v7, v3, v7

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_1

    aget v7, v3, v6

    aget v3, v3, v8

    cmpl-float v3, v7, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    if-eqz v3, :cond_2

    .line 8
    invoke-static {}, Lp4/h;->p()V

    return-void

    :cond_2
    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v3, v7

    .line 9
    iget-object v8, v0, La2/a;->k:Lb2/f;

    .line 10
    invoke-virtual {v8}, Lb2/a;->b()Ll2/a;

    move-result-object v9

    invoke-virtual {v8}, Lb2/a;->d()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lb2/f;->l(Ll2/a;F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v3, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    mul-float/2addr v3, v7

    float-to-int v3, v3

    .line 11
    iget-object v7, v0, La2/a;->i:Lz1/a;

    invoke-static {v3}, Lk2/f;->c(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lz1/a;->setAlpha(I)V

    .line 12
    iget-object v3, v0, La2/a;->i:Lz1/a;

    iget-object v7, v0, La2/a;->j:Lb2/d;

    invoke-virtual {v7}, Lb2/d;->l()F

    move-result v7

    invoke-static/range {p2 .. p2}, Lk2/g;->d(Landroid/graphics/Matrix;)F

    move-result v9

    mul-float/2addr v9, v7

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v3, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    .line 14
    invoke-static {}, Lp4/h;->p()V

    return-void

    .line 15
    :cond_3
    iget-object v3, v0, La2/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    .line 16
    invoke-static {}, Lp4/h;->p()V

    goto :goto_5

    .line 17
    :cond_4
    invoke-static/range {p2 .. p2}, Lk2/g;->d(Landroid/graphics/Matrix;)F

    move-result v3

    move v9, v4

    .line 18
    :goto_2
    iget-object v10, v0, La2/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 19
    iget-object v10, v0, La2/a;->h:[F

    iget-object v11, v0, La2/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb2/a;

    invoke-virtual {v11}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v10, v9

    .line 20
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_5

    .line 21
    iget-object v10, v0, La2/a;->h:[F

    aget v11, v10, v9

    cmpg-float v11, v11, v7

    if-gez v11, :cond_6

    .line 22
    aput v7, v10, v9

    goto :goto_3

    .line 23
    :cond_5
    iget-object v10, v0, La2/a;->h:[F

    aget v11, v10, v9

    const v12, 0x3dcccccd

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    .line 24
    aput v12, v10, v9

    .line 25
    :cond_6
    :goto_3
    iget-object v10, v0, La2/a;->h:[F

    aget v11, v10, v9

    mul-float/2addr v11, v3

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 26
    :cond_7
    iget-object v9, v0, La2/a;->m:Lb2/d;

    if-nez v9, :cond_8

    move v9, v5

    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v3

    .line 27
    :goto_4
    iget-object v3, v0, La2/a;->i:Lz1/a;

    new-instance v10, Landroid/graphics/DashPathEffect;

    iget-object v11, v0, La2/a;->h:[F

    invoke-direct {v10, v11, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 28
    invoke-static {}, Lp4/h;->p()V

    .line 29
    :goto_5
    iget-object v3, v0, La2/a;->n:Lb2/r;

    if-eqz v3, :cond_9

    .line 30
    iget-object v9, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v3}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 31
    :cond_9
    iget-object v3, v0, La2/a;->o:Lb2/a;

    if-eqz v3, :cond_c

    .line 32
    invoke-virtual {v3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v9, v3, v5

    if-nez v9, :cond_a

    .line 33
    iget-object v9, v0, La2/a;->i:Lz1/a;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_6

    .line 34
    :cond_a
    iget v9, v0, La2/a;->p:F

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_b

    .line 35
    iget-object v9, v0, La2/a;->f:Lg2/b;

    invoke-virtual {v9, v3}, Lg2/b;->n(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v9

    .line 36
    iget-object v10, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 37
    :cond_b
    :goto_6
    iput v3, v0, La2/a;->p:F

    .line 38
    :cond_c
    iget-object v3, v0, La2/a;->q:Lb2/c;

    if-eqz v3, :cond_d

    .line 39
    iget-object v9, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v3, v9}, Lb2/c;->a(Landroid/graphics/Paint;)V

    :cond_d
    move v3, v4

    .line 40
    :goto_7
    iget-object v9, v0, La2/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1b

    .line 41
    iget-object v9, v0, La2/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La2/a$a;

    .line 42
    iget-object v10, v9, La2/a$a;->b:La2/t;

    if-eqz v10, :cond_19

    .line 43
    iget-object v10, v0, La2/a;->b:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 44
    iget-object v10, v9, La2/a$a;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_e

    .line 46
    iget-object v11, v0, La2/a;->b:Landroid/graphics/Path;

    .line 47
    iget-object v12, v9, La2/a$a;->a:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La2/l;

    invoke-interface {v12}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_8

    .line 49
    :cond_e
    iget-object v10, v9, La2/a$a;->b:La2/t;

    .line 50
    iget-object v10, v10, La2/t;->d:Lb2/d;

    .line 51
    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float/2addr v10, v8

    .line 52
    iget-object v11, v9, La2/a$a;->b:La2/t;

    .line 53
    iget-object v11, v11, La2/t;->e:Lb2/d;

    .line 54
    invoke-virtual {v11}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float/2addr v11, v8

    .line 55
    iget-object v12, v9, La2/a$a;->b:La2/t;

    .line 56
    iget-object v12, v12, La2/t;->f:Lb2/d;

    .line 57
    invoke-virtual {v12}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/high16 v13, 0x43b40000    # 360.0f

    div-float/2addr v12, v13

    const v13, 0x3c23d70a

    cmpg-float v13, v10, v13

    if-gez v13, :cond_f

    const v13, 0x3f7d70a4

    cmpl-float v13, v11, v13

    if-lez v13, :cond_f

    .line 58
    iget-object v9, v0, La2/a;->b:Landroid/graphics/Path;

    iget-object v10, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-static {}, Lp4/h;->p()V

    goto/16 :goto_10

    .line 60
    :cond_f
    iget-object v13, v0, La2/a;->a:Landroid/graphics/PathMeasure;

    iget-object v14, v0, La2/a;->b:Landroid/graphics/Path;

    invoke-virtual {v13, v14, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 61
    iget-object v13, v0, La2/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    .line 62
    :goto_9
    iget-object v14, v0, La2/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 63
    iget-object v14, v0, La2/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v14

    add-float/2addr v13, v14

    goto :goto_9

    :cond_10
    mul-float/2addr v12, v13

    mul-float/2addr v10, v13

    add-float/2addr v10, v12

    mul-float/2addr v11, v13

    add-float/2addr v11, v12

    add-float v12, v10, v13

    sub-float/2addr v12, v7

    .line 64
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 65
    iget-object v12, v9, La2/a$a;->a:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move v14, v5

    :goto_a
    if-ltz v12, :cond_18

    .line 67
    iget-object v15, v0, La2/a;->c:Landroid/graphics/Path;

    .line 68
    iget-object v8, v9, La2/a$a;->a:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/l;

    invoke-interface {v8}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 70
    iget-object v8, v0, La2/a;->c:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 71
    iget-object v8, v0, La2/a;->a:Landroid/graphics/PathMeasure;

    iget-object v15, v0, La2/a;->c:Landroid/graphics/Path;

    invoke-virtual {v8, v15, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 72
    iget-object v8, v0, La2/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    cmpl-float v15, v11, v13

    if-lez v15, :cond_12

    sub-float v15, v11, v13

    add-float v16, v14, v8

    cmpg-float v16, v15, v16

    if-gez v16, :cond_12

    cmpg-float v16, v14, v15

    if-gez v16, :cond_12

    cmpl-float v16, v10, v13

    if-lez v16, :cond_11

    sub-float v16, v10, v13

    div-float v16, v16, v8

    move/from16 v4, v16

    goto :goto_b

    :cond_11
    move v4, v5

    :goto_b
    div-float/2addr v15, v8

    .line 73
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 74
    iget-object v7, v0, La2/a;->c:Landroid/graphics/Path;

    invoke-static {v7, v4, v15, v5}, Lk2/g;->a(Landroid/graphics/Path;FFF)V

    .line 75
    iget-object v4, v0, La2/a;->c:Landroid/graphics/Path;

    iget-object v7, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_e

    :cond_12
    add-float v4, v14, v8

    cmpg-float v7, v4, v10

    if-ltz v7, :cond_17

    cmpl-float v7, v14, v11

    if-lez v7, :cond_13

    goto :goto_e

    :cond_13
    cmpg-float v7, v4, v11

    if-gtz v7, :cond_14

    cmpg-float v7, v10, v14

    if-gez v7, :cond_14

    .line 76
    iget-object v4, v0, La2/a;->c:Landroid/graphics/Path;

    iget-object v7, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_e

    :cond_14
    cmpg-float v7, v10, v14

    if-gez v7, :cond_15

    move v7, v5

    goto :goto_c

    :cond_15
    sub-float v7, v10, v14

    div-float/2addr v7, v8

    :goto_c
    cmpl-float v4, v11, v4

    if-lez v4, :cond_16

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_16
    sub-float v4, v11, v14

    div-float/2addr v4, v8

    .line 77
    :goto_d
    iget-object v15, v0, La2/a;->c:Landroid/graphics/Path;

    invoke-static {v15, v7, v4, v5}, Lk2/g;->a(Landroid/graphics/Path;FFF)V

    .line 78
    iget-object v4, v0, La2/a;->c:Landroid/graphics/Path;

    iget-object v7, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_17
    :goto_e
    add-float/2addr v14, v8

    add-int/lit8 v12, v12, -0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x42c80000    # 100.0f

    goto/16 :goto_a

    .line 79
    :cond_18
    invoke-static {}, Lp4/h;->p()V

    goto :goto_10

    .line 80
    :cond_19
    iget-object v4, v0, La2/a;->b:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 81
    iget-object v4, v9, La2/a$a;->a:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_f
    if-ltz v4, :cond_1a

    .line 83
    iget-object v7, v0, La2/a;->b:Landroid/graphics/Path;

    .line 84
    iget-object v8, v9, La2/a$a;->a:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/l;

    invoke-interface {v8}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 86
    :cond_1a
    invoke-static {}, Lp4/h;->p()V

    .line 87
    iget-object v4, v0, La2/a;->b:Landroid/graphics/Path;

    iget-object v7, v0, La2/a;->i:Lz1/a;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 88
    invoke-static {}, Lp4/h;->p()V

    :goto_10
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x42c80000    # 100.0f

    goto/16 :goto_7

    .line 89
    :cond_1b
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
