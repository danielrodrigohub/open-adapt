.class public final Lcom/nike/adapt/ui/settings/SettingsSupportActivity;
.super Lf/e;
.source "SettingsSupportActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Lq7/z;


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
    .locals 9

    const-string v0, "SettingsSupportActivity#onCreate"

    const-string v1, "SettingsSupportActivity"

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

    const v0, 0x7f0d003c

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00fb

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 5
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v5

    const v0, 0x7f0a0109

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 7
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v6

    const v0, 0x7f0a015c

    .line 8
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 9
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v7

    const v0, 0x7f0a0365

    .line 10
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    const v0, 0x7f0a0454

    .line 11
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 12
    invoke-static {v2}, Lq7/q1;->a(Landroid/view/View;)Lq7/q1;

    move-result-object v8

    const v0, 0x7f0a0489

    .line 13
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 14
    invoke-static {v2}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 15
    new-instance v0, Lq7/z;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lq7/z;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lq7/q1;Lq7/q1;Lq7/q1;Lq7/q1;)V

    .line 16
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    .line 17
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f110220

    .line 18
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a00e3

    .line 19
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 20
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v0, p1}, Lf/a;->m(Z)V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    const-string v0, "binding"

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/z;->d:Lq7/q1;

    iget-object p1, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v2, 0x7f11021f

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/z;->a:Lq7/q1;

    iget-object p1, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v2, 0x7f110208

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/z;->b:Lq7/q1;

    iget-object p1, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v2, 0x7f11020a

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/z;->c:Lq7/q1;

    iget-object p1, p1, Lq7/q1;->b:Landroid/widget/TextView;

    const v2, 0x7f11021b

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/z;->d:Lq7/q1;

    .line 28
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 29
    new-instance v2, Lw8/c;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lw8/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/z;->a:Lq7/q1;

    .line 31
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 32
    new-instance v2, Lx8/p;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lx8/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/z;->b:Lq7/q1;

    .line 34
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 35
    new-instance v2, Lz8/f;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lz8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->A:Lq7/z;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/z;->c:Lq7/q1;

    .line 37
    iget-object p1, p1, Lq7/q1;->a:Landroid/widget/FrameLayout;

    .line 38
    new-instance v0, Lz8/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lz8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 40
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 49
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->onBackPressed()V

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
