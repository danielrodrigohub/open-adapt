.class public abstract Ll8/b;
.super Landroid/content/BroadcastReceiver;
.source "AdaptAlarmReceiver.kt"

# interfaces
.implements Ls7/a;


# instance fields
.field public h:Landroid/content/Context;

.field public i:Lt9/b;

.field public final j:Li8/d;

.field public k:Lcom/nike/adapt/adk/IDeviceController;

.field public l:Lcom/nike/adapt/adk/IAdaptRequester;

.field public m:Landroid/os/Handler;

.field public n:Ll8/a;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Li8/d;

    invoke-direct {v2, v0, v1}, Li8/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    iput-object v2, p0, Ll8/b;->j:Li8/d;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ll8/b;->m:Landroid/os/Handler;

    .line 6
    new-instance v0, Ll8/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll8/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ll8/b;->n:Ll8/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Battery Alarm: Unsubscribing and unregistering all listeners"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ll8/b;->m:Landroid/os/Handler;

    iget-object v1, p0, Ll8/b;->n:Ll8/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-boolean v0, p0, Ll8/b;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ll8/b;->o:Z

    .line 5
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p0}, Ls7/b;->c(Ls7/a;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Ll8/b;->b()Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IAdaptRequester;->disconnect()V

    .line 7
    invoke-virtual {p0}, Ll8/b;->b()Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IAdaptRequester;->unsubscribe()V

    .line 8
    invoke-virtual {p0}, Ll8/b;->c()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceController;->unsubscribe()V

    return-void
.end method

.method public final b()Lcom/nike/adapt/adk/IAdaptRequester;
    .locals 1

    iget-object v0, p0, Ll8/b;->l:Lcom/nike/adapt/adk/IAdaptRequester;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adaptRequester"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Lcom/nike/adapt/adk/IDeviceController;
    .locals 1

    iget-object v0, p0, Ll8/b;->k:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lt9/b;
    .locals 1

    iget-object v0, p0, Ll8/b;->i:Lt9/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "pairTracker"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Battery Alarm: Attempting to establish connection with shoes"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Ll8/b;->h:Landroid/content/Context;

    .line 3
    new-instance p1, Lt9/b;

    invoke-direct {p1}, Lt9/b;-><init>()V

    .line 4
    iput-object p1, p0, Ll8/b;->i:Lt9/b;

    .line 5
    iget-object p1, p0, Ll8/b;->m:Landroid/os/Handler;

    iget-object v0, p0, Ll8/b;->n:Ll8/a;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-boolean p1, p0, Ll8/b;->o:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ll8/b;->o:Z

    .line 8
    sget-object p1, Ls7/b;->a:Ls7/b;

    invoke-virtual {p1, p0}, Ls7/b;->b(Ls7/a;)V

    .line 9
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 10
    iget-object v0, p0, Ll8/b;->j:Li8/d;

    .line 11
    sget-object v1, Ll8/b$a;->h:Ll8/b$a;

    sget-object v2, Ll8/b$b;->h:Ll8/b$b;

    check-cast p1, Lo7/f;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    const-string v0, "<set-?>"

    .line 12
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Ll8/b;->l:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 14
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    iget-object v1, p0, Ll8/b;->j:Li8/d;

    check-cast p1, Lo7/f;

    invoke-virtual {p1, v3, v1}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    .line 15
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Ll8/b;->k:Lcom/nike/adapt/adk/IDeviceController;

    .line 17
    invoke-virtual {p0}, Ll8/b;->b()Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/IAdaptRequester;->subscribe()V

    return-void
.end method
