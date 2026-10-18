.class public final Lm9/d;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "ColorWayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lm9/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/nike/adapt/ui/settings/ColorWayActivity;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls9/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/ColorWayActivity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/settings/ColorWayActivity;",
            "Ljava/util/List<",
            "Ls9/p$a;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lm9/d;->d:Lcom/nike/adapt/ui/settings/ColorWayActivity;

    iput-object p2, p0, Lm9/d;->e:Ljava/util/List;

    iput p3, p0, Lm9/d;->f:I

    const-string p1, "default_payload"

    .line 2
    iput-object p1, p0, Lm9/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lm9/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    .line 1
    check-cast p1, Lm9/d$a;

    .line 2
    iget-object v0, p0, Lm9/d;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls9/p$a;

    .line 3
    iget-object v1, p1, Lm9/d$a;->v:Landroid/widget/TextView;

    .line 4
    iget-object v2, v0, Ls9/p$a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, v0, Ls9/p$a;->b:Ljava/lang/String;

    .line 7
    iget-object v1, p1, Lm9/d$a;->w:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Ls9/p;->a:Ls9/p;

    .line 10
    iget-object v2, p1, Lm9/d$a;->w:Landroid/widget/ImageView;

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lm9/d;->m(Lm9/d$a;I)V

    .line 13
    iget-object p1, p1, Lm9/d$a;->u:Landroidx/cardview/widget/CardView;

    .line 14
    new-instance v0, Lm9/c;

    invoke-direct {v0, p0, p2}, Lm9/c;-><init>(Lm9/d;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 1

    .line 1
    check-cast p1, Lm9/d$a;

    const-string v0, "payloads"

    .line 2
    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lm9/d;->g:Ljava/lang/String;

    invoke-static {p3, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p0, Lm9/d;->e:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls9/p$a;

    .line 7
    iget-object v0, p1, Lm9/d$a;->v:Landroid/widget/TextView;

    .line 8
    iget-object p3, p3, Ls9/p$a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lm9/d;->m(Lm9/d$a;I)V

    .line 11
    iget-object p3, p1, Lm9/d$a;->u:Landroidx/cardview/widget/CardView;

    .line 12
    new-instance v0, Lm9/c;

    invoke-direct {v0, p0, p2}, Lm9/c;-><init>(Lm9/d;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lm9/d;->h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lq7/t1;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lq7/t1;

    move-result-object p1

    .line 3
    new-instance p2, Lm9/d$a;

    invoke-direct {p2, p1}, Lm9/d$a;-><init>(Lq7/t1;)V

    return-object p2
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Lm9/d$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lt7/b;->a:Lt7/b$a;

    invoke-virtual {v0}, Lt7/b$a;->a()Lt7/b;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lm9/d$a;->w:Landroid/widget/ImageView;

    .line 5
    invoke-interface {v0, p1}, Lt7/b;->e(Landroid/view/View;)V

    return-void
.end method

.method public final m(Lm9/d$a;I)V
    .locals 1

    .line 1
    iget v0, p0, Lm9/d;->f:I

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p1, Lm9/d$a;->v:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p1, Lm9/d$a;->u:Landroidx/cardview/widget/CardView;

    const p2, 0x7f060095

    .line 5
    invoke-static {p2}, Landroidx/lifecycle/o;->o(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lm9/d$a;->v:Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p1, Lm9/d$a;->u:Landroidx/cardview/widget/CardView;

    const p2, 0x7f0602a9

    .line 9
    invoke-static {p2}, Landroidx/lifecycle/o;->o(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :goto_0
    return-void
.end method
