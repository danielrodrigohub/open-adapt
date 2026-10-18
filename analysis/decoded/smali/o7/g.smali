.class public final Lo7/g;
.super Ljava/lang/Object;
.source "AdaptNotificationWatcher.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Ls7/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/g$a;
    }
.end annotation


# static fields
.field public static final h:Lo7/g;

.field public static final i:Lfd/d;

.field public static j:Lf/e;

.field public static k:Landroid/app/Activity;

.field public static l:Ls9/k;

.field public static m:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo7/g;

    invoke-direct {v0}, Lo7/g;-><init>()V

    sput-object v0, Lo7/g;->h:Lo7/g;

    .line 1
    sget-object v0, Lo7/g$b;->h:Lo7/g$b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lo7/g;->i:Lfd/d;

    .line 2
    new-instance v0, Ls9/k;

    invoke-direct {v0}, Ls9/k;-><init>()V

    sput-object v0, Lo7/g;->l:Ls9/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh8/a;
    .locals 1

    sget-object v0, Lo7/g;->i:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final b(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 18

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAnimationEndingState: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AdaptNotificationWatcher"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 2
    sget-object v0, Lo7/g$a;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "OK"

    const/16 v2, 0xc

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo7/g;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->U()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4
    sget-object v6, Lo7/g;->k:Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 5
    sget-object v5, Ls9/y;->a:Ls9/y;

    new-instance v15, Lo7/g$e;

    invoke-direct {v15, v6}, Lo7/g$e;-><init>(Landroid/app/Activity;)V

    sget-object v14, Lo7/g$f;->h:Lo7/g$f;

    const-string v0, "cancel"

    .line 6
    invoke-static {v14, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 8
    invoke-virtual {v0, v4}, Lh8/c;->n0(Z)V

    .line 9
    new-instance v0, Ls9/y$a;

    const-string v4, "LIGHTING_EFFECTS_UNKNOWN_ERROR"

    invoke-direct {v0, v4, v1, v3, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v7, 0x7f110186

    const/4 v8, 0x0

    const v9, 0x7f1100b3

    const/4 v10, 0x0

    const v11, 0x7f110070

    const v12, 0x7f1100c7

    const/4 v13, 0x0

    const/16 v17, 0x94

    move-object/from16 v16, v0

    .line 10
    invoke-static/range {v5 .. v17}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    .line 11
    :cond_1
    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-virtual {v0}, Lcom/nike/adapt/PeripheralConnectionManager;->stopAnimation()V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightingEffectsBatteryLow()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lo7/g;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->U()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    sget-object v0, Lo7/g;->k:Landroid/app/Activity;

    if-eqz v0, :cond_3

    sget-object v1, Ls9/y;->a:Ls9/y;

    sget-object v2, Lo7/g$d;->h:Lo7/g$d;

    invoke-virtual {v1, v0, v2}, Ls9/y;->g(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;

    .line 15
    :cond_3
    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-virtual {v0}, Lcom/nike/adapt/PeripheralConnectionManager;->stopAnimation()V

    goto :goto_0

    .line 16
    :cond_4
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightingEffectsBatteryOverHeat()V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lo7/g;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->U()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    sget-object v6, Lo7/g;->k:Landroid/app/Activity;

    if-eqz v6, :cond_5

    sget-object v5, Ls9/y;->a:Ls9/y;

    sget-object v9, Lo7/g$c;->h:Lo7/g$c;

    const-string v0, "action"

    .line 19
    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 21
    invoke-virtual {v0, v4}, Lh8/c;->n0(Z)V

    const v7, 0x7f1100f0

    const v8, 0x7f1100f1

    .line 22
    new-instance v10, Ls9/y$a;

    const-string v0, "LIGHTING_EFFECTS_OVER_HEAT"

    invoke-direct {v10, v0, v1, v3, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    invoke-static/range {v5 .. v10}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    .line 24
    :cond_5
    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-virtual {v0}, Lcom/nike/adapt/PeripheralConnectionManager;->stopAnimation()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 12

    .line 1
    sget-object v0, Lo7/g;->j:Lf/e;

    instance-of v1, v0, Lo7/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    sget-object v1, Lo7/g;->l:Ls9/k;

    .line 2
    iget-boolean v1, v1, Ls9/k;->a:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_d

    .line 3
    sget-object v1, Lo7/g;->m:Lcom/google/android/material/snackbar/Snackbar;

    if-nez v1, :cond_d

    const v1, 0x1020002

    .line 4
    invoke-virtual {v0, v1}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "InternetRequired"

    const/4 v4, -0x2

    sget-object v5, Lcom/google/android/material/snackbar/Snackbar;->r:[I

    move-object v5, v2

    .line 5
    :cond_0
    instance-of v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v6, :cond_1

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 7
    :cond_1
    instance-of v6, v0, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 10
    :cond_2
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    :cond_3
    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 12
    instance-of v6, v0, Landroid/view/View;

    if-eqz v6, :cond_4

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object v0, v2

    :cond_5
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_b

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 15
    sget-object v6, Lcom/google/android/material/snackbar/Snackbar;->r:[I

    invoke-virtual {v1, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 16
    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x1

    .line 17
    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 18
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v9, v7, :cond_6

    if-eq v11, v7, :cond_6

    goto :goto_2

    :cond_6
    move v10, v8

    :goto_2
    if-eqz v10, :cond_7

    .line 19
    sget v6, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar_include:I

    goto :goto_3

    .line 20
    :cond_7
    sget v6, Lcom/google/android/material/R$layout;->design_layout_snackbar_include:I

    .line 21
    :goto_3
    invoke-virtual {v5, v6, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 22
    new-instance v6, Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {v6, v1, v0, v5, v5}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ln6/f;)V

    .line 23
    iget-object v0, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iput v4, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:I

    .line 27
    invoke-static {}, Lcom/google/android/material/snackbar/g;->b()Lcom/google/android/material/snackbar/g;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/material/snackbar/Snackbar;->j()I

    move-result v1

    iget-object v3, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 28
    iget-object v4, v0, Lcom/google/android/material/snackbar/g;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 29
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/snackbar/g;->c(Lcom/google/android/material/snackbar/g$b;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 30
    iget-object v2, v0, Lcom/google/android/material/snackbar/g;->c:Lcom/google/android/material/snackbar/g$c;

    iput v1, v2, Lcom/google/android/material/snackbar/g$c;->b:I

    .line 31
    iget-object v1, v0, Lcom/google/android/material/snackbar/g;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    iget-object v1, v0, Lcom/google/android/material/snackbar/g;->c:Lcom/google/android/material/snackbar/g$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/g;->g(Lcom/google/android/material/snackbar/g$c;)V

    .line 33
    monitor-exit v4

    goto :goto_5

    .line 34
    :cond_8
    invoke-virtual {v0, v3}, Lcom/google/android/material/snackbar/g;->d(Lcom/google/android/material/snackbar/g$b;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 35
    iget-object v3, v0, Lcom/google/android/material/snackbar/g;->d:Lcom/google/android/material/snackbar/g$c;

    iput v1, v3, Lcom/google/android/material/snackbar/g$c;->b:I

    goto :goto_4

    .line 36
    :cond_9
    new-instance v5, Lcom/google/android/material/snackbar/g$c;

    invoke-direct {v5, v1, v3}, Lcom/google/android/material/snackbar/g$c;-><init>(ILcom/google/android/material/snackbar/g$b;)V

    iput-object v5, v0, Lcom/google/android/material/snackbar/g;->d:Lcom/google/android/material/snackbar/g$c;

    .line 37
    :goto_4
    iget-object v1, v0, Lcom/google/android/material/snackbar/g;->c:Lcom/google/android/material/snackbar/g$c;

    if-eqz v1, :cond_a

    const/4 v3, 0x4

    .line 38
    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/snackbar/g;->a(Lcom/google/android/material/snackbar/g$c;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 39
    monitor-exit v4

    goto :goto_5

    .line 40
    :cond_a
    iput-object v2, v0, Lcom/google/android/material/snackbar/g;->c:Lcom/google/android/material/snackbar/g$c;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/g;->h()V

    .line 42
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_5
    sput-object v6, Lo7/g;->m:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 45
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_c
    sget-object v0, Lo7/g;->m:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_d

    .line 47
    invoke-static {}, Lcom/google/android/material/snackbar/g;->b()Lcom/google/android/material/snackbar/g;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 48
    iget-object v4, v1, Lcom/google/android/material/snackbar/g;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 49
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/android/material/snackbar/g;->c(Lcom/google/android/material/snackbar/g$b;)Z

    move-result v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    .line 51
    sput-object v2, Lo7/g;->m:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_d
    :goto_6
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lo7/g;->k:Landroid/app/Activity;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ls7/b;->a:Ls7/b;

    invoke-virtual {p1, p0}, Ls7/b;->c(Ls7/a;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->b(Ls7/a;)V

    .line 2
    sput-object p1, Lo7/g;->k:Landroid/app/Activity;

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lf/e;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lo7/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf/e;

    sput-object p1, Lo7/g;->j:Lf/e;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lo7/g;->c()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-object p1, Lo7/g;->j:Lf/e;

    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 13
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lo7/g;->j:Lf/e;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    .line 4
    sget-object v11, Lo7/x;->a:Lo7/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " detecting if time to show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const-string v2, "AdaptNotificationWatcher"

    move-object v1, v11

    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 5
    instance-of v1, v0, Lo7/m;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v2, 0x14

    const/4 v12, 0x1

    if-gt v1, v2, :cond_0

    .line 7
    sget-object v3, Lcom/nike/adapt/BigfootApplicationState;->h:Lcom/nike/adapt/BigfootApplicationState;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-boolean v3, Lcom/nike/adapt/BigfootApplicationState;->j:Z

    if-nez v3, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying Critical Battery with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const-string v2, "AdaptNotificationWatcher"

    move-object v1, v11

    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 10
    sput-boolean v12, Lcom/nike/adapt/BigfootApplicationState;->j:Z

    .line 11
    sput-boolean v12, Lcom/nike/adapt/BigfootApplicationState;->i:Z

    .line 12
    new-instance p1, Lh9/w;

    new-instance v1, Lb9/d;

    invoke-direct {v1}, Lb9/d;-><init>()V

    invoke-direct {p1, v1}, Lh9/w;-><init>(Lb9/c;)V

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    if-gt v1, v2, :cond_3

    .line 13
    sget-object v1, Lcom/nike/adapt/BigfootApplicationState;->h:Lcom/nike/adapt/BigfootApplicationState;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-boolean v1, Lcom/nike/adapt/BigfootApplicationState;->i:Z

    if-nez v1, :cond_3

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying Low Battery with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const-string v2, "AdaptNotificationWatcher"

    move-object v1, v11

    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 16
    sput-boolean v12, Lcom/nike/adapt/BigfootApplicationState;->i:Z

    .line 17
    new-instance p1, Lh9/w;

    new-instance v1, Lb9/h;

    invoke-direct {v1}, Lb9/h;-><init>()V

    invoke-direct {p1, v1}, Lh9/w;-><init>(Lb9/c;)V

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/StopAnimationNotificationResult;->getEndingState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo7/g;->b(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;Lcom/nike/adapt/adk/DeviceControllerResult;)V

    goto :goto_0

    .line 19
    :cond_2
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAnimationResult;

    if-eqz v0, :cond_3

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getEndingState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo7/g;->b(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;Lcom/nike/adapt/adk/DeviceControllerResult;)V

    :cond_3
    :goto_0
    return-void
.end method
