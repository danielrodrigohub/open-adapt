.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;
.super Lp8/a;
.source "LightPacksActivity.kt"

# interfaces
.implements Lx8/s$a;
.implements Lz8/m$a;
.implements Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;,
        Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;
    }
.end annotation


# static fields
.field public static final g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

.field public static final h0:Lz8/a;


# instance fields
.field public I:Lq7/j;

.field public J:Lcom/nike/adapt/adk/IAdaptRequester;

.field public K:Lcom/nike/adapt/adk/IDeviceController;

.field public L:Lz8/m;

.field public M:Lz8/n;

.field public final N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public O:Lz8/b;

.field public P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

.field public Q:Lz8/c;

.field public final R:Lfd/d;

.field public final S:Lx8/s;

.field public T:Lz8/a;

.field public U:Lz8/a;

.field public V:Z

.field public W:Z

.field public X:Z

.field public final Y:Lt9/c;

.field public final Z:Lt9/c;

.field public final a0:Lt9/c;

.field public b0:Landroid/view/ViewPropertyAnimator;

.field public c0:Z

.field public d0:Z

.field public final e0:Lfd/d;

.field public final f0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    invoke-direct {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    sget-object v0, Lz8/a;->n:Lz8/a;

    sput-object v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->h0:Lz8/a;

    return-void
.end method

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

    const v2, 0x7f0a02a0

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->N:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 3
    sget-object v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v1

    iput-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->R:Lfd/d;

    .line 4
    new-instance v1, Lx8/s;

    invoke-direct {v1, p0}, Lx8/s;-><init>(Lx8/s$a;)V

    iput-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    .line 5
    new-instance v1, Lt9/c;

    invoke-direct {v1}, Lt9/c;-><init>()V

    iput-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Y:Lt9/c;

    .line 6
    new-instance v1, Lt9/c;

    invoke-direct {v1}, Lt9/c;-><init>()V

    iput-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Z:Lt9/c;

    .line 7
    new-instance v1, Lt9/c;

    invoke-direct {v1}, Lt9/c;-><init>()V

    iput-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->a0:Lt9/c;

    .line 8
    sget-object v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$m;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$m;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->e0:Lfd/d;

    .line 9
    new-instance v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->f0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;

    return-void
.end method

.method public static final p0(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)Lk9/a;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->R:Lfd/d;

    invoke-interface {p0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk9/a;

    return-object p0
.end method


# virtual methods
.method public final E()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->v0(ZZ)V

    return-void
.end method

.method public final F(Lz8/a;)V
    .locals 12

    .line 1
    sget-object v0, Ly8/b;->a:Ly8/b;

    .line 2
    iget-object v1, p1, Lz8/a;->k:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lightpacks/light_pack_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p0, v1}, Ly8/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v11, Lp8/i0;

    .line 6
    iget v3, p1, Lz8/a;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    .line 7
    invoke-static/range {v2 .. v10}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->copy$default(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;IZLjava/util/List;ZIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object p1

    const/16 v2, 0xe10

    invoke-direct {v11, p1, v2}, Lp8/i0;-><init>(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;I)V

    invoke-interface {v0, v1, v11}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->a0:Lt9/c;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lt9/c;->a:Z

    .line 10
    iput-boolean v0, p1, Lt9/c;->b:Z

    goto :goto_0

    :cond_0
    const-string p1, "deviceController"

    .line 11
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final K(Lz8/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lz8/n;->f(Lz8/a;)V

    .line 2
    sget-object v0, Lz8/a;->m:Lz8/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {v0, p1}, Lx8/s;->e(I)V

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->z0()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->lightPackActivated(Lz8/a;)V

    :goto_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->v0(ZZ)V

    return-void

    :cond_1
    const-string p1, "subtitleManager"

    .line 7
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final X(Lz8/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz8/n;->f(Lz8/a;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->v0(ZZ)V

    .line 3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->lightPackActivated(Lz8/a;)V

    return-void

    :cond_0
    const-string p1, "subtitleManager"

    .line 4
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final k(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "subtitleManager"

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz p1, :cond_0

    sget-object v0, Lz8/a;->m:Lz8/a;

    invoke-virtual {p1, v0}, Lz8/n;->h(Lz8/a;)V

    const/4 p1, 0x2

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {v0, p1}, Lx8/s;->e(I)V

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->z0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lz8/n;->a()V

    :goto_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->v0(ZZ)V

    return-void

    .line 7
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    const-string v3, "selectedLightPack"

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lz8/n;->h(Lz8/a;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->v0(ZZ)V

    .line 3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v2, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/nike/adapt/analytics/TrackManager;->lightPackTurnedOff(Lz8/a;)V

    return-void

    :cond_0
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "subtitleManager"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
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

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->N:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v1, Lp8/w;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 5
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAnimationResult;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lz8/a;->l:Lz8/a$a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/a$a;->a(I)Lz8/a;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lz8/a;->m:Lz8/a;

    .line 7
    :goto_0
    sget-object v1, Lz8/a;->m:Lz8/a;

    if-ne v0, v1, :cond_e

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx8/s;->f(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;)V

    .line 9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->z0()V

    goto/16 :goto_2

    .line 10
    :cond_2
    instance-of v0, p1, Lcom/nike/adapt/adk/SetLedResult;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Y:Lt9/c;

    check-cast p1, Lcom/nike/adapt/adk/SetLedResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    new-instance v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$g;

    invoke-direct {v1, p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$g;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    invoke-static {v0, p1, v1}, Lt9/c;->a(Lt9/c;ZLqd/a;)V

    goto/16 :goto_2

    .line 12
    :cond_3
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationResult;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Z:Lt9/c;

    check-cast p1, Lcom/nike/adapt/adk/StopAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/StopAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    new-instance v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$h;

    invoke-direct {v1, p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$h;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    invoke-static {v0, p1, v1}, Lt9/c;->a(Lt9/c;ZLqd/a;)V

    goto/16 :goto_2

    .line 14
    :cond_4
    instance-of v0, p1, Lcom/nike/adapt/adk/StartAnimationResult;

    const-string v1, "selectedLightPack"

    const-string v2, "subtitleManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->a0:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v2

    iget-object v4, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2, v4}, Lz8/n;->e(Lz8/a;Lz8/a;)V

    const/4 v0, 0x3

    .line 17
    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {v1, v0}, Lx8/s;->e(I)V

    .line 18
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->z0()V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->a0:Lt9/c;

    check-cast p1, Lcom/nike/adapt/adk/StartAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/StartAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    new-instance v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$i;

    invoke-direct {v1, p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$i;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    invoke-static {v0, p1, v1}, Lt9/c;->a(Lt9/c;ZLqd/a;)V

    goto :goto_2

    .line 21
    :cond_8
    instance-of p1, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz p1, :cond_e

    .line 22
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {p1}, Lx8/s;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 23
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Lz8/n;->f(Lz8/a;)V

    const/4 p1, 0x2

    .line 24
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {v0, p1}, Lx8/s;->e(I)V

    .line 25
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->z0()V

    goto :goto_2

    .line 26
    :cond_9
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 27
    :cond_b
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result p1

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    if-nez p1, :cond_e

    .line 28
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Lz8/n;->h(Lz8/a;)V

    .line 29
    sget-object p1, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p1

    iget-object p1, p1, Lq7/j;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v0, "binding.lightPacksParent"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->x0(Z)V

    goto :goto_2

    .line 31
    :cond_c
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_e
    :goto_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->E()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-interface {v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    if-le v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    if-nez v0, :cond_1

    move v1, v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->e:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksActivatedActionSheetDismissButtonSelected()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->g:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->e:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 9
    sget-object v1, Lx8/q;->c:Lx8/q$d;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v1, v0, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 12
    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    .line 13
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->k()V

    goto :goto_1

    .line 14
    :cond_4
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 28

    move-object/from16 v7, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0029

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-virtual {v0, v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0137

    .line 4
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/nike/adapt/ui/view/RoundedImageButtonView;

    const-string v2, "Missing required view with ID: "

    if-eqz v12, :cond_21

    const v1, 0x7f0a01b4

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/nike/adapt/ui/view/RoundedImageButtonView;

    if-eqz v13, :cond_21

    const v1, 0x7f0a029d

    .line 6
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_21

    const v1, 0x7f0a029f

    .line 7
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v15, :cond_21

    .line 8
    move-object/from16 v16, v0

    check-cast v16, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a02a1

    .line 9
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v17, :cond_21

    const v1, 0x7f0a02a2

    .line 10
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v18, :cond_21

    const v1, 0x7f0a02cc

    .line 11
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_21

    const v1, 0x7f0a031c

    .line 12
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_21

    const v1, 0x7f0a031d

    .line 13
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_21

    const v1, 0x7f0a0334

    .line 14
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_21

    const v1, 0x7f0a0347

    .line 15
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/ImageView;

    if-eqz v22, :cond_21

    const v1, 0x7f0a03a2

    .line 16
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_21

    const v1, 0x7f0a03a3

    .line 17
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_21

    const v1, 0x7f0a03ba

    .line 18
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/ImageView;

    if-eqz v25, :cond_21

    const v3, 0x7f0a045c

    .line 19
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 20
    move-object v3, v4

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    invoke-static {v4, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_1f

    const v1, 0x7f0a045d

    .line 22
    invoke-static {v4, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_1f

    const v1, 0x7f0a045e

    .line 23
    invoke-static {v4, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_1f

    .line 24
    new-instance v1, Lq7/b2;

    invoke-direct {v1, v3, v5, v6, v10}, Lq7/b2;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const v3, 0x7f0a045f

    .line 25
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    if-eqz v27, :cond_20

    .line 26
    new-instance v0, Lq7/j;

    move-object v10, v0

    move-object/from16 v11, v16

    move-object/from16 v26, v1

    invoke-direct/range {v10 .. v27}, Lq7/j;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/nike/adapt/ui/view/RoundedImageButtonView;Lcom/nike/adapt/ui/view/RoundedImageButtonView;Landroidx/recyclerview/widget/RecyclerView;Lcom/nike/adapt/ui/helper/BottomSheet;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/nike/adapt/ui/helper/BottomSheet;Lcom/nike/adapt/ui/helper/NotificationToast;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lq7/b2;Landroid/view/View;)V

    .line 27
    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->I:Lq7/j;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lq7/j;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 30
    invoke-virtual {v7, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const-string v0, "window"

    .line 31
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 32
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "windowManager.defaultDisplay"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 35
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lf1/b;->l(F)I

    move-result v0

    add-int/lit16 v0, v0, -0x2ea

    if-lez v0, :cond_0

    move v0, v9

    :cond_0
    const/16 v1, -0x49

    if-ge v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    if-nez v10, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->o:Landroid/widget/ImageView;

    const-string v1, "binding.selectionRing"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v10}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->i:Landroid/widget/LinearLayout;

    const-string v1, "binding.myLightsButtonsContainer"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v10}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->p:Lq7/b2;

    iget-object v0, v0, Lq7/b2;->c:Landroid/widget/ImageView;

    const-string v1, "binding.tooltip1Highligh\u2026ew.tooltip1LightPackImage"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v10}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->p:Lq7/b2;

    iget-object v0, v0, Lq7/b2;->d:Landroid/widget/TextView;

    const-string v1, "binding.tooltip1Highligh\u2026ew.tooltip1LightPackTitle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v10}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->p:Lq7/b2;

    iget-object v0, v0, Lq7/b2;->b:Landroid/widget/ImageView;

    const-string v1, "binding.tooltip1HighlightView.selectionRing"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v10}, Lx8/i1;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 42
    :goto_1
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 43
    iget-object v2, v7, Lp8/q;->B:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 44
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->J:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 45
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 46
    iget-object v1, v7, Lp8/q;->B:Li8/d;

    .line 47
    check-cast v0, Lo7/f;

    invoke-virtual {v0, v7, v1}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    .line 48
    new-instance v0, Lz8/m;

    invoke-static/range {p0 .. p0}, Landroidx/activity/k;->m(Landroidx/lifecycle/q;)Landroidx/lifecycle/l;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lz8/m;-><init>(Lz8/m$a;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    .line 49
    new-instance v0, Lz8/n;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v1

    iget-object v1, v1, Lq7/j;->m:Landroid/widget/TextView;

    const-string v2, "binding.screenSubtitle"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lz8/n;-><init>(Landroid/widget/TextView;Lh8/a;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    .line 50
    sget-object v0, Ls9/g;->a:Ls9/g;

    invoke-virtual {v0}, Ls9/g;->h()Z

    move-result v0

    iput-boolean v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    if-nez v0, :cond_3

    .line 51
    sget-object v0, Lz8/a;->m:Lz8/a;

    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->u()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->h0:Lz8/a;

    goto :goto_2

    .line 53
    :cond_4
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v0

    .line 54
    :goto_2
    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->y0()V

    .line 56
    new-instance v0, Lz8/c;

    invoke-direct {v0, v7}, Lz8/c;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Q:Lz8/c;

    .line 57
    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz8/c;->setColors(Lcom/nike/adapt/adk/model/ShoeColor;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->b:Lcom/nike/adapt/ui/view/RoundedImageButtonView;

    iget-object v1, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Q:Lz8/c;

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/view/RoundedImageButtonView;->setCustomView(Landroid/view/View;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->b:Lcom/nike/adapt/ui/view/RoundedImageButtonView;

    new-instance v1, Lr9/a;

    new-instance v2, Lz8/f;

    invoke-direct {v2, v7, v9}, Lz8/f;-><init>(Ljava/lang/Object;I)V

    const/4 v3, 0x2

    const/16 v4, 0xc8

    .line 60
    invoke-direct {v1, v2, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->c:Lcom/nike/adapt/ui/view/RoundedImageButtonView;

    new-instance v1, Lr9/a;

    new-instance v2, Lz8/e;

    invoke-direct {v2, v7, v9}, Lz8/e;-><init>(Ljava/lang/Object;I)V

    .line 63
    invoke-direct {v1, v2, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->i:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_5
    new-instance v0, Lz8/b;

    invoke-static {}, Lz8/a;->values()[Lz8/a;

    move-result-object v1

    invoke-static {v1}, Lgd/i;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lz8/b;-><init>(Ljava/util/List;I)V

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->O:Lz8/b;

    .line 69
    new-instance v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    invoke-direct {v0, v7}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    .line 70
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_6
    iget-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->O:Lz8/b;

    const-string v1, "lightPackAdapter"

    if-eqz v0, :cond_1d

    iget-object v2, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    const-string v5, "selectedLightPack"

    if-eqz v2, :cond_1c

    invoke-static {v2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;->a(Lz8/a;)I

    move-result v2

    .line 72
    iget v0, v0, Lz8/b;->f:I

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 73
    new-instance v2, Landroidx/recyclerview/widget/e0;

    invoke-direct {v2}, Landroidx/recyclerview/widget/e0;-><init>()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v6

    iget-object v6, v6, Lq7/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iget-object v10, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    const-string v11, "lightPackLayoutManager"

    if-eqz v10, :cond_1b

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 76
    iget-object v10, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->O:Lz8/b;

    if-eqz v10, :cond_1a

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 78
    new-instance v10, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0700c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-direct {v10, v12}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;-><init>(I)V

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 79
    iget-object v10, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->f0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 80
    invoke-virtual {v6, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 81
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/k0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 82
    new-instance v10, Lz8/k;

    invoke-direct {v10, v6, v7, v0, v2}, Lz8/k;-><init>(Landroid/view/View;Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;ILandroidx/recyclerview/widget/e0;)V

    invoke-static {v6, v10}, Lj0/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Lj0/t;

    .line 83
    iget-object v2, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    if-eqz v2, :cond_19

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w0(I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->l:Landroid/widget/ImageView;

    new-instance v2, Lr9/a;

    new-instance v6, Lx8/p;

    invoke-direct {v6, v7, v1}, Lx8/p;-><init>(Ljava/lang/Object;I)V

    .line 85
    invoke-direct {v2, v6, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->R:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk9/a;

    .line 88
    iget-object v2, v0, Lk9/a;->b:Lk9/b;

    invoke-interface {v2}, Lk9/b;->b()I

    move-result v2

    if-ge v2, v1, :cond_a

    .line 89
    iget-object v2, v0, Lk9/a;->b:Lk9/b;

    invoke-interface {v2}, Lk9/b;->g()I

    move-result v2

    if-ge v2, v1, :cond_a

    .line 90
    iget-object v2, v0, Lk9/a;->a:Lh8/a;

    invoke-interface {v2}, Lh8/a;->N()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 91
    iget-object v2, v0, Lk9/a;->a:Lh8/a;

    invoke-interface {v2}, Lh8/a;->E()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 92
    :cond_7
    iget-object v2, v0, Lk9/a;->b:Lk9/b;

    invoke-interface {v2}, Lk9/b;->d()I

    move-result v2

    if-eqz v2, :cond_9

    .line 93
    iget-object v0, v0, Lk9/a;->b:Lk9/b;

    sub-int/2addr v2, v1

    if-gez v2, :cond_8

    move v2, v9

    :cond_8
    invoke-interface {v0, v2}, Lk9/b;->f(I)V

    goto :goto_3

    .line 94
    :cond_9
    iget-object v0, v0, Lk9/a;->b:Lk9/b;

    invoke-interface {v0}, Lk9/b;->e()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    :goto_3
    move v0, v9

    :goto_4
    if-eqz v0, :cond_13

    .line 95
    new-instance v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;

    invoke-direct {v0, v7}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    new-instance v2, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$k;

    invoke-direct {v2, v7}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$k;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    new-instance v4, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$l;

    invoke-direct {v4, v7}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$l;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    .line 96
    new-instance v6, Lb6/b;

    const v10, 0x7f120177

    invoke-direct {v6, v7, v10}, Lb6/b;-><init>(Landroid/content/Context;I)V

    const v10, 0x7f0d010b

    .line 97
    invoke-virtual {v6, v10}, Lb6/b;->g(I)Lb6/b;

    .line 98
    iget-object v10, v6, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v9, v10, Landroidx/appcompat/app/AlertController$b;->k:Z

    .line 99
    invoke-virtual {v6}, Lb6/b;->create()Landroidx/appcompat/app/d;

    move-result-object v6

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_b

    .line 101
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    :cond_b
    const v10, 0x7f0a0362

    .line 102
    invoke-virtual {v6, v10}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v11, 0x7f0a0327

    .line 103
    invoke-virtual {v6, v11}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    const v12, 0x7f0a0326

    .line 104
    invoke-virtual {v6, v12}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v13, 0x7f0a0456

    .line 105
    invoke-virtual {v6, v13}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-nez v13, :cond_c

    goto :goto_5

    :cond_c
    const v14, 0x7f11018f

    invoke-static {v14}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const v13, 0x7f0a016b

    .line 106
    invoke-virtual {v6, v13}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-nez v13, :cond_d

    goto :goto_6

    :cond_d
    const v14, 0x7f11018c

    invoke-static {v14}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    if-nez v10, :cond_e

    goto :goto_7

    :cond_e
    const v13, 0x7f11018e

    .line 107
    invoke-static {v13}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    if-nez v11, :cond_f

    goto :goto_8

    :cond_f
    const v13, 0x7f11018b

    .line 108
    invoke-static {v13}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-nez v12, :cond_10

    goto :goto_9

    :cond_10
    const v13, 0x7f11018d

    .line 109
    invoke-static {v13}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    if-eqz v10, :cond_11

    .line 110
    new-instance v13, Lu8/i;

    invoke-direct {v13, v0, v6, v1}, Lu8/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    if-eqz v11, :cond_12

    .line 111
    new-instance v0, Lu8/k;

    invoke-direct {v0, v2, v6, v3}, Lu8/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    if-eqz v12, :cond_13

    .line 112
    new-instance v0, Ls9/t;

    invoke-direct {v0, v4, v6}, Ls9/t;-><init>(Lqd/l;Landroidx/appcompat/app/d;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_13
    iget-boolean v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    if-nez v0, :cond_14

    goto/16 :goto_b

    .line 114
    :cond_14
    iget-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_18

    sget-object v1, Lz8/a;->m:Lz8/a;

    if-eq v0, v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->u()Z

    move-result v0

    if-nez v0, :cond_15

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->q:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->p:Lq7/b2;

    iget-object v0, v0, Lq7/b2;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->h0:Lz8/a;

    .line 117
    iget v2, v1, Lz8/a;->j:I

    .line 118
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 120
    iget-object v0, v0, Lcom/bumptech/glide/c;->m:Le3/l;

    .line 121
    invoke-virtual {v0, v7}, Le3/l;->c(Landroidx/fragment/app/p;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 122
    iget-object v1, v1, Lz8/a;->i:Ljava/lang/Integer;

    .line 123
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/i;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lh3/a;->k()Lh3/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lh3/a;->r(II)Lh3/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v1

    iget-object v1, v1, Lq7/j;->p:Lq7/b2;

    iget-object v1, v1, Lq7/b2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->I(Landroid/widget/ImageView;)Li3/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    .line 127
    :catchall_0
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Glide exception"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 128
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v1, Li8/f;

    const/4 v2, 0x3

    invoke-direct {v1, v7, v2}, Li8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 129
    :cond_15
    iget-object v0, v7, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_17

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->N()Z

    move-result v0

    if-nez v0, :cond_16

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v1, Ll8/a;

    invoke-direct {v1, v7, v3}, Ll8/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_16
    :goto_b
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksCarouselPresented()V

    return-void

    .line 132
    :cond_17
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 133
    :cond_18
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 134
    :cond_19
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_1a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 136
    :cond_1b
    invoke-static {v11}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_1c
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    :cond_1d
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    :cond_1e
    const-string v0, "lightPackColorChipView"

    .line 138
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 139
    :cond_1f
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move v1, v3

    .line 141
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->b0:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    :cond_0
    invoke-super {p0}, Lf/e;->onDestroy()V

    return-void

    :cond_1
    const-string v1, "lightPackLayoutManager"

    .line 6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->O:Lz8/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->u()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    const-string v4, "selectedLightPack"

    if-eqz v3, :cond_3

    sget-object v5, Lz8/a;->m:Lz8/a;

    if-eq v3, v5, :cond_0

    if-ne v0, v5, :cond_0

    const/4 v2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->w0(Lz8/a;Z)V

    .line 7
    iget-object v2, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0, v3}, Lz8/n;->e(Lz8/a;Lz8/a;)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "subtitleManager"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    sget-object v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->h0:Lz8/a;

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->w0(Lz8/a;Z)V

    :goto_0
    return-void

    :cond_5
    const-string v0, "lightPackAdapter"

    .line 11
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final q0()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lp9/d;

    .line 2
    new-instance v14, Lp9/a;

    const v2, 0x7f11037f

    .line 3
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f11037e

    .line 4
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1100c8

    .line 5
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-boolean v2, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->c0:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    const-string v7, "2/2"

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v2, :cond_1

    const v2, 0x7f110381

    .line 7
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v6

    :goto_1
    const/4 v9, 0x0

    const/16 v10, -0x23

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    const-wide/16 v17, 0x0

    const v19, 0x3bf20

    move-object v2, v14

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-wide v12, v15

    move-object/from16 v20, v14

    move-wide/from16 v14, v17

    move/from16 v16, v19

    .line 8
    invoke-direct/range {v2 .. v16}, Lp9/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIFDJI)V

    move-object/from16 v2, v20

    .line 9
    invoke-direct {v1, v2, v0}, Lp9/d;-><init>(Lp9/a;Landroid/content/Context;)V

    .line 10
    new-instance v2, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$e;

    invoke-direct {v2, v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$e;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    .line 11
    new-instance v3, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$c;

    invoke-direct {v3, v1, v2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$c;-><init>(Lp9/d;Lqd/a;)V

    invoke-virtual {v1, v3}, Lp9/d;->setCtaAction(Lqd/a;)V

    .line 12
    new-instance v3, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$d;

    invoke-direct {v3, v2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$d;-><init>(Lqd/a;)V

    invoke-virtual {v1, v3}, Lp9/d;->setOverlayDismiss(Lqd/a;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v2

    iget-object v2, v2, Lq7/j;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v3, "binding.lightPacksParent"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v3

    iget-object v3, v3, Lq7/j;->i:Landroid/widget/LinearLayout;

    const-string v4, "binding.myLightsButtonsContainer"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lp9/d;->d(Lp9/d;Landroid/view/View;Landroid/view/View;)V

    .line 14
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->c0:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksTooltipTwoPresented()V

    goto :goto_2

    .line 15
    :cond_2
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksTooltipAlternatePresented()V

    :goto_2
    return-void
.end method

.method public final r0()Lq7/j;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->I:Lq7/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final s0()Z
    .locals 2

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_1

    sget-object v1, Lz8/a;->m:Lz8/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "selectedLightPack"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v2, Lp8/j0;->a:Lp8/j0;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Z:Lt9/c;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lt9/c;->a:Z

    .line 4
    iput-boolean v1, v0, Lt9/c;->b:Z

    return-void

    :cond_0
    const-string v0, "deviceController"

    .line 5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final t0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->e0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final u0()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->d0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->d0:Z

    .line 3
    sget-object v1, Ls9/y;->a:Ls9/y;

    new-instance v5, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$f;

    invoke-direct {v5, p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$f;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    .line 4
    sget-object v2, Lh8/c;->b:Lh8/c;

    .line 5
    invoke-virtual {v2, v0}, Lh8/c;->n0(Z)V

    const v3, 0x7f1100eb

    const v4, 0x7f110185

    .line 6
    new-instance v6, Ls9/y$a;

    const/4 v0, 0x0

    const/16 v2, 0xc

    const-string v7, "LIGHT_PACKS_LOW_BATTERY"

    const-string v8, "OK"

    invoke-direct {v6, v7, v8, v0, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, p0

    .line 7
    invoke-static/range {v1 .. v6}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    :cond_0
    return-void
.end method

.method public final v0(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->X:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x3ee66666

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p2

    iget-object p2, p2, Lq7/j;->l:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final w(Lz8/a;FI)V
    .locals 2

    .line 1
    sget-object v0, Lz8/a;->m:Lz8/a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->N()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->i:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    .line 5
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p2

    iget-object p2, p2, Lq7/j;->j:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "binding.myLightsYAdjustment.layoutParams"

    invoke-static {p2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 7
    iget p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p1, :cond_4

    .line 8
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p1

    iget-object p1, p1, Lq7/j;->j:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public final w0(Lz8/a;Z)V
    .locals 3

    .line 1
    sget-object v0, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v1

    iget-object v1, v1, Lq7/j;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v2, "binding.lightPacksParent"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lp7/b;->e(Landroid/view/View;Lz8/a;)V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Q:Lz8/c;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz8/c;->setColors(Lcom/nike/adapt/adk/model/ShoeColor;)V

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->x0(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "lightPackColorChipView"

    .line 5
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->x0(Z)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->U:Lz8/a;

    return-void

    :cond_2
    const-string p1, "selectedLightPack"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final x0(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f08016f

    goto :goto_0

    :cond_0
    const v1, 0x7f080171

    .line 2
    :goto_0
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f110109

    goto :goto_1

    :cond_1
    const v1, 0x7f110108

    :goto_1
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    :cond_2
    return-void
.end method

.method public final y(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->v0(ZZ)V

    return-void
.end method

.method public final y0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->n:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1100f5

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f110382

    .line 3
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final z(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_1

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v4, Lp8/j;

    new-instance v5, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v5, v6, v1, v7, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-direct {v4, v5}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v0, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/j;

    new-instance v4, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    invoke-direct {v4, p1, v1, v7, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-direct {v3, v4}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v0, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->Y:Lt9/c;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lt9/c;->a:Z

    .line 5
    iput-boolean v0, p1, Lt9/c;->b:Z

    return-void

    .line 6
    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final z0()V
    .locals 2

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->c:Lcom/nike/adapt/ui/view/RoundedImageButtonView;

    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->S:Lx8/s;

    invoke-virtual {v1}, Lx8/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08016d

    goto :goto_0

    :cond_0
    const v1, 0x7f08016c

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/view/RoundedImageButtonView;->setImageResource(I)V

    return-void
.end method
