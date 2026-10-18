.class public final Lg2/h;
.super Lg2/b;
.source "ShapeLayer.java"


# instance fields
.field public final D:La2/c;

.field public final E:Lg2/c;


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/f;Lg2/c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lg2/b;-><init>(Ly1/e0;Lg2/f;)V

    .line 2
    iput-object p3, p0, Lg2/h;->E:Lg2/c;

    .line 3
    new-instance p3, Lf2/n;

    .line 4
    iget-object p2, p2, Lg2/f;->a:Ljava/util/List;

    const-string v0, "__container"

    const/4 v1, 0x0

    .line 5
    invoke-direct {p3, v0, p2, v1}, Lf2/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 6
    new-instance p2, La2/c;

    invoke-direct {p2, p1, p0, p3}, La2/c;-><init>(Ly1/e0;Lg2/b;Lf2/n;)V

    iput-object p2, p0, Lg2/h;->D:La2/c;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, La2/c;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lg2/h;->D:La2/c;

    iget-object v0, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, La2/c;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    iget-object v0, p0, Lg2/h;->D:La2/c;

    invoke-virtual {v0, p1, p2, p3}, La2/c;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final m()Lf/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 2
    iget-object v0, v0, Lg2/f;->w:Lf/p;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lg2/h;->E:Lg2/c;

    .line 4
    iget-object v0, v0, Lg2/b;->q:Lg2/f;

    .line 5
    iget-object v0, v0, Lg2/f;->w:Lf/p;

    return-object v0
.end method

.method public final o()Li2/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 2
    iget-object v0, v0, Lg2/f;->x:Li2/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lg2/h;->E:Lg2/c;

    .line 4
    iget-object v0, v0, Lg2/b;->q:Lg2/f;

    .line 5
    iget-object v0, v0, Lg2/f;->x:Li2/j;

    return-object v0
.end method

.method public final t(Ld2/e;ILjava/util/List;Ld2/e;)V
    .locals 1
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

    iget-object v0, p0, Lg2/h;->D:La2/c;

    invoke-virtual {v0, p1, p2, p3, p4}, La2/c;->i(Ld2/e;ILjava/util/List;Ld2/e;)V

    return-void
.end method
