.class public final Lm9/o;
.super Lp8/b;
.source "FirmwareUpdateAvailableFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/o$a;,
        Lm9/o$b;
    }
.end annotation


# static fields
.field public static final p0:Lm9/o$a;


# instance fields
.field public final h0:Ljava/lang/String;

.field public i0:Lm9/o$b;

.field public j0:Lcom/nike/adapt/adk/IDeviceController;

.field public k0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public l0:Lq7/x0;

.field public m0:Lea/m;

.field public final n0:Lh8/c;

.field public final o0:Lm9/o$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/o$a;

    invoke-direct {v0}, Lm9/o$a;-><init>()V

    sput-object v0, Lm9/o;->p0:Lm9/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "FirmwareUpdateAvailableFragment"

    .line 2
    iput-object v0, p0, Lm9/o;->h0:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lm9/o;->n0:Lh8/c;

    .line 5
    new-instance v0, Lm9/o$c;

    invoke-direct {v0}, Lm9/o$c;-><init>()V

    iput-object v0, p0, Lm9/o;->o0:Lm9/o$c;

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lm9/o$b;

    iput-object p1, p0, Lm9/o;->i0:Lm9/o$b;

    return-void
.end method

.method public final H(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lp8/r;->H(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lp8/r;->d0:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    .line 4
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lm9/o;->k0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 7
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lm9/o;->j0:Lcom/nike/adapt/adk/IDeviceController;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lm9/o;->n0:Lh8/c;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lh8/c;->h0(Z)V

    const p3, 0x7f0d0080

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0103

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_4

    const p2, 0x7f0a0148

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    const p2, 0x7f0a01f9

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    const p2, 0x7f0a01fa

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a01fb

    .line 7
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    const p2, 0x7f0a0202

    .line 8
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0203

    .line 9
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0204

    .line 10
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0205

    .line 11
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0206

    .line 12
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0207

    .line 13
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0208

    .line 14
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0209

    .line 15
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a020a

    .line 16
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0a020b

    .line 17
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0418

    .line 18
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_4

    const p2, 0x7f0a047c

    .line 19
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 20
    new-instance p2, Lq7/x0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lq7/x0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 21
    iput-object p2, p0, Lm9/o;->l0:Lq7/x0;

    const-string p2, "binding.root"

    .line 22
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lm9/o;->l0:Lq7/x0;

    const-string p3, "binding"

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 24
    iget-object p2, p2, Lq7/x0;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.nike.adapt.ui.settings.FirmwareUpdateActivity"

    invoke-static {v2, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/util/Pair;

    .line 25
    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ls9/g;->a:Ls9/g;

    sget-object v7, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v7}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v8

    invoke-interface {v8}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-virtual {v7}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v9

    invoke-interface {v9}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v9

    .line 27
    invoke-virtual {v6, v8, v9}, Ls9/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "version"

    invoke-direct {v5, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v0

    const v5, 0x7f1101c0

    .line 28
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lq7/x0;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    new-array v4, v3, [Landroid/util/Pair;

    .line 31
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v7}, Lcom/nike/adapt/adk/InMemoryCache;->getUpdateToFirmwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v0

    .line 32
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lq7/x0;->d:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 35
    iget-object p2, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lq7/x0;->c:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-object p1

    :cond_0
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_1
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_2
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_3
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/x0;->a:Landroid/widget/Button;

    new-instance p2, Lo8/k;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lo8/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 4
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp8/b;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    iget-object v0, p0, Lp8/b;->e0:Lt9/a;

    .line 5
    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 6
    invoke-virtual {p0}, Lm9/o;->v0()V

    .line 7
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    iput-object v0, p0, Lm9/o;->m0:Lea/m;

    .line 10
    iget-object v0, p0, Lm9/o;->j0:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 11
    iget-object v0, p0, Lm9/o;->j0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lp8/g;->a:Lp8/g;

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 1
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm9/o;->v0()V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p1, p1, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lm9/o;->v0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/o;->h0:Ljava/lang/String;

    return-object v0
.end method

.method public final u0()V
    .locals 7

    .line 1
    sget-object v0, Ls9/g;->a:Ls9/g;

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-interface {v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-interface {v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v2, v3}, Ls9/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getUpdateToFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "FirmwareUpdateCrumb Pressed: Install : FW_STATS"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 6
    sput v0, Ls9/g;->b:I

    .line 7
    iget-object v0, p0, Lm9/o;->l0:Lq7/x0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/x0;->e:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/x0;->a:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lm9/o;->m0:Lea/m;

    if-eqz v3, :cond_1

    .line 11
    iget-object v4, p0, Lp8/b;->e0:Lt9/a;

    .line 12
    invoke-virtual {v4}, Lt9/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iget-object v2, v2, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    if-nez v2, :cond_0

    .line 14
    iget-object v2, p0, Lm9/o;->n0:Lh8/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 15
    invoke-virtual {v2}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "editor"

    .line 17
    invoke-static {v2, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "PREF_FIRMWARE_UPGRADE_START_TIME"

    .line 18
    invoke-interface {v2, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/nike/adapt/service/FirmwareUpdateService;->s:Lcom/nike/adapt/service/FirmwareUpdateService$a;

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/nike/adapt/service/FirmwareUpdateService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "FIRMWARE_UPDATE_SERVICE_PAIRED_DEVICE"

    .line 25
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0xca

    const/high16 v5, 0x4000000

    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "com.nike.adapt.PARAM_FIRMWARE_SERVICE_PI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    iget-object v3, p0, Lm9/o;->o0:Lm9/o$c;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 29
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 30
    iget-object v0, p0, Lm9/o;->i0:Lm9/o$b;

    if-eqz v0, :cond_2

    sget-object v1, Ls9/z;->m:Ls9/z;

    invoke-interface {v0, v1}, Lm9/o$b;->G(Ls9/z;)V

    goto :goto_1

    :cond_2
    const-string v0, "listener"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void

    .line 31
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final v0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp8/b;->e0:Lt9/a;

    .line 2
    invoke-virtual {v0}, Lt9/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Ls9/g;->a:Ls9/g;

    .line 3
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v4

    const/16 v5, 0x1e

    const/4 v6, 0x1

    if-le v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v3

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    if-le v0, v5, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/x0;->a:Landroid/widget/Button;

    .line 6
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "FirmwareUpdateCrumb Update Available : FW_STATS"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    iget-object v0, p0, Lm9/o;->l0:Lq7/x0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/x0;->a:Landroid/widget/Button;

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x3e19999a

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    return-void

    .line 15
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
