.class public final synthetic Lx/a;
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

    iput p2, p0, Lx/a;->h:I

    iput-object p1, p0, Lx/a;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lx/a;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lx/a;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v4, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 1
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v3, v2, v1, v2}, Lcom/nike/adapt/analytics/TrackManager;->gestureEnabledToastShown$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    const v2, 0x7f110249

    invoke-virtual {v1, v2}, Lcom/nike/adapt/ui/helper/NotificationToast;->e(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    const v2, 0x7f110248

    .line 4
    invoke-virtual {v1, v2}, Lcom/nike/adapt/ui/helper/NotificationToast;->c(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 5
    new-instance v2, Lo9/g;

    invoke-direct {v2, v0}, Lo9/g;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-virtual {v1, v2}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 6
    invoke-virtual {v1}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lx/a;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    sget v4, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->d0:I

    .line 8
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v3, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const-string v4, "binding"

    if-eqz v3, :cond_1

    iget-object v3, v3, Lq7/h;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 10
    iget-object v5, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->a0:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;

    .line 11
    invoke-virtual {v3, v5}, Lcom/nike/adapt/ui/helper/BottomSheet;->v(Lcom/nike/adapt/ui/helper/BottomSheet$a;)Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 12
    iget-object v0, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/h;->h:Landroid/view/View;

    const-string v2, "binding.shadedBackground"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object v0, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    .line 14
    iput-boolean v1, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    .line 15
    invoke-virtual {v3}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    return-void

    .line 16
    :cond_0
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_1
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 18
    :pswitch_2
    iget-object v0, p0, Lx/a;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lo7/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    .line 19
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 21
    :pswitch_3
    iget-object v0, p0, Lx/a;->i:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lx/f;->a:Ljava/lang/Class;

    .line 23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v3, v7, :cond_2

    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_2

    .line 25
    :cond_2
    invoke-static {}, Lx/f;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lx/f;->f:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 26
    :cond_3
    sget-object v3, Lx/f;->e:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    sget-object v3, Lx/f;->d:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    goto :goto_1

    .line 27
    :cond_4
    :try_start_0
    sget-object v3, Lx/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 28
    :cond_5
    sget-object v7, Lx/f;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    .line 30
    new-instance v9, Lx/f$a;

    invoke-direct {v9, v0}, Lx/f$a;-><init>(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {v8, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    sget-object v10, Lx/f;->g:Landroid/os/Handler;

    new-instance v11, Lx/c;

    invoke-direct {v11, v9, v3}, Lx/c;-><init>(Lx/f$a;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-static {}, Lx/f;->a()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 34
    sget-object v11, Lx/f;->f:Ljava/lang/reflect/Method;

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v6

    aput-object v2, v12, v1

    aput-object v2, v12, v5

    const/4 v3, 0x3

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v12, v4

    const/4 v4, 0x5

    aput-object v2, v12, v4

    const/4 v4, 0x6

    aput-object v2, v12, v4

    const/4 v2, 0x7

    aput-object v3, v12, v2

    const/16 v2, 0x8

    aput-object v3, v12, v2

    .line 36
    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_0
    :try_start_2
    new-instance v2, Lx/d;

    invoke-direct {v2, v8, v9}, Lx/d;-><init>(Landroid/app/Application;Lx/f$a;)V

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lx/f;->g:Landroid/os/Handler;

    new-instance v3, Lx/d;

    invoke-direct {v3, v8, v9}, Lx/d;-><init>(Landroid/app/Application;Lx/f$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    move v1, v6

    :goto_2
    if-nez v1, :cond_8

    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_8
    return-void

    .line 41
    :goto_3
    iget-object v0, p0, Lx/a;->i:Ljava/lang/Object;

    check-cast v0, Lhc/k0;

    sget v3, Lhc/k0;->F:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x1f4

    .line 42
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :goto_4
    invoke-virtual {v0, v6}, Lhc/k0;->f(I)Lgc/r;

    move-result-object v3

    .line 45
    invoke-virtual {v0, v5}, Lhc/k0;->f(I)Lgc/r;

    move-result-object v7

    .line 46
    invoke-virtual {v0, v4}, Lhc/k0;->f(I)Lgc/r;

    move-result-object v4

    .line 47
    invoke-virtual {v0, v6, v3}, Lhc/k0;->d(ILgc/r;)Lkc/c;

    move-result-object v3

    .line 48
    invoke-virtual {v0, v1, v7}, Lhc/k0;->d(ILgc/r;)Lkc/c;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v5, v4}, Lhc/k0;->d(ILgc/r;)Lkc/c;

    move-result-object v4

    const-string v5, "FileTransfer"

    if-nez v3, :cond_9

    if-nez v1, :cond_9

    if-nez v4, :cond_9

    .line 50
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v3, "all slots appear valid, sending broadcast"

    invoke-interface {v1, v3, v2, v6, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 51
    iget-object v0, v0, Lhc/k0;->l:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_BIGFOOT_FIRMWARE_TRANSFER_CHECK_VALIDATED"

    invoke-virtual {v0, v1}, Lhc/e;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 52
    :cond_9
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v7

    const-string v8, "slot check failed, sending broadcast"

    invoke-interface {v7, v8, v2, v6, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    if-eqz v3, :cond_a

    .line 53
    invoke-virtual {v0, v3}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    .line 54
    invoke-virtual {v0, v1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 55
    :cond_b
    invoke-virtual {v0, v4}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 56
    :goto_5
    invoke-virtual {v0}, Lhc/k0;->e()V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
