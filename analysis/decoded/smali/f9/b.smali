.class public final Lf9/b;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "MyShoesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf9/b$a;,
        Lf9/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lf9/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf9/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lf9/b;->d:Landroid/content/Context;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf9/b;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 6

    .line 1
    check-cast p1, Lf9/b$a;

    .line 2
    iget-object v0, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf9/f;

    .line 3
    iget-object v0, p2, Lf9/f;->a:Lea/m;

    .line 4
    iget-object v1, p2, Lf9/f;->b:Lt9/d;

    .line 5
    iget-object v2, p2, Lf9/f;->c:Lt9/d;

    .line 6
    invoke-static {v1, v2}, Lg7/c;->i(Lt9/d;Lt9/d;)Lt9/d;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lf9/b$a;->u:Landroid/widget/TextView;

    .line 8
    iget-object v3, v0, Lea/m;->i:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p1, Lf9/b$a;->v:Landroid/widget/TextView;

    .line 11
    sget-object v3, Ls9/p;->a:Ls9/p;

    .line 12
    iget-object v4, v0, Lea/m;->n:Ljava/lang/String;

    .line 13
    invoke-virtual {v3, v4}, Ls9/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p1, Lf9/b$a;->v:Landroid/widget/TextView;

    .line 15
    iget-object v4, v0, Lea/m;->n:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4}, Ls9/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p1, Lf9/b$a;->w:Landroid/widget/ImageView;

    .line 18
    iget-object v4, v0, Lea/m;->n:Ljava/lang/String;

    const/4 v5, 0x1

    .line 19
    invoke-virtual {v3, v2, v4, v5}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 20
    iget-object v2, p1, Lf9/b$a;->x:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0, v1}, Lf9/b;->n(Lt9/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v2, p1, Lf9/b$a;->x:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, v1}, Lf9/b;->o(Lt9/d;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v2, p1, Lf9/b$a;->y:Landroid/widget/TextView;

    .line 25
    iget-object p2, p2, Lf9/f;->d:Lx8/m;

    .line 26
    invoke-virtual {p2}, Lx8/m;->b()I

    move-result p2

    if-lez p2, :cond_0

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 29
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    new-instance p2, Lf9/a;

    invoke-direct {p2, v1, p0, v0}, Lf9/a;-><init>(Lt9/d;Lf9/b;Lea/m;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 6

    .line 1
    check-cast p1, Lf9/b$a;

    const-string v0, "payloads"

    .line 2
    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lf9/b;->h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Bundle"

    .line 5
    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Bundle;

    .line 6
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "diffBundle.keySet()"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "DISCONNECTED"

    const-string v5, ""

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "key_bundle_right_connection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Lt9/d;->valueOf(Ljava/lang/String;)Lt9/d;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf9/f;

    .line 11
    iget-object v3, v3, Lf9/f;->a:Lea/m;

    .line 12
    iget-object v4, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    .line 13
    iget-object v4, v4, Lf9/f;->b:Lt9/d;

    .line 14
    invoke-virtual {p0, p1, v3, v4, v2}, Lf9/b;->s(Lf9/b$a;Lea/m;Lt9/d;Lt9/d;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "key_badge_count"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget-object v2, p1, Lf9/b$a;->y:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    const-string v3, "key_bundle_pair_name"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 22
    :cond_6
    iget-object v3, p1, Lf9/b$a;->u:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    const-string v3, "key_bundle_left_connection"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 25
    :cond_7
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move-object v4, v2

    :goto_2
    invoke-static {v4}, Lt9/d;->valueOf(Ljava/lang/String;)Lt9/d;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf9/f;

    .line 27
    iget-object v3, v3, Lf9/f;->a:Lea/m;

    .line 28
    iget-object v4, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    .line 29
    iget-object v4, v4, Lf9/f;->c:Lt9/d;

    .line 30
    invoke-virtual {p0, p1, v3, v2, v4}, Lf9/b;->s(Lf9/b$a;Lea/m;Lt9/d;Lt9/d;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "key_bundle_colorway"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    .line 32
    :cond_9
    sget-object v3, Ls9/p;->a:Ls9/p;

    .line 33
    iget-object v4, p1, Lf9/b$a;->w:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7762fa17 -> :sswitch_4
        -0x3cac7dc7 -> :sswitch_3
        -0x367718cd -> :sswitch_2
        0xe5e2f93 -> :sswitch_1
        0x5919251e -> :sswitch_0
    .end sparse-switch
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 8

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0094

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a027f

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 5
    move-object v2, p1

    check-cast v2, Landroidx/cardview/widget/CardView;

    const p2, 0x7f0a0281

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const p2, 0x7f0a0282

    .line 7
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const p2, 0x7f0a0283

    .line 8
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const p2, 0x7f0a031e

    .line 9
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 10
    new-instance p1, Lq7/j1;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lq7/j1;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 11
    new-instance p2, Lf9/b$a;

    invoke-direct {p2, p1}, Lf9/b$a;-><init>(Lq7/j1;)V

    return-object p2

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf9/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lf9/j;

    iget-object v1, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lf9/j;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/o$b;)Landroidx/recyclerview/widget/o$d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/o$d;->a(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf9/b;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final n(Lt9/d;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f11012e

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f11012d

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f11012c

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final o(Lt9/d;)I
    .locals 2

    iget-object v0, p0, Lf9/b;->d:Landroid/content/Context;

    sget-object v1, Lf9/b$b;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f060043

    goto :goto_0

    :cond_0
    const p1, 0x7f060073

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1
.end method

.method public final p(Ljava/util/List;Lea/m;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf9/f;",
            ">;",
            "Lea/m;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v1, Lf9/f;

    .line 2
    iget-object v1, v1, Lf9/f;->a:Lea/m;

    .line 3
    invoke-static {v1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final q(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newList"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/m;

    .line 3
    iget-object v2, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1}, Lf9/b;->p(Ljava/util/List;Lea/m;)I

    move-result v2

    .line 4
    sget-object v3, Lt9/d;->j:Lt9/d;

    .line 5
    new-instance v10, Lx8/m;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lx8/m;-><init>(IIIILrd/h;)V

    if-ltz v2, :cond_0

    .line 6
    iget-object v4, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 7
    iget-object v3, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf9/f;

    .line 8
    iget-object v3, v3, Lf9/f;->b:Lt9/d;

    .line 9
    iget-object v4, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    .line 10
    iget-object v4, v4, Lf9/f;->c:Lt9/d;

    .line 11
    iget-object v5, p0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf9/f;

    .line 12
    iget-object v2, v2, Lf9/f;->d:Lx8/m;

    .line 13
    invoke-static {v2}, Lx8/m;->a(Lx8/m;)Lx8/m;

    move-result-object v10

    goto :goto_1

    :cond_0
    move-object v4, v3

    .line 14
    :goto_1
    new-instance v2, Lf9/f;

    invoke-direct {v2, v1, v3, v4, v10}, Lf9/f;-><init>(Lea/m;Lt9/d;Lt9/d;Lx8/m;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Lqd/l;

    const/4 v1, 0x0

    .line 15
    sget-object v2, Lf9/b$c;->h:Lf9/b$c;

    aput-object v2, p1, v1

    const/4 v1, 0x1

    sget-object v2, Lf9/b$d;->h:Lf9/b$d;

    aput-object v2, p1, v1

    const/4 v1, 0x2

    sget-object v2, Lf9/b$e;->h:Lf9/b$e;

    aput-object v2, p1, v1

    invoke-static {p1}, Lhd/a;->a([Lqd/l;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    invoke-virtual {p0, v0}, Lf9/b;->m(Ljava/util/List;)V

    return-void
.end method

.method public final r(Lea/m;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v0, Lf9/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    .line 3
    iget-object v5, v4, Lf9/f;->d:Lx8/m;

    .line 4
    invoke-static {v5}, Lx8/m;->a(Lx8/m;)Lx8/m;

    move-result-object v5

    .line 5
    iget-object v6, v4, Lf9/f;->a:Lea/m;

    .line 6
    invoke-static {v6, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    if-nez v1, :cond_0

    .line 7
    iget-object v6, v4, Lf9/f;->b:Lt9/d;

    .line 8
    invoke-virtual {v6}, Lt9/d;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    iget-object v6, v4, Lf9/f;->c:Lt9/d;

    .line 10
    invoke-virtual {v6}, Lt9/d;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v7

    :goto_2
    if-eqz v6, :cond_2

    move/from16 v6, p2

    .line 11
    iput v6, v5, Lx8/m;->a:I

    .line 12
    sget-object v8, Ls9/b;->a:Ls9/b;

    const/4 v9, 0x0

    invoke-static {v8}, Ls9/b;->c(Ls9/b;)Z

    move-result v10

    .line 13
    iput v10, v5, Lx8/m;->b:I

    .line 14
    sget-object v10, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {v10, v9, v7, v9}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ls9/b;->d(Ljava/lang/String;)Z

    move-result v7

    .line 15
    iput v7, v5, Lx8/m;->c:I

    goto :goto_3

    :cond_2
    move/from16 v6, p2

    .line 16
    :goto_3
    new-instance v7, Lf9/f;

    .line 17
    iget-object v8, v4, Lf9/f;->a:Lea/m;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1fff

    .line 18
    invoke-static/range {v8 .. v19}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v8

    .line 19
    iget-object v9, v4, Lf9/f;->b:Lt9/d;

    .line 20
    iget-object v4, v4, Lf9/f;->c:Lt9/d;

    .line 21
    invoke-direct {v7, v8, v9, v4, v5}, Lf9/f;-><init>(Lea/m;Lt9/d;Lt9/d;Lx8/m;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0, v2}, Lf9/b;->m(Ljava/util/List;)V

    return-void
.end method

.method public final s(Lf9/b$a;Lea/m;Lt9/d;Lt9/d;)V
    .locals 1

    .line 1
    invoke-static {p3, p4}, Lg7/c;->i(Lt9/d;Lt9/d;)Lt9/d;

    move-result-object p3

    .line 2
    iget-object p4, p1, Lf9/b$a;->x:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0, p3}, Lf9/b;->n(Lt9/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p4, p1, Lf9/b$a;->x:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0, p3}, Lf9/b;->o(Lt9/d;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    new-instance p4, Lf9/a;

    invoke-direct {p4, p3, p0, p2}, Lf9/a;-><init>(Lt9/d;Lf9/b;Lea/m;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
