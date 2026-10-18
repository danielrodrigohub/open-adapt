.class public final synthetic Lp4/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lp4/a0;->h:I

    iput-object p1, p0, Lp4/a0;->i:Ljava/lang/Object;

    iput-object p2, p0, Lp4/a0;->j:Ljava/lang/Object;

    iput-object p3, p0, Lp4/a0;->k:Ljava/lang/Object;

    iput-object p4, p0, Lp4/a0;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lp4/a0;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lp4/a0;->i:Ljava/lang/Object;

    check-cast v0, Lp4/e0$a;

    iget-object v1, p0, Lp4/a0;->j:Ljava/lang/Object;

    check-cast v1, Lp4/e0;

    iget-object v2, p0, Lp4/a0;->k:Ljava/lang/Object;

    check-cast v2, Lp4/x$b;

    iget-object v3, p0, Lp4/a0;->l:Ljava/lang/Object;

    check-cast v3, Lp4/u;

    .line 1
    iget v0, v0, Lp4/e0$a;->a:I

    invoke-interface {v1, v0, v2, v3}, Lp4/e0;->M(ILp4/x$b;Lp4/u;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lp4/a0;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;

    iget-object v1, p0, Lp4/a0;->j:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/adk/DeviceControllerResult;

    iget-object v2, p0, Lp4/a0;->k:Ljava/lang/Object;

    check-cast v2, Lx8/q0;

    iget-object v3, p0, Lp4/a0;->l:Ljava/lang/Object;

    check-cast v3, Lf8/b;

    sget v4, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->Q:I

    const-string v4, "this$0"

    .line 3
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$result"

    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$shoeControllerUiHelper"

    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$state"

    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    check-cast v1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    .line 5
    iget-object v4, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->P:Lt9/c;

    invoke-virtual {v4}, Lt9/c;->c()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->t0(Z)V

    .line 6
    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v4

    .line 7
    invoke-virtual {v2, v4, v6}, Lx8/q0;->k(IZ)V

    .line 8
    invoke-virtual {v1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    .line 9
    instance-of v2, v3, Lx8/i0;

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->p0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->s0(Lb9/a;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->u0(Lcom/nike/adapt/adk/Shoe;)V

    .line 12
    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "rightShoeControllerUiHelper"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v0, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz v0, :cond_3

    .line 13
    :goto_1
    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    goto :goto_3

    :cond_3
    const-string v0, "leftShoeControllerUiHelper"

    .line 14
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
