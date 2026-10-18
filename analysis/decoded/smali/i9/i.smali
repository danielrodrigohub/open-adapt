.class public final Li9/i;
.super Ljava/lang/Object;
.source "AdaptShoesOnboardingFragment.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;)V
    .locals 0

    iput-object p1, p0, Li9/i;->a:Li9/g;

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
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Li9/i;->a:Li9/g;

    .line 2
    iget-object p1, p1, Li9/g;->I0:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Lh8/a;->s(Z)V

    .line 4
    iget-object p1, p0, Li9/i;->a:Li9/g;

    .line 5
    iget-object p1, p1, Li9/g;->u0:Lo8/d;

    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Lo8/a;->l:Lo8/a;

    invoke-interface {p1, v0}, Lo8/d;->O(Lo8/a;)V

    return-void

    :cond_0
    const-string p1, "stateListener"

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
