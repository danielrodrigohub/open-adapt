.class public final Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;
.super Lf/e;
.source "SupportDeleteAccountActivity.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic E:I


# instance fields
.field public A:Lq7/v;

.field public B:Ld8/c;

.field public C:Z

.field public final D:Lcom/nike/adapt/coroutine/MainCoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->D:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    return-void
.end method


# virtual methods
.method public final l0()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->C:Z

    .line 2
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->farewellModalPresented()V

    .line 3
    sget-object v1, Ls9/m;->a:Ls9/m;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ls9/m;->b(ZZI)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/v;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    sget-object v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity$a;

    const-string v2, "positiveAction"

    .line 6
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lb6/b;

    const v3, 0x7f120173

    invoke-direct {v2, p0, v3}, Lb6/b;-><init>(Landroid/content/Context;I)V

    .line 8
    iget-object v3, v2, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v1, v3, Landroidx/appcompat/app/AlertController$b;->k:Z

    const v1, 0x7f0d0064

    .line 9
    invoke-virtual {v2, v1}, Lb6/b;->g(I)Lb6/b;

    invoke-virtual {v2}, Lb6/b;->create()Landroidx/appcompat/app/d;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    const v2, 0x7f0a024f

    .line 12
    invoke-virtual {v1, v2}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a00ed

    .line 13
    invoke-virtual {v1, v3}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0456

    .line 14
    invoke-virtual {v1, v4}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a016b

    .line 15
    invoke-virtual {v1, v5}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0106

    .line 16
    invoke-virtual {v1, v6}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 17
    sget-object v7, Ly/a;->a:Ljava/lang/Object;

    const v7, 0x7f08017b

    .line 18
    invoke-static {p0, v7}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 19
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 20
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f080104

    .line 21
    invoke-static {p0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 22
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v4, :cond_3

    const v2, 0x7f110095

    .line 23
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    if-eqz v5, :cond_4

    const v2, 0x7f110094

    .line 24
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    if-eqz v6, :cond_5

    const v2, 0x7f11002c

    .line 25
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    if-eqz v6, :cond_6

    .line 26
    new-instance v2, Lu8/j;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lu8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void

    :cond_7
    const-string v0, "binding"

    .line 27
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
    .locals 12

    const-string v0, "SupportDeleteAccountActivity#onCreate"

    const-string v1, "SupportDeleteAccountActivity"

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

    const v2, 0x7f0d0037

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a015d

    .line 4
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_8

    const v2, 0x7f0a015e

    .line 5
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_8

    const v2, 0x7f0a015f

    .line 6
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_8

    const v2, 0x7f0a0160

    .line 7
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/CheckBox;

    if-eqz v9, :cond_8

    const v2, 0x7f0a0161

    .line 8
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    const v2, 0x7f0a0162

    .line 9
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_8

    const v2, 0x7f0a0163

    .line 10
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_8

    const v2, 0x7f0a0164

    .line 11
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_8

    const v2, 0x7f0a0165

    .line 12
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    if-eqz v4, :cond_8

    const v2, 0x7f0a0166

    .line 13
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_8

    const v2, 0x7f0a0472

    .line 14
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_8

    const v2, 0x7f0a0489

    .line 15
    invoke-static {v0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 16
    invoke-static {v4}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 17
    new-instance v2, Lq7/v;

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v5, v2

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lq7/v;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/view/View;)V

    .line 18
    iput-object v2, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    .line 19
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const v0, 0x7f11021b

    const/4 v2, 0x4

    const v4, 0x7f0a00e3

    .line 20
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v4}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v4, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v4}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 22
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4, v0}, Lf/a;->o(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v4, v0}, Lf/a;->m(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "HAS_ALREADY_DELETED"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->C:Z

    const-string v0, "binding"

    if-eqz p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/v;->e:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/v;->e:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->l0()V

    goto :goto_1

    .line 29
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->settingsDeleteAccountPageViewed()V

    .line 32
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/v;->b:Landroid/widget/Button;

    new-instance v3, Le9/f;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Le9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/v;->c:Landroid/widget/CheckBox;

    new-instance v3, Lm9/n0;

    invoke-direct {v3, p0}, Lm9/n0;-><init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/v;->a:Landroid/widget/Button;

    new-instance v0, Lo8/f;

    invoke-direct {v0, p0, v2}, Lo8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :goto_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 36
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->C:Z

    const-string v1, "HAS_ALREADY_DELETED"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
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
