.class public final La2/k;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements La2/l;
.implements La2/i;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La2/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf2/g;


# direct methods
.method public constructor <init>(Lf2/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/k;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/k;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/k;->c:Landroid/graphics/Path;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/k;->d:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, La2/k;->e:Lf2/g;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-object v0, p0, La2/k;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, La2/k;->e:Lf2/g;

    .line 3
    iget-boolean v1, v0, Lf2/g;->c:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, La2/k;->c:Landroid/graphics/Path;

    return-object v0

    .line 5
    :cond_0
    iget v0, v0, Lf2/g;->b:I

    .line 6
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, La2/k;->d(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, La2/k;->d(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 9
    :cond_3
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, La2/k;->d(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 10
    :cond_4
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, La2/k;->d(Landroid/graphics/Path$Op;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, La2/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 12
    iget-object v1, p0, La2/k;->c:Landroid/graphics/Path;

    iget-object v2, p0, La2/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/l;

    invoke-interface {v2}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_6
    :goto_1
    iget-object v0, p0, La2/k;->c:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d(Landroid/graphics/Path$Op;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, La2/k;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, La2/k;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, La2/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_3

    .line 4
    iget-object v2, p0, La2/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/l;

    .line 5
    instance-of v3, v2, La2/c;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, La2/c;

    invoke-virtual {v2}, La2/c;->f()Ljava/util/List;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_2

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/l;

    invoke-interface {v5}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v5

    .line 9
    iget-object v6, v2, La2/c;->k:Lb2/q;

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v6}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object v6

    goto :goto_2

    .line 11
    :cond_0
    iget-object v6, v2, La2/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 12
    iget-object v6, v2, La2/c;->c:Landroid/graphics/Matrix;

    .line 13
    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 14
    iget-object v6, p0, La2/k;->b:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v3, p0, La2/k;->b:Landroid/graphics/Path;

    invoke-interface {v2}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, La2/k;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/l;

    .line 17
    instance-of v2, v0, La2/c;

    if-eqz v2, :cond_5

    .line 18
    check-cast v0, La2/c;

    invoke-virtual {v0}, La2/c;->f()Ljava/util/List;

    move-result-object v2

    .line 19
    :goto_3
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 20
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/l;

    invoke-interface {v3}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v3

    .line 21
    iget-object v4, v0, La2/c;->k:Lb2/q;

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {v4}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object v4

    goto :goto_4

    .line 23
    :cond_4
    iget-object v4, v0, La2/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 24
    iget-object v4, v0, La2/c;->c:Landroid/graphics/Matrix;

    .line 25
    :goto_4
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 26
    iget-object v4, p0, La2/k;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 27
    :cond_5
    iget-object v1, p0, La2/k;->a:Landroid/graphics/Path;

    invoke-interface {v0}, La2/l;->a()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 28
    :cond_6
    iget-object v0, p0, La2/k;->c:Landroid/graphics/Path;

    iget-object v1, p0, La2/k;->a:Landroid/graphics/Path;

    iget-object v2, p0, La2/k;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

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

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, La2/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, La2/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/l;

    invoke-interface {v1, p1, p2}, La2/b;->e(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "La2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/b;

    .line 4
    instance-of v1, v0, La2/l;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, La2/k;->d:Ljava/util/ArrayList;

    check-cast v0, La2/l;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method
