.class public final La2/o;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements La2/d;
.implements La2/l;
.implements La2/i;
.implements Lb2/a$a;
.implements La2/j;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Ly1/e0;

.field public final d:Lg2/b;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lb2/q;

.field public j:La2/c;


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, La2/o;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/o;->b:Landroid/graphics/Path;

    .line 4
    iput-object p1, p0, La2/o;->c:Ly1/e0;

    .line 5
    iput-object p2, p0, La2/o;->d:Lg2/b;

    .line 6
    iget-object p1, p3, Lf2/j;->a:Ljava/lang/String;

    .line 7
    iput-object p1, p0, La2/o;->e:Ljava/lang/String;

    .line 8
    iget-boolean p1, p3, Lf2/j;->e:Z

    .line 9
    iput-boolean p1, p0, La2/o;->f:Z

    .line 10
    iget-object p1, p3, Lf2/j;->b:Le2/b;

    .line 11
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/d;

    iput-object v0, p0, La2/o;->g:Lb2/d;

    .line 12
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 13
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 14
    iget-object p1, p3, Lf2/j;->c:Le2/b;

    .line 15
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/d;

    iput-object v0, p0, La2/o;->h:Lb2/d;

    .line 16
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 17
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 18
    iget-object p1, p3, Lf2/j;->d:Le2/k;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p3, Lb2/q;

    invoke-direct {p3, p1}, Lb2/q;-><init>(Le2/k;)V

    .line 21
    iput-object p3, p0, La2/o;->i:Lb2/q;

    .line 22
    invoke-virtual {p3, p2}, Lb2/q;->a(Lg2/b;)V

    .line 23
    invoke-virtual {p3, p0}, Lb2/q;->b(Lb2/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 6

    .line 1
    iget-object v0, p0, La2/o;->j:La2/c;

    invoke-virtual {v0}, La2/c;->a()Landroid/graphics/Path;

    move-result-object v0

    .line 2
    iget-object v1, p0, La2/o;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v1, p0, La2/o;->g:Lb2/d;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4
    iget-object v2, p0, La2/o;->h:Lb2/d;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 5
    iget-object v3, p0, La2/o;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, La2/o;->i:Lb2/q;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lb2/q;->f(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, p0, La2/o;->b:Landroid/graphics/Path;

    iget-object v4, p0, La2/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, La2/o;->b:Landroid/graphics/Path;

    return-object v0
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, La2/o;->j:La2/c;

    invoke-virtual {v0, p1, p2, p3}, La2/c;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La2/o;->c:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, La2/o;->j:La2/c;

    invoke-virtual {v0, p1, p2}, La2/c;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final f(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "La2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/o;->j:La2/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/b;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 8
    new-instance p1, La2/c;

    iget-object v2, p0, La2/o;->c:Ly1/e0;

    iget-object v3, p0, La2/o;->d:Lg2/b;

    iget-boolean v5, p0, La2/o;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, La2/c;-><init>(Ly1/e0;Lg2/b;Ljava/lang/String;ZLjava/util/List;Le2/k;)V

    iput-object p1, p0, La2/o;->j:La2/c;

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
    iget-object v0, p0, La2/o;->i:Lb2/q;

    invoke-virtual {v0, p1, p2}, Lb2/q;->c(Ljava/lang/Object;Ll2/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ly1/i0;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, La2/o;->g:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Ly1/i0;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, La2/o;->h:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, La2/o;->g:Lb2/d;

    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    iget-object v1, p0, La2/o;->h:Lb2/d;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    iget-object v2, p0, La2/o;->i:Lb2/q;

    .line 4
    iget-object v2, v2, Lb2/q;->m:Lb2/a;

    .line 5
    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 6
    iget-object v4, p0, La2/o;->i:Lb2/q;

    .line 7
    iget-object v4, v4, Lb2/q;->n:Lb2/a;

    .line 8
    invoke-virtual {v4}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 9
    iget-object v5, p0, La2/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v5, p0, La2/o;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, La2/o;->i:Lb2/q;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lb2/q;->f(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 11
    sget-object v6, Lk2/f;->a:Landroid/graphics/PointF;

    sub-float v6, v4, v2

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    mul-float/2addr v6, v5

    .line 12
    iget-object v5, p0, La2/o;->j:La2/c;

    iget-object v7, p0, La2/o;->a:Landroid/graphics/Matrix;

    float-to-int v6, v6

    invoke-virtual {v5, p1, v7, v6}, La2/c;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    :cond_0
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
