.class public final Lg2/c;
.super Lg2/b;
.source "CompositionLayer.java"


# instance fields
.field public D:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/RectF;

.field public final H:Landroid/graphics/Paint;

.field public I:Z


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/f;Ljava/util/List;Ly1/i;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/e0;",
            "Lg2/f;",
            "Ljava/util/List<",
            "Lg2/f;",
            ">;",
            "Ly1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lg2/b;-><init>(Ly1/e0;Lg2/f;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg2/c;->E:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg2/c;->F:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg2/c;->G:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lg2/c;->H:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lg2/c;->I:Z

    .line 7
    iget-object p2, p2, Lg2/f;->s:Le2/b;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Le2/b;->a()Lb2/a;

    move-result-object p2

    iput-object p2, p0, Lg2/c;->D:Lb2/a;

    .line 9
    invoke-virtual {p0, p2}, Lg2/b;->f(Lb2/a;)V

    .line 10
    iget-object p2, p0, Lg2/c;->D:Lb2/a;

    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    goto :goto_0

    .line 11
    :cond_0
    iput-object v1, p0, Lg2/c;->D:Lb2/a;

    .line 12
    :goto_0
    new-instance p2, Lp/d;

    .line 13
    iget-object v2, p4, Ly1/i;->i:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Lp/d;-><init>(I)V

    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_a

    .line 16
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg2/f;

    .line 17
    iget v6, v5, Lg2/f;->e:I

    .line 18
    invoke-static {v6}, Lq/g;->a(I)I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    if-eq v6, v0, :cond_5

    if-eq v6, v7, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    const-string v6, "Unknown layer type "

    .line 19
    invoke-static {v6}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 20
    iget v8, v5, Lg2/f;->e:I

    .line 21
    invoke-static {v8}, Lg2/e;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lk2/c;->b(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_2

    .line 22
    :cond_1
    new-instance v6, Lg2/j;

    invoke-direct {v6, p1, v5}, Lg2/j;-><init>(Ly1/e0;Lg2/f;)V

    goto :goto_2

    .line 23
    :cond_2
    new-instance v6, Lg2/h;

    invoke-direct {v6, p1, v5, p0}, Lg2/h;-><init>(Ly1/e0;Lg2/f;Lg2/c;)V

    goto :goto_2

    .line 24
    :cond_3
    new-instance v6, Lg2/g;

    invoke-direct {v6, p1, v5}, Lg2/g;-><init>(Ly1/e0;Lg2/f;)V

    goto :goto_2

    .line 25
    :cond_4
    new-instance v6, Lg2/d;

    invoke-direct {v6, p1, v5}, Lg2/d;-><init>(Ly1/e0;Lg2/f;)V

    goto :goto_2

    .line 26
    :cond_5
    new-instance v6, Lg2/i;

    invoke-direct {v6, p1, v5}, Lg2/i;-><init>(Ly1/e0;Lg2/f;)V

    goto :goto_2

    .line 27
    :cond_6
    new-instance v6, Lg2/c;

    .line 28
    iget-object v8, v5, Lg2/f;->g:Ljava/lang/String;

    .line 29
    iget-object v9, p4, Ly1/i;->c:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 30
    invoke-direct {v6, p1, v5, v8, p4}, Lg2/c;-><init>(Ly1/e0;Lg2/f;Ljava/util/List;Ly1/i;)V

    :goto_2
    if-nez v6, :cond_7

    goto :goto_3

    .line 31
    :cond_7
    iget-object v8, v6, Lg2/b;->q:Lg2/f;

    .line 32
    iget-wide v8, v8, Lg2/f;->d:J

    .line 33
    invoke-virtual {p2, v8, v9, v6}, Lp/d;->f(JLjava/lang/Object;)V

    if-eqz v3, :cond_8

    .line 34
    iput-object v6, v3, Lg2/b;->t:Lg2/b;

    move-object v3, v1

    goto :goto_3

    .line 35
    :cond_8
    iget-object v8, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    iget v4, v5, Lg2/f;->u:I

    .line 37
    invoke-static {v4}, Lq/g;->a(I)I

    move-result v4

    if-eq v4, v0, :cond_9

    if-eq v4, v7, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v6

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 38
    :cond_a
    :goto_4
    invoke-virtual {p2}, Lp/d;->g()I

    move-result p1

    if-ge v4, p1, :cond_d

    .line 39
    invoke-virtual {p2, v4}, Lp/d;->e(I)J

    move-result-wide p3

    .line 40
    invoke-virtual {p2, p3, p4, v1}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Lg2/b;

    if-nez p1, :cond_b

    goto :goto_5

    .line 42
    :cond_b
    iget-object p3, p1, Lg2/b;->q:Lg2/f;

    .line 43
    iget-wide p3, p3, Lg2/f;->f:J

    .line 44
    invoke-virtual {p2, p3, p4, v1}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 45
    check-cast p3, Lg2/b;

    if-eqz p3, :cond_c

    .line 46
    iput-object p3, p1, Lg2/b;->u:Lg2/b;

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 3
    iget-object v0, p0, Lg2/c;->F:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/b;

    iget-object v1, p0, Lg2/c;->F:Landroid/graphics/RectF;

    iget-object v2, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 5
    iget-object v0, p0, Lg2/c;->F:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
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
    invoke-super {p0, p1, p2}, Lg2/b;->g(Ljava/lang/Object;Ll2/c;)V

    .line 2
    sget-object v0, Ly1/i0;->E:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lg2/c;->D:Lb2/a;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lb2/r;

    .line 6
    invoke-direct {v0, p2, p1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lg2/c;->D:Lb2/a;

    .line 8
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 9
    iget-object p1, p0, Lg2/c;->D:Lb2/a;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg2/c;->G:Landroid/graphics/RectF;

    iget-object v1, p0, Lg2/b;->q:Lg2/f;

    .line 2
    iget v2, v1, Lg2/f;->o:I

    int-to-float v2, v2

    .line 3
    iget v1, v1, Lg2/f;->p:I

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v0, p0, Lg2/c;->G:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object v0, p0, Lg2/b;->p:Ly1/e0;

    .line 7
    iget-boolean v0, v0, Ly1/e0;->A:Z

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    if-eq p3, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    iget-object v4, p0, Lg2/c;->H:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object v4, p0, Lg2/c;->G:Landroid/graphics/RectF;

    iget-object v5, p0, Lg2/c;->H:Landroid/graphics/Paint;

    sget-object v6, Lk2/g;->a:Lk2/g$a;

    .line 11
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 12
    invoke-static {}, Lp4/h;->p()V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v0, :cond_2

    move p3, v1

    .line 14
    :cond_2
    iget-object v0, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_6

    .line 15
    iget-boolean v1, p0, Lg2/c;->I:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lg2/b;->q:Lg2/f;

    .line 16
    iget-object v1, v1, Lg2/f;->c:Ljava/lang/String;

    const-string v4, "__container"

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v1, :cond_4

    .line 18
    iget-object v1, p0, Lg2/c;->G:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lg2/c;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/b;

    .line 21
    invoke-virtual {v1, p1, p2, p3}, Lg2/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    invoke-static {}, Lp4/h;->p()V

    return-void
.end method

.method public final t(Ld2/e;ILjava/util/List;Ld2/e;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lg2/b;->i(Ld2/e;ILjava/util/List;Ld2/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lg2/b;->A:Lz1/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    iput-object v0, p0, Lg2/b;->A:Lz1/a;

    .line 3
    :cond_0
    iput-boolean p1, p0, Lg2/b;->z:Z

    .line 4
    iget-object v0, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/b;

    .line 5
    invoke-virtual {v1, p1}, Lg2/b;->u(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final v(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lg2/b;->v(F)V

    .line 2
    iget-object v0, p0, Lg2/c;->D:Lb2/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lg2/b;->p:Ly1/e0;

    .line 4
    iget-object p1, p1, Ly1/e0;->h:Ly1/i;

    .line 5
    iget v1, p1, Ly1/i;->l:F

    iget p1, p1, Ly1/i;->k:F

    sub-float/2addr v1, p1

    const p1, 0x3c23d70a

    add-float/2addr v1, p1

    .line 6
    iget-object p1, p0, Lg2/b;->q:Lg2/f;

    .line 7
    iget-object p1, p1, Lg2/f;->b:Ly1/i;

    .line 8
    iget p1, p1, Ly1/i;->k:F

    .line 9
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lg2/b;->q:Lg2/f;

    .line 10
    iget-object v2, v2, Lg2/f;->b:Ly1/i;

    .line 11
    iget v2, v2, Ly1/i;->m:F

    mul-float/2addr v0, v2

    sub-float/2addr v0, p1

    div-float p1, v0, v1

    .line 12
    :cond_0
    iget-object v0, p0, Lg2/c;->D:Lb2/a;

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 14
    iget v1, v0, Lg2/f;->n:F

    iget-object v0, v0, Lg2/f;->b:Ly1/i;

    .line 15
    iget v2, v0, Ly1/i;->l:F

    iget v0, v0, Ly1/i;->k:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 16
    :cond_1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 17
    iget v1, v0, Lg2/f;->m:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 18
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    const-string v1, "__container"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 21
    iget v0, v0, Lg2/f;->m:F

    div-float/2addr p1, v0

    .line 22
    :cond_2
    iget-object v0, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 23
    iget-object v1, p0, Lg2/c;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/b;

    invoke-virtual {v1, p1}, Lg2/b;->v(F)V

    goto :goto_0

    :cond_3
    return-void
.end method
