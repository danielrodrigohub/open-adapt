.class public abstract Lo8/y;
.super Lf/e;
.source "UniteOnResultActivity.kt"

# interfaces
.implements Lo7/h;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public final A:Lh8/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lh8/e;->b:Lh8/e;

    .line 3
    iput-object v0, p0, Lo8/y;->A:Lh8/e;

    return-void
.end method


# virtual methods
.method public final _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 0

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x17

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lo8/y;->A:Lh8/e;

    sget-object p2, Lv7/g;->j:Lv7/g;

    invoke-virtual {p1, p2}, Lh8/e;->h(Lv7/g;)V

    .line 3
    sget-object p1, Lh9/i;->c:Lh9/i;

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
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
