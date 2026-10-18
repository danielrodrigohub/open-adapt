.class public final synthetic Li9/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Li9/y$a;


# direct methods
.method public synthetic constructor <init>(ILi9/y$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li9/x;->h:I

    iput-object p2, p0, Li9/x;->i:Li9/y$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget v0, p0, Li9/x;->h:I

    iget-object v1, p0, Li9/x;->i:Li9/y$a;

    const-string v2, "this$0"

    .line 1
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v2, v1, Li9/y$a;->f:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    iput v0, v1, Li9/y$a;->f:I

    .line 4
    iget-object v2, v1, Li9/y$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li9/y$a$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    .line 5
    iget-object v0, v0, Li9/y$a$d;->a:Ls9/r;

    if-eqz v0, :cond_f

    .line 6
    sget-object v4, Li9/y;->h0:Li9/y$b;

    const-string v5, "it"

    invoke-static {p1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Li9/y$b;->a(Landroid/view/View;)I

    move-result v5

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v5

    .line 8
    iget-object v6, v1, Li9/y$a;->d:Li9/y;

    iget v7, v1, Li9/y$a;->f:I

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v8, v6, Li9/y;->c0:Lq7/q0;

    const-string v9, "binding"

    const/4 v10, 0x0

    if-eqz v8, :cond_e

    iget-object v8, v8, Lq7/q0;->b:Lq7/w1;

    iget-object v8, v8, Lq7/w1;->b:Landroid/widget/Button;

    .line 10
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_3

    .line 11
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    .line 13
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_1

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v12, v10

    :goto_0
    if-eqz v12, :cond_2

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_1
    int-to-float v12, v12

    add-float/2addr v11, v12

    const/4 v12, 0x2

    new-array v12, v12, [F

    aput v11, v12, v2

    const/4 v11, 0x0

    aput v11, v12, v3

    const-string v11, "translationY"

    .line 14
    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 15
    new-instance v11, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0x19

    .line 16
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 17
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 18
    :cond_3
    invoke-virtual {v6}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v8

    new-instance v11, Li9/z;

    invoke-direct {v11, v8}, Li9/z;-><init>(Landroid/content/Context;)V

    .line 19
    iput v7, v11, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    if-gez v5, :cond_5

    const/16 p1, 0xa

    .line 20
    iput p1, v11, Li9/z;->q:I

    .line 21
    iget-object p1, v6, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/q0;->b:Lq7/w1;

    iget-object p1, p1, Lq7/w1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v11}, Landroidx/recyclerview/widget/RecyclerView$m;->I0(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_4

    :cond_4
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    .line 22
    :cond_5
    iget-object v5, v6, Li9/y;->c0:Lq7/q0;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lq7/q0;->b:Lq7/w1;

    iget-object v5, v5, Lq7/w1;->b:Landroid/widget/Button;

    const-string v7, "binding.chooseYourShoesS\u2026rShoesSelectionNextButton"

    invoke-static {v5, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Li9/y$b;->a(Landroid/view/View;)I

    move-result v4

    if-le p1, v4, :cond_b

    .line 23
    iget-object p1, v6, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lq7/q0;->b:Lq7/w1;

    iget-object p1, p1, Lq7/w1;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    iget-object v4, v6, Li9/y;->c0:Lq7/q0;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lq7/q0;->b:Lq7/w1;

    iget-object v4, v4, Lq7/w1;->b:Landroid/widget/Button;

    invoke-static {v4, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_6
    move-object v4, v10

    :goto_2
    if-eqz v4, :cond_7

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    sub-int/2addr p1, v4

    .line 25
    iput p1, v11, Li9/z;->q:I

    .line 26
    iget-object p1, v6, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/q0;->b:Lq7/w1;

    iget-object p1, p1, Lq7/w1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v11}, Landroidx/recyclerview/widget/RecyclerView$m;->I0(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_4

    :cond_8
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    .line 27
    :cond_9
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    :cond_a
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    .line 28
    :cond_b
    :goto_4
    iget-object p1, v6, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lq7/q0;->b:Lq7/w1;

    iget-object p1, p1, Lq7/w1;->b:Landroid/widget/Button;

    new-instance v4, Lu8/k;

    invoke-direct {v4, v6, v0, v3}, Lu8/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_c
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    .line 29
    :cond_d
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    .line 30
    :cond_e
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v10

    .line 31
    :cond_f
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v0, v1, Li9/y$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v2

    :goto_6
    if-ge v4, v0, :cond_11

    .line 33
    new-instance v5, Li9/y$a$d;

    iget-object v6, v1, Li9/y$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li9/y$a$d;

    .line 34
    iget-object v6, v6, Li9/y$a$d;->a:Ls9/r;

    .line 35
    iget v7, v1, Li9/y$a;->f:I

    if-ne v4, v7, :cond_10

    move v7, v3

    goto :goto_7

    :cond_10
    move v7, v2

    :goto_7
    invoke-direct {v5, v6, v7}, Li9/y$a$d;-><init>(Ls9/r;Z)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 36
    :cond_11
    invoke-virtual {v1, p1}, Li9/y$a;->m(Ljava/util/List;)V

    .line 37
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Choose Your Shoes - Selected: New Shoe"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    :goto_8
    return-void
.end method
