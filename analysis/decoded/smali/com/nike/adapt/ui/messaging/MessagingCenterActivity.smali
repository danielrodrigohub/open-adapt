.class public final Lcom/nike/adapt/ui/messaging/MessagingCenterActivity;
.super Lf/e;
.source "MessagingCenterActivity.kt"

# interfaces
.implements Lv8/a;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public A:Lq7/n;

.field public B:Lb9/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final T(Lb9/e;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/o;->k(Landroid/app/Activity;Lb9/e;)V

    return-void
.end method

.method public final b(Lb9/e;)V
    .locals 1

    const-string v0, "ctaAction"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/o;->k(Landroid/app/Activity;Lb9/e;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "MessagingCenterActivity#onCreate"

    const-string v1, "MessagingCenterActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v1, 0x0

    :catch_0
    :try_start_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d002d

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v2, "rootView"

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    check-cast v0, Landroid/widget/FrameLayout;

    .line 6
    new-instance v2, Lq7/n;

    invoke-direct {v2, v0, v0}, Lq7/n;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 7
    iput-object v2, p0, Lcom/nike/adapt/ui/messaging/MessagingCenterActivity;->A:Lq7/n;

    .line 8
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const-string v0, "PARAM_MESSAGE_TYPE"

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.nike.adapt.ui.model.BigfootMessageType"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lb9/c;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    check-cast p1, Lb9/c;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    .line 12
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    const v0, 0x7f0a02e7

    .line 13
    sget-object v3, La9/a;->h0:La9/a$a;

    .line 14
    new-instance v3, La9/a;

    invoke-direct {v3}, La9/a;-><init>()V

    .line 15
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "PARAM_BIGFOOT_MESSAGE_TYPE"

    .line 16
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    invoke-virtual {v3, v4}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {v2, v0, v3, v1}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/a;->c()V

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/nike/adapt/ui/messaging/MessagingCenterActivity;->B:Lb9/c;

    .line 21
    iget-object p1, p0, Lcom/nike/adapt/ui/messaging/MessagingCenterActivity;->A:Lq7/n;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/n;->a:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    :cond_1
    const-string p1, "binding"

    .line 23
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/messaging/MessagingCenterActivity;->B:Lb9/c;

    if-eqz v0, :cond_0

    const-string v1, "PARAM_MESSAGE_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_0
    const-string p1, "messageType"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
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
