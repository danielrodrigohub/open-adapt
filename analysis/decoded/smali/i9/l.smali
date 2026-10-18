.class public final Li9/l;
.super Ljava/lang/Object;
.source "AdaptShoesOnboardingFragment.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;)V
    .locals 0

    iput-object p1, p0, Li9/l;->a:Li9/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Li9/l;->a:Li9/g;

    .line 2
    iget-object v0, p1, Li9/g;->i0:Lq7/o0;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/o0;->c:Lq7/k1;

    iget-object v0, v0, Lq7/k1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p1, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/o0;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p1, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/o0;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p1, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/o0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 6
    iget-object v0, p1, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/o0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Li9/i;

    invoke-direct {v1, p1}, Li9/i;-><init>(Li9/g;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object v3, p1, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    new-instance v6, Li9/j;

    invoke-direct {v6, p1, v2}, Li9/j;-><init>(Li9/g;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    return-void

    .line 10
    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
