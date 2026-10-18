.class public final Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;
.super Lp8/a;
.source "AutoLaceActivity.kt"

# interfaces
.implements Lg9/h$a;


# static fields
.field public static final synthetic U:I


# instance fields
.field public final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Lg9/h;

.field public M:Lt9/b;

.field public N:Landroidx/appcompat/app/d;

.field public O:Z

.field public P:Z

.field public final Q:Lt9/c;

.field public final R:Lt9/c;

.field public S:Z

.field public T:Lq7/i0;


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

    const v2, 0x7f0a00c5

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->I:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lt9/b;

    invoke-direct {v0}, Lt9/b;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->M:Lt9/b;

    .line 4
    new-instance v0, Lt9/c;

    invoke-direct {v0}, Lt9/c;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q:Lt9/c;

    .line 5
    new-instance v0, Lt9/c;

    invoke-direct {v0}, Lt9/c;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    return-void
.end method


# virtual methods
.method public final Q(ZLea/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Lg9/k;->a:Lg9/k;

    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-interface {v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v3

    invoke-virtual {p1, v3}, Lg9/k;->f(I)I

    move-result v3

    .line 3
    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result p2

    invoke-virtual {p1, p2}, Lg9/k;->f(I)I

    move-result p1

    .line 4
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v4, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->DEFAULT:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    invoke-virtual {p2, v4, v3, p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceFitSelected(Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;II)V

    .line 5
    iget-object p2, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p2, :cond_2

    sget-object v4, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v5, Lp8/f;

    invoke-direct {v5, v3}, Lp8/f;-><init>(I)V

    invoke-interface {p2, v4, v5}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 6
    iget-object p2, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p2, :cond_1

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lp8/f;

    invoke-direct {v2, p1}, Lp8/f;-><init>(I)V

    invoke-interface {p2, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 7
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    .line 8
    iput-boolean v0, p1, Lt9/c;->a:Z

    .line 9
    iput-boolean v0, p1, Lt9/c;->b:Z

    return-void

    .line 10
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez p2, :cond_4

    return-void

    .line 12
    :cond_4
    sget-object p1, Lg9/k;->a:Lg9/k;

    .line 13
    iget-object v3, p2, Lea/e;->k:Lea/c;

    .line 14
    iget-object v3, v3, Lea/c;->h:Lea/i;

    .line 15
    iget-object v3, v3, Lea/i;->h:Lea/h$c;

    .line 16
    iget v3, v3, Lea/h$c;->j:I

    .line 17
    invoke-virtual {p1, v3}, Lg9/k;->f(I)I

    move-result v3

    .line 18
    iget-object p2, p2, Lea/e;->l:Lea/c;

    .line 19
    iget-object p2, p2, Lea/c;->h:Lea/i;

    .line 20
    iget-object p2, p2, Lea/i;->h:Lea/h$c;

    .line 21
    iget p2, p2, Lea/h$c;->j:I

    .line 22
    invoke-virtual {p1, p2}, Lg9/k;->f(I)I

    move-result p1

    .line 23
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v4, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->CUSTOM:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    invoke-virtual {p2, v4, v3, p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceFitSelected(Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;II)V

    .line 24
    iget-object p2, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p2, :cond_6

    sget-object v4, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v5, Lp8/f;

    invoke-direct {v5, v3}, Lp8/f;-><init>(I)V

    invoke-interface {p2, v4, v5}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 25
    iget-object p2, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p2, :cond_5

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lp8/f;

    invoke-direct {v2, p1}, Lp8/f;-><init>(I)V

    invoke-interface {p2, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    .line 27
    iput-boolean v0, p1, Lt9/c;->a:Z

    .line 28
    iput-boolean v0, p1, Lt9/c;->b:Z

    return-void

    .line 29
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final S()V
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceEditSelected()V

    .line 2
    sget-object v0, Lh9/e;->c:Lh9/e;

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

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

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->I:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x17

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->P:Z

    .line 3
    iput-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->O:Z

    :cond_0
    return-void
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

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-boolean v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->P:Z

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->O:Z

    if-nez v3, :cond_3

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    sget-object v2, Lp8/e;->a:Lp8/e;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->L:Lg9/h;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    invoke-static {p1}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg9/h;->o(Ljava/util/List;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez v0, :cond_4

    .line 11
    iget-boolean v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->O:Z

    if-eqz v0, :cond_7

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->P:Z

    goto :goto_0

    :cond_5
    iput-boolean v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->O:Z

    .line 13
    :goto_0
    iget-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->P:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->O:Z

    if-nez p1, :cond_7

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1, v2}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q(ZLea/e;)V

    .line 15
    iput-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->S:Z

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
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
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->M:Lt9/b;

    invoke-virtual {v0, p1}, Lt9/b;->d(Lcom/nike/adapt/adk/DeviceControllerResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q:Lt9/c;

    check-cast p1, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v3

    invoke-virtual {v0, v3}, Lt9/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetFootPresenceSensorResult;->isEnabled()Z

    move-result p1

    .line 7
    sget-object v0, Lg9/k;->a:Lg9/k;

    .line 8
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {v0, v2, v1, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Lg9/k;->b:Lh8/c;

    invoke-virtual {v1}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lv7/k;

    .line 11
    iget-object v5, v5, Lv7/k;->a:Ljava/lang/String;

    .line 12
    invoke-static {v5, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    :cond_4
    check-cast v2, Lv7/k;

    if-nez v2, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    iput-boolean p1, v2, Lv7/k;->d:Z

    .line 14
    :goto_0
    sget-object v0, Lg9/k;->b:Lh8/c;

    invoke-virtual {v0, v1}, Lh8/c;->a(Ljava/util/ArrayList;)V

    .line 15
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceToggleUpdated(Z)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->s0(Z)V

    goto/16 :goto_2

    .line 17
    :cond_6
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAutoLaceResult;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 18
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->M:Lt9/b;

    .line 19
    iget v0, p1, Lt9/b;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget v4, p1, Lt9/b;->b:I

    if-eq v4, v2, :cond_7

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    if-eqz v1, :cond_c

    .line 20
    iget-object v1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->L:Lg9/h;

    if-eqz v1, :cond_c

    .line 21
    iget p1, p1, Lt9/b;->b:I

    .line 22
    invoke-virtual {v1, v0, p1}, Lg9/h;->p(II)V

    goto :goto_2

    .line 23
    :cond_8
    instance-of v0, p1, Lcom/nike/adapt/adk/SetAutoLaceResult;

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    check-cast p1, Lcom/nike/adapt/adk/SetAutoLaceResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetAutoLaceResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    invoke-virtual {v0, p1}, Lt9/c;->b(Z)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 25
    :cond_9
    iget-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->S:Z

    if-eqz p1, :cond_c

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lq7/i0;->g:Lcom/nike/adapt/ui/helper/NotificationToast;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    .line 27
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result p1

    .line 29
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1, v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceSaveFitSelected(II)V

    .line 30
    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceFitSelectedToastShown()V

    .line 31
    sget-object v1, Lg9/k;->a:Lg9/k;

    invoke-static {v0, p1}, Lg9/k;->e(II)V

    .line 32
    iget-object v1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->L:Lg9/h;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0, p1}, Lg9/h;->p(II)V

    .line 33
    :cond_a
    iput-boolean v3, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->S:Z

    goto :goto_2

    :cond_b
    const-string p1, "binding"

    .line 34
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_c
    :goto_2
    return-void
.end method

.method public final onAdaptDeviceControllerErrorResult(Lcom/nike/adapt/adk/DeviceControllerErrorResult;)V
    .locals 2
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "errorResult"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerErrorResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/nike/adapt/adk/ToggleAutoLaceError;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/ToggleAutoLaceError;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ToggleAutoLaceError;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->r0(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->r0(I)V

    .line 7
    :goto_0
    sget-object p1, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->d()Z

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/i0;->a:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->s0(Z)V

    .line 10
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q:Lt9/c;

    .line 11
    iput-boolean v1, p1, Lt9/c;->a:Z

    .line 12
    iput-boolean v1, p1, Lt9/c;->b:Z

    goto :goto_1

    :cond_3
    const-string p1, "binding"

    .line 13
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_4
    instance-of p1, p1, Lcom/nike/adapt/adk/SetAutoLaceError;

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    invoke-virtual {p1}, Lt9/c;->c()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x3

    .line 16
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->r0(I)V

    .line 17
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->R:Lt9/c;

    .line 18
    iput-boolean v1, p1, Lt9/c;->a:Z

    .line 19
    iput-boolean v1, p1, Lt9/c;->b:Z

    .line 20
    iput-boolean v1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->S:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairShoePreferenceBackSelected()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v7, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0046

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-virtual {v0, v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00c1

    .line 4
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v1, 0x7f0a00c2

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Switch;

    if-eqz v12, :cond_6

    const v1, 0x7f0a00c3

    .line 6
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_6

    const v1, 0x7f0a00c4

    .line 7
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_6

    const v1, 0x7f0a00c5

    .line 8
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v14, :cond_6

    const v1, 0x7f0a00c6

    .line 9
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v15, :cond_6

    const v1, 0x7f0a00cc

    .line 10
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_6

    const v1, 0x7f0a00cd

    .line 11
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v17, :cond_6

    const v1, 0x7f0a00ce

    .line 12
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v18, :cond_6

    const v1, 0x7f0a00d2

    .line 13
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v19, :cond_6

    const v1, 0x7f0a03c3

    .line 14
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_6

    const v1, 0x7f0a0489

    .line 15
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 16
    invoke-static {v2}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 17
    new-instance v1, Lq7/i0;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v10, v1

    move-object v11, v0

    invoke-direct/range {v10 .. v20}, Lq7/i0;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/Switch;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/nike/adapt/ui/helper/BottomSheet;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/nike/adapt/ui/helper/NotificationToast;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 18
    iput-object v1, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    .line 19
    invoke-virtual {v7, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const v0, 0x7f110280

    const v1, 0x7f0a00e3

    .line 20
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v7, v1}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7, v1}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lf/e;->i0()Lf/a;

    move-result-object v1

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1, v0}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v1, v10}, Lf/a;->m(Z)V

    .line 25
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 26
    iget-object v2, v7, Lp8/q;->B:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 27
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    iput-object v0, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 28
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 29
    iget-object v1, v7, Lp8/q;->B:Li8/d;

    .line 30
    check-cast v0, Lo7/f;

    invoke-virtual {v0, v7, v1}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    iput-object v0, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    .line 31
    sget-object v0, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->d()Z

    move-result v0

    .line 32
    iget-object v1, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    const-string v2, "binding"

    if-eqz v1, :cond_5

    iget-object v1, v1, Lq7/i0;->a:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 33
    invoke-virtual {v7, v0}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->s0(Z)V

    .line 34
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1, v0}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceScreenPresented(Z)V

    .line 35
    iget-object v0, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/i0;->a:Landroid/widget/Switch;

    new-instance v1, Lg9/b;

    invoke-direct {v1, v7}, Lg9/b;-><init>(Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object v0, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/i0;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lg9/a;

    invoke-direct {v1, v7, v9}, Lg9/a;-><init>(Lf/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/i0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 39
    new-instance v1, Landroidx/recyclerview/widget/p;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/p;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801c8

    sget-object v4, Ly/a;->a:Ljava/lang/Object;

    .line 41
    invoke-static {v2, v3}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 42
    iput-object v2, v1, Landroidx/recyclerview/widget/p;->a:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 44
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 45
    invoke-direct {v1, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 47
    new-instance v1, Lg9/h;

    invoke-direct {v1, v7}, Lg9/h;-><init>(Lg9/h$a;)V

    iput-object v1, v7, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->L:Lg9/h;

    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void

    .line 49
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 50
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 51
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 52
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 53
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    sget-object v0, Ls9/b;->a:Ls9/b;

    invoke-static {v0}, Ls9/b;->c(Ls9/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    new-instance v4, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;-><init>(Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;Ljd/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final p0(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "AUTOLACE_SET_ERROR"

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    const-string p1, "AUTOLACE_DISABLE_ERROR"

    goto :goto_0

    :cond_2
    const-string p1, "AUTOLACE_ENABLE_ERROR"

    :goto_0
    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final q0(I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    if-eqz p1, :cond_1

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    sget-object v3, Lp8/e;->a:Lp8/e;

    invoke-interface {p1, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-interface {p1, v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceSetFpsErrorPresented()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 7
    :cond_3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceDisableErrorPresented()V

    goto :goto_0

    .line 8
    :cond_4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceEnableErrorPresented()V

    :goto_0
    return-void

    .line 9
    :cond_5
    throw v0
.end method

.method public final r0(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->N:Landroidx/appcompat/app/d;

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Ls9/y;->a:Ls9/y;

    .line 3
    sget-object v0, Lg9/k;->a:Lg9/k;

    invoke-virtual {v0, p1}, Lg9/k;->c(I)I

    move-result v3

    .line 4
    invoke-virtual {v0, p1}, Lg9/k;->b(I)I

    move-result v4

    .line 5
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->p0(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    sget-object v6, Lg9/c;->h:Lg9/c;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ls9/y;->j(Landroid/app/Activity;IILjava/lang/String;Lqd/l;)Landroidx/appcompat/app/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->N:Landroidx/appcompat/app/d;

    .line 7
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->q0(I)V

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->N:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_5

    sget-object v1, Lg9/k;->a:Lg9/k;

    invoke-virtual {v1, p1}, Lg9/k;->c(I)I

    move-result v2

    invoke-virtual {v1, p1}, Lg9/k;->b(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->p0(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lg9/d;->h:Lg9/d;

    const-string v5, "action"

    .line 10
    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0a03e5

    .line 11
    invoke-virtual {v0, v5}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v2, 0x7f0a03e4

    .line 12
    invoke-virtual {v0, v2}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v1, 0x7f0a03e3

    .line 13
    invoke-virtual {v0, v1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const v5, 0x7f11015f

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_2
    invoke-virtual {v0, v1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    new-instance v2, Ls9/s;

    invoke-direct {v2, v3, v4, v0}, Ls9/s;-><init>(Ljava/lang/String;Lqd/l;Landroidx/appcompat/app/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->N:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 16
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->q0(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final s0(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/i0;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/i0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/i0;->e:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/i0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_3

    const p1, 0x7f06001f

    goto :goto_2

    :cond_3
    const p1, 0x7f0602a9

    :goto_2
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
