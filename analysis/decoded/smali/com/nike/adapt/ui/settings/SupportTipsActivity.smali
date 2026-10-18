.class public final Lcom/nike/adapt/ui/settings/SupportTipsActivity;
.super Lf/e;
.source "SupportTipsActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;
    }
.end annotation


# instance fields
.field public A:Lq7/a0;


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
    .locals 8

    const-string v0, "SupportTipsActivity#onCreate"

    const-string v1, "SupportTipsActivity"

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

    const v0, 0x7f0d003d

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0075

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    const v0, 0x7f0a0489

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6
    invoke-static {v4}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 7
    new-instance v0, Lq7/a0;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1, v3}, Lq7/a0;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity;->A:Lq7/a0;

    .line 9
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f11021f

    const/4 v0, 0x4

    const v3, 0x7f0a00e3

    .line 10
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v3}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v3, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v3}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 12
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v3, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v3, v4}, Lf/a;->m(Z)V

    :cond_0
    const/4 p1, 0x6

    new-array p1, p1, [Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    .line 15
    new-instance v3, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const v5, 0x7f110226

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f110225

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080188

    invoke-direct {v3, v5, v6, v7}, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, p1, v2

    .line 16
    new-instance v2, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const v3, 0x7f11022a

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f110229

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08018a

    invoke-direct {v2, v3, v5, v6}, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, p1, v4

    const/4 v2, 0x2

    .line 17
    new-instance v3, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const v5, 0x7f11022c

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f11022b

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08018b

    invoke-direct {v3, v5, v6, v7}, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, p1, v2

    const/4 v2, 0x3

    .line 18
    new-instance v3, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const v5, 0x7f110228

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f110227

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080189

    invoke-direct {v3, v5, v6, v7}, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, p1, v2

    .line 19
    new-instance v2, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const v3, 0x7f110224

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f110223

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080187

    invoke-direct {v2, v3, v5, v6}, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, p1, v0

    const/4 v0, 0x5

    .line 20
    new-instance v2, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const v3, 0x7f11022e

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f11022d

    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08018c

    invoke-direct {v2, v3, v5, v6}, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, p1, v0

    .line 21
    invoke-static {p1}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 22
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 24
    iget-object v2, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity;->A:Lq7/a0;

    const-string v3, "binding"

    if-eqz v2, :cond_2

    iget-object v2, v2, Lq7/a0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 25
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity;->A:Lq7/a0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/a0;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lm9/c0;

    invoke-direct {v1, p1}, Lm9/c0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 26
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 27
    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 30
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SupportTipsActivity;->onBackPressed()V

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
