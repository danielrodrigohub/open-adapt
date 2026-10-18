.class public final Lcom/nike/adapt/ui/settings/AppIconsActivity;
.super Lf/e;
.source "AppIconsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/settings/AppIconsActivity$a;
    }
.end annotation


# instance fields
.field public A:Lq7/a;

.field public B:Landroidx/appcompat/app/d;

.field public final C:Lh8/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->C:Lh8/c;

    return-void
.end method


# virtual methods
.method public final l0(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->C:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->Q()Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lq7/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->appIconSelected(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->C:Lh8/c;

    invoke-virtual {v0, p1}, Lh8/c;->L(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/a;->a:Landroid/widget/RadioButton;

    sget-object v3, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v3, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq7/a;->d:Landroid/widget/RadioButton;

    sget-object v1, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    if-ne p1, v1, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v0, 0x2

    if-ne p1, v3, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v0

    .line 8
    :goto_2
    sget-object v0, Ls9/y;->a:Ls9/y;

    new-instance v1, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;

    invoke-direct {v1, p0, v2, v5}, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;-><init>(Lcom/nike/adapt/ui/settings/AppIconsActivity;II)V

    invoke-virtual {v0, p0, p1, v1}, Ls9/y;->a(Landroid/app/Activity;Lcom/nike/adapt/ui/settings/AppIconsActivity$a;Lqd/l;)Landroidx/appcompat/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->B:Landroidx/appcompat/app/d;

    return-void

    .line 9
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairShoePreferenceBackSelected()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00b0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00b7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/settings/AppIconsActivity;->l0(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/settings/AppIconsActivity;->l0(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "AppIconsActivity#onCreate"

    const-string v1, "AppIconsActivity"

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

    const v0, 0x7f0d001c

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00af

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/RadioButton;

    if-eqz v6, :cond_8

    const v0, 0x7f0a00b0

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_8

    const v0, 0x7f0a00b1

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    const v0, 0x7f0a00b2

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    const v0, 0x7f0a00b3

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_8

    const v0, 0x7f0a00b4

    .line 9
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    const v0, 0x7f0a00b5

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    const v0, 0x7f0a00b6

    .line 11
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_8

    const v0, 0x7f0a00b7

    .line 12
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_8

    const v0, 0x7f0a00b8

    .line 13
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    const v0, 0x7f0a00b9

    .line 14
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    const v0, 0x7f0a0489

    .line 15
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 16
    invoke-static {v3}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 17
    new-instance v0, Lq7/a;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lq7/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RadioButton;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/Button;)V

    .line 18
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    .line 19
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f1101ac

    const v0, 0x7f0a00e3

    .line 20
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 22
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v0, v3}, Lf/a;->m(Z)V

    .line 25
    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->appIconScreenSelected()V

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->C:Lh8/c;

    invoke-virtual {p1, v2}, Lh8/c;->i(Z)V

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->C:Lh8/c;

    invoke-virtual {p1}, Lh8/c;->Q()Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    const-string v4, "binding"

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/a;->a:Landroid/widget/RadioButton;

    sget-object v5, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    if-ne p1, v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 29
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/a;->d:Landroid/widget/RadioButton;

    sget-object v5, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    if-ne p1, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/a;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/a;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->A:Lq7/a;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/a;->c:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 33
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 34
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_4
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_5
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_7
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 40
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/AppIconsActivity;->onBackPressed()V

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

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity;->B:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/n;->dismiss()V

    .line 2
    :cond_0
    invoke-super {p0}, Lf/e;->onStop()V

    return-void
.end method
