.class public final Lm9/e;
.super Lp8/b;
.source "FirmwareCheckForUpdatesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/e$a;
    }
.end annotation


# static fields
.field public static final q0:Lm9/e$a;


# instance fields
.field public final h0:Ljava/lang/String;

.field public final i0:Ljava/lang/String;

.field public j0:Lm9/o$b;

.field public k0:Lcom/nike/adapt/adk/IDeviceController;

.field public l0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public m0:Lq7/t0;

.field public n0:Z

.field public o0:Lkotlinx/coroutines/Job;

.field public final p0:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/e$a;

    invoke-direct {v0}, Lm9/e$a;-><init>()V

    sput-object v0, Lm9/e;->q0:Lm9/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "FirmwareCheckForUpdatesFragment"

    .line 2
    iput-object v0, p0, Lm9/e;->h0:Ljava/lang/String;

    .line 3
    const-class v0, Lm9/e;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    check-cast v0, Lrd/g;

    invoke-virtual {v0}, Lrd/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/e;->i0:Ljava/lang/String;

    .line 4
    new-instance v0, Lm9/e$b;

    invoke-direct {v0, p0}, Lm9/e$b;-><init>(Lm9/e;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lm9/e;->p0:Lfd/h;

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

    iput-object p1, p0, Lm9/e;->j0:Lm9/o$b;

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

    iput-object p1, p0, Lm9/e;->l0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 7
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lm9/e;->k0:Lcom/nike/adapt/adk/IDeviceController;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lq7/t0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lq7/t0;

    move-result-object p1

    iput-object p1, p0, Lm9/e;->m0:Lq7/t0;

    .line 2
    iget-object p1, p1, Lq7/t0;->a:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public final U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lm9/e;->m0:Lq7/t0;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/t0;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lm9/e;->m0:Lq7/t0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/t0;->b:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 10
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
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lm9/e;->k0:Lcom/nike/adapt/adk/IDeviceController;

    const-string v2, "deviceController"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 9
    iget-object p1, p0, Lp8/b;->e0:Lt9/a;

    .line 10
    invoke-virtual {p1}, Lt9/a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lm9/e;->k0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_1

    sget-object v1, Lp8/k;->a:Lp8/k;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lm9/e;->o0:Lkotlinx/coroutines/Job;

    if-nez p1, :cond_4

    .line 13
    iget-object v4, p0, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 14
    new-instance v7, Lm9/g;

    invoke-direct {v7, p0, v3}, Lm9/g;-><init>(Lm9/e;Ljd/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lm9/e;->o0:Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_1
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 2
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
    instance-of p1, p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    if-eqz p1, :cond_4

    .line 4
    iget-boolean p1, p0, Lm9/e;->n0:Z

    if-nez p1, :cond_4

    .line 5
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getHasShoeUpdates()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Ls9/g;->a:Ls9/g;

    invoke-virtual {p1}, Ls9/g;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iput-boolean v0, p0, Lm9/e;->n0:Z

    .line 7
    iget-object p1, p0, Lm9/e;->o0:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    :cond_1
    sget-object p1, Ls9/z;->i:Ls9/z;

    invoke-virtual {p0, p1}, Lm9/e;->u0(Ls9/z;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lm9/e;->n0:Z

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lm9/e;->o0:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_3

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    :cond_3
    sget-object p1, Ls9/z;->h:Ls9/z;

    invoke-virtual {p0, p1}, Lm9/e;->u0(Ls9/z;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/e;->h0:Ljava/lang/String;

    return-object v0
.end method

.method public final t0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lm9/e;->p0:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final u0(Ls9/z;)V
    .locals 4

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lm9/e;->i0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateCrumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " launchNextFrag: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "listener"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lm9/e;->j0:Lm9/o$b;

    if-eqz p1, :cond_1

    sget-object v0, Ls9/z;->n:Ls9/z;

    invoke-interface {p1, v0}, Lm9/o$b;->G(Ls9/z;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    iget-object p1, p0, Lm9/e;->j0:Lm9/o$b;

    if-eqz p1, :cond_3

    sget-object v0, Ls9/z;->i:Ls9/z;

    invoke-interface {p1, v0}, Lm9/o$b;->G(Ls9/z;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_4
    iget-object p1, p0, Lm9/e;->j0:Lm9/o$b;

    if-eqz p1, :cond_5

    sget-object v0, Ls9/z;->h:Ls9/z;

    invoke-interface {p1, v0}, Lm9/o$b;->G(Ls9/z;)V

    :goto_0
    return-void

    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method
