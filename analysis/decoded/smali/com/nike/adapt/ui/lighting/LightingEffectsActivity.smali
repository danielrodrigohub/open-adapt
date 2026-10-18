.class public final Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;
.super Lp8/a;
.source "LightingEffectsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/material/tabs/TabLayout$d;
.implements Landroid/view/View$OnTouchListener;
.implements Lx8/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic k0:I


# instance fields
.field public I:Lq7/l;

.field public J:Z

.field public K:Landroid/view/View;

.field public L:Lcom/google/android/material/tabs/TabLayout;

.field public M:I

.field public N:Ly8/i;

.field public O:Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;

.field public P:Landroidx/appcompat/app/d;

.field public Q:Lcom/nike/adapt/adk/IDeviceController;

.field public R:Lcom/nike/adapt/adk/IAdaptRequester;

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public final f0:Lh8/c;

.field public final g0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public final h0:Lx8/s;

.field public i0:Ly8/i$a;

.field public j0:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    sget-object v0, Ls9/g;->a:Ls9/g;

    invoke-virtual {v0}, Ls9/g;->b()I

    move-result v0

    iput v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    const/4 v1, 0x0

    .line 5
    new-instance v8, Lu8/q;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x1e

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    aput-object v8, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lu8/c;

    const v3, 0x7f0a02bb

    invoke-direct {v2, v3, p0}, Lu8/c;-><init>(ILf/e;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->g0:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lx8/s;

    invoke-direct {v0, p0}, Lx8/s;-><init>(Lx8/s$a;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->h0:Lx8/s;

    return-void
.end method

.method public static t0(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;Lv7/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->j()I

    move-result v0

    const/4 v1, 0x4

    .line 2
    invoke-static {v1}, Lq/g;->b(I)[I

    move-result-object v2

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 4
    invoke-static {v5}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->u0(Lv7/c;I)V

    return-void
.end method


# virtual methods
.method public final L(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 3
    new-instance v0, Ly0/s;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x4b

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final V(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 9

    const-string v0, "tab"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "durationIndicator"

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 4
    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 5
    new-instance v0, Landroidx/activity/d;

    const/4 v5, 0x4

    invoke-direct {v0, p1, v5}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    const/4 v6, 0x2

    int-to-long v7, v6

    div-long v7, v3, v7

    invoke-virtual {p1, v0, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    move p1, v6

    goto :goto_1

    :cond_2
    move p1, v0

    .line 7
    :goto_1
    invoke-virtual {p0, p1, v3, v4}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->p0(IJ)V

    .line 8
    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    .line 9
    invoke-static {p1}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v3

    .line 10
    invoke-virtual {v1, v3}, Lh8/c;->c0(I)V

    .line 11
    iget-boolean v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->J:Z

    if-eqz v1, :cond_7

    .line 12
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    .line 13
    invoke-static {p1}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nike/adapt/analytics/TrackManager;->lightsEffectDurationSelected(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    .line 16
    invoke-static {p1}, Landroidx/appcompat/widget/o;->a(I)I

    move-result p1

    .line 17
    invoke-virtual {v1, p1}, Lh8/c;->c0(I)V

    .line 18
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {p1}, Lh8/c;->l0()Lv7/c;

    move-result-object p1

    .line 19
    sget-object v1, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {p1, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    iget v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    if-ne v1, v6, :cond_4

    .line 21
    new-instance v1, Ly8/i$a;

    .line 22
    invoke-direct {v1, p1, v2}, Ly8/i$a;-><init>(Lv7/c;Z)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->y0(Ly8/i$a;)V

    goto :goto_2

    .line 24
    :cond_4
    new-instance v1, Ly8/i$a;

    .line 25
    invoke-direct {v1, p1, v2}, Ly8/i$a;-><init>(Lv7/c;Z)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->x0(Ly8/i$a;)V

    .line 27
    :goto_2
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {p1}, Lh8/c;->l0()Lv7/c;

    move-result-object p1

    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v1}, Lh8/c;->j()I

    move-result v1

    .line 28
    invoke-static {v5}, Lq/g;->b(I)[I

    move-result-object v3

    .line 29
    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_6

    aget v6, v3, v2

    .line 30
    invoke-static {v6}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v7

    if-ne v7, v1, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31
    :cond_6
    :goto_4
    invoke-virtual {p0, p1, v5}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->u0(Lv7/c;I)V

    .line 32
    :cond_7
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->J:Z

    return-void

    :cond_8
    const-string p1, "durationTab"

    .line 33
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_9
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Z)V
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

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->g0:Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v1, Lp8/w;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    :cond_1
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 19
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {v1, v2}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v2, v1, Lcom/nike/adapt/adk/GetAnimationResult;

    const-string v3, "CUSTOM_ANIM"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v2, :cond_9

    .line 4
    check-cast v1, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v1

    const-string v9, " ::::: "

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getRunningState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getSecondsRemaining()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEFT:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->T:Z

    .line 8
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->V:Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getRunningState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getSecondsRemaining()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RIGHT:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->U:Z

    .line 11
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->W:Z

    .line 12
    :goto_0
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->V:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->W:Z

    if-eqz v1, :cond_18

    .line 13
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->V:Z

    .line 14
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->W:Z

    .line 15
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->T:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->U:Z

    if-eqz v1, :cond_18

    .line 16
    :cond_2
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->T:Z

    .line 17
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->U:Z

    .line 18
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->O:Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;

    if-nez v1, :cond_18

    .line 19
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    if-ne v1, v8, :cond_3

    sget-object v1, Lv7/c$e;->c:Lv7/c$e;

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getId()I

    move-result v1

    sget-object v3, Lv7/c$e;->c:Lv7/c$e;

    if-ne v1, v5, :cond_4

    :goto_1
    move-object v1, v3

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getId()I

    move-result v1

    sget-object v3, Lv7/c$f;->c:Lv7/c$f;

    if-ne v1, v8, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getId()I

    move-result v1

    sget-object v2, Lv7/c$c;->c:Lv7/c$c;

    if-ne v1, v6, :cond_6

    move-object v1, v2

    goto :goto_2

    .line 23
    :cond_6
    sget-object v1, Lv7/c$d;->c:Lv7/c$d;

    .line 24
    :goto_2
    iget-object v2, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v2}, Lh8/c;->j()I

    move-result v2

    .line 25
    invoke-static {v7}, Lq/g;->b(I)[I

    move-result-object v3

    .line 26
    array-length v5, v3

    :goto_3
    if-ge v4, v5, :cond_8

    aget v6, v3, v4

    .line 27
    invoke-static {v6}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v8

    if-ne v8, v2, :cond_7

    move v7, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 28
    :cond_8
    :goto_4
    invoke-virtual {v0, v1, v7}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->u0(Lv7/c;I)V

    goto/16 :goto_a

    .line 29
    :cond_9
    instance-of v2, v1, Lcom/nike/adapt/adk/StartAnimationResult;

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    .line 30
    iget-object v2, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->h0:Lx8/s;

    invoke-virtual {v2, v6}, Lx8/s;->e(I)V

    .line 31
    check-cast v1, Lcom/nike/adapt/adk/StartAnimationResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/StartAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->X:Z

    goto :goto_5

    .line 33
    :cond_a
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Y:Z

    .line 34
    :goto_5
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->X:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Y:Z

    if-eqz v1, :cond_18

    .line 35
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->X:Z

    .line 36
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Y:Z

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/w;

    invoke-direct {v3, v9, v5, v9}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v1, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto/16 :goto_a

    .line 38
    :cond_b
    instance-of v2, v1, Lcom/nike/adapt/adk/StopAnimationResult;

    if-eqz v2, :cond_14

    .line 39
    iget-object v2, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->h0:Lx8/s;

    invoke-virtual {v2, v8}, Lx8/s;->e(I)V

    .line 40
    check-cast v1, Lcom/nike/adapt/adk/StopAnimationResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/StopAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 41
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, " left stop animation"

    invoke-virtual {v1, v3, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Z:Z

    goto :goto_6

    .line 43
    :cond_c
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, " right stop animation"

    invoke-virtual {v1, v3, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->a0:Z

    .line 45
    :goto_6
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Z:Z

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->a0:Z

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->j0:Z

    if-nez v1, :cond_13

    .line 46
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Z:Z

    .line 47
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->a0:Z

    .line 48
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->i0:Ly8/i$a;

    if-eqz v1, :cond_12

    const-string v2, "effectToBeUpdatedOnStopCurrentAnimResult"

    .line 49
    iget-object v1, v1, Ly8/i$a;->a:Lv7/c;

    .line 50
    sget-object v3, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_8

    .line 51
    :cond_d
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v3, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->i0:Ly8/i$a;

    if-eqz v3, :cond_11

    .line 52
    iget-object v3, v3, Ly8/i$a;->a:Lv7/c;

    .line 53
    invoke-virtual {v3}, Lv7/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nike/adapt/analytics/TrackManager;->lightsEffectSelected(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->w0()V

    .line 55
    sget-object v1, Ly8/b;->a:Ly8/b;

    .line 56
    iget-object v3, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->i0:Ly8/i$a;

    if-eqz v3, :cond_10

    iget-object v7, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v7}, Lh8/c;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ly8/b;->d(Ly8/i$a;Lcom/nike/adapt/adk/model/AdaptShoeColor;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v1, v0, v3}, Ly8/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 58
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->i0:Ly8/i$a;

    if-eqz v1, :cond_e

    .line 59
    iget-object v1, v1, Ly8/i$a;->a:Lv7/c;

    .line 60
    invoke-virtual {v1}, Lv7/c;->a()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->copy$default(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;IZLjava/util/List;ZIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object v9

    goto :goto_7

    :cond_e
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    :cond_f
    :goto_7
    if-eqz v9, :cond_12

    .line 61
    new-instance v1, Lp8/i0;

    iget-object v2, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v2}, Lh8/c;->j()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-direct {v1, v9, v2}, Lp8/i0;-><init>(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;I)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->v0()V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    invoke-interface {v2, v3, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 64
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1, v5}, Lcom/nike/adapt/adk/InMemoryCache;->setNeedToDisplayEffectsSubtitleForFirstTime(Z)V

    .line 65
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v1, v4}, Lh8/c;->n0(Z)V

    goto :goto_8

    .line 66
    :cond_10
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    .line 67
    :cond_11
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v9

    .line 68
    :cond_12
    :goto_8
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->h0:Lx8/s;

    invoke-virtual {v1, v6}, Lx8/s;->e(I)V

    .line 69
    :cond_13
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->j0:Z

    if-eqz v1, :cond_18

    .line 70
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Z:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->a0:Z

    if-eqz v1, :cond_18

    .line 71
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Z:Z

    .line 72
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->a0:Z

    .line 73
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->j0:Z

    goto :goto_a

    .line 74
    :cond_14
    instance-of v2, v1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz v2, :cond_18

    .line 75
    iget-object v2, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->h0:Lx8/s;

    invoke-virtual {v2, v8}, Lx8/s;->e(I)V

    .line 76
    check-cast v1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/StopAnimationNotificationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 77
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->d0:Z

    if-eqz v1, :cond_15

    .line 78
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->d0:Z

    return-void

    .line 79
    :cond_15
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, " left stop animation from noti"

    invoke-virtual {v1, v3, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->c0:Z

    goto :goto_9

    .line 81
    :cond_16
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->e0:Z

    if-eqz v1, :cond_17

    .line 82
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->e0:Z

    return-void

    .line 83
    :cond_17
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, " right stop animation from noti"

    invoke-virtual {v1, v3, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-boolean v5, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->b0:Z

    .line 85
    :goto_9
    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->c0:Z

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->b0:Z

    if-eqz v1, :cond_18

    .line 86
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->c0:Z

    .line 87
    iput-boolean v4, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->b0:Z

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/w;

    invoke-direct {v3, v9, v5, v9}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v1, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 89
    sget-object v1, Lv7/c$d;->c:Lv7/c$d;

    invoke-virtual {v0, v1, v7}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->u0(Lv7/c;I)V

    :cond_18
    :goto_a
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0299

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->effectsDoneButtonSelected()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f010023

    const v0, 0x7f010024

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d002b

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01ac

    .line 4
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    const v2, 0x7f0a01b3

    .line 5
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v8, :cond_2

    const v2, 0x7f0a0298

    .line 6
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_2

    const v2, 0x7f0a0299

    .line 7
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_2

    const v2, 0x7f0a029a

    .line 8
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_2

    const v2, 0x7f0a029b

    .line 9
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_2

    const v2, 0x7f0a02b3

    .line 10
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroidx/cardview/widget/CardView;

    if-eqz v13, :cond_2

    const v2, 0x7f0a02b4

    .line 11
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_2

    const v2, 0x7f0a02b5

    .line 12
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v15, :cond_2

    .line 13
    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/FrameLayout;

    const v2, 0x7f0a02bc

    .line 14
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v17, :cond_2

    .line 15
    new-instance v1, Lq7/l;

    move-object v6, v1

    move-object/from16 v7, v16

    invoke-direct/range {v6 .. v17}, Lq7/l;-><init>(Landroid/widget/FrameLayout;Lcom/nike/adapt/ui/helper/NotificationToast;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 16
    iput-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->I:Lq7/l;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lq7/l;->a:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v0, v1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 20
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->lightingEffectsScreenViewed()V

    .line 21
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 22
    iget-object v2, v0, Lp8/q;->B:Li8/d;

    .line 23
    sget-object v5, Ly8/f;->h:Ly8/f;

    .line 24
    new-instance v6, Ly8/e;

    invoke-direct {v6, v0}, Ly8/e;-><init>(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;)V

    .line 25
    check-cast v1, Lo7/f;

    invoke-virtual {v1, v0, v2, v5, v6}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v1

    const-string v2, "<set-?>"

    .line 26
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->R:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 28
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 29
    iget-object v5, v0, Lp8/q;->B:Li8/d;

    .line 30
    check-cast v1, Lo7/f;

    invoke-virtual {v1, v0, v5}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Q:Lcom/nike/adapt/adk/IDeviceController;

    .line 33
    sget-object v1, Lp7/b;->a:Lp7/b;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->j:Landroid/widget/FrameLayout;

    const-string v2, "binding.lightsEffectsParent"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lp7/b;->f(Landroid/view/View;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->i:Lcom/google/android/material/tabs/TabLayout;

    const-string v2, "binding.lightingEffectDurationTabLayout"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->h:Landroid/view/View;

    const-string v2, "binding.lightingEffectDurationIndicator"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    .line 37
    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_1

    new-instance v2, Ly0/y;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Ly0/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    new-instance v1, Ly8/i$b;

    new-instance v2, Ly8/i$a;

    sget-object v3, Lv7/c$c;->c:Lv7/c$c;

    invoke-direct {v2, v3, v4}, Ly8/i$a;-><init>(Lv7/c;Z)V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ly8/i$b;-><init>(Ly8/i$a;I)V

    .line 39
    new-instance v2, Ly8/i;

    invoke-direct {v2, v1, v0}, Ly8/i;-><init>(Ly8/i$b;Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iput-object v2, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->N:Ly8/i;

    .line 40
    iget v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    if-ne v1, v3, :cond_0

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->c:Landroid/widget/TextView;

    const v2, 0x3ee66666

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->g:Landroidx/cardview/widget/CardView;

    const v2, 0x7f060072

    invoke-static {v2}, Landroidx/lifecycle/o;->o(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 44
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v1

    iget-object v1, v1, Lq7/l;->f:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-void

    :cond_1
    const-string v1, "durationTab"

    .line 45
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/a;->onStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->j0:Z

    .line 3
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Z:Z

    .line 4
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->a0:Z

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result p2

    if-le p2, v1, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    if-nez p2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->P:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    .line 3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->lightingEffectsBatteryLow()V

    .line 4
    sget-object p1, Ls9/y;->a:Ls9/y;

    sget-object p2, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$c;->h:Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$c;

    invoke-virtual {p1, p0, p2}, Ls9/y;->g(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->P:Landroidx/appcompat/app/d;

    :cond_2
    return v3

    .line 5
    :cond_3
    iget p2, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object p2

    iget-object p2, p2, Lq7/l;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f11023a

    invoke-virtual {p2, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->e(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f110231

    .line 7
    invoke-virtual {p2, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->c(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 8
    new-instance v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$d;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$d;-><init>(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;)V

    invoke-virtual {p2, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 9
    invoke-virtual {p2}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x1020014

    if-ne p1, p2, :cond_5

    .line 11
    iput-boolean v3, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->J:Z

    :cond_5
    return v2
.end method

.method public final p0(IJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "durationIndicator"

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    const-string v4, "durationTab"

    const/4 v5, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_1

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->M:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    :goto_0
    int-to-float v0, p1

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 9
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_8
    throw v1

    .line 11
    :cond_9
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final q0(Lv7/c;)V
    .locals 2

    const-string v0, "effectType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const-string v1, "Lighting Effect Panel View"

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->firmwareUpdateNotificationToastShown(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v0

    iget-object v0, v0, Lq7/l;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    new-instance v1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$b;

    invoke-direct {v1, p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$b;-><init>(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;)V

    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    .line 4
    sget-object v0, Lv7/c$e;->c:Lv7/c$e;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object p1

    iget-object p1, p1, Lq7/l;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f11023c

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->e(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f110236

    .line 6
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->c(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object p1

    iget-object p1, p1, Lq7/l;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f11023d

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->e(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f110238

    .line 9
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->c(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object p1

    iget-object p1, p1, Lq7/l;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f11023b

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->e(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f110234

    .line 12
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->c(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2

    const-string v0, "tab"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f06029d

    invoke-static {v1}, Landroidx/lifecycle/o;->o(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->V(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "durationIndicator"

    .line 5
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final r0()Lq7/l;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->I:Lq7/l;

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

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->Q:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final u0(Lv7/c;I)V
    .locals 8

    const-string v0, "effectType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durationState"

    invoke-static {p2, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->O:Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;->a:Lv7/c;

    .line 3
    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->O:Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;->b:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq p2, v0, :cond_b

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->N:Ly8/i;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    new-instance v3, Ly8/i$b;

    new-instance v4, Ly8/i$a;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Ly8/i$a;-><init>(Lv7/c;Z)V

    invoke-direct {v3, v4, p2}, Ly8/i$b;-><init>(Ly8/i$a;I)V

    invoke-virtual {v0, v3}, Ly8/i;->m(Ly8/i$b;)V

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    const-string v3, "durationTab"

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    .line 8
    invoke-static {v0, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0602a9

    invoke-static {v6}, Landroidx/lifecycle/o;->o(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 11
    :goto_2
    invoke-static {v0, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v6}, Landroidx/lifecycle/o;->o(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_d

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 14
    :goto_3
    invoke-static {v0, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v6}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eq p2, v4, :cond_b

    .line 16
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    .line 17
    invoke-static {p2}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v4

    .line 18
    invoke-virtual {v0, v4}, Lh8/c;->c0(I)V

    .line 19
    iput-boolean v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->J:Z

    .line 20
    iget v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->j()I

    move-result v0

    goto :goto_4

    :cond_5
    const/16 v0, -0x32

    :goto_4
    const/4 v4, 0x5

    if-ne v0, v4, :cond_7

    .line 21
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->b()V

    goto :goto_5

    :cond_6
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_9

    .line 22
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->b()V

    goto :goto_5

    :cond_8
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b

    .line 23
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v7}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->b()V

    goto :goto_5

    :cond_a
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_b
    :goto_5
    new-instance v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;-><init>(Lv7/c;I)V

    iput-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->O:Lcom/nike/adapt/ui/lighting/LightingEffectsActivity$a;

    return-void

    :cond_c
    const-string p1, "durationIndicator"

    .line 25
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_d
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_e
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_f
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_10
    const-string p1, "lightsEffectAdapter"

    .line 29
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final v0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh8/c;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v1}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 4
    new-instance v1, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    iget-object v4, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v4}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v4, Lp8/j;

    invoke-direct {v4, v0}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v2, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/j;

    invoke-direct {v3, v1}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v0, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 7
    sget-object v0, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->r0()Lq7/l;

    move-result-object v0

    iget-object v0, v0, Lq7/l;->j:Landroid/widget/FrameLayout;

    const-string v1, "binding.lightsEffectsParent"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final w0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->j()I

    move-result v0

    const/16 v1, -0x32

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->p0(IJ)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lh8/c;->c0(I)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    :cond_0
    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 6
    invoke-static {v1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v0, 0x7f06029d

    invoke-static {v0}, Landroidx/lifecycle/o;->o(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const-string v0, "durationTab"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public final x0(Ly8/i$a;)V
    .locals 2

    const-string v0, "effect"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->i0:Ly8/i$a;

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void
.end method

.method public final y0(Ly8/i$a;)V
    .locals 11

    const-string v0, "effect"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    .line 2
    iget-object p1, p1, Ly8/i$a;->a:Lv7/c;

    .line 3
    invoke-virtual {p1}, Lv7/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->lightsEffectSelected(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->w0()V

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->v0()V

    .line 6
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {p1}, Lh8/c;->j()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    .line 7
    new-instance v1, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-direct {v1, v0, v8, v9, v8}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 8
    new-instance v10, Lcom/nike/adapt/adk/model/AdaptAnimation;

    const/16 v2, 0x1f4

    const/16 v3, 0x3e8

    const/16 v4, 0xabe

    const/16 v5, 0x3e8

    const/16 v6, 0x1f4

    move-object v0, v10

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/nike/adapt/adk/model/AdaptAnimation;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)V

    .line 9
    new-instance v1, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    invoke-direct {v1, v0, v8, v9, v8}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 10
    new-instance v8, Lcom/nike/adapt/adk/model/AdaptAnimation;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/nike/adapt/adk/model/AdaptAnimation;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)V

    .line 11
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v1, Lp8/h0;

    invoke-direct {v1, v10}, Lp8/h0;-><init>(Lcom/nike/adapt/adk/model/AdaptAnimation;)V

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 12
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v1, Lp8/h0;

    invoke-direct {v1, v8}, Lp8/h0;-><init>(Lcom/nike/adapt/adk/model/AdaptAnimation;)V

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 13
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setNeedToDisplayEffectsSubtitleForFirstTime(Z)V

    .line 14
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->f0:Lh8/c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lh8/c;->n0(Z)V

    .line 15
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->d0:Z

    .line 16
    iput-boolean v0, p0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->e0:Z

    return-void
.end method
