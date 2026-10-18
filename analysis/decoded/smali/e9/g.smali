.class public final synthetic Le9/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Le9/i;

.field public final synthetic i:Lea/e;

.field public final synthetic j:Ls9/n;

.field public final synthetic k:Le9/i$e;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Le9/i;Lea/e;Ls9/n;Le9/i$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/g;->h:Le9/i;

    iput-object p2, p0, Le9/g;->i:Lea/e;

    iput-object p3, p0, Le9/g;->j:Ls9/n;

    iput-object p4, p0, Le9/g;->k:Le9/i$e;

    iput p5, p0, Le9/g;->l:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Le9/g;->h:Le9/i;

    iget-object v0, p0, Le9/g;->i:Lea/e;

    iget-object v1, p0, Le9/g;->j:Ls9/n;

    iget-object v2, p0, Le9/g;->k:Le9/i$e;

    iget v3, p0, Le9/g;->l:I

    const-string v4, "this$0"

    .line 1
    invoke-static {p1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$current"

    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$holder"

    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v4, p1, Le9/i;->f:Z

    if-nez v4, :cond_3

    .line 3
    sget-object v4, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    invoke-interface {v5}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p1, Le9/i;->d:Le9/i$d;

    .line 5
    iget-boolean v5, v1, Ls9/n;->c:Z

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v6, v0, Lea/e;->j:Z

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-interface {v4, v0, v5, v6}, Le9/i$d;->N(Lea/e;ZZ)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p1, Le9/i;->d:Le9/i$d;

    invoke-interface {p1}, Le9/i$d;->B()V

    goto :goto_3

    .line 9
    :cond_3
    :goto_2
    iget-boolean v0, v1, Ls9/n;->c:Z

    if-nez v0, :cond_4

    .line 10
    iget-boolean v0, p1, Le9/i;->f:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v1, Ls9/n;->c:Z

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Le9/h;

    invoke-direct {v4, p1, v2, v1, v3}, Le9/h;-><init>(Le9/i;Le9/i$e;Ls9/n;I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_3
    return-void
.end method
