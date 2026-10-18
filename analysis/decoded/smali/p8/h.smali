.class public abstract Lp8/h;
.super Landroidx/fragment/app/m;
.source "BreadCrumbFragment.kt"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public a0:Lcom/newrelic/agent/android/tracing/Trace;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    return-void
.end method


# virtual methods
.method public H(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "BreadCrumbFragment#onCreate"

    const-string v1, "BreadCrumbFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lp8/h;->a0:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-static {v2, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :catch_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->H(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/h;->p0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onCreate()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/h;->p0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onDestroy()"

    .line 2
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public O()V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/h;->p0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onPause()"

    .line 2
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public Q()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/h;->p0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onResume()"

    .line 3
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method

.method public S()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/h;->p0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onStart()"

    .line 3
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method

.method public T()V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/h;->p0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onStop()"

    .line 2
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public final _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lp8/h;->a0:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract p0()Ljava/lang/String;
.end method
