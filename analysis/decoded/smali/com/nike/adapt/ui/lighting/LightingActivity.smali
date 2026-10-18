.class public final Lcom/nike/adapt/ui/lighting/LightingActivity;
.super Lp8/a;
.source "LightingActivity.kt"

# interfaces
.implements Ly8/d$b;
.implements Landroidx/viewpager/widget/ViewPager$i;
.implements Lx8/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/lighting/LightingActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic T:I


# instance fields
.field public I:Lq7/k;

.field public J:Ly8/c;

.field public K:Lcom/nike/adapt/adk/IDeviceController;

.field public L:Lcom/nike/adapt/adk/IAdaptRequester;

.field public final M:Lx8/s;

.field public N:Ls9/a;

.field public O:Z

.field public P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public Q:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public final R:Lfd/d;

.field public final S:Ljava/util/ArrayList;
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
    new-instance v0, Lx8/s;

    invoke-direct {v0, p0}, Lx8/s;-><init>(Lx8/s$a;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    .line 3
    new-instance v0, Ls9/a;

    invoke-direct {v0}, Ls9/a;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->N:Ls9/a;

    .line 4
    sget-object v0, Lcom/nike/adapt/ui/lighting/LightingActivity$b;->h:Lcom/nike/adapt/ui/lighting/LightingActivity$b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->R:Lfd/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 5
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

    const v2, 0x7f0a0060

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->S:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final D(IF)V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->N:Ls9/a;

    invoke-virtual {p1}, Ls9/a;->b()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->pulsingLightsTurnedOff()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void
.end method

.method public final f0(Landroidx/fragment/app/m;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ly8/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ly8/d;

    .line 3
    iput-object p0, p1, Ly8/d;->c0:Ly8/d$b;

    :cond_0
    return-void
.end method

.method public final i(I)V
    .locals 0

    return-void
.end method

.method public final n(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v1, Ls9/g;->a:Ls9/g;

    invoke-virtual {v1}, Ls9/g;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v1

    iget-object v1, v1, Lq7/k;->e:Lcom/nike/adapt/ui/helper/BottomSheet;

    sget-object v2, Lx8/q;->b:Lx8/q$e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object v2, v1, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v2

    iget-object v2, v2, Lq7/k;->j:Landroid/view/View;

    const-string v3, "binding.shadedBackground"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v2, v1, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    .line 6
    iput-boolean v0, v1, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    .line 7
    invoke-virtual {v1}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    :cond_0
    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->lightingSingleColorScreenViewed()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->lightingDuoColorScreenViewed()V

    :goto_0
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

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->S:Ljava/util/ArrayList;

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

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    sget-object v2, Lp8/y;->a:Lp8/y;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    sget-object v2, Lp8/x;->a:Lp8/x;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v1, Lp8/w;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 10
    sget-object p1, Lr7/g;->a:Lr7/g;

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v1

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lr7/g;->c(ZZ)V

    :cond_1
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 7
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
    iget-object v0, p0, Lp8/a;->G:Lt9/b;

    .line 4
    invoke-virtual {v0, p1}, Lt9/b;->d(Lcom/nike/adapt/adk/DeviceControllerResult;)V

    .line 5
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLedResult;

    const-string v1, "lightingAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 6
    check-cast p1, Lcom/nike/adapt/adk/GetLedResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->Q:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p1, :cond_11

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->Q:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz v0, :cond_11

    .line 9
    sget-object v3, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v3, p1, v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->q0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 11
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    invoke-virtual {v0, p1}, Lx8/s;->d(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 12
    sget-object v0, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v3, "binding.activityLightingParent"

    invoke-static {v0, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 13
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->J:Ly8/c;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v1, p1}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly8/c;->k(Lcom/nike/adapt/adk/model/ShoeColor;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->P:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 16
    iput-object v2, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->Q:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto/16 :goto_5

    .line 17
    :cond_4
    instance-of v0, p1, Lcom/nike/adapt/adk/SetLedResult;

    const-string v3, "binding.transitionToView"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 18
    iget-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->O:Z

    if-eqz v0, :cond_11

    .line 19
    iget-object v0, p0, Lp8/a;->G:Lt9/b;

    .line 20
    iget-object v6, v0, Lt9/b;->g:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz v6, :cond_5

    iget-object v0, v0, Lt9/b;->h:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    if-eqz v4, :cond_11

    .line 21
    sget-object v0, Lcom/nike/adapt/adk/model/LightColor;->Companion:Lcom/nike/adapt/adk/model/LightColor$Companion;

    check-cast p1, Lcom/nike/adapt/adk/SetLedResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nike/adapt/adk/model/LightColor$Companion;->valueOf(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v0

    .line 22
    new-instance v4, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    sget-object v6, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-direct {v4, v5, v0, v6}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    .line 23
    sget-object v0, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v0, v4}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->q0()Lh8/a;

    move-result-object v5

    invoke-interface {v5, v4}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 25
    sget-object v5, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v5}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v5

    sget-object v6, Lz8/a;->m:Lz8/a;

    if-eq v5, v6, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v6, Lp8/j0;->a:Lp8/j0;

    invoke-interface {v5, p1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_3

    .line 27
    :cond_6
    iget-object v5, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->N:Ls9/a;

    invoke-virtual {v5}, Ls9/a;->b()V

    .line 28
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v6, Lp8/j0;->a:Lp8/j0;

    invoke-interface {v5, p1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 29
    :goto_3
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/ShoeColor;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/lighting/LightingActivity;->p0(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    if-nez p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->J:Ly8/c;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Ly8/c;->k(Lcom/nike/adapt/adk/model/ShoeColor;)V

    goto :goto_4

    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_8
    :goto_4
    sget-object p1, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object p1

    iget-object p1, p1, Lq7/k;->k:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto/16 :goto_5

    .line 33
    :cond_9
    instance-of v0, p1, Lcom/nike/adapt/adk/GetCurrentFirmwareVersionsResult;

    if-eqz v0, :cond_b

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->J:Ly8/c;

    if-eqz p1, :cond_a

    sget-object v0, Ls9/g;->a:Ls9/g;

    invoke-virtual {v0}, Ls9/g;->d()Z

    move-result v0

    .line 35
    iget-object p1, p1, Ly8/c;->h:Ly8/d;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v0}, Ly8/d;->q0(Z)V

    goto/16 :goto_5

    .line 36
    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_b
    instance-of v0, p1, Lcom/nike/adapt/adk/StartAnimationResult;

    if-eqz v0, :cond_c

    .line 38
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lx8/s;->e(I)V

    goto/16 :goto_5

    .line 39
    :cond_c
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationResult;

    if-eqz v0, :cond_d

    .line 40
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->N:Ls9/a;

    check-cast p1, Lcom/nike/adapt/adk/StopAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/StopAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ls9/a;->c(Lcom/nike/adapt/adk/Shoe;Lx8/s;Lcom/nike/adapt/adk/IDeviceController;)Z

    .line 41
    iget-boolean p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->O:Z

    if-eqz p1, :cond_11

    .line 42
    sget-object p1, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object p1

    iget-object p1, p1, Lq7/k;->k:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 43
    iput-boolean v5, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->O:Z

    goto :goto_5

    .line 44
    :cond_d
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->N:Ls9/a;

    check-cast p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/StopAnimationNotificationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    iget-object v2, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Ls9/a;->c(Lcom/nike/adapt/adk/Shoe;Lx8/s;Lcom/nike/adapt/adk/IDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 46
    :cond_e
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    invoke-virtual {p1, v1}, Lx8/s;->e(I)V

    goto :goto_5

    .line 47
    :cond_f
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAnimationResult;

    if-eqz v0, :cond_11

    .line 48
    check-cast p1, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getEndingState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    sget-object v2, Lcom/nike/adapt/ui/lighting/LightingActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v4, :cond_10

    if-eq v0, v1, :cond_10

    .line 49
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx8/s;->f(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;)V

    goto :goto_5

    .line 50
    :cond_10
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    :cond_11
    :goto_5
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->e:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->e:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->t()V

    return-void

    .line 5
    :cond_1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002a

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-virtual {v0, v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    move-object v12, v0

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a0184

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_6

    const v1, 0x7f0a0185

    .line 6
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const v1, 0x7f0a02a3

    .line 7
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v14, :cond_6

    const v1, 0x7f0a02a4

    .line 8
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v15, :cond_6

    const v1, 0x7f0a02b7

    .line 9
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v16, :cond_6

    const v1, 0x7f0a02b8

    .line 10
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/viewpager/widget/ViewPager;

    if-eqz v17, :cond_6

    const v1, 0x7f0a02b9

    .line 11
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_6

    const v1, 0x7f0a02ba

    .line 12
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_6

    const v1, 0x7f0a03c3

    .line 13
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_6

    const v1, 0x7f0a0470

    .line 14
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/FrameLayout;

    if-eqz v21, :cond_6

    .line 15
    new-instance v0, Lq7/k;

    move-object v10, v0

    move-object v11, v12

    invoke-direct/range {v10 .. v21}, Lq7/k;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Lcom/nike/adapt/ui/helper/NotificationToast;Lcom/nike/adapt/ui/helper/BottomSheet;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 16
    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/LightingActivity;->I:Lq7/k;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lq7/k;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 19
    invoke-virtual {v7, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->q0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v1, v0}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v1

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v2

    iget-object v2, v2, Lq7/k;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110108

    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->g:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Ly8/c;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v3

    const-string v4, "supportFragmentManager"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ly8/c;-><init>(Landroidx/fragment/app/x;)V

    iput-object v2, v7, Lcom/nike/adapt/ui/lighting/LightingActivity;->J:Ly8/c;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lj1/a;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->g:Landroidx/viewpager/widget/ViewPager;

    .line 26
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->b0:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->b0:Ljava/util/ArrayList;

    .line 28
    :cond_1
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->b0:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v1

    iget-object v1, v1, Lq7/k;->g:Landroidx/viewpager/widget/ViewPager;

    const/4 v10, 0x1

    .line 30
    invoke-virtual {v0, v1, v9}, Lcom/google/android/material/tabs/TabLayout;->n(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lo8/e;

    const/4 v2, 0x2

    invoke-direct {v1, v7, v2}, Lo8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 33
    iget-object v2, v7, Lp8/q;->B:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 34
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    const-string v1, "<set-?>"

    .line 35
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/LightingActivity;->L:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 37
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 38
    iget-object v2, v7, Lp8/q;->B:Li8/d;

    .line 39
    check-cast v0, Lo7/f;

    invoke-virtual {v0, v7, v2}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    .line 40
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/LightingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    .line 42
    sget-object v0, Lr7/g;->a:Lr7/g;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr7/g;->d(Landroid/content/Intent;Lcom/nike/adapt/adk/IDeviceController;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "deep_link_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    :cond_2
    if-eqz v8, :cond_3

    move v0, v10

    goto :goto_1

    :cond_3
    move v0, v9

    :goto_1
    iput-boolean v0, v7, Lcom/nike/adapt/ui/lighting/LightingActivity;->O:Z

    .line 44
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v1

    iget-object v1, v1, Lq7/k;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isColorPaletteColorSelected(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lp7/b;->a:Lp7/b;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v1, "binding.activityLightingParent"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->k:Landroid/widget/FrameLayout;

    const-string v1, "binding.transitionToView"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v9}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x7f1100f7

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->c(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 48
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const v1, 0x7f1100ef

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->c(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 49
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->h:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-void

    .line 50
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onLightIconClicked(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ly8/k;->a:Ly8/k;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ly8/k;->b(I)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->q0()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ls9/g;->a:Ls9/g;

    invoke-virtual {v0}, Ls9/g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const-string v0, "Lighting Palette View"

    invoke-virtual {p1, v0}, Lcom/nike/adapt/analytics/TrackManager;->firmwareUpdateNotificationToastShown(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object p1

    iget-object p1, p1, Lq7/k;->d:Lcom/nike/adapt/ui/helper/NotificationToast;

    new-instance v0, Lcom/nike/adapt/ui/lighting/LightingActivity$c;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/lighting/LightingActivity$c;-><init>(Lcom/nike/adapt/ui/lighting/LightingActivity;)V

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    return-void

    .line 6
    :cond_1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isColorPaletteColorSelected(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->k:Landroid/widget/FrameLayout;

    const-string v1, "binding.transitionToView"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->k:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 9
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 10
    new-instance v3, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/LightColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 11
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v4

    sget-object v5, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v6, Lp8/j;

    invoke-direct {v6, v0}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v4, v5, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 12
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    sget-object v4, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v5, Lp8/j;

    invoke-direct {v5, v3}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v0, v4, v5}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 13
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->q0()Lh8/a;

    move-result-object v0

    sget-object v3, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-static {v3, p1, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create$default(Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v4

    invoke-interface {v0, v4}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 14
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v4, "binding.activityLightingParent"

    invoke-static {v0, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Ly0/x;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5}, Ly0/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 16
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->M:Lx8/s;

    invoke-static {v3, p1, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create$default(Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx8/s;->a(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 17
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/lighting/LightingActivity;->p0(Ljava/lang/String;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->i:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v1

    iget-object v1, v1, Lq7/k;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const-wide/16 v2, 0xfa

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Ly0/v;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p1, v3}, Ly0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final q0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->R:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final r0()Lq7/k;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->I:Lq7/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final s0()Lcom/nike/adapt/adk/IDeviceController;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
