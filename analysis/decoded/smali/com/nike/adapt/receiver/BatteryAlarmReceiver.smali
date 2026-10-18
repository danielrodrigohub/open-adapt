.class public final Lcom/nike/adapt/receiver/BatteryAlarmReceiver;
.super Ll8/b;
.source "BatteryAlarmReceiver.kt"


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

    move-result-object v1

    sget-object v2, Lp8/g;->a:Lp8/g;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 7
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
    .locals 17
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Ll8/b;->j:Li8/d;

    .line 2
    invoke-static {v1, v2}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lt9/b;->d(Lcom/nike/adapt/adk/DeviceControllerResult;)V

    .line 4
    instance-of v2, v1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 5
    check-cast v1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v1

    invoke-virtual {v1}, Lt9/b;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Battery Alarm: Successfully got connection & received battery results"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 8
    sget-object v2, Ls9/c;->a:Ls9/c;

    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    .line 10
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v4

    .line 11
    iget-object v4, v4, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    if-eqz v2, :cond_5

    if-nez v4, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const/16 v6, 0x50

    if-lt v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-ge v5, v6, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v2

    if-lt v2, v6, :cond_5

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v2

    if-lt v2, v6, :cond_5

    const-string v2, "Battery Alarm: User can see a low or critically low charge notification again"

    .line 14
    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 15
    sget-object v1, Ls9/c;->b:Lh8/c;

    invoke-virtual {v1, v3}, Lh8/c;->g0(Z)V

    .line 16
    invoke-virtual {v1, v3}, Lh8/c;->g(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v2, "Battery Alarm: User can see a full charge notification again"

    .line 17
    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 18
    sget-object v1, Ls9/c;->b:Lh8/c;

    invoke-virtual {v1, v3}, Lh8/c;->C(Z)V

    .line 19
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v1

    invoke-virtual {v1}, Lt9/b;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v1

    invoke-virtual {v1}, Lt9/b;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 20
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Battery Alarm: Successfully got connection, battery results, & animation state"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 21
    sget-object v2, Ls9/c;->a:Ls9/c;

    .line 22
    iget-object v4, v0, Ll8/b;->h:Landroid/content/Context;

    if-eqz v4, :cond_a

    .line 23
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v5

    .line 24
    iget-object v5, v5, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    .line 25
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v6

    .line 26
    iget-object v6, v6, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    .line 27
    invoke-virtual/range {p0 .. p0}, Ll8/b;->d()Lt9/b;

    move-result-object v7

    invoke-virtual {v7}, Lt9/b;->c()Z

    move-result v7

    if-eqz v5, :cond_9

    if-nez v6, :cond_6

    goto/16 :goto_3

    .line 28
    :cond_6
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v8

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v9

    .line 29
    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v10

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v11

    .line 30
    sget-object v12, Ls9/c;->b:Lh8/c;

    .line 31
    invoke-virtual {v12}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CRITICAL"

    invoke-interface {v13, v14, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 32
    invoke-virtual {v2, v5, v6}, Ls9/c;->b(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z

    move-result v14

    .line 33
    invoke-virtual {v12}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v0, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_LOW"

    invoke-interface {v15, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    invoke-virtual {v2, v5, v6}, Ls9/c;->c(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z

    move-result v15

    .line 35
    invoke-virtual {v12}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 p1, v4

    const-string v4, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CHARGED"

    invoke-interface {v12, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 36
    invoke-virtual {v2, v5, v6}, Ls9/c;->a(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z

    move-result v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "Battery Alarm: Info Dump:\nLeft Battery: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " State: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\nRight Battery: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nIs Animation Running: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nCritical Notification Flag: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Can show notification based on battery & flag: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "\nLow Notification Flag: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nFull Notification Flag: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 38
    invoke-virtual {v0, v5, v6}, Ls9/c;->b(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Battery Alarm: User will now see a critical notification"

    .line 39
    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    move-object/from16 v2, p1

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v2, v1, v7}, Ls9/c;->e(Landroid/content/Context;IZ)I

    goto :goto_3

    :cond_7
    move-object/from16 v2, p1

    .line 41
    invoke-virtual {v0, v5, v6}, Ls9/c;->c(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Battery Alarm: User will now see a low notification"

    .line 42
    invoke-virtual {v1, v3}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 43
    invoke-virtual {v0, v2, v1, v7}, Ls9/c;->e(Landroid/content/Context;IZ)I

    goto :goto_3

    .line 44
    :cond_8
    invoke-virtual {v0, v5, v6}, Ls9/c;->a(Lcom/nike/adapt/adk/model/Battery;Lcom/nike/adapt/adk/model/Battery;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Battery Alarm: User will now see a fully charged notification"

    .line 45
    invoke-virtual {v1, v3}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 46
    invoke-virtual {v0, v2, v1, v7}, Ls9/c;->e(Landroid/content/Context;IZ)I

    .line 47
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ll8/b;->a()V

    goto :goto_4

    :cond_a
    const-string v0, "context"

    .line 48
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    :goto_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lo7/x;->a:Lo7/x;

    const-string v0, "Battery Alarm: onReceive called by OS"

    invoke-virtual {p2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    .line 3
    sget-boolean v0, Lcom/nike/adapt/BigfootApplication;->x:Z

    if-eqz v0, :cond_0

    const-string p1, "Battery Alarm: Exited early. App was in foreground"

    .line 4
    invoke-virtual {p2, p1}, Lo7/x;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Battery Alarm: App In Background, will continue battery alarm process"

    .line 5
    invoke-virtual {p2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Ll8/b;->e(Landroid/content/Context;)V

    return-void
.end method
