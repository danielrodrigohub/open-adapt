.class public final Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;
.super Lf/e;
.source "SettingsRegulatoryActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Lq7/r1;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    const-string v0, "Pressed: US Regulatory"

    .line 2
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->B:Ljava/lang/String;

    const-string v0, "Pressed: Canada Regulatory"

    .line 3
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->C:Ljava/lang/String;

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
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "SettingsRegulatoryActivity#onCreate"

    const-string v2, "SettingsRegulatoryActivity"

    invoke-static {v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :catch_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d00e9

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a017e

    .line 4
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    const v3, 0x7f0a017f

    .line 5
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    const v3, 0x7f0a0180

    .line 6
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    const v3, 0x7f0a02fa

    .line 7
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_f

    const v3, 0x7f0a0364

    .line 8
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_f

    const v3, 0x7f0a0383

    .line 9
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_f

    const v3, 0x7f0a0384

    .line 10
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_f

    const v3, 0x7f0a0385

    .line 11
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_f

    const v3, 0x7f0a0386

    .line 12
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_f

    const v3, 0x7f0a0387

    .line 13
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_f

    const v3, 0x7f0a0388

    .line 14
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_f

    const v3, 0x7f0a0389

    .line 15
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_f

    const v3, 0x7f0a0456

    .line 16
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_f

    const v3, 0x7f0a0489

    .line 17
    invoke-static {v1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 18
    invoke-static {v5}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 19
    new-instance v3, Lq7/r1;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v6, v3

    move-object v7, v1

    invoke-direct/range {v6 .. v12}, Lq7/r1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 20
    iput-object v3, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    .line 21
    invoke-virtual {v0, v1}, Lf/e;->setContentView(Landroid/view/View;)V

    const v1, 0x7f110196

    .line 22
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a00e3

    .line 23
    invoke-virtual {v0, v3}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v3, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v3}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lf/e;->i0()Lf/a;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v3, v1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v3, v5}, Lf/a;->m(Z)V

    .line 27
    :cond_0
    sget-object v1, Lh8/c;->b:Lh8/c;

    .line 28
    invoke-virtual {v1}, Lh8/c;->getShoeType()Ls9/r;

    move-result-object v1

    .line 29
    iget-object v3, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    const-string v6, "binding"

    if-eqz v3, :cond_e

    iget-object v3, v3, Lq7/r1;->a:Landroid/widget/TextView;

    sget-object v7, Ls9/p;->a:Ls9/p;

    invoke-virtual {v7, v1}, Ls9/p;->l(Ls9/r;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v3, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lq7/r1;->a:Landroid/widget/TextView;

    .line 31
    invoke-virtual {v7, v1}, Ls9/p;->j(Ls9/r;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    const/4 v7, -0x1

    goto :goto_0

    .line 33
    :cond_1
    sget-object v7, Ls9/p$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    :goto_0
    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v7, v10, :cond_2

    if-eq v7, v12, :cond_2

    if-eq v7, v9, :cond_2

    if-eq v7, v11, :cond_2

    if-eq v7, v8, :cond_2

    const-string v7, "QYU-ADAPTBB"

    goto :goto_1

    :cond_2
    const-string v7, "QYU-LE01"

    .line 34
    :goto_1
    iget-object v13, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v13, :cond_c

    iget-object v13, v13, Lq7/r1;->d:Landroid/widget/TextView;

    const v14, 0x7f11006c

    new-array v15, v5, [Landroid/util/Pair;

    .line 35
    new-instance v3, Landroid/util/Pair;

    const-string v2, "id"

    invoke-direct {v3, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v15, v4

    .line 36
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v3, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lq7/r1;->e:Landroid/view/View;

    const v7, 0x7f11023f

    .line 39
    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    iget-object v13, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v13, :cond_a

    iget-object v13, v13, Lq7/r1;->d:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    .line 41
    :cond_3
    sget-object v3, Ls9/p$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v3, v3, v1

    :goto_2
    if-eq v3, v10, :cond_4

    if-eq v3, v12, :cond_4

    if-eq v3, v9, :cond_4

    if-eq v3, v11, :cond_4

    if-eq v3, v8, :cond_4

    const-string v1, "4571A-ADAPTBB"

    goto :goto_3

    :cond_4
    const-string v1, "4571A-LE01"

    .line 42
    :goto_3
    iget-object v3, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v3, :cond_9

    iget-object v3, v3, Lq7/r1;->c:Landroid/widget/TextView;

    const v7, 0x7f11006b

    new-array v5, v5, [Landroid/util/Pair;

    .line 43
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v4

    .line 44
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lq7/r1;->b:Landroid/view/View;

    const v2, 0x7f110193

    .line 47
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lq7/r1;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lq7/r1;->e:Landroid/view/View;

    new-instance v2, Li9/b;

    invoke-direct {v2, v0, v12}, Li9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->A:Lq7/r1;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lq7/r1;->b:Landroid/view/View;

    new-instance v2, Lw8/b;

    invoke-direct {v2, v0, v11}, Lw8/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 52
    :cond_5
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_6
    const/4 v1, 0x0

    .line 53
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v1, 0x0

    .line 54
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/4 v1, 0x0

    .line 55
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x0

    .line 56
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/4 v1, 0x0

    .line 57
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v1, 0x0

    .line 58
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v1, v2

    .line 59
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v1, v2

    .line 60
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object v1, v2

    .line 61
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->onBackPressed()V

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
