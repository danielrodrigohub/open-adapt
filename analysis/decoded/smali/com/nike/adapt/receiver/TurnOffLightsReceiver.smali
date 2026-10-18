.class public final Lcom/nike/adapt/receiver/TurnOffLightsReceiver;
.super Ll8/b;
.source "TurnOffLightsReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll8/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 4
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ll8/b;->j:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Ll8/b;->c()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 6
    invoke-virtual {p0}, Ll8/b;->c()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v1, Lp8/w;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    :cond_2
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 4
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ll8/b;->j:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ll8/b;->d()Lt9/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt9/b;->d(Lcom/nike/adapt/adk/DeviceControllerResult;)V

    .line 4
    invoke-virtual {p0}, Ll8/b;->d()Lt9/b;

    move-result-object p1

    invoke-virtual {p1}, Lt9/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ll8/b;->d()Lt9/b;

    move-result-object p1

    invoke-virtual {p1}, Lt9/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lt9/b;

    invoke-direct {p1}, Lt9/b;-><init>()V

    .line 6
    iput-object p1, p0, Ll8/b;->i:Lt9/b;

    .line 7
    invoke-virtual {p0}, Ll8/b;->c()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    invoke-virtual {p0}, Ll8/b;->c()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    new-instance v1, Lp8/w;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ll8/b;->d()Lt9/b;

    move-result-object p1

    invoke-virtual {p1}, Lt9/b;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ll8/b;->d()Lt9/b;

    move-result-object p1

    invoke-virtual {p1}, Lt9/b;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Ll8/b;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "extra_notification_type"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p2}, Lg2/e;->d(Ljava/lang/String;)I

    move-result p2

    .line 3
    invoke-static {p2}, Lq/g;->a(I)I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationLowBatteryLightsTurnOffTapped()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2}, Lcom/nike/adapt/analytics/TrackManager;->batteryNotificationCriticalBatteryLightsTurnOffTapped()V

    :cond_2
    :goto_0
    const-string p2, "notification"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p2, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/NotificationManager;

    const v0, 0x8e183

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7
    invoke-virtual {p0, p1}, Ll8/b;->e(Landroid/content/Context;)V

    return-void
.end method
