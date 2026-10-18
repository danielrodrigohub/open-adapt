.class public final Lcom/nike/adapt/ui/settings/SettingsRegulatoryFccDetailsActivity;
.super Lf/e;
.source "SettingsRegulatoryFccDetailsActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public A:Lq7/y;


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
    .locals 5

    const-string v0, "SettingsRegulatoryFccDetailsActivity#onCreate"

    const-string v1, "SettingsRegulatoryFccDetailsActivity"

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

    move-result-object v0

    const v2, 0x7f0d003b

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0076

    .line 4
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    const v2, 0x7f0a0489

    .line 5
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 6
    invoke-static {v4}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 7
    new-instance v2, Lq7/y;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0, v3}, Lq7/y;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 8
    iput-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryFccDetailsActivity;->A:Lq7/y;

    .line 9
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const-string v0, "REGULATORY_COUNTRY"

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ln9/b;

    if-nez p1, :cond_1

    sget-object p1, Ln9/c;->h:Ln9/c;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.nike.adapt.ui.settings.model.RegulatoryCountry"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln9/b;

    .line 12
    :cond_1
    :goto_0
    sget-object v0, Ln9/c;->h:Ln9/c;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lfd/e;

    const v0, 0x7f11019a

    .line 13
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f110195

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    invoke-direct {p1, v0, v2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Ln9/a;->h:Ln9/a;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lfd/e;

    const v0, 0x7f110194

    .line 17
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f110192

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-direct {p1, v0, v2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :goto_1
    iget-object v0, p1, Lfd/e;->h:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lfd/e;->i:Ljava/lang/Object;

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 24
    iget-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryFccDetailsActivity;->A:Lq7/y;

    if-eqz v2, :cond_4

    iget-object v1, v2, Lq7/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00e3

    .line 25
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 27
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {v0, p1}, Lf/a;->m(Z)V

    .line 30
    :cond_3
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    :cond_4
    const-string p1, "binding"

    .line 31
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_5
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw p1

    .line 33
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsRegulatoryFccDetailsActivity;->onBackPressed()V

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
