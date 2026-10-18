.class public final Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;
.super Lf/e;
.source "AdaptRequirementsActivity.kt"

# interfaces
.implements Lo7/h;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Lq7/b;

.field public final B:Lwa/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lwa/k;->b:Lwa/k;

    iput-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    return-void
.end method


# virtual methods
.method public final l0(Lja/b;)V
    .locals 6

    .line 1
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lq7/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lq7/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/b;->a:Landroid/widget/Button;

    .line 5
    invoke-interface {p1}, Lja/b;->c()Landroid/support/v4/media/a;

    move-result-object v4

    instance-of v4, v4, Lja/d;

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/b;->d:Landroid/widget/Button;

    .line 8
    invoke-interface {p1}, Lja/b;->d()Landroid/support/v4/media/a;

    move-result-object v4

    instance-of v4, v4, Lja/d;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-interface {p1}, Lja/b;->e()Landroid/support/v4/media/a;

    move-result-object v4

    instance-of v4, v4, Lja/d;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 9
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/b;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_5
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_6
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_7
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_8
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_9
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lq7/b;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lq7/b;->b:Landroid/widget/Button;

    .line 20
    invoke-interface {p1}, Lja/b;->b()Landroid/support/v4/media/a;

    move-result-object v1

    instance-of v1, v1, Lja/d;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lq7/b;->c:Landroid/widget/Button;

    .line 23
    invoke-interface {p1}, Lja/b;->a()Landroid/support/v4/media/a;

    move-result-object v1

    instance-of v1, v1, Lja/d;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lq7/b;->a:Landroid/widget/Button;

    .line 26
    invoke-interface {p1}, Lja/b;->c()Landroid/support/v4/media/a;

    move-result-object v1

    instance-of v1, v1, Lja/d;

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    :goto_2
    invoke-interface {p1}, Lja/b;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 29
    invoke-virtual {p0}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->onBackPressed()V

    :cond_b
    return-void

    .line 30
    :cond_c
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_d
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_e
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_f
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {v0, p0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v0

    check-cast v0, Lja/a;

    invoke-virtual {v0}, Lja/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :goto_0
    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "AdaptRequirementsActivity#onCreate"

    const-string v1, "AdaptRequirementsActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :catch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    sget-object v2, Lv9/e;->i:Lv9/e;

    invoke-interface {v0, v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d001d

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0048

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_5

    const v0, 0x7f0a0049

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_5

    const v0, 0x7f0a004a

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_5

    const v0, 0x7f0a004b

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_5

    const v0, 0x7f0a02ea

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    const v0, 0x7f0a02ee

    .line 11
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 12
    new-instance v0, Lq7/b;

    check-cast p1, Landroid/widget/LinearLayout;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lq7/b;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 13
    iput-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    .line 14
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 15
    iget-object p1, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    const-string v0, "binding"

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/b;->b:Landroid/widget/Button;

    .line 16
    new-instance v2, Lr9/a;

    .line 17
    new-instance v3, Le9/f;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Le9/f;-><init>(Ljava/lang/Object;I)V

    const/16 v5, 0xc8

    .line 18
    invoke-direct {v2, v3, v5}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/b;->c:Landroid/widget/Button;

    new-instance v2, Lr9/a;

    sget-object v3, Ll9/a;->h:Ll9/a;

    .line 21
    invoke-direct {v2, v3, v5}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/b;->a:Landroid/widget/Button;

    new-instance v2, Lr9/a;

    new-instance v3, Lo8/f;

    const/4 v6, 0x3

    invoke-direct {v3, p0, v6}, Lo8/f;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-direct {v2, v3, v5}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/b;->d:Landroid/widget/Button;

    new-instance v2, Lr9/a;

    new-instance v3, Lx8/j0;

    const/4 v6, 0x5

    invoke-direct {v3, p0, v6}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    .line 27
    invoke-direct {v2, v3, v5}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {p1, p0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->l0(Lja/b;)V

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->A:Lq7/b;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/b;->e:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 31
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 32
    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x17

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    array-length p1, p2

    :goto_0
    if-ge v2, p1, :cond_6

    .line 3
    aget-object v0, p2, v2

    .line 4
    aget v3, p3, v2

    if-ne v3, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lh9/b;->a:Lh9/b;

    invoke-virtual {v0, p0}, Lh9/l;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {v0, p0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->l0(Lja/b;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    array-length p1, p2

    :goto_2
    if-ge v2, p1, :cond_6

    .line 9
    aget-object v0, p2, v2

    .line 10
    aget v3, p3, v2

    if-ne v3, v1, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    sget-object v0, Lh9/b;->a:Lh9/b;

    invoke-virtual {v0, p0}, Lh9/l;->e(Landroid/content/Context;)V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {v0, p0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->l0(Lja/b;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/p;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {v0, p0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->l0(Lja/b;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lf/e;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lf/e;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
