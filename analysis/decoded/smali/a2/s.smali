.class public final La2/s;
.super La2/a;
.source "StrokeContent.java"


# instance fields
.field public final r:Lg2/b;

.field public final s:Ljava/lang/String;

.field public final t:Z

.field public final u:Lb2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/p;)V
    .locals 11

    .line 1
    iget v0, p3, Lf2/p;->g:I

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
    iget v0, p3, Lf2/p;->h:I

    .line 7
    invoke-static {v0}, Landroidx/recyclerview/widget/d;->a(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 8
    iget v6, p3, Lf2/p;->i:F

    .line 9
    iget-object v7, p3, Lf2/p;->e:Le2/d;

    .line 10
    iget-object v8, p3, Lf2/p;->f:Le2/b;

    .line 11
    iget-object v9, p3, Lf2/p;->c:Ljava/util/List;

    .line 12
    iget-object v10, p3, Lf2/p;->b:Le2/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 13
    invoke-direct/range {v1 .. v10}, La2/a;-><init>(Ly1/e0;Lg2/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLe2/d;Le2/b;Ljava/util/List;Le2/b;)V

    .line 14
    iput-object p2, p0, La2/s;->r:Lg2/b;

    .line 15
    iget-object p1, p3, Lf2/p;->a:Ljava/lang/String;

    .line 16
    iput-object p1, p0, La2/s;->s:Ljava/lang/String;

    .line 17
    iget-boolean p1, p3, Lf2/p;->j:Z

    .line 18
    iput-boolean p1, p0, La2/s;->t:Z

    .line 19
    iget-object p1, p3, Lf2/p;->d:Le2/a;

    .line 20
    invoke-virtual {p1}, Le2/a;->a()Lb2/a;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lb2/b;

    iput-object p3, p0, La2/s;->u:Lb2/b;

    .line 21
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 22
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    return-void
.end method


# virtual methods
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
    sget-object v0, Ly1/i0;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, La2/s;->u:Lb2/b;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, La2/s;->v:Lb2/r;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, La2/s;->r:Lg2/b;

    invoke-virtual {v0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_1
    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 7
    iput-object p1, p0, La2/s;->v:Lb2/r;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lb2/r;

    .line 9
    invoke-direct {v0, p2, p1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, La2/s;->v:Lb2/r;

    .line 11
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 12
    iget-object p1, p0, La2/s;->r:Lg2/b;

    iget-object p2, p0, La2/s;->u:Lb2/b;

    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La2/s;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, La2/s;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La2/a;->i:Lz1/a;

    iget-object v1, p0, La2/s;->u:Lb2/b;

    .line 3
    invoke-virtual {v1}, Lb2/a;->b()Ll2/a;

    move-result-object v2

    invoke-virtual {v1}, Lb2/a;->d()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lb2/b;->l(Ll2/a;F)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, La2/s;->v:Lb2/r;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, La2/a;->i:Lz1/a;

    invoke-virtual {v0}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7
    :cond_1
    invoke-super {p0, p1, p2, p3}, La2/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
