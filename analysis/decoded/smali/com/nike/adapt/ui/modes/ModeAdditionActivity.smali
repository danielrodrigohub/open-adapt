.class public final Lcom/nike/adapt/ui/modes/ModeAdditionActivity;
.super Lp8/a;
.source "ModeAdditionActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/modes/ModeAdditionActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic P:I


# instance fields
.field public I:Lq7/o;

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Ld9/a;

.field public M:Ld9/a;

.field public final N:Lfd/d;

.field public final O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    sget-object v0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity$b;->h:Lcom/nike/adapt/ui/modes/ModeAdditionActivity$b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->N:Lfd/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 3
    new-instance v7, Lu8/q;

    new-instance v3, Lcom/nike/adapt/ui/modes/ModeAdditionActivity$c;

    invoke-direct {v3, p0}, Lcom/nike/adapt/ui/modes/ModeAdditionActivity$c;-><init>(Lcom/nike/adapt/ui/modes/ModeAdditionActivity;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x1c

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 4
    new-instance v1, Lu8/c;

    const v2, 0x7f0a02f3

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->O:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const-string v0, "s"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lyd/s;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    iget-object v1, v1, Lq7/o;->d:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void

    .line 5
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

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

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->O:Ljava/util/ArrayList;

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
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v3

    sget-object v4, Lp8/n;->a:Lp8/n;

    invoke-interface {v0, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lp8/x;->a:Lp8/x;

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 9
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

    const/4 v1, 0x1

    const-string v2, "rightModeSnapshot"

    const-string v3, "leftModeSnapshot"

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v8, Lcom/nike/adapt/ui/modes/ModeAdditionActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v8, v0

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result p1

    invoke-static {v0, v7, p1, v6, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    goto/16 :goto_1

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result p1

    invoke-static {v0, v7, p1, v6, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    goto/16 :goto_1

    :cond_4
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 7
    :cond_5
    instance-of v0, p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    if-eqz v0, :cond_a

    .line 8
    check-cast p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v8, Lcom/nike/adapt/ui/modes/ModeAdditionActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v8, v0

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_6

    goto/16 :goto_1

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result p1

    invoke-static {v0, v7, p1, v6, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    goto/16 :goto_1

    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result p1

    invoke-static {v0, v7, p1, v6, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    goto/16 :goto_1

    :cond_9
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 11
    :cond_a
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLedResult;

    if-eqz v0, :cond_f

    .line 12
    check-cast p1, Lcom/nike/adapt/adk/GetLedResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v5, Lcom/nike/adapt/ui/modes/ModeAdditionActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/16 v5, 0xd

    if-eq v0, v1, :cond_d

    if-eq v0, v4, :cond_b

    goto/16 :goto_1

    .line 13
    :cond_b
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    move-result-object p1

    invoke-static {v0, p1, v6, v6, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    goto/16 :goto_1

    :cond_c
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    move-result-object p1

    invoke-static {v0, p1, v6, v6, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    goto/16 :goto_1

    :cond_e
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 15
    :cond_f
    instance-of v0, p1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    const-string v1, "binding"

    if-eqz v0, :cond_15

    .line 16
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v4, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    if-eqz v4, :cond_14

    .line 17
    iget v3, v4, Ld9/a;->j:I

    .line 18
    iget-object v4, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    if-eqz v4, :cond_13

    .line 19
    iget v2, v4, Ld9/a;->j:I

    .line 20
    check-cast p1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SnapshotListUpdated;->getDevice()Lea/m;

    move-result-object v4

    invoke-static {v4}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v5, :cond_12

    iget-object v5, v5, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/nike/adapt/analytics/TrackManager;->isModeAdded(IIILjava/lang/String;)V

    .line 21
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v2, :cond_10

    iget-object v1, v2, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_10
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 22
    :cond_11
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SnapshotListUpdated;->getDevice()Lea/m;

    move-result-object p1

    const-string v1, "PARAM_MODE_UPDATED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->onBackPressed()V

    goto :goto_1

    .line 26
    :cond_12
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_13
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_14
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 27
    :cond_15
    instance-of p1, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz p1, :cond_17

    .line 28
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lq7/o;->a:Landroid/widget/FrameLayout;

    const-string v0, "binding.activityModeAdditionBackground"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto :goto_1

    :cond_16
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_17
    :goto_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 2
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "binding"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 7
    :sswitch_1
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 8
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 9
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v3, :cond_3

    iget-object v1, v3, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :sswitch_2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->p0()V

    goto :goto_0

    :sswitch_3
    const-string p1, "Mode Addition Save"

    .line 13
    sget-object v0, Lo7/x;->a:Lo7/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->onBackPressed()V

    :cond_6
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0063 -> :sswitch_3
        0x7f0a0065 -> :sswitch_2
        0x7f0a0487 -> :sswitch_1
        0x7f0a0488 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d002e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0062

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a

    const v0, 0x7f0a0063

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_a

    const v0, 0x7f0a0064

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_a

    const v0, 0x7f0a0065

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_a

    const v0, 0x7f0a0067

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_a

    const v0, 0x7f0a02ea

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_a

    const v0, 0x7f0a02ee

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_a

    .line 11
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0487

    .line 12
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_9

    const v2, 0x7f0a0488

    .line 13
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 14
    new-instance p1, Lq7/o;

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v3 .. v11}, Lq7/o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 15
    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    .line 16
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 17
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    const-string v0, "binding"

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/o;->a:Landroid/widget/FrameLayout;

    const-string v2, "binding.activityModeAdditionBackground"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 19
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 20
    sget-object v3, Lc9/d;->h:Lc9/d;

    .line 21
    new-instance v4, Lc9/c;

    invoke-direct {v4, p0}, Lc9/c;-><init>(Lcom/nike/adapt/ui/modes/ModeAdditionActivity;)V

    .line 22
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v2, v3, v4}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 23
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 24
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 25
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v2}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->N:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    .line 27
    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 28
    new-instance v2, Ld9/a;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-static {v4}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lba/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ld9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Lba/f;)V

    iput-object v2, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    .line 29
    new-instance v2, Ld9/a;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lba/f;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ld9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Lba/f;)V

    iput-object v2, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    .line 31
    new-instance v2, Lc9/a;

    invoke-direct {v2, p0, p1}, Lc9/a;-><init>(Lcom/nike/adapt/ui/modes/ModeAdditionActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 33
    new-instance v2, Lc9/b;

    invoke-direct {v2, p0}, Lc9/b;-><init>(Lcom/nike/adapt/ui/modes/ModeAdditionActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/o;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/o;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/o;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/o;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/o;->e:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_9
    move v0, v2

    .line 48
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lq7/o;->c:Landroid/widget/EditText;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    if-eqz p3, :cond_2

    const/16 p1, 0x11

    goto :goto_2

    :cond_2
    const p1, 0x800013

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    :cond_3
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final p0()V
    .locals 6

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: Mode Addition Cancel"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->onBackPressed()V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_6

    new-instance v3, Lp8/d;

    iget-object v4, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->I:Lq7/o;

    if-eqz v4, :cond_5

    iget-object v2, v4, Lq7/o;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->M:Ld9/a;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/nike/adapt/ui/modes/ModeAdditionActivity;->L:Ld9/a;

    if-eqz v5, :cond_3

    invoke-direct {v3, v2, v4, v5}, Lp8/d;-><init>(Ljava/lang/String;Ld9/a;Ld9/a;)V

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestModeTo(Lp8/l;)V

    return-void

    :cond_3
    const-string v0, "rightModeSnapshot"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "leftModeSnapshot"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
