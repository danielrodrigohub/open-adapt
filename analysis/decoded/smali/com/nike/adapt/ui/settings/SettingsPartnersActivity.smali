.class public final Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;
.super Lf/e;
.source "SettingsPartnersActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Lq7/x;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    const-string v0, "com.nike.ntc"

    .line 2
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->B:Ljava/lang/String;

    const-string v0, "com.nike.plusgps"

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l0(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->settingsPartnersAppSelected(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    .line 6
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    return-void
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

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "SettingsPartnersActivity#onCreate"

    const-string v1, "SettingsPartnersActivity"

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

    const v0, 0x7f0d0039

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0181

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const v0, 0x7f0a0182

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const v0, 0x7f0a0183

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const v0, 0x7f0a0342

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const v0, 0x7f0a0343

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v0, 0x7f0a0344

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const v0, 0x7f0a0345

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v0, 0x7f0a0358

    .line 11
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v0, 0x7f0a0359

    .line 12
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_4

    const v0, 0x7f0a035a

    .line 13
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_4

    const v0, 0x7f0a0489

    .line 14
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 15
    invoke-static {v5}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 16
    new-instance v0, Lq7/x;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v2, v3, v4}, Lq7/x;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 17
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->A:Lq7/x;

    .line 18
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f1101cc

    .line 19
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a00e3

    const-string v2, "toolbarTitle"

    .line 20
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 22
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v0, v2}, Lf/a;->m(Z)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->A:Lq7/x;

    const-string v0, "binding"

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/x;->a:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->A:Lq7/x;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/x;->c:Landroid/widget/Button;

    new-instance v3, Lx8/j0;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->A:Lq7/x;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/x;->b:Landroid/widget/Button;

    new-instance v0, Lo8/j;

    invoke-direct {v0, p0, v2}, Lo8/j;-><init>(Lf/e;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->settingsPartnersPageViewed()V

    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 30
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 34
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->onBackPressed()V

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
