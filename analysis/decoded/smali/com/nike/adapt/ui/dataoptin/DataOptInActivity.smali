.class public final Lcom/nike/adapt/ui/dataoptin/DataOptInActivity;
.super Lf/e;
.source "DataOptInActivity.kt"

# interfaces
.implements Ls8/d;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(Ls8/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v0, 0x7f0a004d

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 3
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 4
    new-instance p1, Ls8/a;

    invoke-direct {p1}, Ls8/a;-><init>()V

    const-string v2, "Confirmed"

    invoke-virtual {v1, v0, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 6
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 7
    new-instance p1, Ls8/b;

    invoke-direct {p1}, Ls8/b;-><init>()V

    const-string v2, "Prompted"

    invoke-virtual {v1, v0, p1, v2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    const-string v1, "Prompted"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v1

    const-string v2, "Confirmed"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lt8/a;->a:Lt8/a;

    invoke-virtual {v0}, Lt8/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInCloseSelected()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInSecondaryCloseSelected()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInConfirmationModalCloseSelected()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "DataOptInActivity#onCreate"

    const-string v1, "DataOptInActivity"

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
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d001f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a004d

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 7
    sget-object p1, Lt8/a;->a:Lt8/a;

    invoke-virtual {p1}, Lt8/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInModalPresented()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInSecondaryModalPresented()V

    .line 10
    :goto_0
    sget-object p1, Ls8/c;->h:Ls8/c;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/dataoptin/DataOptInActivity;->M(Ls8/c;)V

    .line 11
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
