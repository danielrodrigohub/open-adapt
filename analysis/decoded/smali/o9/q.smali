.class public final Lo9/q;
.super Ljava/lang/Object;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lo9/q;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

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
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lo9/q;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->p:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "binding.lightingHalo"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->p0(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Landroid/view/View;)V

    return-void
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
