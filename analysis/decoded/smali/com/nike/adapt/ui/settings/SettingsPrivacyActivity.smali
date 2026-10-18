.class public final Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;
.super Lf/e;
.source "DataOptInSwitchPreference.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Lq7/m0;

.field public final B:Lfd/d;

.field public final C:Lcom/nike/adapt/coroutine/MainCoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$a;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->B:Lfd/d;

    .line 3
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->C:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    return-void
.end method


# virtual methods
.method public final l0(ZZ)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->n0(Z)V

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->C:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    new-instance v4, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;-><init>(ZLcom/nike/adapt/ui/settings/SettingsPrivacyActivity;ZLjd/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m0(Z)V
    .locals 2

    const-string v0, "binding"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/m0;->a:Landroid/view/View;

    new-instance v0, Lo8/k;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lo8/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/m0;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final n0(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/m0;->b:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "SettingsPrivacyActivity#onCreate"

    const-string v1, "SettingsPrivacyActivity"

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
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->k:Landroidx/lifecycle/r;

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->C:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0052

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a012e

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    const v0, 0x7f0a014e

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    const v0, 0x7f0a0150

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_6

    const v0, 0x7f0a0151

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    const v0, 0x7f0a0152

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v5, :cond_6

    const v0, 0x7f0a0153

    .line 11
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    const v0, 0x7f0a0489

    .line 12
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 13
    invoke-static {v6}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 14
    new-instance v0, Lq7/m0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v3, v4, v5}, Lq7/m0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 15
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    .line 16
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f1101cd

    const v0, 0x7f0a00e3

    .line 17
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0, v3}, Lf/a;->m(Z)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    const-string v0, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "connectivity"

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 24
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p0, v3}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->m0(Z)V

    .line 27
    invoke-virtual {p0, v2, v3}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->l0(ZZ)V

    goto :goto_1

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/m0;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_1
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInPageViewed()V

    .line 31
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 32
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
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
