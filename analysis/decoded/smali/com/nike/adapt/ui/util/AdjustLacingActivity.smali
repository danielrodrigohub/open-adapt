.class public final Lcom/nike/adapt/ui/util/AdjustLacingActivity;
.super Lp8/a;
.source "AdjustLacingActivity.kt"

# interfaces
.implements Lx8/q0$a;


# static fields
.field public static final synthetic Q:I


# instance fields
.field public I:Lq7/h0;

.field public J:Lcom/nike/adapt/adk/IAdaptRequester;

.field public K:Lcom/nike/adapt/adk/IDeviceController;

.field public L:Lx8/n0;

.field public M:Lx8/f0;

.field public final N:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb9/a;",
            ">;"
        }
    .end annotation
.end field

.field public O:Landroid/animation/Animator;

.field public final P:Lt9/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->N:Ljava/util/Vector;

    .line 3
    new-instance v0, Lt9/c;

    invoke-direct {v0}, Lt9/c;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    return-void
.end method


# virtual methods
.method public final W(Lcom/nike/adapt/adk/Shoe;)V
    .locals 2

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    invoke-virtual {p1}, Lt9/c;->c()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->t0(Z)V

    return-void
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 5
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->u0(Lcom/nike/adapt/adk/Shoe;)V

    .line 5
    instance-of v0, p1, Lcom/nike/adapt/adk/DeviceFoundAndReadyToConnect;

    const-string v1, "rightShoeControllerUiHelper"

    const-string v2, "leftShoeControllerUiHelper"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz p1, :cond_4

    .line 7
    :goto_0
    invoke-virtual {p1}, Lx8/q0;->w()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lx8/q0;->q()V

    .line 8
    :cond_3
    invoke-virtual {p1}, Lx8/q0;->l()V

    goto/16 :goto_4

    .line 9
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_5
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_b

    .line 11
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    const-string v1, "deviceController"

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    sget-object v4, Lp8/n;->a:Lp8/n;

    invoke-interface {v0, v2, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 13
    sget-object v0, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->a()Lv7/b;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 15
    iget v0, v0, Lv7/b;->b:I

    goto :goto_2

    .line 16
    :cond_8
    iget v0, v0, Lv7/b;->a:I

    .line 17
    :goto_2
    iget-object v2, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    new-instance v3, Lp8/d0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lp8/d0;-><init>(II)V

    invoke-interface {v2, v1, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 18
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    .line 19
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v1

    invoke-virtual {v0, v1}, Lt9/c;->b(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->t0(Z)V

    .line 20
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->r0(Lcom/nike/adapt/adk/Shoe;Z)V

    goto :goto_4

    .line 21
    :cond_9
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_b
    instance-of v0, p1, Lcom/nike/adapt/adk/Disconnected;

    if-eqz v0, :cond_f

    .line 24
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_d
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz v0, :cond_e

    :goto_3
    invoke-virtual {v0}, Lx8/q0;->l()V

    .line 25
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->r0(Lcom/nike/adapt/adk/Shoe;Z)V

    goto :goto_4

    .line 26
    :cond_e
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_f
    :goto_4
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 10
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    const-string v1, "leftShoeControllerUiHelper"

    const-string v2, "rightShoeControllerUiHelper"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/nike/adapt/adk/GetLacingPercentResult;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    iget-object v2, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz v1, :cond_4

    move-object v2, v1

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 7
    new-instance v1, Lx8/i0;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v0

    invoke-direct {v1, v0}, Lx8/i0;-><init>(I)V

    move-object v8, v1

    goto :goto_1

    .line 8
    :cond_3
    sget-object v0, Lx8/t;->a:Lx8/t;

    move-object v8, v0

    .line 9
    :goto_1
    new-instance v0, Lp4/a0;

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lp4/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    iput-object v0, v2, Lx8/q0;->B:Ljava/lang/Runnable;

    .line 11
    iget-boolean p1, v2, Lx8/q0;->A:Z

    if-eqz p1, :cond_b

    .line 12
    iget-object p1, v2, Lx8/q0;->h:Landroid/content/Context;

    if-eqz p1, :cond_b

    .line 13
    invoke-virtual {v0}, Lp4/a0;->run()V

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_5
    instance-of v0, p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    if-eqz v0, :cond_9

    .line 16
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    const/4 v4, 0x0

    check-cast p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    .line 17
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->t0(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_7
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lx8/q0;->k(IZ)V

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_9
    instance-of p1, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz p1, :cond_b

    .line 21
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lq7/h0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.adjustLacingActivityParent"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_b
    :goto_3
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0045

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a009f

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 6
    invoke-static {v2}, Lq7/m1;->a(Landroid/view/View;)Lq7/m1;

    move-result-object v4

    const v1, 0x7f0a00a0

    .line 7
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_b

    const v1, 0x7f0a00a1

    .line 8
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_b

    const v1, 0x7f0a00a2

    .line 9
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_b

    .line 10
    new-instance v0, Lq7/h0;

    move-object v1, v0

    move-object v2, v8

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lq7/h0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lq7/m1;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 11
    iput-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    .line 12
    invoke-virtual {p0, v8}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 13
    sget-object v0, Lp7/b;->a:Lp7/b;

    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    const-string v8, "binding"

    if-eqz v0, :cond_a

    iget-object v0, v0, Lq7/h0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.adjustLacingActivityParent"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    const/4 v9, 0x1

    .line 15
    iput-boolean v9, v0, Lt9/c;->a:Z

    .line 16
    iput-boolean v9, v0, Lt9/c;->b:Z

    .line 17
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    .line 19
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->J:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 20
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lp8/q;->B:Li8/d;

    .line 22
    check-cast v0, Lo7/f;

    invoke-virtual {v0, p0, v1}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    iput-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    .line 23
    new-instance v10, Lx8/f0;

    const-string v11, "deviceController"

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_8

    iget-object v2, v0, Lq7/h0;->b:Lq7/m1;

    const-string v12, "binding.adjustLacingContainer"

    invoke-static {v2, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x38

    move-object v0, v10

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lx8/f0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V

    iput-object v10, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    .line 24
    new-instance v10, Lx8/n0;

    iget-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lq7/h0;->b:Lq7/m1;

    invoke-static {v2, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x38

    move-object v0, v10

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lx8/n0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V

    iput-object v10, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    .line 25
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lx8/q0;->n(Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lx8/q0;->n(Landroid/content/Context;)V

    .line 27
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/h0;->b:Lq7/m1;

    iget-object v0, v0, Lq7/m1;->a:Lq7/l1;

    iget-object v0, v0, Lq7/l1;->b:Landroid/widget/LinearLayout;

    new-instance v1, Ly0/y;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Ly0/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/h0;->b:Lq7/m1;

    iget-object v0, v0, Lq7/m1;->b:Lq7/l1;

    iget-object v0, v0, Lq7/l1;->b:Landroid/widget/LinearLayout;

    new-instance v1, Ly0/s;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/h0;->c:Landroid/widget/Button;

    new-instance v1, Lo8/k;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lo8/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/h0;->d:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 31
    :cond_1
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 32
    :cond_2
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 33
    :cond_3
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_4
    const-string v0, "rightShoeControllerUiHelper"

    .line 34
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_5
    const-string v0, "leftShoeControllerUiHelper"

    .line 35
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 36
    :cond_6
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 37
    :cond_8
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 38
    :cond_a
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 39
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final p0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;
    .locals 4

    new-instance v0, Lb9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/h0;->b:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->b:Lq7/l1;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq7/h0;->b:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->a:Lq7/l1;

    :goto_0
    iget-object v1, v1, Lq7/l1;->a:Landroid/widget/ImageView;

    const-string v2, "if (shoe.isRight()) bind\u2026rContainer.shoeController"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lb9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Landroid/widget/ImageView;)V

    return-object v0

    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final q0(Landroid/widget/ImageView;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, -0x1

    .line 3
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final r0(Lcom/nike/adapt/adk/Shoe;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lx8/q0;->s(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "leftShoeControllerUiHelper"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lx8/q0;->s(Z)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "rightShoeControllerUiHelper"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final s0(Lb9/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->N:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->N:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->O:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->O:Landroid/animation/Animator;

    .line 5
    :cond_1
    iget-object p1, p1, Lb9/a;->b:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->q0(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final t0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/h0;->c:Landroid/widget/Button;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->I:Lq7/h0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/h0;->c:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final u0(Lcom/nike/adapt/adk/Shoe;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->p0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object p1

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->O:Landroid/animation/Animator;

    if-nez v0, :cond_2

    const v0, 0x3e051eb8

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-string v3, ""

    .line 5
    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lq9/b;

    invoke-direct {v3, v2}, Lq9/b;-><init>(Landroid/animation/ValueAnimator;)V

    .line 7
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 10
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x3e8

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v1, Lq9/a;

    invoke-direct {v1, p0, v0}, Lq9/a;-><init>(Lcom/nike/adapt/ui/util/AdjustLacingActivity;F)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v2

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->N:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->N:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 17
    :cond_4
    iput-object v0, p0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->O:Landroid/animation/Animator;

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->s0(Lb9/a;)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd
    .end array-data
.end method
