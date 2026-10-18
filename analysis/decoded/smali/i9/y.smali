.class public final Li9/y;
.super Lp8/h;
.source "ChooseYourShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/y$a;,
        Li9/y$b;
    }
.end annotation


# static fields
.field public static final h0:Li9/y$b;

.field public static final i0:Ljava/lang/String;


# instance fields
.field public final b0:Ljava/lang/String;

.field public c0:Lq7/q0;

.field public d0:Lo8/d;

.field public e0:Z

.field public f0:Ls9/r;

.field public final g0:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/y$b;

    invoke-direct {v0}, Li9/y$b;-><init>()V

    sput-object v0, Li9/y;->h0:Li9/y$b;

    const-class v0, Li9/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li9/y;->i0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    const-string v0, "ChooseYourShoesFragment"

    .line 2
    iput-object v0, p0, Li9/y;->b0:Ljava/lang/String;

    .line 3
    sget-object v0, Li9/y$c;->h:Li9/y$c;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/y;->g0:Lfd/d;

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v1, p0, Li9/y;->c0:Lq7/q0;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_b

    iget-object v1, v1, Lq7/q0;->a:Lq7/v1;

    iget-object v1, v1, Lq7/v1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lq7/q0;->b:Lq7/w1;

    iget-object v1, v1, Lq7/w1;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lq7/q0;->b:Lq7/w1;

    iget-object v1, v1, Lq7/w1;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    .line 5
    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 6
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 7
    new-instance v1, Li9/y$a;

    invoke-direct {v1, p0}, Li9/y$a;-><init>(Li9/y;)V

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v5, Ls9/r;->h:Ls9/r;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v5, Ls9/r;->j:Ls9/r;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v5, Ls9/r;->i:Ls9/r;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v5, Ls9/r;->k:Ls9/r;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v5, Ls9/r;->l:Ls9/r;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls9/r;

    .line 18
    new-instance v8, Li9/y$a$d;

    invoke-direct {v8, v6, v7}, Li9/y$a$d;-><init>(Ls9/r;Z)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, v5}, Li9/y$a;->m(Ljava/util/List;)V

    .line 20
    iget-object v4, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lq7/q0;->b:Lq7/w1;

    iget-object v4, v4, Lq7/w1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 21
    invoke-virtual {p0}, Li9/y;->s0()Lh8/d;

    move-result-object v1

    invoke-interface {v1}, Lh8/d;->d()Ls9/r;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 22
    iput-object v1, p0, Li9/y;->f0:Ls9/r;

    .line 23
    sget-object v4, Ls9/p;->a:Ls9/p;

    iget-object v5, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lq7/q0;->a:Lq7/v1;

    iget-object v5, v5, Lq7/v1;->e:Landroid/widget/ImageView;

    const-string v6, "binding.chooseYourShoesC\u2026.chooseYourShoesShoeImage"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li9/y;->s0()Lh8/d;

    move-result-object v6

    invoke-interface {v6}, Lh8/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 24
    iget-object v4, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lq7/q0;->a:Lq7/v1;

    iget-object v4, v4, Lq7/v1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v4, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lq7/q0;->a:Lq7/v1;

    iget-object v4, v4, Lq7/v1;->a:Landroid/widget/Button;

    new-instance v5, Lu8/j;

    invoke-direct {v5, p0, v1, v0}, Lu8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq7/q0;->a:Lq7/v1;

    iget-object v1, v1, Lq7/v1;->d:Landroid/widget/TextView;

    new-instance v4, Lx8/j0;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lq7/q0;->a:Lq7/v1;

    iget-object v1, v1, Lq7/v1;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 28
    sget-object v2, Lfd/o;->a:Lfd/o;

    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_4
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_5
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    .line 34
    invoke-virtual {p0, v0}, Li9/y;->r0(Z)V

    :cond_7
    return-void

    .line 35
    :cond_8
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_9
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_a
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_b
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final G(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lo8/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo8/d;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lo8/d;

    iput-object p1, p0, Li9/y;->d0:Lo8/d;

    sget-object v1, Lfd/o;->a:Lfd/o;

    :cond_1
    if-eqz v1, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Lo8/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0074

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a011d

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    const-string v0, "Missing required view with ID: "

    if-eqz p3, :cond_3

    const p2, 0x7f0a011e

    .line 4
    invoke-static {p3, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 5
    move-object v4, p3

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a0123

    .line 6
    invoke-static {p3, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    const p2, 0x7f0a0124

    .line 7
    invoke-static {p3, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    const p2, 0x7f0a0129

    .line 8
    invoke-static {p3, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 9
    new-instance p2, Lq7/v1;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lq7/v1;-><init>(Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 10
    move-object p3, p1

    check-cast p3, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0126

    .line 11
    invoke-static {p1, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const p1, 0x7f0a0125

    .line 12
    invoke-static {v2, p1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const p1, 0x7f0a0127

    .line 13
    invoke-static {v2, p1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 14
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 15
    new-instance p1, Lq7/w1;

    invoke-direct {p1, v1, v3, v2}, Lq7/w1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroid/widget/RelativeLayout;)V

    .line 16
    new-instance v0, Lq7/q0;

    invoke-direct {v0, p3, p2, p1}, Lq7/q0;-><init>(Landroid/widget/FrameLayout;Lq7/v1;Lq7/w1;)V

    .line 17
    iput-object v0, p0, Li9/y;->c0:Lq7/q0;

    return-object p3

    .line 18
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move p2, v1

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li9/y;->b0:Ljava/lang/String;

    return-object v0
.end method

.method public final q0(Ls9/r;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->shoeTypeSelected(Ls9/r;)V

    .line 2
    iget-object p1, p0, Li9/y;->d0:Lo8/d;

    if-eqz p1, :cond_0

    sget-object v0, Lo8/a;->i:Lo8/a;

    invoke-interface {p1, v0}, Lo8/d;->O(Lo8/a;)V

    return-void

    :cond_0
    const-string p1, "stateListener"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final r0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Li9/y;->c0:Lq7/q0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/q0;->b:Lq7/w1;

    iget-object v0, v0, Lq7/w1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.nike.adapt.ui.onboarding.ChooseYourShoesFragment.ChooseShoesAdapter"

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Li9/y$a;

    .line 2
    iput-boolean p1, v0, Li9/y$a;->g:Z

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/q0;->b:Lq7/w1;

    iget-object p1, p1, Lq7/w1;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    iget-object p1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/q0;->a:Lq7/v1;

    iget-object p1, p1, Lq7/v1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "binding.chooseYourShoesC\u2026YourShoesConfirmationView"

    invoke-static {p1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-static {p1, v0, v4}, Lf1/b;->o(Landroid/view/View;ZI)V

    .line 5
    iget-object p1, p0, Li9/y;->c0:Lq7/q0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/q0;->b:Lq7/w1;

    iget-object p1, p1, Lq7/w1;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-static {p1, v3, v3}, Lf1/b;->o(Landroid/view/View;ZI)V

    .line 9
    :goto_0
    iput-boolean v3, p0, Li9/y;->e0:Z

    return-void

    .line 10
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final s0()Lh8/d;
    .locals 1

    iget-object v0, p0, Li9/y;->g0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method
