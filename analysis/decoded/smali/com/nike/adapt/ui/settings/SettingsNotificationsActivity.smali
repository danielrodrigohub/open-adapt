.class public final Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;
.super Lf/e;
.source "SettingsNotificationsActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Lq7/w;

.field public final B:Lh8/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->B:Lh8/c;

    return-void
.end method


# virtual methods
.method public final l0()Lq7/w;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->A:Lq7/w;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
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
    .locals 8

    const-string v0, "SettingsNotificationsActivity#onCreate"

    const-string v1, "SettingsNotificationsActivity"

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

    const v0, 0x7f0d0038

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a033e

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const v0, 0x7f0a033f

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v0, 0x7f0a0340

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_1

    const v0, 0x7f0a0341

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v0, 0x7f0a0489

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {v3}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 10
    new-instance v0, Lq7/w;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v1, v2}, Lq7/w;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    .line 11
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->A:Lq7/w;

    .line 12
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->l0()Lq7/w;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lq7/w;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f11015b

    const v0, 0x7f0a00e3

    .line 15
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 17
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v0, v1}, Lf/a;->m(Z)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->l0()Lq7/w;

    move-result-object p1

    iget-object p1, p1, Lq7/w;->b:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->B:Lh8/c;

    .line 21
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "PREF_IS_BATTERY_REMINDERS_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->l0()Lq7/w;

    move-result-object p1

    iget-object p1, p1, Lq7/w;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lm9/z;

    invoke-direct {v0, p0}, Lm9/z;-><init>(Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->l0()Lq7/w;

    move-result-object p1

    iget-object v1, p1, Lq7/w;->c:Landroid/widget/TextView;

    const p1, 0x7f110157

    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f110158

    .line 25
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 26
    new-instance v6, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity$a;

    invoke-direct {v6, p0}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity$a;-><init>(Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;)V

    const/16 v7, 0x30

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroidx/lifecycle/k0;->l(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv7/m;Lqd/a;I)V

    .line 27
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 29
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->onBackPressed()V

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
