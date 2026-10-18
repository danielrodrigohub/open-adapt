.class public final Lcom/nike/adapt/ui/battery/BatteryStateActivity;
.super Lp8/a;
.source "BatteryStateActivity.kt"


# instance fields
.field public I:Lq7/c;

.field public J:Lcom/nike/adapt/adk/IAdaptRequester;

.field public K:Lcom/nike/adapt/adk/IDeviceController;

.field public L:Lq8/e;

.field public M:Lq8/e;

.field public N:Lq8/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp8/a;-><init>()V

    return-void
.end method


# virtual methods
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
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lp8/g;->a:Lp8/g;

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    instance-of v0, p1, Lcom/nike/adapt/adk/Disconnected;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v0, Lcom/nike/adapt/adk/model/Battery;

    const/4 v1, 0x0

    sget-object v2, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    invoke-virtual {p0, p1, v0}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->q0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 1
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->q0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->q0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of p1, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lq7/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.root"

    .line 10
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d001e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00d8

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    const v0, 0x7f0a00db

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 6
    invoke-static {v3}, Lq7/b1;->a(Landroid/view/View;)Lq7/b1;

    move-result-object v7

    const v0, 0x7f0a00dd

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 8
    invoke-static {v3}, Lq7/b1;->a(Landroid/view/View;)Lq7/b1;

    move-result-object v8

    const v0, 0x7f0a00de

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_6

    const v0, 0x7f0a00df

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    .line 11
    move-object v5, p1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    new-instance p1, Lq7/c;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lq7/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lq7/b1;Lq7/b1;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 13
    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->I:Lq7/c;

    .line 14
    invoke-virtual {p0}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lq7/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 17
    sget-object p1, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object p1

    .line 18
    iget-object p1, p1, Lq7/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.root"

    .line 19
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const-string v4, "extra_notification_type"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-static {p1}, Lg2/e;->d(Ljava/lang/String;)I

    move-result p1

    .line 22
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationFullyChargedTapped()V

    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationLowBatteryTapped()V

    goto :goto_0

    .line 25
    :cond_2
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationCriticalBatteryTapped()V

    .line 26
    :cond_3
    :goto_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 28
    sget-object v4, Lq8/h;->h:Lq8/h;

    .line 29
    new-instance v5, Lq8/g;

    invoke-direct {v5, p0}, Lq8/g;-><init>(Lcom/nike/adapt/ui/battery/BatteryStateActivity;)V

    .line 30
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v4, v5}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->J:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 31
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 33
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    .line 34
    new-instance p1, Lq8/e;

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Lq8/e;-><init>(ZLcom/nike/adapt/adk/model/Battery;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->L:Lq8/e;

    .line 35
    new-instance p1, Lq8/e;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lq8/e;-><init>(ZLcom/nike/adapt/adk/model/Battery;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->M:Lq8/e;

    .line 36
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    .line 37
    iget-object v0, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->L:Lq8/e;

    if-eqz v0, :cond_5

    .line 38
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 39
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    .line 40
    iget-object v2, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->M:Lq8/e;

    if-eqz v2, :cond_4

    .line 41
    iget-object v2, v2, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 42
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v2

    .line 43
    invoke-virtual {p1, v0, v2}, Lcom/nike/adapt/analytics/TrackManager;->batteryAccessed(II)V

    .line 44
    new-instance p1, Lq8/d;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object v0

    invoke-direct {p1, v0}, Lq8/d;-><init>(Lq7/c;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->N:Lq8/d;

    .line 45
    iget-object v2, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 46
    new-instance v5, Lq8/i;

    invoke-direct {v5, p0, v1}, Lq8/i;-><init>(Lcom/nike/adapt/ui/battery/BatteryStateActivity;Ljd/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_4
    const-string p1, "rightBatteryInfoState"

    .line 47
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "leftBatteryInfoState"

    .line 48
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p0()Lq7/c;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->I:Lq7/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lq8/e;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lq8/e;-><init>(ZLcom/nike/adapt/adk/model/Battery;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->L:Lq8/e;

    .line 3
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lq8/e;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lq8/e;-><init>(ZLcom/nike/adapt/adk/model/Battery;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->M:Lq8/e;

    .line 5
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    :goto_0
    return-void
.end method
