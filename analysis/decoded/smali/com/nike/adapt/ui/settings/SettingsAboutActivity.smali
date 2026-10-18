.class public final Lcom/nike/adapt/ui/settings/SettingsAboutActivity;
.super Lf/e;
.source "SettingsAboutActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Lq7/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/e;-><init>()V

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
    .locals 11

    const-string v0, "SettingsAboutActivity#onCreate"

    const-string v1, "SettingsAboutActivity"

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

    const v0, 0x7f0d0035

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a000e

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 5
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v5

    const v0, 0x7f0a0031

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 7
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v6

    const v0, 0x7f0a02c2

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_7

    const v0, 0x7f0a0365

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    const v0, 0x7f0a0371

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 11
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v7

    const v0, 0x7f0a0382

    .line 12
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 13
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v8

    const v0, 0x7f0a0421

    .line 14
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 15
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v9

    const v0, 0x7f0a0433

    .line 16
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 17
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v10

    const v0, 0x7f0a0489

    .line 18
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 19
    invoke-static {v2}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 20
    new-instance v0, Lq7/u;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lq7/u;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lq7/q1;Lq7/q1;Lq7/q1;Lq7/q1;Lq7/q1;Lq7/q1;)V

    .line 21
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    .line 22
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f11002a

    .line 23
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a00e3

    .line 24
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 25
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v0, v2}, Lf/a;->m(Z)V

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    const-string v0, "binding"

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/u;->e:Lq7/q1;

    .line 29
    iget-object v3, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v4, 0x7f110206

    invoke-static {v4}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 31
    new-instance v3, Lx8/p;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lx8/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/u;->a:Lq7/q1;

    .line 33
    iget-object v3, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v4, 0x7f1101a8

    invoke-static {v4}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 35
    new-instance v3, Lz8/f;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lz8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/u;->c:Lq7/q1;

    .line 37
    iget-object v3, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v5, 0x7f11017e

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 39
    new-instance v3, Lz8/e;

    invoke-direct {v3, p0, v2}, Lz8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/u;->f:Lq7/q1;

    .line 41
    iget-object v3, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v5, 0x7f110222

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 43
    new-instance v3, Lg9/a;

    invoke-direct {v3, p0, v2}, Lg9/a;-><init>(Lf/e;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/u;->d:Lq7/q1;

    .line 45
    iget-object v2, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v3, 0x7f110196

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 47
    new-instance v2, Le9/f;

    invoke-direct {v2, p0, v4}, Le9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->A:Lq7/u;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/u;->b:Lq7/q1;

    .line 49
    iget-object v0, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v1, 0x7f1101aa

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 51
    new-instance v0, Lo8/e;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lo8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 53
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 60
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->onBackPressed()V

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
