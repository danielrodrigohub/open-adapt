.class public final Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;
.super Lp8/a;
.source "SelectShoesActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic U:I


# instance fields
.field public I:Lq7/t;

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Landroid/os/Handler;

.field public M:Lea/m;

.field public N:Lt9/d;

.field public O:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public Q:Z

.field public final R:Lfd/h;

.field public final S:Lfd/d;

.field public final T:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    sget-object v0, Lt9/d;->j:Lt9/d;

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->N:Lt9/d;

    .line 3
    new-instance v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$b;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$b;-><init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->R:Lfd/h;

    const/4 v0, 0x3

    .line 4
    sget-object v1, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$a;->h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$a;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->S:Lfd/d;

    .line 5
    new-instance v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;-><init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->T:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;

    return-void
.end method


# virtual methods
.method public final o0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->R:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 4
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
    iget-object v0, p0, Lp8/a;->F:Lt9/a;

    .line 5
    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 6
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 9
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    iget-object v3, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    invoke-static {v0, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lp8/a;->F:Lt9/a;

    .line 11
    invoke-virtual {v0}, Lt9/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->Q:Z

    if-eqz v0, :cond_9

    .line 12
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lp8/x;->a:Lp8/x;

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 13
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    const-string v0, "binding"

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie_ic_check.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 15
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 16
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$c;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$c;-><init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 2
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLedResult;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetLedResult;

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->O:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->O:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->p0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->O:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 11
    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    :cond_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->N:Lt9/d;

    sget-object v1, Lt9/d;->i:Lt9/d;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lh9/v0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15

    move-object v13, p0

    const-string v0, "v"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Ls9/y;->a:Ls9/y;

    .line 3
    iget-object v5, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    if-eqz v5, :cond_0

    .line 4
    iget-object v2, v5, Lea/m;->i:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v9, Lf9/g;->h:Lf9/g;

    new-instance v10, Lf9/i;

    invoke-direct {v10, p0}, Lf9/i;-><init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V

    const-string v5, "cancel"

    .line 7
    invoke-static {v9, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v4, [Landroid/util/Pair;

    .line 8
    new-instance v5, Landroid/util/Pair;

    const-string v6, "nickname"

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v3

    const v2, 0x7f110135

    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "format(activity, R.strin\u2026ir(\"nickname\", nickName))"

    .line 10
    invoke-static {v3, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f110134

    const/4 v5, 0x0

    const v6, 0x7f110092

    const v7, 0x7f1101d0

    const/4 v8, 0x0

    .line 11
    new-instance v11, Ls9/y$a;

    const-string v2, "REMOVE PAIRED SHOES"

    const-string v12, "DISMISS"

    const-string v14, "CANCEL"

    invoke-direct {v11, v2, v12, v14, v1}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v12, 0x92

    const/4 v2, 0x0

    move-object v1, p0

    .line 12
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    goto/16 :goto_0

    .line 13
    :pswitch_1
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->L:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v5, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->T:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    iput-boolean v4, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->Q:Z

    .line 15
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->p0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, v4}, Lh8/a;->C(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->p0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, v4}, Lh8/a;->g(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->p0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, v4}, Lh8/a;->g0(Z)V

    .line 18
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0, v3}, Lcom/nike/adapt/adk/InMemoryCache;->setHasShoeUpdates(Z)V

    .line 19
    sget-object v4, Lt9/d;->i:Lt9/d;

    iput-object v4, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->N:Lt9/d;

    .line 20
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    new-instance v5, Lcom/nike/adapt/adk/model/Battery;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v2, v6, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    invoke-interface {v4, v5}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    .line 21
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    new-instance v4, Lcom/nike/adapt/adk/model/Battery;

    invoke-direct {v4, v3, v2, v6, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    invoke-interface {v0, v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    .line 22
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    const-string v4, "binding"

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 24
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/t;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 25
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/t;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/t;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    const-string v1, "adaptRequester"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/nike/adapt/adk/IAdaptRequester;->disconnect()V

    .line 28
    iget-object v0, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    if-eqz v0, :cond_9

    iget-object v3, v13, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Lcom/nike/adapt/adk/IAdaptRequester;->connect(Lea/m;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_4
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_5
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_7
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v0, "handler"

    .line 35
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a02e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0033

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a0072

    .line 5
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    const v3, 0x7f0a02e8

    .line 6
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_6

    const v3, 0x7f0a02e9

    .line 7
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_6

    const v3, 0x7f0a03b8

    .line 8
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v8, :cond_6

    const v3, 0x7f0a0489

    .line 9
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 10
    invoke-static {v4}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 11
    new-instance v0, Lq7/t;

    move-object v3, v0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lq7/t;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 12
    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    .line 13
    invoke-virtual {p0, v1}, Lf/e;->setContentView(Landroid/view/View;)V

    const v0, 0x7f110130

    const v1, 0x7f0a00e3

    .line 14
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v1}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 16
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1, v0}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v1, v3}, Lf/a;->m(Z)V

    .line 19
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->L:Landroid/os/Handler;

    const-string v0, "PARAM_SELECTED_PAIR"

    if-nez p1, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    check-cast p1, Lea/m;

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    .line 21
    sget-object p1, Ls9/p;->a:Ls9/p;

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    const-string v1, "binding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/t;->a:Landroid/widget/ImageView;

    const-string v4, "binding.activitySelectShoesIcon"

    invoke-static {v0, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    if-eqz v4, :cond_2

    .line 22
    iget-object v4, v4, Lea/m;->n:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 23
    :goto_1
    invoke-virtual {p1, v0, v4, v3}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 24
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v5

    .line 25
    iget-object v7, p0, Lp8/q;->B:Li8/d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v6, p0

    .line 26
    invoke-static/range {v5 .. v11}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 27
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 29
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/t;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->I:Lq7/t;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/t;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    const-string v1, "PARAM_SELECTED_PAIR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->T:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lp8/a;->onStop()V

    return-void

    :cond_0
    const-string v0, "handler"

    .line 3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final p0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->S:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method
