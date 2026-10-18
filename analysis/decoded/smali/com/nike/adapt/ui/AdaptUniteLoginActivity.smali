.class public final Lcom/nike/adapt/ui/AdaptUniteLoginActivity;
.super Lf/e;
.source "AdaptUniteLoginActivity.kt"

# interfaces
.implements Lo7/h;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public A:Lh8/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "onActivityResult called requestCode: "

    const-string v2, " result code: "

    .line 2
    invoke-static {v1, p1, v2, p2}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptUniteLoginActivity"

    .line 3
    invoke-virtual {v0, v2, v1}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    const p1, 0x7f010023

    const p2, 0x7f010024

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/activity/k;->m(Landroidx/lifecycle/q;)Landroidx/lifecycle/l;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "AdaptUniteLoginActivity#onCreate"

    const-string v1, "AdaptUniteLoginActivity"

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
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 3
    iput-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity;->A:Lh8/c;

    .line 4
    invoke-static {p0}, Landroidx/activity/k;->m(Landroidx/lifecycle/q;)Landroidx/lifecycle/l;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;

    invoke-direct {v5, p0, v1}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

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
