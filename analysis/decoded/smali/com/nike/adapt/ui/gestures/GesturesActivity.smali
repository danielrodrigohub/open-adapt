.class public final Lcom/nike/adapt/ui/gestures/GesturesActivity;
.super Lp8/a;
.source "GesturesActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/gestures/GesturesActivity$a;
    }
.end annotation


# instance fields
.field public I:Lq7/f;

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Landroidx/appcompat/app/d;

.field public M:Landroidx/appcompat/app/d;

.field public final N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 2
    new-instance v7, Lu8/q;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x1e

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lu8/c;

    const v2, 0x7f0a005d

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->N:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->N:Ljava/util/ArrayList;

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
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lp8/a0;->a:Lp8/a0;

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 6
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GetGestureConfigResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetGestureConfigResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetGestureConfigResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetGestureConfigResult;->getGestureConfigResult()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    .line 6
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    const-string v0, "binding"

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/f;->b:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-boolean v2, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    if-eq p1, v2, :cond_f

    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/f;->b:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3
    instance-of v0, p1, Lcom/nike/adapt/adk/SetGestureConfigResult;

    if-eqz v0, :cond_f

    .line 8
    sget-object v0, Lcom/nike/adapt/ui/gestures/GesturesActivity$b;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity$b;

    .line 9
    check-cast p1, Lcom/nike/adapt/adk/SetGestureConfigResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetGestureConfigResult;->getGestureConfigurationResponse()Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    move-result-object v2

    sget-object v3, Lcom/nike/adapt/ui/gestures/GesturesActivity$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_e

    const/4 p1, 0x0

    const/16 v5, 0x8

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    goto/16 :goto_4

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->M:Landroidx/appcompat/app/d;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-ne v2, v4, :cond_5

    goto :goto_0

    :cond_5
    move v4, p1

    :goto_0
    if-nez v4, :cond_f

    .line 11
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesActivity;->p0()V

    .line 12
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->M:Landroidx/appcompat/app/d;

    if-nez p1, :cond_6

    .line 13
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    .line 14
    invoke-static {p0, p1, v0, v1, v5}, Ls9/y;->f(Landroid/app/Activity;ZLqd/l;Lqd/l;I)Landroidx/appcompat/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->M:Landroidx/appcompat/app/d;

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->M:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 16
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    if-nez p1, :cond_8

    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesFailedToEnableErrorPresented()V

    goto :goto_4

    .line 17
    :cond_8
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesFailedToDisableErrorPresented()V

    goto :goto_4

    .line 18
    :cond_9
    iget-object v2, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->L:Landroidx/appcompat/app/d;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-ne v2, v4, :cond_a

    goto :goto_2

    :cond_a
    move v4, p1

    :goto_2
    if-nez v4, :cond_f

    .line 19
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesActivity;->p0()V

    .line 20
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->L:Landroidx/appcompat/app/d;

    if-nez p1, :cond_b

    .line 21
    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    .line 22
    invoke-static {p0, p1, v0, v1, v5}, Ls9/y;->e(Landroid/app/Activity;ZLqd/l;Lqd/l;I)Landroidx/appcompat/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->L:Landroidx/appcompat/app/d;

    goto :goto_3

    .line 23
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->L:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 24
    :cond_c
    :goto_3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesCriticalBatteryErrorPresented()V

    .line 25
    iget-boolean v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesFailedToEnableErrorPresented()V

    goto :goto_4

    .line 26
    :cond_d
    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesFailedToDisableErrorPresented()V

    goto :goto_4

    .line 27
    :cond_e
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetGestureConfigResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-boolean v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    invoke-static {p1, v0, v1, v3, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureToggleUpdated$default(Lcom/nike/adapt/analytics/TrackManager;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0058

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p2, p1}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;-><init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;ZLjd/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    new-instance p1, Lh9/q;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lh9/q;-><init>(ZI)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {p1, v0, v2, v0}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialSelectedFromGesturesScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/f;->b:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    goto :goto_0

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 5
    :sswitch_2
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->j:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 6
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesUserSelectsSubmitFeedback()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0054 -> :sswitch_2
        0x7f0a0059 -> :sswitch_1
        0x7f0a005a -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0025

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0054

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    const v0, 0x7f0a0055

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v0, 0x7f0a0056

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v0, 0x7f0a0057

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    const v0, 0x7f0a0058

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Switch;

    if-eqz v6, :cond_6

    const v0, 0x7f0a0059

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_6

    const v0, 0x7f0a005a

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_6

    const v0, 0x7f0a005b

    .line 11
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v0, 0x7f0a005c

    .line 12
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    const v0, 0x7f0a005d

    .line 13
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_6

    const v0, 0x7f0a005e

    .line 14
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v0, 0x7f0a005f

    .line 15
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v0, 0x7f0a0489

    .line 16
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 17
    invoke-static {v2}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 18
    new-instance v0, Lq7/f;

    check-cast p1, Landroid/widget/LinearLayout;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lq7/f;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 19
    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    .line 20
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f1101f2

    const v0, 0x7f0a00e3

    .line 21
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 23
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v0, v2}, Lf/a;->m(Z)V

    .line 26
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 28
    sget-object v2, Lw8/h;->h:Lw8/h;

    .line 29
    new-instance v3, Lw8/g;

    invoke-direct {v3, p0}, Lw8/g;-><init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;)V

    .line 30
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v2, v3}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 31
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 33
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    const-string v0, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/f;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/f;->b:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/f;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/f;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/f;->c:Landroid/widget/Button;

    new-instance v0, Lw8/i;

    invoke-direct {v0, p0}, Lw8/i;-><init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 39
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesScreenPresented()V

    .line 40
    sget-object p1, Ls9/b;->a:Ls9/b;

    invoke-static {}, Ls9/b;->a()V

    return-void

    .line 41
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 47
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GesturesActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final p0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/f;->b:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-boolean v3, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->I:Lq7/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/f;->b:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
