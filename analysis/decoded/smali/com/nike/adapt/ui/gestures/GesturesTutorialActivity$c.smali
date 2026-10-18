.class public final Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;
.super Ljava/lang/Object;
.source "GesturesTutorialActivity.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

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
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lq7/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    new-instance v1, Ly0/x;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Ly0/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    .line 6
    iget v0, p1, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    if-eq v0, v2, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->u0()V

    return-void

    :cond_1
    const-string p1, "binding"

    .line 8
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
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
