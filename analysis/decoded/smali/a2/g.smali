.class public final La2/g;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements La2/d;
.implements Lb2/a$a;
.implements La2/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lg2/b;

.field public final d:Lp/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/d<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lp/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/d<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/graphics/Path;

.field public final g:Lz1/a;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La2/l;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:Lb2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Lf2/c;",
            "Lf2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lb2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lb2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lb2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lb2/r;

.field public final q:Ly1/e0;

.field public final r:I

.field public s:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public t:F

.field public u:Lb2/c;


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iput-object v0, p0, La2/g;->d:Lp/d;

    .line 3
    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iput-object v0, p0, La2/g;->e:Lp/d;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/g;->f:Landroid/graphics/Path;

    .line 5
    new-instance v1, Lz1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lz1/a;-><init>(I)V

    iput-object v1, p0, La2/g;->g:Lz1/a;

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, La2/g;->h:Landroid/graphics/RectF;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La2/g;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, La2/g;->t:F

    .line 9
    iput-object p2, p0, La2/g;->c:Lg2/b;

    .line 10
    iget-object v1, p3, Lf2/d;->g:Ljava/lang/String;

    .line 11
    iput-object v1, p0, La2/g;->a:Ljava/lang/String;

    .line 12
    iget-boolean v1, p3, Lf2/d;->h:Z

    .line 13
    iput-boolean v1, p0, La2/g;->b:Z

    .line 14
    iput-object p1, p0, La2/g;->q:Ly1/e0;

    .line 15
    iget v1, p3, Lf2/d;->a:I

    .line 16
    iput v1, p0, La2/g;->j:I

    .line 17
    iget-object v1, p3, Lf2/d;->b:Landroid/graphics/Path$FillType;

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 19
    iget-object p1, p1, Ly1/e0;->h:Ly1/i;

    .line 20
    invoke-virtual {p1}, Ly1/i;->b()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, La2/g;->r:I

    .line 21
    iget-object p1, p3, Lf2/d;->c:Le2/c;

    .line 22
    invoke-virtual {p1}, Le2/c;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/e;

    iput-object v0, p0, La2/g;->k:Lb2/e;

    .line 23
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 24
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 25
    iget-object p1, p3, Lf2/d;->d:Le2/d;

    .line 26
    invoke-virtual {p1}, Le2/d;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/f;

    iput-object v0, p0, La2/g;->l:Lb2/f;

    .line 27
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 28
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 29
    iget-object p1, p3, Lf2/d;->e:Le2/f;

    .line 30
    invoke-virtual {p1}, Le2/f;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/k;

    iput-object v0, p0, La2/g;->m:Lb2/k;

    .line 31
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 32
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 33
    iget-object p1, p3, Lf2/d;->f:Le2/f;

    .line 34
    invoke-virtual {p1}, Le2/f;->a()Lb2/a;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lb2/k;

    iput-object p3, p0, La2/g;->n:Lb2/k;

    .line 35
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 36
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 37
    invoke-virtual {p2}, Lg2/b;->m()Lf/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p2}, Lg2/b;->m()Lf/p;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lf/p;->h:Ljava/lang/Object;

    check-cast p1, Le2/b;

    .line 40
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    iput-object p1, p0, La2/g;->s:Lb2/a;

    .line 41
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 42
    iget-object p1, p0, La2/g;->s:Lb2/a;

    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 43
    :cond_0
    invoke-virtual {p2}, Lg2/b;->o()Li2/j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    new-instance p1, Lb2/c;

    invoke-virtual {p2}, Lg2/b;->o()Li2/j;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lb2/c;-><init>(Lb2/a$a;Lg2/b;Li2/j;)V

    iput-object p1, p0, La2/g;->u:Lb2/c;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, La2/g;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, La2/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, La2/g;->f:Landroid/graphics/Path;

    iget-object v2, p0, La2/g;->i:Ljava/util/ArrayList;

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
    iget-object p2, p0, La2/g;->f:Landroid/graphics/Path;

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

    iget-object v0, p0, La2/g;->q:Ly1/e0;

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
    iget-object v1, p0, La2/g;->i:Ljava/util/ArrayList;

    check-cast v0, La2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, La2/g;->p:Lb2/r;

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
    iget-object p1, p0, La2/g;->l:Lb2/f;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, La2/g;->o:Lb2/r;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, La2/g;->c:Lg2/b;

    invoke-virtual {v0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_1
    if-nez p2, :cond_2

    .line 6
    iput-object v1, p0, La2/g;->o:Lb2/r;

    goto/16 :goto_0

    .line 7
    :cond_2
    new-instance p1, Lb2/r;

    .line 8
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, La2/g;->o:Lb2/r;

    .line 10
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 11
    iget-object p1, p0, La2/g;->c:Lg2/b;

    iget-object p2, p0, La2/g;->o:Lb2/r;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto/16 :goto_0

    .line 12
    :cond_3
    sget-object v0, Ly1/i0;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    .line 13
    iget-object p1, p0, La2/g;->p:Lb2/r;

    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, La2/g;->c:Lg2/b;

    invoke-virtual {v0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_4
    if-nez p2, :cond_5

    .line 15
    iput-object v1, p0, La2/g;->p:Lb2/r;

    goto/16 :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, La2/g;->d:Lp/d;

    invoke-virtual {p1}, Lp/d;->a()V

    .line 17
    iget-object p1, p0, La2/g;->e:Lp/d;

    invoke-virtual {p1}, Lp/d;->a()V

    .line 18
    new-instance p1, Lb2/r;

    .line 19
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, La2/g;->p:Lb2/r;

    .line 21
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 22
    iget-object p1, p0, La2/g;->c:Lg2/b;

    iget-object p2, p0, La2/g;->p:Lb2/r;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 23
    :cond_6
    sget-object v0, Ly1/i0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 24
    iget-object p1, p0, La2/g;->s:Lb2/a;

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 26
    :cond_7
    new-instance p1, Lb2/r;

    .line 27
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, La2/g;->s:Lb2/a;

    .line 29
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 30
    iget-object p1, p0, La2/g;->c:Lg2/b;

    iget-object p2, p0, La2/g;->s:Lb2/a;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 31
    :cond_8
    sget-object v0, Ly1/i0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, La2/g;->u:Lb2/c;

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {v0, p2}, Lb2/c;->b(Ll2/c;)V

    goto :goto_0

    .line 33
    :cond_9
    sget-object v0, Ly1/i0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, La2/g;->u:Lb2/c;

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {v0, p2}, Lb2/c;->f(Ll2/c;)V

    goto :goto_0

    .line 35
    :cond_a
    sget-object v0, Ly1/i0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, La2/g;->u:Lb2/c;

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0, p2}, Lb2/c;->c(Ll2/c;)V

    goto :goto_0

    .line 37
    :cond_b
    sget-object v0, Ly1/i0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, La2/g;->u:Lb2/c;

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {v0, p2}, Lb2/c;->e(Ll2/c;)V

    goto :goto_0

    .line 39
    :cond_c
    sget-object v0, Ly1/i0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, La2/g;->u:Lb2/c;

    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {p1, p2}, Lb2/c;->g(Ll2/c;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, La2/g;->b:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, La2/g;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, v0, La2/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, v0, La2/g;->f:Landroid/graphics/Path;

    iget-object v5, v0, La2/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/l;

    invoke-interface {v5}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, La2/g;->f:Landroid/graphics/Path;

    iget-object v4, v0, La2/g;->h:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6
    iget v2, v0, La2/g;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, La2/g;->j()I

    move-result v2

    .line 8
    iget-object v5, v0, La2/g;->d:Lp/d;

    int-to-long v6, v2

    .line 9
    invoke-virtual {v5, v6, v7, v4}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, v0, La2/g;->m:Lb2/k;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 12
    iget-object v5, v0, La2/g;->n:Lb2/k;

    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 13
    iget-object v8, v0, La2/g;->k:Lb2/e;

    invoke-virtual {v8}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf2/c;

    .line 14
    iget-object v9, v8, Lf2/c;->b:[I

    .line 15
    invoke-virtual {v0, v9}, La2/g;->f([I)[I

    move-result-object v15

    .line 16
    iget-object v8, v8, Lf2/c;->a:[F

    .line 17
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v9

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 18
    iget-object v2, v0, La2/g;->d:Lp/d;

    invoke-virtual {v2, v6, v7, v9}, Lp/d;->f(JLjava/lang/Object;)V

    move-object v4, v9

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual/range {p0 .. p0}, La2/g;->j()I

    move-result v2

    .line 20
    iget-object v5, v0, La2/g;->e:Lp/d;

    int-to-long v6, v2

    .line 21
    invoke-virtual {v5, v6, v7, v4}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_4

    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 23
    :cond_4
    iget-object v2, v0, La2/g;->m:Lb2/k;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 24
    iget-object v5, v0, La2/g;->n:Lb2/k;

    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 25
    iget-object v8, v0, La2/g;->k:Lb2/e;

    invoke-virtual {v8}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf2/c;

    .line 26
    iget-object v9, v8, Lf2/c;->b:[I

    .line 27
    invoke-virtual {v0, v9}, La2/g;->f([I)[I

    move-result-object v14

    .line 28
    iget-object v15, v8, Lf2/c;->a:[F

    .line 29
    iget v11, v2, Landroid/graphics/PointF;->x:F

    .line 30
    iget v12, v2, Landroid/graphics/PointF;->y:F

    .line 31
    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 32
    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v11

    float-to-double v8, v2

    sub-float/2addr v5, v12

    float-to-double v4, v5

    .line 33
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    cmpg-float v5, v4, v3

    if-gtz v5, :cond_5

    const v4, 0x3a83126f

    :cond_5
    move v13, v4

    .line 34
    new-instance v4, Landroid/graphics/RadialGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 35
    iget-object v5, v0, La2/g;->e:Lp/d;

    invoke-virtual {v5, v6, v7, v4}, Lp/d;->f(JLjava/lang/Object;)V

    .line 36
    :goto_2
    invoke-virtual {v4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 37
    iget-object v1, v0, La2/g;->g:Lz1/a;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    iget-object v1, v0, La2/g;->o:Lb2/r;

    if-eqz v1, :cond_6

    .line 39
    iget-object v4, v0, La2/g;->g:Lz1/a;

    invoke-virtual {v1}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 40
    :cond_6
    iget-object v1, v0, La2/g;->s:Lb2/a;

    if-eqz v1, :cond_9

    .line 41
    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    .line 42
    iget-object v3, v0, La2/g;->g:Lz1/a;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_3

    .line 43
    :cond_7
    iget v2, v0, La2/g;->t:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_8

    .line 44
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 45
    iget-object v3, v0, La2/g;->g:Lz1/a;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 46
    :cond_8
    :goto_3
    iput v1, v0, La2/g;->t:F

    .line 47
    :cond_9
    iget-object v1, v0, La2/g;->u:Lb2/c;

    if-eqz v1, :cond_a

    .line 48
    iget-object v2, v0, La2/g;->g:Lz1/a;

    invoke-virtual {v1, v2}, Lb2/c;->a(Landroid/graphics/Paint;)V

    :cond_a
    move/from16 v1, p3

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 49
    iget-object v3, v0, La2/g;->l:Lb2/f;

    invoke-virtual {v3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 50
    iget-object v2, v0, La2/g;->g:Lz1/a;

    invoke-static {v1}, Lk2/f;->c(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lz1/a;->setAlpha(I)V

    .line 51
    iget-object v1, v0, La2/g;->f:Landroid/graphics/Path;

    iget-object v2, v0, La2/g;->g:Lz1/a;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
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

.method public final j()I
    .locals 4

    .line 1
    iget-object v0, p0, La2/g;->m:Lb2/k;

    .line 2
    iget v0, v0, Lb2/a;->d:F

    .line 3
    iget v1, p0, La2/g;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    iget-object v1, p0, La2/g;->n:Lb2/k;

    .line 5
    iget v1, v1, Lb2/a;->d:F

    .line 6
    iget v2, p0, La2/g;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 7
    iget-object v2, p0, La2/g;->k:Lb2/e;

    .line 8
    iget v2, v2, Lb2/a;->d:F

    .line 9
    iget v3, p0, La2/g;->r:I

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
