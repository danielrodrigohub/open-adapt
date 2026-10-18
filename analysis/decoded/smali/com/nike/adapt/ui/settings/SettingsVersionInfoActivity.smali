.class public final Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;
.super Lp8/a;
.source "SettingsVersionInfoActivity.kt"


# instance fields
.field public I:Lea/m;

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Lq7/b0;

.field public M:Lv7/n;

.field public final N:Ljava/util/ArrayList;
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

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 2
    new-instance v7, Lu8/q;

    new-instance v3, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity$a;

    invoke-direct {v3, p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity$a;-><init>(Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x1c

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 3
    new-instance v1, Lu8/c;

    const v2, 0x7f0a0079

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Landroidx/lifecycle/o;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->N:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->N:Ljava/util/ArrayList;

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
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->I:Lea/m;

    .line 7
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/b0;->a:Lp8/b0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GetSerialNumberResult;

    const-string v1, "number"

    const/4 v2, 0x0

    const-string v3, "binding"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetSerialNumberResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetSerialNumberResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v6, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    if-ne v0, v6, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetSerialNumberResult;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v6

    sget-object v7, Lv7/n;->j:Lv7/n;

    if-eq v6, v7, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget-object v6, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_4

    if-eqz v6, :cond_3

    iget-object v6, v6, Lq7/b0;->e:Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_4
    if-eqz v6, :cond_7

    iget-object v6, v6, Lq7/b0;->f:Landroid/widget/TextView;

    :goto_1
    const-string v7, "if (isLeft) binding.acti\u2026ttingsVersionInfoSubtext2"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const v7, 0x7f11010e

    goto :goto_2

    :cond_5
    const v7, 0x7f11010f

    :goto_2
    new-array v8, v4, [Landroid/util/Pair;

    .line 7
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v8, v2

    .line 8
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_6

    .line 10
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_6
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_7
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 13
    :cond_8
    :goto_3
    sget-object p1, Ls9/p;->a:Ls9/p;

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lq7/b0;->a:Landroid/widget/ImageView;

    const-string v6, "binding.activitySettingVersionModelIcon"

    invoke-static {v0, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->I:Lea/m;

    if-eqz v6, :cond_9

    .line 14
    iget-object v6, v6, Lea/m;->n:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v6, v5

    .line 15
    :goto_4
    invoke-virtual {p1, v0, v6, v4}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_f

    const/4 v6, 0x2

    if-eq v0, v6, :cond_a

    goto/16 :goto_7

    .line 17
    :cond_a
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->I:Lea/m;

    if-eqz v0, :cond_b

    .line 18
    iget-object v0, v0, Lea/m;->n:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v0, v5

    .line 19
    :goto_5
    invoke-virtual {p1, v0}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v0

    if-nez v0, :cond_c

    .line 20
    sget-object v0, Ls9/r;->h:Ls9/r;

    .line 21
    :cond_c
    invoke-virtual {p1, v0, v4}, Ls9/p;->e(Ls9/r;Z)I

    move-result v6

    .line 22
    invoke-virtual {p1, v0, v2}, Ls9/p;->e(Ls9/r;Z)I

    move-result p1

    .line 23
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v7

    invoke-interface {v7}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    new-array v8, v4, [Landroid/util/Pair;

    .line 25
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v8, v2

    .line 26
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Landroid/util/Pair;

    .line 27
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v2

    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lq7/b0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lq7/b0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_e
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 32
    :cond_f
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lq7/b0;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->I:Lea/m;

    if-eqz v1, :cond_10

    .line 33
    iget-object v1, v1, Lea/m;->n:Ljava/lang/String;

    goto :goto_6

    :cond_10
    move-object v1, v5

    .line 34
    :goto_6
    invoke-virtual {p1, v1}, Ls9/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lq7/b0;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->I:Lea/m;

    if-eqz v1, :cond_11

    .line 36
    iget-object v5, v1, Lea/m;->n:Ljava/lang/String;

    .line 37
    :cond_11
    invoke-virtual {p1, v5}, Ls9/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_7
    return-void

    :cond_12
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 38
    :cond_13
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_14
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v0

    sget-object v1, Lv7/n;->j:Lv7/n;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairModelInformationBackSelected()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v0

    sget-object v1, Lv7/n;->k:Lv7/n;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairFirmwareVersionBackSelected()V

    :cond_1
    :goto_0
    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    sget-object v0, Lv7/n;->i:Lv7/n;

    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d003e

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0073

    .line 4
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_14

    const v2, 0x7f0a0078

    .line 5
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_14

    const v2, 0x7f0a0079

    .line 6
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_14

    const v2, 0x7f0a007a

    .line 7
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_14

    const v2, 0x7f0a007b

    .line 8
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_14

    const v2, 0x7f0a007c

    .line 9
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_14

    const v2, 0x7f0a007d

    .line 10
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_14

    const v2, 0x7f0a0263

    .line 11
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_14

    const v2, 0x7f0a047e

    .line 12
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_14

    const v2, 0x7f0a0489

    .line 13
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 14
    invoke-static {v5}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 15
    new-instance v2, Lq7/b0;

    check-cast v1, Landroid/widget/LinearLayout;

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v13}, Lq7/b0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 16
    iput-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    .line 17
    invoke-virtual {p0, v1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 20
    sget-object v5, Lm9/e0;->h:Lm9/e0;

    .line 21
    new-instance v6, Lm9/d0;

    invoke-direct {v6, p0}, Lm9/d0;-><init>(Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;)V

    .line 22
    check-cast v1, Lo7/f;

    invoke-virtual {v1, p0, v2, v5, v6}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v1

    iput-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 23
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 25
    check-cast v1, Lo7/f;

    invoke-virtual {v1, p0, v2}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    iput-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "version_info_type"

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lv7/n;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.nike.adapt.model.SettingsNavigation.VersionInfo"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lv7/n;

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->M:Lv7/n;

    .line 29
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->N:Ljava/util/ArrayList;

    .line 31
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    const/4 p1, 0x1

    new-array v0, p1, [Landroid/util/Pair;

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "number"

    const-string v5, "1.29.3"

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    const v1, 0x7f11025e

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11007b

    new-array v5, p1, [Landroid/util/Pair;

    .line 34
    new-instance v6, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "year"

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v4

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f11006d

    new-array v6, p1, [Landroid/util/Pair;

    .line 36
    new-instance v7, Landroid/util/Pair;

    const-string v8, "2017062198"

    invoke-direct {v7, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    .line 37
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    const-string v7, "binding"

    if-eqz v5, :cond_c

    if-eq v5, p1, :cond_8

    const/4 v0, 0x2

    if-eq v5, v0, :cond_3

    goto/16 :goto_1

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/b0;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/b0;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/b0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/b0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_5
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 44
    :cond_6
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_7
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_8
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lq7/b0;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lq7/b0;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lq7/b0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_a
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_b
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_c
    iget-object v5, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v5, :cond_13

    iget-object v5, v5, Lq7/b0;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v5, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v5, :cond_12

    iget-object v5, v5, Lq7/b0;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lq7/b0;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lq7/b0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lq7/b0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->L:Lq7/b0;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lq7/b0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v0

    .line 58
    iget v0, v0, Lv7/n;->h:I

    const v1, 0x7f0a00e3

    .line 59
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v1}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 62
    invoke-virtual {v1, v0}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v1, p1}, Lf/a;->m(Z)V

    :cond_d
    return-void

    .line 64
    :cond_e
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_f
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_10
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_11
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_12
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_13
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 71
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->onBackPressed()V

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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->p0()Lv7/n;

    move-result-object v0

    const-string v1, "version_info_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final p0()Lv7/n;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVersionInfoActivity;->M:Lv7/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "state"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
