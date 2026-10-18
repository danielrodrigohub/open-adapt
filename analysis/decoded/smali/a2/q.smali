.class public final La2/q;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements La2/l;
.implements Lb2/a$a;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:Ly1/e0;

.field public final d:Lb2/m;

.field public e:Z

.field public final f:Lg1/i;


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/b;Lf2/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Lg1/i;

    invoke-direct {v0}, Lg1/i;-><init>()V

    iput-object v0, p0, La2/q;->f:Lg1/i;

    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, p3, Lf2/o;->d:Z

    .line 6
    iput-boolean v0, p0, La2/q;->b:Z

    .line 7
    iput-object p1, p0, La2/q;->c:Ly1/e0;

    .line 8
    iget-object p1, p3, Lf2/o;->c:Le2/h;

    .line 9
    invoke-virtual {p1}, Le2/h;->c()Lb2/m;

    move-result-object p1

    iput-object p1, p0, La2/q;->d:Lb2/m;

    .line 10
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 11
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, La2/q;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v0, p0, La2/q;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, La2/q;->e:Z

    .line 6
    iget-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, La2/q;->d:Lb2/m;

    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    return-object v0

    .line 9
    :cond_2
    iget-object v2, p0, La2/q;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 10
    iget-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 11
    iget-object v0, p0, La2/q;->f:Lg1/i;

    iget-object v2, p0, La2/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lg1/i;->b(Landroid/graphics/Path;)V

    .line 12
    iput-boolean v1, p0, La2/q;->e:Z

    .line 13
    iget-object v0, p0, La2/q;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La2/q;->e:Z

    .line 2
    iget-object v0, p0, La2/q;->c:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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

    const/4 v0, 0x0

    .line 1
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/b;

    .line 3
    instance-of v2, v1, La2/t;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, La2/t;

    .line 4
    iget v3, v2, La2/t;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5
    iget-object v1, p0, La2/q;->f:Lg1/i;

    invoke-virtual {v1, v2}, Lg1/i;->a(La2/t;)V

    .line 6
    invoke-virtual {v2, p0}, La2/t;->f(Lb2/a$a;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v2, v1, La2/r;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_1
    check-cast v1, La2/r;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, La2/q;->d:Lb2/m;

    .line 11
    iput-object p2, p1, Lb2/m;->k:Ljava/util/List;

    return-void
.end method
