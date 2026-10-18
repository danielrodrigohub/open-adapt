.class public final Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;
.super Lf/e;
.source "SettingsVoiceActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;,
        Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Lq7/c0;

.field public final B:Lfd/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$c;->h:Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$c;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->B:Lfd/d;

    return-void
.end method


# virtual methods
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
    .locals 10

    const-string v0, "SettingsVoiceActivity#onCreate"

    const-string v1, "SettingsVoiceActivity"

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

    const v0, 0x7f0d003f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0a007e

    .line 5
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    if-eqz v3, :cond_6

    const v2, 0x7f0a0489

    .line 6
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 7
    invoke-static {v3}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    const v2, 0x7f0a0497

    .line 8
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_6

    const v2, 0x7f0a0498

    .line 9
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_6

    const v2, 0x7f0a0499

    .line 10
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 11
    new-instance p1, Lq7/c0;

    invoke-direct {p1, v0, v3, v4, v5}, Lq7/c0;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    .line 12
    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    .line 13
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 14
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->settingsVoiceScreenViewed()V

    const p1, 0x7f1101e5

    const/4 v0, 0x4

    const v2, 0x7f0a00e3

    .line 15
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, v2}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v2, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 17
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v2, v3}, Lf/a;->m(Z)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    const-string v2, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/c0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    invoke-direct {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 22
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 23
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/c0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v6, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    const v7, 0x7f1101da

    const v8, 0x7f1101d9

    const v9, 0x7f0801e5

    invoke-direct {v6, v7, v8, v9}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;-><init>(III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v6, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    const v7, 0x7f1101dc

    const v8, 0x7f1101db

    const v9, 0x7f0801e3

    invoke-direct {v6, v7, v8, v9}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;-><init>(III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v6, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    const v7, 0x7f1101de

    const v8, 0x7f1101dd

    const v9, 0x7f0801e4

    invoke-direct {v6, v7, v8, v9}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;-><init>(III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v6, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    const v7, 0x7f1101e0

    const v8, 0x7f1101df

    const v9, 0x7f0801e1

    invoke-direct {v6, v7, v8, v9}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;-><init>(III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v6, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    const v7, 0x7f1101e2

    const v8, 0x7f1101e1

    const v9, 0x7f0801e2

    invoke-direct {v6, v7, v8, v9}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;-><init>(III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-direct {v4, v5}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 31
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->B:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    .line 32
    invoke-interface {p1}, Lh8/a;->D()Z

    move-result p1

    if-nez p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/c0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Li8/f;

    invoke-direct {v4, p0, v0}, Li8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->B:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    .line 35
    invoke-interface {p1}, Lh8/a;->m()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/c0;->c:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 38
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 39
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 43
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->onBackPressed()V

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
