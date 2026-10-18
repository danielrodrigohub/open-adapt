.class public final Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;
.super Lp8/a;
.source "GestureIntroModalActivity.kt"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic T:I


# instance fields
.field public I:Lq7/g;

.field public J:Lq7/h1;

.field public K:Ln3/k0;

.field public final L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public M:Lcom/nike/adapt/adk/IDeviceController;

.field public N:Lcom/nike/adapt/adk/IAdaptRequester;

.field public O:Landroidx/appcompat/app/d;

.field public P:Landroidx/appcompat/app/d;

.field public Q:Z

.field public R:Z

.field public final S:Lfd/d;


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

    const v2, 0x7f0a0231

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->L:Ljava/util/ArrayList;

    .line 3
    iput-boolean v2, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->Q:Z

    const/4 v0, 0x3

    .line 4
    sget-object v1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$b;->h:Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$b;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->S:Lfd/d;

    return-void
.end method


# virtual methods
.method public final c()Landroidx/appcompat/app/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->O:Landroidx/appcompat/app/d;

    return-object v0
.end method

.method public final h(Landroidx/appcompat/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->P:Landroidx/appcompat/app/d;

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

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->L:Ljava/util/ArrayList;

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

    .line 2
    sget-object p1, Lh9/o;->c:Lh9/o;

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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
    iget-object v0, p0, Lp8/a;->F:Lt9/a;

    .line 4
    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 5
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 6
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->M:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/h1;->a:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 10
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->M:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lp8/a0;->a:Lp8/a0;

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "ctaBinding"

    .line 11
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 2
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
    instance-of v0, p1, Lcom/nike/adapt/adk/SetGestureConfigResult;

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$c;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$c;-><init>(Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;)V

    .line 5
    check-cast p1, Lcom/nike/adapt/adk/SetGestureConfigResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetGestureConfigResult;->getGestureConfigurationResponse()Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0, p0, v1}, Lp4/h;->u(Lw8/a;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0, p0, v1}, Lp4/h;->t(Lw8/a;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetGestureConfigResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->R:Z

    if-eqz p1, :cond_5

    new-instance p1, Lh9/v0;

    invoke-direct {p1, v1}, Lh9/v0;-><init>(Z)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 9
    :cond_4
    instance-of v0, p1, Lcom/nike/adapt/adk/GetGestureConfigResult;

    if-eqz v0, :cond_5

    .line 10
    check-cast p1, Lcom/nike/adapt/adk/GetGestureConfigResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetGestureConfigResult;->getGestureConfigResult()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->Q:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->I:Lq7/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/g;->b:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->p0()Lh8/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0}, Lh8/a;->X()V

    .line 4
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModalDismiss$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "binding"

    .line 6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0026

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a013e

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "Missing required view with ID: "

    if-eqz v3, :cond_10

    const v0, 0x7f0a022b

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v3, :cond_10

    const v0, 0x7f0a022c

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v5, :cond_10

    const v0, 0x7f0a022d

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_10

    const v0, 0x7f0a02e8

    .line 8
    invoke-static {v6, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_f

    const v0, 0x7f0a02e9

    .line 9
    invoke-static {v6, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_f

    .line 10
    new-instance v0, Lq7/h1;

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v7, v8}, Lq7/h1;-><init>(Landroid/widget/Button;Landroid/widget/Button;)V

    const v6, 0x7f0a022e

    .line 11
    invoke-static {p1, v6}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_e

    const v6, 0x7f0a022f

    .line 12
    invoke-static {p1, v6}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_e

    const v6, 0x7f0a0230

    .line 13
    invoke-static {p1, v6}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_e

    .line 14
    move-object v6, p1

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v7, 0x7f0a0232

    .line 15
    invoke-static {p1, v7}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_d

    const v7, 0x7f0a024d

    .line 16
    invoke-static {p1, v7}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v8, :cond_d

    .line 17
    new-instance p1, Lq7/g;

    invoke-direct {p1, v6, v3, v5, v0}, Lq7/g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/nike/adapt/ui/helper/BottomSheet;Lq7/h1;)V

    .line 18
    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->I:Lq7/g;

    .line 19
    invoke-virtual {p0, v6}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 20
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->I:Lq7/g;

    const-string v0, "binding"

    if-eqz p1, :cond_c

    iget-object p1, p1, Lq7/g;->c:Lq7/h1;

    const-string v3, "binding.gestureIntroCta"

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    .line 21
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModal$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 22
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v4

    .line 23
    iget-object v6, p0, Lp8/q;->B:Li8/d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v5, p0

    .line 24
    invoke-static/range {v4 .. v10}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->N:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 25
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 26
    iget-object v4, p0, Lp8/q;->B:Li8/d;

    .line 27
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v4}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->M:Lcom/nike/adapt/adk/IDeviceController;

    .line 28
    new-instance p1, Ln3/r$b;

    invoke-direct {p1, p0}, Ln3/r$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ln3/r$b;->a()Ln3/r;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ln3/k0;

    iput-object v4, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->K:Ln3/k0;

    const/4 v5, 0x2

    .line 29
    invoke-virtual {v4, v5}, Ln3/k0;->E(I)V

    const/4 v5, 0x0

    .line 30
    invoke-virtual {v4, v5}, Ln3/k0;->A0(F)V

    .line 31
    invoke-virtual {v4, v3}, Ln3/k0;->i(Z)V

    .line 32
    new-instance v5, Ll5/g0;

    invoke-direct {v5, p0}, Ll5/g0;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v6, Ll5/m;

    const v7, 0x7f100003

    invoke-static {v7}, Ll5/g0;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v7}, Ll5/m;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Ll5/g0;->l(Ll5/m;)J

    .line 34
    iget-object v5, v5, Ll5/g0;->g:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 35
    invoke-static {v5}, Ln3/y0;->c(Landroid/net/Uri;)Ln3/y0;

    move-result-object v5

    .line 36
    move-object v6, p1

    check-cast v6, Ln3/e;

    invoke-virtual {v6, v5}, Ln3/e;->f0(Ln3/y0;)V

    .line 37
    invoke-virtual {v4}, Ln3/k0;->b()V

    .line 38
    :cond_0
    new-instance v4, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$d;

    invoke-direct {v4, p1}, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$d;-><init>(Ln3/r;)V

    invoke-static {p1, v4}, Lp4/h;->x(Ln3/r;Lqd/a;)V

    .line 39
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->I:Lq7/g;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lq7/g;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v4, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->K:Ln3/k0;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Ln3/o1;)V

    .line 40
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->I:Lq7/g;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lq7/g;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    .line 41
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    const-string v0, "ctaBinding"

    if-eqz p1, :cond_9

    iget-object p1, p1, Lq7/h1;->a:Landroid/widget/Button;

    const v4, 0x7f11024e

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/h1;->a:Landroid/widget/Button;

    const v4, 0x7f06029d

    invoke-static {v4}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/h1;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080070

    sget-object v6, Lz/d;->a:Ljava/lang/ThreadLocal;

    .line 44
    invoke-static {v4, v5, v1}, Lz/d$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/h1;->a:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 47
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/h1;->a:Landroid/widget/Button;

    new-instance v4, Lw8/b;

    invoke-direct {v4, p0, v2}, Lw8/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/h1;->b:Landroid/widget/Button;

    const v4, 0x7f1100e4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/h1;->b:Landroid/widget/Button;

    const v4, 0x7f0602a1

    invoke-static {v4}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/h1;->b:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 51
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->J:Lq7/h1;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/h1;->b:Landroid/widget/Button;

    new-instance v0, Lw8/c;

    invoke-direct {v0, p0, v2}, Lw8/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_9
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_a
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_b
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_c
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_d
    move v0, v7

    goto :goto_0

    :cond_e
    move v0, v6

    goto :goto_0

    .line 63
    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_10
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->S:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final s(Landroidx/appcompat/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->O:Landroidx/appcompat/app/d;

    return-void
.end method

.method public final u()Landroidx/appcompat/app/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->P:Landroidx/appcompat/app/d;

    return-object v0
.end method
