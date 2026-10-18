.class public abstract Lp8/q;
.super Lf/e;
.source "EventBasedActivity.kt"

# interfaces
.implements Ls7/a;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public final A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

.field public final B:Li8/d;

.field public C:Z

.field public D:Lcom/newrelic/agent/android/tracing/Trace;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Li8/d;

    invoke-direct {v2, v0, v1}, Li8/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    iput-object v2, p0, Lp8/q;->B:Li8/d;

    return-void
.end method

.method private final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/q;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp8/q;->C:Z

    .line 3
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->b(Ls7/a;)V

    .line 4
    invoke-virtual {p0}, Lp8/q;->m0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lp8/q;->D:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public m0()V
    .locals 0

    return-void
.end method

.method public n0()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x0

    const v1, 0x7f010024

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EventBasedActivity#onCreate"

    const-string v1, "EventBasedActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lp8/q;->D:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-static {v2, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :catch_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->k:Landroidx/lifecycle/r;

    .line 3
    iget-object v0, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 4
    invoke-direct {p0}, Lp8/q;->l0()V

    .line 5
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/nike/adapt/ui/PairingActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/p;->onPause()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lp8/q;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lp8/q;->C:Z

    .line 5
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->c(Ls7/a;)V

    .line 6
    invoke-virtual {p0}, Lp8/q;->n0()V

    .line 7
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/p;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/p;->onResume()V

    .line 2
    invoke-direct {p0}, Lp8/q;->l0()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 1
    invoke-super {p0}, Lf/e;->onStart()V

    .line 2
    invoke-direct {p0}, Lp8/q;->l0()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 1
    iget-boolean v0, p0, Lp8/q;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp8/q;->C:Z

    .line 3
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->c(Ls7/a;)V

    .line 4
    invoke-virtual {p0}, Lp8/q;->n0()V

    .line 5
    :cond_0
    invoke-super {p0}, Lf/e;->onStop()V

    return-void
.end method
