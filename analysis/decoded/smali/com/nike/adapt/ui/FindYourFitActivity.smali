.class public final Lcom/nike/adapt/ui/FindYourFitActivity;
.super Lp8/q;
.source "FindYourFitActivity.kt"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/FindYourFitActivity$a;
    }
.end annotation


# instance fields
.field public E:Lcom/nike/adapt/adk/IDeviceController;

.field public F:Lcom/nike/adapt/adk/IAdaptRequester;

.field public G:Lea/m;

.field public H:Z

.field public I:Z

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Z

.field public M:Lo8/a;

.field public final N:Lfd/d;

.field public final O:Lfd/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/q;-><init>()V

    .line 2
    sget-object v0, Lcom/nike/adapt/ui/FindYourFitActivity$c;->h:Lcom/nike/adapt/ui/FindYourFitActivity$c;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->N:Lfd/d;

    .line 3
    sget-object v0, Lcom/nike/adapt/ui/FindYourFitActivity$b;->h:Lcom/nike/adapt/ui/FindYourFitActivity$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->O:Lfd/d;

    return-void
.end method

.method public static synthetic q0(Lcom/nike/adapt/ui/FindYourFitActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/nike/adapt/ui/FindYourFitActivity;->p0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final O(Lo8/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->M:Lo8/a;

    .line 2
    sget-object v0, Lcom/nike/adapt/ui/FindYourFitActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f0a01f8

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/FindYourFitActivity;->o0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->c()Lv7/h;

    move-result-object p1

    invoke-virtual {p1}, Lv7/h;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairCalibrateFitCompleted()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/FindYourFitActivity;->o0()Lh8/d;

    move-result-object p1

    sget-object v1, Lv7/g;->s:Lv7/g;

    invoke-interface {p1, v1}, Lh8/d;->h(Lv7/g;)V

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/FindYourFitActivity;->o0()Lh8/d;

    move-result-object p1

    sget-object v1, Lv7/h;->i:Lv7/h;

    invoke-interface {p1, v1}, Lh8/d;->i(Lv7/h;)V

    .line 7
    iget-boolean p1, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->L:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->G:Lea/m;

    if-eqz v2, :cond_2

    .line 9
    iget-object v1, v2, Lea/m;->u:Ljava/lang/String;

    :cond_2
    const-string v2, "pairID"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 12
    :cond_3
    new-instance p1, Lh9/v0;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 14
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 15
    new-instance p1, Li9/t;

    invoke-direct {p1}, Li9/t;-><init>()V

    sget-object v2, Li9/t;->u0:Li9/t$a;

    .line 16
    sget-object v2, Li9/t;->u0:Li9/t$a;

    sget-object v2, Li9/t;->v0:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->c()V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 19
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 20
    new-instance p1, Li9/g;

    invoke-direct {p1}, Li9/g;-><init>()V

    sget-object v2, Li9/g;->K0:Li9/g$a;

    .line 21
    sget-object v2, Li9/g;->K0:Li9/g$a;

    sget-object v2, Li9/g;->L0:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->c()V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 24
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 25
    new-instance p1, Li9/b0;

    invoke-direct {p1}, Li9/b0;-><init>()V

    sget-object v2, Li9/b0;->q0:Li9/b0$a;

    .line 26
    sget-object v2, Li9/b0;->q0:Li9/b0$a;

    sget-object v2, Li9/b0;->r0:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->c()V

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 29
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 30
    new-instance p1, Li9/y;

    invoke-direct {p1}, Li9/y;-><init>()V

    sget-object v2, Li9/y;->h0:Li9/y$b;

    .line 31
    sget-object v2, Li9/y;->h0:Li9/y$b;

    sget-object v2, Li9/y;->i0:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->c()V

    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/nike/adapt/ui/FindYourFitActivity;->p0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final o0()Lh8/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->N:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method

.method public final onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
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
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->E:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->G:Lea/m;

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v3, v1}, Lcom/nike/adapt/ui/FindYourFitActivity;->q0(Lcom/nike/adapt/ui/FindYourFitActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v3, p1, v2}, Lcom/nike/adapt/ui/FindYourFitActivity;->q0(Lcom/nike/adapt/ui/FindYourFitActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_0

    :cond_3
    const-string p1, "deviceController"

    .line 10
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_4
    instance-of v0, p1, Lcom/nike/adapt/adk/Disconnected;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v3, v1}, Lcom/nike/adapt/ui/FindYourFitActivity;->q0(Lcom/nike/adapt/ui/FindYourFitActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_0

    .line 14
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v3, p1, v2}, Lcom/nike/adapt/ui/FindYourFitActivity;->q0(Lcom/nike/adapt/ui/FindYourFitActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 7

    .line 1
    sget-object v0, Lo8/a;->l:Lo8/a;

    sget-object v1, Lo8/a;->h:Lo8/a;

    sget-object v2, Lo8/a;->i:Lo8/a;

    iget-object v3, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->M:Lo8/a;

    if-nez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/nike/adapt/ui/FindYourFitActivity$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_5

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    const/4 v0, 0x4

    if-eq v3, v0, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    invoke-virtual {p0, v2}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v1

    sget-object v3, Li9/g;->K0:Li9/g$a;

    .line 4
    sget-object v3, Li9/g;->K0:Li9/g$a;

    sget-object v3, Li9/g;->L0:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    check-cast v1, Li9/g;

    .line 7
    iget-boolean v6, v1, Li9/g;->H0:Z

    :cond_3
    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 8
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    if-eqz v6, :cond_b

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->O:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    .line 10
    invoke-interface {v0, v4}, Lh8/a;->s(Z)V

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/FindYourFitActivity;->o0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->k()Lv7/g;

    move-result-object v0

    sget-object v2, Lv7/g;->s:Lv7/g;

    if-eq v0, v2, :cond_6

    goto :goto_2

    :cond_6
    move v4, v6

    :goto_2
    if-eqz v4, :cond_7

    .line 12
    invoke-virtual {p0, v1}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    goto :goto_3

    .line 13
    :cond_7
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    goto :goto_3

    .line 14
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v2

    sget-object v3, Li9/y;->h0:Li9/y$b;

    .line 15
    sget-object v3, Li9/y;->h0:Li9/y$b;

    sget-object v3, Li9/y;->i0:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.nike.adapt.ui.onboarding.ChooseYourShoesFragment"

    invoke-static {v2, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Li9/y;

    .line 17
    iget-object v3, v2, Li9/y;->f0:Ls9/r;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :cond_9
    if-eqz v3, :cond_a

    .line 18
    iget-boolean v3, v2, Li9/y;->e0:Z

    if-eqz v3, :cond_a

    .line 19
    invoke-virtual {p0}, Lcom/nike/adapt/ui/FindYourFitActivity;->o0()Lh8/d;

    move-result-object v0

    .line 20
    iget-object v2, v2, Li9/y;->f0:Ls9/r;

    .line 21
    invoke-interface {v0, v2}, Lh8/d;->e(Ls9/r;)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    goto :goto_3

    .line 23
    :cond_a
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    :cond_b
    :goto_3
    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0022

    .line 2
    invoke-virtual {p0, v0}, Lf/e;->setContentView(I)V

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lp8/q;->B:Li8/d;

    .line 5
    sget-object v2, Lo8/c;->h:Lo8/c;

    .line 6
    new-instance v3, Lo8/b;

    invoke-direct {v3, p0}, Lo8/b;-><init>(Lcom/nike/adapt/ui/FindYourFitActivity;)V

    .line 7
    check-cast v0, Lo7/f;

    invoke-virtual {v0, p0, v1, v2, v3}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->F:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 8
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lp8/q;->B:Li8/d;

    .line 10
    check-cast v0, Lo7/f;

    invoke-virtual {v0, p0, v1}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->E:Lcom/nike/adapt/adk/IDeviceController;

    const-string v0, "extra_is_deep_link"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->L:Z

    .line 14
    invoke-virtual {p0}, Lcom/nike/adapt/ui/FindYourFitActivity;->o0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->k()Lv7/g;

    move-result-object p1

    sget-object v0, Lv7/g;->s:Lv7/g;

    if-eq p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 15
    sget-object p1, Lo8/a;->h:Lo8/a;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    goto :goto_1

    .line 16
    :cond_3
    sget-object p1, Lo8/a;->i:Lo8/a;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/FindYourFitActivity;->O(Lo8/a;)V

    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/FindYourFitActivity;->L:Z

    const-string v1, "extra_is_deep_link"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final p0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 1
    iput-object v1, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->J:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3
    iput-boolean v2, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->H:Z

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 5
    iput-boolean v2, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->I:Z

    .line 6
    :cond_2
    iget-object v2, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->J:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 7
    iget-boolean v3, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->H:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->I:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->K:Ljava/lang/String;

    invoke-static {v3, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 8
    sget-object v3, Ls9/p;->a:Ls9/p;

    .line 9
    invoke-virtual {v3, v2}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Ls9/p;->l(Ls9/r;)Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v5, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->G:Lea/m;

    const-string v4, "deviceController"

    const/16 v17, 0x0

    if-eqz v5, :cond_4

    .line 11
    iget-object v11, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->J:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fbd

    invoke-static/range {v5 .. v16}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v5

    iput-object v5, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->G:Lea/m;

    .line 12
    iget-object v6, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->E:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v6, :cond_3

    invoke-interface {v6, v5}, Lcom/nike/adapt/adk/IDeviceController;->updatePair(Lea/m;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v17

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {v3, v1}, Ls9/p;->m(Ljava/lang/String;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 14
    new-instance v3, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    sget-object v5, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-direct {v3, v1, v5}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    .line 15
    iget-object v1, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->E:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_6

    sget-object v5, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v6, Lp8/j;

    invoke-direct {v6, v3}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v1, v5, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 16
    iget-object v1, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->E:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_5

    sget-object v4, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v5, Lp8/j;

    invoke-direct {v5, v3}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {v1, v4, v5}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 17
    iget-object v1, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->O:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/a;

    .line 18
    sget-object v4, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v4, v3, v3}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v3

    invoke-interface {v1, v3}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v17

    .line 20
    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v17

    .line 21
    :cond_7
    :goto_1
    iput-object v2, v0, Lcom/nike/adapt/ui/FindYourFitActivity;->K:Ljava/lang/String;

    :cond_8
    return-void
.end method
