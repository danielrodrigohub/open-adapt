.class public final Lz8/b;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "LightPackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz8/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lz8/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz8/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lz8/a;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    iput-object p1, p0, Lz8/b;->d:Ljava/util/List;

    iput p2, p0, Lz8/b;->e:I

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const v0, 0x7fffffff

    div-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lz8/b;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lz8/b;->f:I

    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 7

    .line 1
    check-cast p1, Lz8/b$a;

    .line 2
    iget-object v0, p0, Lz8/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p2, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3
    iget-object v2, p1, Lz8/b$a;->u:Lz8/d;

    .line 4
    iget-object v3, p0, Lz8/b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr p2, v4

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz8/a;

    invoke-virtual {v2, p2}, Lz8/d;->setLightPack(Lz8/a;)V

    .line 5
    iget-object p2, p1, Lz8/b$a;->u:Lz8/d;

    .line 6
    invoke-virtual {p2}, Lz8/d;->getLightPack()Lz8/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget p2, p2, Lz8/a;->j:I

    .line 8
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 9
    :goto_0
    iget-object p1, p1, Lz8/b$a;->u:Lz8/d;

    const v2, 0x7f110031

    .line 10
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    .line 11
    new-instance v5, Landroid/util/Pair;

    const-string v6, "lightPackName"

    invoke-direct {v5, v6, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    .line 12
    new-instance p2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "position"

    invoke-direct {p2, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v3, v1

    const/4 p2, 0x2

    .line 13
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lz8/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "listSize"

    invoke-direct {v0, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v3, p2

    .line 14
    invoke-static {v2, v3}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 4

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lz8/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "parent.context"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lz8/d;-><init>(Landroid/content/Context;)V

    .line 3
    iget p1, p0, Lz8/b;->e:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lz8/d;->z:Lq7/z1;

    iget-object v2, v2, Lq7/z1;->a:Landroid/widget/ImageView;

    const-string v3, "binding.lightPackImage"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p2, Lz8/d;->z:Lq7/z1;

    iget-object v1, v1, Lq7/z1;->b:Landroid/widget/TextView;

    const-string v2, "binding.lightPackTitle"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 6
    :goto_0
    new-instance p1, Lz8/b$a;

    invoke-direct {p1, p2}, Lz8/b$a;-><init>(Lz8/d;)V

    return-object p1
.end method
