.class public final Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;
.super Lp8/a;
.source "GesturesTutorialActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic d0:I


# instance fields
.field public I:Lq7/h;

.field public J:Lq7/d1;

.field public K:Lq7/e1;

.field public L:Lcom/nike/adapt/adk/IDeviceController;

.field public M:Lcom/nike/adapt/adk/IAdaptRequester;

.field public N:Ln3/k0;

.field public O:Landroidx/appcompat/app/d;

.field public P:Landroidx/appcompat/app/d;

.field public Q:I

.field public final R:Landroid/os/Handler;

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public final Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public final a0:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;

.field public final b0:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;

.field public final c0:Ly0/t;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->R:Landroid/os/Handler;

    .line 4
    iput-boolean v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Y:Z

    const/4 v1, 0x2

    new-array v1, v1, [Lu8/g;

    .line 5
    new-instance v8, Lu8/q;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x1e

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    new-instance v2, Lu8/c;

    const v3, 0x7f0a0236

    invoke-direct {v2, v3, p0}, Lu8/c;-><init>(ILf/e;)V

    aput-object v2, v1, v0

    invoke-static {v1}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Z:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;-><init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->a0:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;

    .line 7
    new-instance v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;-><init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->b0:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;

    .line 8
    new-instance v0, Ly0/t;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ly0/t;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->c0:Ly0/t;

    return-void
.end method

.method public static final p0(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->T:Z

    .line 2
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-interface {v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v1

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, "deviceController"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_2

    sget-object v5, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v6, Lp8/d0;

    const/16 v7, 0x14

    invoke-direct {v6, v7, v0}, Lp8/d0;-><init>(II)V

    invoke-interface {v1, v5, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 4
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v1, v3, v0, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureActionsSheetOneStart$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_3
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v1, v3, v0, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureActionsSheetOneStart$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    :goto_2
    iget-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_5

    sget-object v5, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v6, Lp8/f0;

    invoke-direct {v6, v4}, Lp8/f0;-><init>(Z)V

    invoke-interface {v1, v5, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->t0(Z)V

    .line 10
    iget-object p0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p0, :cond_4

    new-instance v1, Lp8/g0;

    invoke-direct {v1, v3, v0, v3}, Lp8/g0;-><init>(Ljava/util/List;ILrd/h;)V

    invoke-interface {p0, v5, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final c()Landroidx/appcompat/app/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->O:Landroidx/appcompat/app/d;

    return-object v0
.end method

.method public final h(Landroidx/appcompat/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->P:Landroidx/appcompat/app/d;

    return-void
.end method

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

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Z:Ljava/util/ArrayList;

    return-object v0
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
    iget-object v0, p0, Lp8/a;->F:Lt9/a;

    .line 4
    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 5
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 6
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v3, Lp8/n;->a:Lp8/n;

    invoke-interface {v0, p1, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 10
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->T:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/g0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v2}, Lp8/g0;-><init>(Ljava/util/List;ILrd/h;)V

    invoke-interface {p1, v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 12
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_1

    new-instance v1, Lp8/f0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lp8/f0;-><init>(Z)V

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/h;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    new-instance v0, Lx/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lx/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 4
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getGestureNotification()Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->getGestureConfiguration()Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->getAction()Lcom/nike/adapt/adk/model/AdaptGestureAction;

    move-result-object v2

    sget-object v3, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNLACE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->getClassification()Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    move-result-object v0

    sget-object v2, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    if-ne v0, v2, :cond_8

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->U:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->V:Z

    .line 7
    :goto_0
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->U:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->V:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->v0(ZZ)V

    goto :goto_2

    .line 8
    :cond_3
    instance-of v0, p1, Lcom/nike/adapt/adk/SetGestureConfigResult;

    if-eqz v0, :cond_8

    .line 9
    check-cast p1, Lcom/nike/adapt/adk/SetGestureConfigResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetGestureConfigResult;->getGestureConfigurationResponse()Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->W:Z

    invoke-static {p0, p0, p1}, Lp4/h;->u(Lw8/a;Landroid/app/Activity;Z)V

    goto :goto_2

    .line 11
    :cond_5
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->W:Z

    .line 12
    invoke-static {p0, p0, p1}, Lp4/h;->t(Lw8/a;Landroid/app/Activity;Z)V

    goto :goto_2

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/h;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/helper/BottomSheet;->t()V

    goto :goto_2

    :cond_7
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_8
    :goto_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/h;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 6
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget v2, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    const-string v3, "<this>"

    .line 7
    invoke-static {v2, v3}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 8
    invoke-static {v2}, Lq/g;->a(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 9
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :pswitch_0
    const-string v2, "Both Gesture Done"

    goto :goto_0

    :pswitch_1
    const-string v2, "Repeat On Other Shoe"

    goto :goto_0

    :pswitch_2
    const-string v2, "Failure"

    goto :goto_0

    :pswitch_3
    const-string v2, "Tips"

    goto :goto_0

    :pswitch_4
    const-string v2, "Learn"

    :goto_0
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v1, v2, v3, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialExited$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const-string v0, "binding"

    .line 12
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0101

    if-ne p1, v0, :cond_10

    .line 2
    iget p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->u0()V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const-string v4, "binding"

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 6
    iget-object p1, p1, Ly1/e0;->i:Lk2/d;

    invoke-virtual {p1}, Lk2/a;->removeAllListeners()V

    .line 7
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    iget-object v5, p1, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v6, Lcom/airbnb/lottie/LottieAnimationView$c;->m:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 10
    iget-object v5, p1, Ly1/e0;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v5, p1, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v5}, Lk2/d;->cancel()V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 13
    iput v2, p1, Ly1/e0;->m:I

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0xfa

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Li8/f;

    invoke-direct {v4, p0, v0}, Li8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_2
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v4, 0x7

    if-ne p1, v4, :cond_5

    const/4 p1, -0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    :cond_5
    :goto_0
    iget p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    const-string v4, "state"

    .line 22
    invoke-static {p1, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 23
    invoke-static {p1}, Lq/g;->a(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x6

    if-eqz v4, :cond_9

    if-eq v4, v2, :cond_8

    if-eq v4, v0, :cond_7

    if-eq v4, v5, :cond_7

    if-eq v4, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x3

    goto :goto_1

    :cond_7
    move p1, v6

    goto :goto_1

    :cond_8
    move p1, v2

    goto :goto_1

    :cond_9
    move p1, v0

    .line 24
    :goto_1
    iput p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 25
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    .line 26
    iget p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_f

    if-eq p1, v2, :cond_e

    if-eq p1, v0, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v6, :cond_a

    goto :goto_2

    .line 27
    :cond_a
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v3, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialDoneSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 28
    :cond_b
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const-string v0, "Heel Tap Unlace"

    invoke-static {p1, v3, v0, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureMoreTips$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    invoke-static {p1, v3, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTipScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 30
    :cond_c
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v3, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialRepeatSecondShoe$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_d
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v3, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTipContinueSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_e
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v3, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTipContinueSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 33
    :cond_f
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const-string v0, "Learn"

    invoke-static {p1, v3, v0, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureMoreTips$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 34
    invoke-static {p1, v3, v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTipScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_10
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0027

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3
    invoke-virtual {v0, v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0053

    .line 4
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/nike/adapt/ui/helper/BottomSheet;

    const-string v2, "Missing required view with ID: "

    if-eqz v13, :cond_c

    const v1, 0x7f0a0101

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_c

    const v1, 0x7f0a0233

    .line 6
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v15, :cond_c

    const v1, 0x7f0a0234

    .line 7
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/FrameLayout;

    if-eqz v16, :cond_c

    const v1, 0x7f0a0235

    .line 8
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_c

    const v1, 0x7f0a0236

    .line 9
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_c

    const v1, 0x7f0a0239

    .line 10
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v17, :cond_c

    const v1, 0x7f0a024d

    .line 11
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v3, :cond_c

    const v1, 0x7f0a0270

    .line 12
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c

    const v1, 0x7f0a0169

    .line 13
    invoke-static {v3, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_b

    const v1, 0x7f0a016a

    .line 14
    invoke-static {v3, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_b

    .line 15
    check-cast v3, Landroid/widget/LinearLayout;

    .line 16
    new-instance v1, Lq7/d1;

    invoke-direct {v1, v4, v5, v3}, Lq7/d1;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    const v3, 0x7f0a0271

    .line 17
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 18
    move-object v3, v4

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f0a044e

    .line 19
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    const v5, 0x7f0a044f

    .line 20
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_9

    const v5, 0x7f0a0450

    .line 21
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    const v5, 0x7f0a0451

    .line 22
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    const v5, 0x7f0a0452

    .line 23
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    const v5, 0x7f0a0453

    .line 24
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    const v5, 0x7f0a0455

    .line 25
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    .line 26
    new-instance v4, Lq7/e1;

    invoke-direct {v4, v3, v6, v11, v12}, Lq7/e1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v3, 0x7f0a03c3

    .line 27
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_a

    const v3, 0x7f0a0481

    .line 28
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/widget/FrameLayout;

    if-eqz v21, :cond_a

    .line 29
    new-instance v2, Lq7/h;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v11, v2

    move-object v12, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v21}, Lq7/h;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/nike/adapt/ui/helper/BottomSheet;Landroid/widget/Button;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/FrameLayout;Lcom/google/android/exoplayer2/ui/PlayerView;Lq7/d1;Lq7/e1;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 30
    iput-object v2, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    .line 31
    invoke-virtual {v7, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 32
    iget-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const-string v11, "binding"

    if-eqz v0, :cond_8

    iget-object v0, v0, Lq7/h;->f:Lq7/d1;

    const-string v1, "binding.itemGestureTutorialDescInclude"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->J:Lq7/d1;

    .line 33
    iget-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/h;->g:Lq7/e1;

    const-string v1, "binding.itemGestureTutorialTipsInclude"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->K:Lq7/e1;

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    const-string v1, "extra_gesture_tutorial_accessed_from_intro"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    iput-boolean v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->W:Z

    .line 35
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 36
    iget-object v2, v7, Lp8/q;->B:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 37
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    iput-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->M:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 38
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 39
    iget-object v1, v7, Lp8/q;->B:Li8/d;

    .line 40
    check-cast v0, Lo7/f;

    invoke-virtual {v0, v7, v1}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    iput-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    const-string v0, "PREVIOUS_GESTURE_DOUBLE_TAP_STATE"

    if-eqz v8, :cond_1

    .line 41
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    :goto_1
    iput-boolean v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Y:Z

    .line 44
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v0, v9, v12, v9}, Lcom/nike/adapt/analytics/TrackManager;->gestureLearnPrompt$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    .line 46
    new-instance v0, Ln3/r$b;

    invoke-direct {v0, v7}, Ln3/r$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ln3/r$b;->a()Ln3/r;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ln3/k0;

    iput-object v1, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->N:Ln3/k0;

    .line 47
    invoke-virtual {v1, v10}, Ln3/k0;->E(I)V

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Ln3/k0;->A0(F)V

    .line 49
    invoke-virtual {v1, v12}, Ln3/k0;->i(Z)V

    .line 50
    new-instance v2, Ll5/g0;

    invoke-direct {v2, v7}, Ll5/g0;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v3, Ll5/m;

    const v4, 0x7f100003

    invoke-static {v4}, Ll5/g0;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Ll5/m;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Ll5/g0;->l(Ll5/m;)J

    .line 52
    iget-object v2, v2, Ll5/g0;->g:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 53
    invoke-static {v2}, Ln3/y0;->c(Landroid/net/Uri;)Ln3/y0;

    move-result-object v2

    .line 54
    move-object v3, v0

    check-cast v3, Ln3/e;

    invoke-virtual {v3, v2}, Ln3/e;->f0(Ln3/y0;)V

    .line 55
    invoke-virtual {v1}, Ln3/k0;->b()V

    .line 56
    :cond_2
    new-instance v2, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;

    invoke-direct {v2, v7, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;-><init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;Ln3/r;)V

    invoke-static {v0, v2}, Lp4/h;->x(Ln3/r;Lqd/a;)V

    .line 57
    new-instance v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$e;

    invoke-direct {v0, v7}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$e;-><init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V

    invoke-virtual {v1, v0}, Ln3/k0;->a0(Ln3/o1$c;)V

    .line 58
    iget-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/h;->e:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->N:Ln3/k0;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Ln3/o1;)V

    .line 59
    iget-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/h;->e:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    .line 60
    iget-object v0, v7, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/h;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    .line 61
    :cond_4
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    :cond_5
    const-string v0, "exoPlayer"

    .line 62
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    :cond_6
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    .line 63
    :cond_7
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    .line 64
    :cond_8
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    .line 65
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move v1, v3

    goto :goto_2

    .line 67
    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_c
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->N:Ln3/k0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ln3/k0;->i(Z)V

    .line 3
    invoke-virtual {v0}, Ln3/k0;->B0()V

    .line 4
    invoke-virtual {v0}, Ln3/k0;->t0()V

    .line 5
    invoke-super {p0}, Lf/e;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "exoPlayer"

    .line 6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onPause()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->t0(Z)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Y:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    const-string v2, "deviceController"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v4, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v5, Lp8/g0;

    invoke-direct {v5, v0}, Lp8/g0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4, v5}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Lp8/f0;

    sget-object v2, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->d()Z

    move-result v2

    invoke-direct {v1, v2}, Lp8/f0;-><init>(Z)V

    .line 9
    invoke-interface {v0, v4, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 10
    invoke-super {p0}, Lp8/q;->onPause()V

    return-void

    .line 11
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPersistentState"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2
    iget-boolean p2, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Y:Z

    const-string v0, "PREVIOUS_GESTURE_DOUBLE_TAP_STATE"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/a;->onStart()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->t0(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 3
    invoke-super {p0}, Lp8/a;->onStop()V

    return-void
.end method

.method public final q0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    iget-object v1, v1, Lq7/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq7/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lq7/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/k1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/k1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 7
    :cond_0
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final r0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->N:Ln3/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln3/k0;->i(Z)V

    return-void

    :cond_0
    const-string p1, "exoPlayer"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Landroidx/appcompat/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->O:Landroidx/appcompat/app/d;

    return-void
.end method

.method public final s0()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->J:Lq7/d1;

    const/4 v1, 0x0

    const-string v2, "bindingDesc"

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lq7/d1;->c:Landroid/widget/LinearLayout;

    .line 2
    iget v3, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    const-string v4, "state"

    .line 3
    invoke-static {v3, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 4
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eqz v3, :cond_0

    if-eq v3, v9, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v3, v7, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->K:Lq7/e1;

    const-string v3, "bindingTips"

    if-eqz v0, :cond_19

    iget-object v0, v0, Lq7/e1;->a:Landroid/widget/LinearLayout;

    .line 7
    iget v10, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 8
    invoke-static {v10, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 9
    invoke-static {v10}, Lq/g;->a(I)I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v13, :cond_1

    if-eq v10, v12, :cond_1

    if-eq v10, v11, :cond_1

    move v10, v5

    goto :goto_1

    :cond_1
    move v10, v6

    .line 10
    :goto_1
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const-string v10, "binding"

    if-eqz v0, :cond_18

    iget-object v0, v0, Lq7/h;->b:Landroid/widget/Button;

    iget v14, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 12
    invoke-static {v14, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 13
    invoke-static {v14}, Lq/g;->a(I)I

    move-result v14

    if-eqz v14, :cond_2

    if-eq v14, v13, :cond_2

    if-eq v14, v12, :cond_2

    if-eq v14, v9, :cond_2

    if-eq v14, v8, :cond_2

    if-eq v14, v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    .line 14
    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lq7/h;->b:Landroid/widget/Button;

    iget v5, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 16
    invoke-static {v5, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 17
    invoke-static {v5}, Lq/g;->a(I)I

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_5

    if-eq v5, v13, :cond_4

    if-eq v5, v12, :cond_4

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    const v5, 0x7f110093

    .line 18
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const v5, 0x7f11007a

    .line 19
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    const v5, 0x7f110253

    .line 20
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    .line 21
    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->K:Lq7/e1;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lq7/e1;->d:Landroid/widget/TextView;

    iget v5, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 23
    invoke-static {v5, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 24
    invoke-static {v5}, Lq/g;->a(I)I

    move-result v5

    if-eq v5, v13, :cond_7

    if-eq v5, v12, :cond_7

    if-eq v5, v11, :cond_6

    move-object v5, v6

    goto :goto_4

    :cond_6
    const v5, 0x7f110258

    .line 25
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const v5, 0x7f110259

    .line 26
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    .line 27
    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->K:Lq7/e1;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lq7/e1;->b:Landroid/widget/TextView;

    iget v5, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 29
    invoke-static {v5, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 30
    invoke-static {v5}, Lq/g;->a(I)I

    move-result v5

    if-eq v5, v13, :cond_8

    if-eq v5, v12, :cond_8

    if-eq v5, v11, :cond_8

    move-object v5, v6

    goto :goto_5

    :cond_8
    const v5, 0x7f11025a

    .line 31
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    .line 32
    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->K:Lq7/e1;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lq7/e1;->c:Landroid/widget/TextView;

    iget v3, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 34
    invoke-static {v3, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 35
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    if-eq v3, v13, :cond_9

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_9

    move-object v3, v6

    goto :goto_6

    :cond_9
    const v3, 0x7f11025b

    .line 36
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->J:Lq7/d1;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lq7/d1;->a:Landroid/widget/TextView;

    iget v3, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 39
    invoke-static {v3, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 40
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    if-eqz v3, :cond_d

    if-eq v3, v9, :cond_c

    if-eq v3, v8, :cond_b

    if-eq v3, v7, :cond_a

    move-object v3, v6

    goto :goto_7

    :cond_a
    const v3, 0x7f110256

    .line 41
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_b
    const v3, 0x7f110257

    .line 42
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    const v3, 0x7f110251

    .line 43
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_d
    const v3, 0x7f110252

    .line 44
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->J:Lq7/d1;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lq7/d1;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 47
    invoke-static {v1, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 48
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    if-eqz v1, :cond_11

    if-eq v1, v9, :cond_10

    if-eq v1, v8, :cond_f

    if-eq v1, v7, :cond_e

    goto :goto_8

    :cond_e
    const v1, 0x7f110255

    .line 49
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_f
    const v1, 0x7f110254

    .line 50
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_10
    const v1, 0x7f110250

    .line 51
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_11
    const v1, 0x7f11024f

    .line 52
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    .line 53
    :goto_8
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_12
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_13
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_14
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_15
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_16
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_17
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_18
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_19
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final t0(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->X:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->X:Z

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->c0:Ly0/t;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->X:Z

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->c0:Ly0/t;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u()Landroidx/appcompat/app/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->P:Landroidx/appcompat/app/d;

    return-object v0
.end method

.method public final u0()V
    .locals 4

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/h;->i:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/h;->i:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/h;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ll8/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ll8/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 6
    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final v0(ZZ)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->t0(Z)V

    const/4 p1, 0x7

    .line 2
    iput p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->q0()V

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    .line 5
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v1, v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureSecondShoeSuccess$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    invoke-static {p1, v1, v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialFlowComplete$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x5

    .line 7
    iput p2, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->q0()V

    .line 9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->t0(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->t0(Z)V

    .line 12
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v1, v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureFirstShoeSuccess$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_1
    iget p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->S:I

    add-int/lit8 v6, p1, 0x1

    iput v6, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->S:I

    .line 14
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const/4 v3, 0x0

    .line 15
    iget-boolean p2, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->U:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->V:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x2

    move v4, p2

    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, " Failure Notification"

    move-object v2, p1

    .line 16
    invoke-static/range {v2 .. v8}, Lcom/nike/adapt/analytics/TrackManager;->gestureFailureScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)V

    .line 17
    invoke-static {p1, v1, v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureGenericFailure$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p1, 0x4

    .line 18
    iput p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    .line 19
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->s0()V

    :goto_2
    return-void
.end method
