.class public final Li9/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AdaptShoesOnboardingFragment.kt"


# instance fields
.field public final synthetic a:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;)V
    .locals 0

    iput-object p1, p0, Li9/n;->a:Li9/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Li9/n;->a:Li9/g;

    .line 2
    iget-object p1, p1, Li9/g;->y0:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Li9/n;->a:Li9/g;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->B()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    iget-object p1, p0, Li9/n;->a:Li9/g;

    .line 3
    iget-object v0, p1, Li9/g;->k0:Lq7/g1;

    const-string v1, "itemMessagingCtaBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lq7/g1;->a:Landroid/widget/Button;

    const v3, 0x7f11034c

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/util/Pair;

    iget-object v6, p1, Li9/g;->v0:Landroid/util/Pair;

    if-eqz v6, :cond_9

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Li9/g;->k0:Lq7/g1;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lq7/g1;->a:Landroid/widget/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, p1, Li9/g;->k0:Lq7/g1;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Li9/g;->k0:Lq7/g1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/g1;->a:Landroid/widget/Button;

    new-instance v3, Li9/b;

    invoke-direct {v3, p1, v7}, Li9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Li9/g;->s0:Lx8/f0;

    const-string v3, "leftShoeControllerUiHelper"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lx8/q0;->d()V

    .line 8
    iget-object v0, p1, Li9/g;->r0:Lx8/n0;

    const-string v5, "rightShoeControllerUiHelper"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lx8/q0;->d()V

    const/4 v0, 0x4

    .line 9
    iput v0, p1, Li9/g;->w0:I

    .line 10
    iget-object v0, p1, Li9/g;->s0:Lx8/f0;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lx8/q0;->f(Z)V

    .line 11
    iget-object v0, p1, Li9/g;->r0:Lx8/n0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lx8/q0;->f(Z)V

    .line 12
    iget-object v6, p1, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    new-instance v9, Li9/s;

    invoke-direct {v9, p1, v2}, Li9/s;-><init>(Li9/g;Ljd/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    .line 15
    iget-object v0, p1, Li9/g;->k0:Lq7/g1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p1, Li9/g;->I0:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    .line 17
    invoke-interface {p1}, Lh8/a;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairFindYourFitFlowStarted()V

    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isUserScaleStarted()V

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_2
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_4
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_5
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string p1, "pairModeName"

    .line 28
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_0
    return-void
.end method
