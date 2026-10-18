.class public final Lcom/nike/adapt/ui/settings/SettingsActivity;
.super Lf/e;
.source "SettingsActivity.kt"

# interfaces
.implements Landroidx/preference/c$f;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nike/adapt/ui/settings/SettingsActivity;->B:Z

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x0

    const v1, 0x7f010024

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "SettingsActivity#onCreate"

    const-string v1, "SettingsActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v1, 0x0

    :catch_0
    :try_start_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0034

    .line 2
    invoke-virtual {p0, v0}, Lf/e;->setContentView(I)V

    const v0, 0x7f1101d0

    const/4 v2, 0x0

    const/4 v3, 0x4

    and-int/2addr v3, v3

    if-eqz v3, :cond_0

    const v2, 0x7f0a00e3

    .line 3
    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v2}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v2, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v2, v3}, Lf/a;->m(Z)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "ADD_BACK_STACK"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :cond_2
    iput-boolean v3, p0, Lcom/nike/adapt/ui/settings/SettingsActivity;->B:Z

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "DEEP_LINK_KEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsActivity;->A:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 11
    new-instance p1, Landroidx/fragment/app/a;

    invoke-direct {p1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 12
    sget v0, Lo7/n;->a:I

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsActivity;->A:Ljava/lang/String;

    .line 13
    sget-object v2, Lm9/w;->K0:Lm9/w$a;

    .line 14
    new-instance v2, Lm9/w;

    invoke-direct {v2}, Lm9/w;-><init>()V

    if-eqz v0, :cond_4

    .line 15
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "PREF_KEY"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    :cond_4
    const v0, 0x7f0a0077

    .line 16
    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/a;->i()I

    .line 18
    :cond_5
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 1
    invoke-super {p0}, Lf/e;->onStart()V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->SETTINGS:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

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

.method public final q(Landroidx/preference/c;Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "caller"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "preferenceScreen"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 2
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    const p1, 0x7f01002c

    .line 3
    iput p1, v0, Landroidx/fragment/app/g0;->b:I

    const p1, 0x7f01002f

    .line 4
    iput p1, v0, Landroidx/fragment/app/g0;->c:I

    const p1, 0x7f01002a

    .line 5
    iput p1, v0, Landroidx/fragment/app/g0;->d:I

    const p1, 0x7f010032

    .line 6
    iput p1, v0, Landroidx/fragment/app/g0;->e:I

    .line 7
    sget-object p1, Lm9/w;->K0:Lm9/w$a;

    .line 8
    new-instance p1, Lm9/w;

    invoke-direct {p1}, Lm9/w;-><init>()V

    .line 9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v2, p2, Landroidx/preference/Preference;->r:Ljava/lang/String;

    const-string v3, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v1}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 13
    iget-object p2, p2, Landroidx/preference/Preference;->r:Ljava/lang/String;

    const v1, 0x7f0a0077

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    .line 15
    iget-boolean p1, p0, Lcom/nike/adapt/ui/settings/SettingsActivity;->B:Z

    if-eqz p1, :cond_1

    .line 16
    iget-boolean p1, v0, Landroidx/fragment/app/g0;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Landroidx/fragment/app/g0;->g:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, v0, Landroidx/fragment/app/g0;->i:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/a;->i()I

    return-void
.end method
