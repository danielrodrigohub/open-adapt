.class public final Lg9/h;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "AutoLaceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg9/h$b;,
        Lg9/h$c;,
        Lg9/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lg9/h$a;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg9/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg9/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;",
            "Lg9/h$a;",
            ")V"
        }
    .end annotation

    sget-object v0, Lgd/p;->h:Lgd/p;

    const-string v1, "clickListener"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lg9/h;->d:Lg9/h$a;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg9/h;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, v0}, Lg9/h;->o(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/i;

    .line 2
    iget p1, p1, Lg9/i;->a:I

    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 7

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    check-cast p1, Lg9/h$c;

    .line 3
    iget-object v0, p1, Lg9/h$c;->v:Landroid/widget/RadioButton;

    .line 4
    iget-object v1, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/i;

    .line 5
    iget-boolean v1, v1, Lg9/i;->c:Z

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    iget-object v0, p1, Lg9/h$c;->w:Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/i;

    .line 9
    iget-object v1, v1, Lg9/i;->b:Lea/e;

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, v1, Lea/e;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p1, Lg9/h$c;->v:Landroid/widget/RadioButton;

    .line 13
    new-instance v1, Lg9/f;

    invoke-direct {v1, p0, p1, p2}, Lg9/f;-><init>(Lg9/h;Lg9/h$c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p1, Lg9/h$c;->u:Landroid/view/View;

    .line 15
    new-instance v1, Lg9/g;

    invoke-direct {v1, p0, p1, p2}, Lg9/g;-><init>(Lg9/h;Lg9/h$c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 16
    :cond_2
    check-cast p1, Lg9/h$b;

    .line 17
    sget-object v0, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->a()Lv7/b;

    move-result-object v0

    .line 18
    iget-object v1, p1, Lg9/h$b;->v:Landroid/widget/RadioButton;

    .line 19
    iget-object v2, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg9/i;

    .line 20
    iget-boolean v2, v2, Lg9/i;->c:Z

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 22
    iget-object v1, p1, Lg9/h$b;->w:Landroid/widget/TextView;

    const v2, 0x7f11027d

    .line 23
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, p1, Lg9/h$b;->x:Landroid/widget/TextView;

    .line 25
    iget v2, v0, Lv7/b;->a:I

    int-to-float v2, v2

    const/4 v3, 0x5

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v4, v2

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v4, 0x64

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 27
    iget v0, v0, Lv7/b;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-double v5, v0

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p1, Lg9/h$b;->v:Landroid/widget/RadioButton;

    .line 31
    new-instance v1, Lg9/e;

    invoke-direct {v1, p0, p1, p2}, Lg9/e;-><init>(Lg9/h;Lg9/h$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p1, Lg9/h$b;->u:Landroid/view/View;

    .line 33
    new-instance p2, Lx8/j0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 2
    new-instance p1, Lg9/h$b;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lg9/h$b;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance p2, Lg9/h$c;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(context).inflate(R.\u2026_mode_row, parent, false)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lg9/h$c;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Lg9/h$b;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(context).inflate(R.\u2026fault_row, parent, false)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lg9/h$b;-><init>(Landroid/view/View;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final m(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg9/h;->e:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lg9/i;

    .line 3
    iget-boolean v5, v3, Lg9/i;->c:Z

    if-eqz v5, :cond_0

    if-eq v2, p1, :cond_0

    .line 4
    iput-boolean v1, v3, Lg9/i;->c:Z

    .line 5
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->e(I)V

    :cond_0
    move v2, v4

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final n(Landroid/widget/RadioButton;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/i;

    .line 3
    iput-boolean v0, p1, Lg9/i;->c:Z

    .line 4
    invoke-virtual {p0, p2}, Lg9/h;->m(I)V

    .line 5
    iget-object p1, p0, Lg9/h;->d:Lg9/h$a;

    iget-object v0, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg9/i;

    .line 6
    iget-object p2, p2, Lg9/i;->b:Lea/e;

    .line 7
    invoke-interface {p1, p3, p2}, Lg9/h$a;->Q(ZLea/e;)V

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modes"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg9/k;->a:Lg9/k;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lea/e;

    .line 4
    iget-boolean v3, v3, Lea/e;->j:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lg9/j;

    invoke-direct {p1}, Lg9/j;-><init>()V

    invoke-static {v0, p1}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Lg9/i;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg9/i;-><init>(ILea/e;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/e;

    .line 11
    new-instance v2, Lg9/i;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lg9/i;-><init>(ILea/e;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    iput-object v0, p0, Lg9/h;->e:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->d()V

    return-void
.end method

.method public final p(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lg9/h;->e:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lg9/i;

    .line 3
    iget-object v7, v4, Lg9/i;->b:Lea/e;

    if-eqz v7, :cond_0

    .line 4
    iget-object v8, v7, Lea/e;->k:Lea/c;

    .line 5
    iget-object v8, v8, Lea/c;->h:Lea/i;

    .line 6
    iget-object v8, v8, Lea/i;->h:Lea/h$c;

    .line 7
    iget v8, v8, Lea/h$c;->j:I

    .line 8
    iget-object v7, v7, Lea/e;->l:Lea/c;

    .line 9
    iget-object v7, v7, Lea/c;->h:Lea/i;

    .line 10
    iget-object v7, v7, Lea/i;->h:Lea/h$c;

    .line 11
    iget v7, v7, Lea/h$c;->j:I

    sub-int/2addr v8, p1

    .line 12
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_0

    sub-int/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v9, :cond_0

    .line 13
    iput-boolean v5, v4, Lg9/i;->c:Z

    .line 14
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$e;->e(I)V

    .line 15
    invoke-virtual {p0, v3}, Lg9/h;->m(I)V

    move v2, v5

    :cond_0
    move v3, v6

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    if-nez v2, :cond_6

    .line 17
    sget-object v0, Lg9/k;->a:Lg9/k;

    invoke-static {p1, p2}, Lg9/k;->e(II)V

    .line 18
    iget-object p1, p0, Lg9/h;->e:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Lg9/i;

    .line 21
    iget v0, v0, Lg9/i;->a:I

    if-ne v0, v5, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, -0x1

    .line 22
    :goto_3
    iget-object p1, p0, Lg9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/i;

    .line 23
    iput-boolean v5, p1, Lg9/i;->c:Z

    .line 24
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->e(I)V

    .line 25
    invoke-virtual {p0, p2}, Lg9/h;->m(I)V

    :cond_6
    return-void
.end method
