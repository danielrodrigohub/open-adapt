.class public final synthetic Ll8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ll8/a;->h:I

    iput-object p1, p0, Ll8/a;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ll8/a;->h:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ll8/a;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    sget v2, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->d0:I

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    .line 3
    iget-object v1, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->N:Ln3/k0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x17d4

    invoke-virtual {v1, v3, v4}, Ln3/e;->R(J)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 5
    iget-object v1, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/h;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lw8/j;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lw8/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "exoPlayer"

    .line 8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 9
    :pswitch_1
    iget-object v0, p0, Ll8/a;->i:Ljava/lang/Object;

    check-cast v0, Ll8/b;

    .line 10
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Battery Alarm: Was not able to connect within timeout limit"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ll8/b;->a()V

    return-void

    .line 13
    :goto_0
    iget-object v0, p0, Ll8/a;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    sget-object v2, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    .line 14
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->q0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
