.class public final Li9/y$a;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "ChooseYourShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/y$a$f;,
        Li9/y$a$b;,
        Li9/y$a$c;,
        Li9/y$a$a;,
        Li9/y$a$e;,
        Li9/y$a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Li9/y$a$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Li9/y;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li9/y$a$d;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Li9/y;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Li9/y$a;->d:Li9/y;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li9/y$a;->e:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Li9/y$a;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Li9/y$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li9/y$a;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 5

    .line 1
    check-cast p1, Li9/y$a$f;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 2
    check-cast p1, Li9/y$a$b;

    .line 3
    iget-object p2, p1, Li9/y$a$b;->v:Landroid/widget/TextView;

    .line 4
    iget-boolean v1, p0, Li9/y$a;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Li9/y$a$b;->u:Landroid/widget/TextView;

    .line 6
    invoke-static {p1, v0}, Lj0/a0;->q(Landroid/view/View;Z)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Li9/y$a;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    .line 8
    check-cast p1, Li9/y$a$c;

    .line 9
    iget-object v1, p0, Li9/y$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li9/y$a$d;

    .line 10
    iget-object v1, v1, Li9/y$a$d;->a:Ls9/r;

    .line 11
    sget-object v2, Ls9/p;->a:Ls9/p;

    .line 12
    iget-object v3, p1, Li9/y$a$c;->w:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v2, v1}, Ls9/p;->b(Ls9/r;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 14
    iget-object v0, p1, Li9/y$a$c;->v:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v2, v1}, Ls9/p;->l(Ls9/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p1, Li9/y$a$c;->v:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v2, v1}, Ls9/p;->j(Ls9/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, Li9/y$a$c;->u:Landroidx/cardview/widget/CardView;

    .line 19
    iget v1, p0, Li9/y$a;->f:I

    if-ne p2, v1, :cond_2

    const v1, 0x7f060095

    goto :goto_1

    :cond_2
    const v1, 0x7f0602a9

    :goto_1
    invoke-static {v1}, Landroidx/lifecycle/o;->o(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 20
    iget-object p1, p1, Li9/y$a$c;->u:Landroidx/cardview/widget/CardView;

    .line 21
    new-instance v0, Li9/x;

    invoke-direct {v0, p2, p0}, Li9/x;-><init>(ILi9/y$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Li9/y$a$f;

    const-string v0, "payloads"

    .line 2
    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Li9/y$a;->h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    goto :goto_2

    .line 5
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type android.os.Bundle"

    .line 6
    invoke-static {p3, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "diffBundle.keySet()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "KEY_BUNDLE_IS_SELECTED"

    .line 9
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    instance-of v1, p1, Li9/y$a$c;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f060095

    goto :goto_1

    :cond_3
    const v1, 0x7f0602a9

    :goto_1
    invoke-static {v1}, Landroidx/lifecycle/o;->o(I)I

    move-result v1

    .line 12
    move-object v2, p1

    check-cast v2, Li9/y$a$c;

    .line 13
    iget-object v2, v2, Li9/y$a$c;->u:Landroidx/cardview/widget/CardView;

    .line 14
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0110

    .line 3
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0121

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const p2, 0x7f0a0122

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const p2, 0x7f0a012a

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 7
    new-instance p2, Lq7/y1;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, v0, v1}, Lq7/y1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 8
    new-instance p1, Li9/y$a$b;

    invoke-direct {p1, p2}, Li9/y$a$b;-><init>(Lq7/y1;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d010f

    .line 12
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView"

    .line 13
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    new-instance p2, Lq7/x1;

    invoke-direct {p2, p1}, Lq7/x1;-><init>(Landroid/view/View;)V

    .line 15
    new-instance p1, Li9/y$a$a;

    invoke-direct {p1, p2}, Li9/y$a$a;-><init>(Lq7/x1;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lq7/t1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lq7/t1;

    move-result-object p1

    .line 17
    new-instance p2, Li9/y$a$c;

    invoke-direct {p2, p1}, Li9/y$a$c;-><init>(Lq7/t1;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Li9/y$a$f;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Li9/y$a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li9/y$a;->d:Li9/y;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lt7/b;->a:Lt7/b$a;

    invoke-virtual {v0}, Lt7/b$a;->a()Lt7/b;

    move-result-object v0

    check-cast p1, Li9/y$a$c;

    .line 4
    iget-object p1, p1, Li9/y$a$c;->w:Landroid/widget/ImageView;

    .line 5
    invoke-interface {v0, p1}, Lt7/b;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li9/y$a$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li9/y$a$e;

    iget-object v1, p0, Li9/y$a;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Li9/y$a$e;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/o$b;)Landroidx/recyclerview/widget/o$d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/o$d;->a(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li9/y$a;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
