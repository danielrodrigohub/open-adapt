.class public final Lcom/nike/adapt/ui/PairingActivity;
.super Lp8/q;
.source "PairingActivity.kt"


# static fields
.field public static final synthetic Y:I


# instance fields
.field public E:Lq7/s;

.field public F:Lq7/i1;

.field public G:Lcom/nike/adapt/service/AdaptAuthenticationService;

.field public H:Landroidx/appcompat/app/d;

.field public I:Landroidx/appcompat/app/d;

.field public J:Landroidx/appcompat/app/d;

.field public K:Landroidx/appcompat/app/d;

.field public L:Lkotlinx/coroutines/Job;

.field public M:Lkotlinx/coroutines/Job;

.field public N:Lkotlinx/coroutines/Job;

.field public O:I

.field public P:Ln3/k0;

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:Z

.field public final U:Landroid/os/Handler;

.field public final V:Lh8/c;

.field public final W:Lfd/d;

.field public final X:Lcom/nike/adapt/ui/PairingActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/q;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->U:Landroid/os/Handler;

    .line 4
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 5
    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->V:Lh8/c;

    const/4 v0, 0x3

    .line 6
    sget-object v1, Lcom/nike/adapt/ui/PairingActivity$c;->h:Lcom/nike/adapt/ui/PairingActivity$c;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->W:Lfd/d;

    .line 7
    new-instance v0, Lcom/nike/adapt/ui/PairingActivity$a;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/PairingActivity$a;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->X:Lcom/nike/adapt/ui/PairingActivity$a;

    return-void
.end method


# virtual methods
.method public final m0()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-object v0, Lwa/k;->b:Lwa/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v1

    .line 2
    check-cast v1, Lja/a;

    invoke-virtual {v1}, Lja/a;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 3
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 4
    sget-boolean v3, Lv9/t;->k:Z

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v1}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v0

    .line 6
    sget-object v1, Lv9/t;->e:Lv9/o0;

    const-string v3, "requirementsListener"

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lv9/o0;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    move-object v1, v0

    check-cast v1, Lja/a;

    invoke-virtual {v1}, Lja/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v0, Lv9/t;->e:Lv9/o0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lv9/o0;->a()V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    sget-object v1, Lv9/t;->e:Lv9/o0;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lv9/o0;->c(Lja/b;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    return-void

    .line 11
    :cond_5
    iget-boolean v0, p0, Lcom/nike/adapt/ui/PairingActivity;->S:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/nike/adapt/service/AdaptAuthenticationService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/nike/adapt/ui/PairingActivity;->X:Lcom/nike/adapt/ui/PairingActivity$a;

    invoke-virtual {p0, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v0, :cond_7

    .line 14
    iget v0, v0, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    .line 16
    iput-boolean v1, p0, Lcom/nike/adapt/ui/PairingActivity;->R:Z

    .line 17
    iget-object v3, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 18
    new-instance v6, Lo8/q;

    invoke-direct {v6, p0, v2}, Lo8/q;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 19
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->s0()V

    goto :goto_2

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->q0()V

    :goto_2
    return-void
.end method

.method public final o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->I:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/n;->dismiss()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->J:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/n;->dismiss()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/n;->dismiss()V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->K:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lf/n;->dismiss()V

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/k0;->i(Z)V

    return-void

    :cond_4
    const-string v0, "exoPlayer"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onAdaptDeviceControllerActionResult(Ln8/f;)V
    .locals 13
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v1, "authenticationResult"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p1, Ln8/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Ln8/j;

    .line 3
    sget-object v1, Ls9/o;->a:Ls9/o;

    .line 4
    iget-object v1, v0, Ln8/j;->h:Lcom/nike/adapt/adk/Shoe;

    .line 5
    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v1

    .line 6
    iget-object v0, v0, Ln8/j;->i:Ljava/lang/String;

    const-string v3, "colorwayCode"

    .line 7
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PREF_ON_BOARDING_RIGHT_COLORWAY_CODE"

    const-string v4, "PREF_ON_BOARDING_LEFT_COLORWAY_CODE"

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Ls9/o;->b:Lh8/e;

    .line 9
    invoke-virtual {v1}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Ls9/o;->b:Lh8/e;

    .line 11
    invoke-virtual {v1}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    :goto_0
    sget-object v0, Ls9/o;->b:Lh8/e;

    .line 13
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    move-object v1, v2

    .line 15
    :cond_1
    sget-object v2, Ls9/p;->a:Ls9/p;

    const-string v3, "Nike EARL BB"

    .line 16
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    const-string v1, "001-AO2582-001"

    .line 17
    :cond_3
    sget-object v3, Lo7/x;->a:Lo7/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shoe Name Code Detected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo7/x;->a(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v1}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lh8/e;->e(Ls9/r;)V

    .line 20
    invoke-virtual {v0, v1}, Lh8/e;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_13

    .line 21
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, v2}, Lcom/nike/adapt/analytics/TrackManager;->shoeRecognizedWhenPaired(Ls9/r;)V

    goto/16 :goto_2

    .line 22
    :cond_4
    instance-of v1, p1, Ln8/q;

    if-eqz v1, :cond_5

    .line 23
    sget-object v0, Ls9/o;->a:Ls9/o;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ls9/o;->d:J

    .line 25
    iget-object v3, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 26
    new-instance v6, Lo8/n;

    invoke-direct {v6, p0, v2}, Lo8/n;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->L:Lkotlinx/coroutines/Job;

    goto/16 :goto_2

    .line 27
    :cond_5
    instance-of v1, p1, Ln8/i;

    if-eqz v1, :cond_6

    .line 28
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->W:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    .line 29
    invoke-interface {v0}, Lh8/d;->k()Lv7/g;

    move-result-object v0

    sget-object v1, Lv7/g;->l:Lv7/g;

    if-ne v0, v1, :cond_13

    .line 30
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->firstShoeConnectionAttempt()V

    goto/16 :goto_2

    .line 31
    :cond_6
    instance-of v1, p1, Ln8/p;

    const-string v3, "exoPlayer"

    const/4 v4, 0x2

    if-eqz v1, :cond_8

    .line 32
    iput v4, p0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    .line 33
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->o0()V

    .line 34
    iget-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v1, :cond_7

    const-wide/16 v3, 0x3390

    invoke-virtual {v1, v3, v4}, Ln3/e;->R(J)V

    .line 35
    move-object v0, p1

    check-cast v0, Ln8/p;

    .line 36
    iget-object v0, v0, Ln8/p;->h:Lcom/nike/adapt/adk/Shoe;

    .line 37
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    .line 38
    iget-object v3, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 39
    new-instance v6, Lo8/o;

    invoke-direct {v6, p0, v0, v2}, Lo8/o;-><init>(Lcom/nike/adapt/ui/PairingActivity;ZLjd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->M:Lkotlinx/coroutines/Job;

    .line 40
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->L:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_13

    new-instance v1, Lo8/p;

    invoke-direct {v1, p0}, Lo8/p;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lqd/l;)Lkotlinx/coroutines/DisposableHandle;

    goto/16 :goto_2

    .line 41
    :cond_7
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_8
    instance-of v1, p1, Ln8/r;

    if-eqz v1, :cond_b

    const/4 v0, 0x3

    .line 43
    iput v0, p0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    .line 44
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->o0()V

    .line 45
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v0, :cond_a

    const-wide/16 v3, 0x3fe8

    invoke-virtual {v0, v3, v4}, Ln3/e;->R(J)V

    .line 46
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lf/n;->dismiss()V

    .line 47
    :cond_9
    iget-object v3, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 48
    new-instance v6, Lo8/l;

    invoke-direct {v6, p0, v2}, Lo8/l;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->N:Lkotlinx/coroutines/Job;

    .line 49
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->M:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_13

    new-instance v1, Lo8/m;

    invoke-direct {v1, p0}, Lo8/m;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lqd/l;)Lkotlinx/coroutines/DisposableHandle;

    goto/16 :goto_2

    .line 50
    :cond_a
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_b
    instance-of v1, p1, Ln8/e;

    const-string v2, "GET_HELP"

    const/16 v3, 0x8

    if-eqz v1, :cond_e

    .line 52
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->p0()V

    .line 53
    iget v0, p0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    if-ne v0, v4, :cond_c

    .line 54
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->r0()V

    goto/16 :goto_2

    .line 55
    :cond_c
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->I:Landroidx/appcompat/app/d;

    if-nez v0, :cond_d

    .line 56
    sget-object v0, Ls9/y;->a:Ls9/y;

    new-instance v9, Lo8/s;

    invoke-direct {v9, p0}, Lo8/s;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    new-instance v10, Lo8/t;

    invoke-direct {v10, p0}, Lo8/t;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    .line 57
    new-instance v11, Ls9/y$a;

    const-string v1, "SHOE_ALREADY_PAIRED_DIALOG"

    const-string v4, "TRY_AGAIN"

    invoke-direct {v11, v1, v4, v2, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f1101ea

    const/4 v3, 0x0

    const v4, 0x7f1101e9

    const/4 v5, 0x0

    const v6, 0x7f110092

    const v7, 0x7f110075

    const/4 v8, 0x0

    const/16 v12, 0x94

    move-object v1, p0

    .line 58
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->I:Landroidx/appcompat/app/d;

    .line 60
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isShoeAlreadyPairedShown()V

    goto/16 :goto_2

    .line 61
    :cond_d
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 62
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isShoeAlreadyPairedShown()V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_13

    .line 64
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->I:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 65
    :cond_e
    instance-of v1, p1, Ln8/o;

    if-eqz v1, :cond_10

    .line 66
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->p0()V

    .line 67
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "ResetErrorDialog"

    const-string v2, "In GoToBleSettingsAuthenticationResult"

    invoke-virtual {v0, v1, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->J:Landroidx/appcompat/app/d;

    if-nez v0, :cond_f

    .line 69
    sget-object v0, Ls9/y;->a:Ls9/y;

    new-instance v9, Lo8/w;

    invoke-direct {v9, p0}, Lo8/w;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    new-instance v10, Lo8/x;

    invoke-direct {v10, p0}, Lo8/x;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    .line 70
    new-instance v11, Ls9/y$a;

    const-string v1, "RESET_BLE_SETTINGS_DIALOG"

    const-string v2, "DISMISS"

    const-string v4, "SETTINGS"

    invoke-direct {v11, v1, v2, v4, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f1101a1

    const/4 v3, 0x0

    const v4, 0x7f1100b2

    const/4 v5, 0x0

    const v6, 0x7f110092

    const v7, 0x7f1101d0

    const/4 v8, 0x0

    const/16 v12, 0x94

    move-object v1, p0

    .line 71
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->J:Landroidx/appcompat/app/d;

    goto/16 :goto_2

    .line 73
    :cond_f
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_13

    .line 75
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->J:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 76
    :cond_10
    instance-of v1, p1, Ln8/h;

    if-eqz v1, :cond_12

    .line 77
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->p0()V

    .line 78
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->K:Landroidx/appcompat/app/d;

    if-nez v0, :cond_11

    .line 79
    sget-object v0, Ls9/y;->a:Ls9/y;

    new-instance v9, Lo8/u;

    invoke-direct {v9, p0}, Lo8/u;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    new-instance v10, Lo8/v;

    invoke-direct {v10, p0}, Lo8/v;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    .line 80
    new-instance v11, Ls9/y$a;

    const-string v1, "NEW_BLE_CONNECTION_ERROR_DIALOG"

    const-string v4, "RECONNECT"

    invoke-direct {v11, v1, v4, v2, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f110272

    const/4 v3, 0x0

    const v4, 0x7f110273

    const v5, 0x7f11026c

    const v6, 0x7f1100c7

    const v7, 0x7f11026d

    const/4 v8, 0x0

    const/16 v12, 0x84

    move-object v1, p0

    .line 81
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->K:Landroidx/appcompat/app/d;

    goto :goto_2

    .line 83
    :cond_11
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_13

    .line 84
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->pairingConnectionErrorPresented()V

    .line 85
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->K:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 86
    :cond_12
    instance-of v0, p1, Ln8/g;

    if-eqz v0, :cond_13

    .line 87
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->o0()V

    :cond_13
    :goto_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->s0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 4
    sget-object v0, Ls9/o;->a:Ls9/o;

    .line 5
    sget-object v0, Ls9/o;->c:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Ls9/o;->b:Lh8/e;

    sget-object v1, Lv7/g;->k:Lv7/g;

    invoke-virtual {v0, v1}, Lh8/e;->h(Lv7/g;)V

    .line 7
    sget-object v1, Lv7/h;->i:Lv7/h;

    invoke-virtual {v0, v1}, Lh8/e;->i(Lv7/h;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0032

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0251

    .line 4
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    const v1, 0x7f0a0351

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v4, :cond_a

    .line 6
    check-cast v0, Landroid/widget/FrameLayout;

    .line 7
    new-instance v1, Lq7/s;

    invoke-direct {v1, v0, v4, v0}, Lq7/s;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/widget/FrameLayout;)V

    .line 8
    iput-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->E:Lq7/s;

    .line 9
    invoke-static {v0}, Lq7/i1;->a(Landroid/view/View;)Lq7/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    .line 10
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->E:Lq7/s;

    const-string v1, "binding"

    if-eqz v0, :cond_9

    .line 11
    iget-object v0, v0, Lq7/s;->a:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a00e3

    .line 13
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 15
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1101b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0, v4}, Lf/a;->m(Z)V

    :cond_0
    const-string v0, "extra_is_deep_link"

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v3

    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/nike/adapt/ui/PairingActivity;->T:Z

    .line 21
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity;->E:Lq7/s;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/s;->c:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity;->E:Lq7/s;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/s;->b:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 23
    new-instance p1, Ln3/r$b;

    invoke-direct {p1, p0}, Ln3/r$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ln3/r$b;->a()Ln3/r;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln3/k0;

    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    .line 24
    invoke-virtual {v0, v3}, Ln3/k0;->E(I)V

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v3}, Ln3/k0;->A0(F)V

    .line 26
    invoke-virtual {v0, v4}, Ln3/k0;->i(Z)V

    .line 27
    new-instance v3, Ll5/g0;

    invoke-direct {v3, p0}, Ll5/g0;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v4, Ll5/m;

    const v5, 0x7f100001

    invoke-static {v5}, Ll5/g0;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Ll5/m;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Ll5/g0;->l(Ll5/m;)J

    .line 29
    iget-object v3, v3, Ll5/g0;->g:Landroid/net/Uri;

    if-eqz v3, :cond_3

    .line 30
    invoke-static {v3}, Ln3/y0;->c(Landroid/net/Uri;)Ln3/y0;

    move-result-object v3

    .line 31
    check-cast p1, Ln3/e;

    invoke-virtual {p1, v3}, Ln3/e;->f0(Ln3/y0;)V

    .line 32
    invoke-virtual {v0}, Ln3/k0;->b()V

    .line 33
    :cond_3
    new-instance p1, Lcom/nike/adapt/ui/PairingActivity$b;

    invoke-direct {p1, p0}, Lcom/nike/adapt/ui/PairingActivity$b;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    invoke-virtual {v0, p1}, Ln3/k0;->a0(Ln3/o1$c;)V

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity;->E:Lq7/s;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/s;->b:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Ln3/o1;)V

    .line 35
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity;->E:Lq7/s;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/s;->b:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    return-void

    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "exoPlayer"

    .line 36
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_9
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lo8/r;

    invoke-direct {v1, p0, v0}, Lo8/r;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ln3/r;)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->U:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v0, "exoPlayer"

    .line 5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/PairingActivity;->T:Z

    const-string v1, "extra_is_deep_link"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lp8/q;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/PairingActivity;->s0()V

    return-void
.end method

.method public final p0()V
    .locals 2

    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/k0;->i(Z)V

    return-void

    :cond_0
    const-string v0, "exoPlayer"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q0()V
    .locals 2

    .line 1
    sget-object v0, Ls9/o;->a:Ls9/o;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ls9/o;->d:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/nike/adapt/ui/PairingActivity;->Q:I

    .line 5
    iget-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->I:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lf/n;->dismiss()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->J:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lf/n;->dismiss()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->K:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lf/n;->dismiss()V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lf/n;->dismiss()V

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1, v0}, Ln3/k0;->i(Z)V

    :cond_4
    return-void
.end method

.method public final r0()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Ls9/y;->a:Ls9/y;

    new-instance v10, Lcom/nike/adapt/ui/PairingActivity$d;

    invoke-direct {v10, p0}, Lcom/nike/adapt/ui/PairingActivity$d;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    new-instance v11, Lcom/nike/adapt/ui/PairingActivity$e;

    invoke-direct {v11, p0}, Lcom/nike/adapt/ui/PairingActivity$e;-><init>(Lcom/nike/adapt/ui/PairingActivity;)V

    .line 3
    new-instance v12, Ls9/y$a;

    const-string v0, "CONNECTION_ERROR_DIALOG"

    const-string v2, "TRY_AGAIN"

    const-string v3, "GET_HELP"

    const/16 v4, 0x8

    invoke-direct {v12, v0, v2, v3, v4}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f110078

    const/4 v4, 0x0

    const v5, 0x7f110076

    const/4 v6, 0x0

    const v7, 0x7f11023e

    const v8, 0x7f1100c7

    const/4 v9, 0x0

    const/16 v13, 0x94

    move-object v2, p0

    .line 4
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    .line 6
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isPairingConnectionErrorShown()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isPairingConnectionErrorShown()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lo7/x;->a:Lo7/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowManager.BadTokenException crash :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".message.toString()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->U:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nike/adapt/ui/PairingActivity;->R:Z

    invoke-virtual {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->d(Z)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/nike/adapt/ui/PairingActivity;->S:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/nike/adapt/ui/PairingActivity;->S:Z

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity;->X:Lcom/nike/adapt/ui/PairingActivity$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
