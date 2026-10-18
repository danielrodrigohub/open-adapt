.class public final synthetic Lp4/z;
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

    iput p5, p0, Lp4/z;->h:I

    iput-object p1, p0, Lp4/z;->i:Ljava/lang/Object;

    iput-object p2, p0, Lp4/z;->j:Ljava/lang/Object;

    iput-object p3, p0, Lp4/z;->k:Ljava/lang/Object;

    iput-object p4, p0, Lp4/z;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lp4/z;->h:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lp4/z;->i:Ljava/lang/Object;

    check-cast v1, Lp4/e0$a;

    iget-object v2, v0, Lp4/z;->j:Ljava/lang/Object;

    check-cast v2, Lp4/e0;

    iget-object v3, v0, Lp4/z;->k:Ljava/lang/Object;

    check-cast v3, Lp4/r;

    iget-object v4, v0, Lp4/z;->l:Ljava/lang/Object;

    check-cast v4, Lp4/u;

    .line 1
    iget v5, v1, Lp4/e0$a;->a:I

    iget-object v1, v1, Lp4/e0$a;->b:Lp4/x$b;

    invoke-interface {v2, v5, v1, v3, v4}, Lp4/e0;->O(ILp4/x$b;Lp4/r;Lp4/u;)V

    return-void

    .line 2
    :goto_0
    iget-object v1, v0, Lp4/z;->i:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    iget-object v2, v0, Lp4/z;->j:Ljava/lang/Object;

    check-cast v2, Lcom/nike/adapt/adk/DeviceControllerResult;

    iget-object v3, v0, Lp4/z;->k:Ljava/lang/Object;

    check-cast v3, Lx8/q0;

    iget-object v4, v0, Lp4/z;->l:Ljava/lang/Object;

    check-cast v4, Lf8/b;

    sget v5, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    const-string v5, "this$0"

    .line 3
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$result"

    invoke-static {v2, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$shoeControllerUiHelper"

    invoke-static {v3, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$state"

    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v5, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->n0:Lt9/c;

    check-cast v2, Lcom/nike/adapt/adk/GetLacingPercentResult;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    .line 5
    invoke-virtual {v2}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lx8/q0;->k(IZ)V

    .line 6
    invoke-virtual {v2}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    .line 7
    sget-object v8, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateControllerBasedOnState\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lo7/u;->h:Lo7/u;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x38

    const/16 v17, 0x0

    const-string v9, "ShoeControllerActivity"

    invoke-static/range {v8 .. v17}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 8
    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "rightShoeControllerUiHelper"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 10
    :cond_1
    iget-object v3, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v3, :cond_5

    .line 11
    :goto_1
    instance-of v4, v4, Lx8/i0;

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    sget-object v4, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v1, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->A0(Lb9/a;)V

    goto :goto_2

    .line 14
    :cond_2
    sget-object v4, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v1, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->A0(Lb9/a;)V

    .line 15
    :goto_2
    invoke-virtual {v1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->C0()V

    .line 16
    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-virtual {v3, v2}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    goto :goto_3

    .line 18
    :cond_3
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-virtual {v3, v2}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    .line 19
    :goto_3
    invoke-virtual {v1, v7}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    :cond_4
    return-void

    :cond_5
    const-string v1, "leftShoeControllerUiHelper"

    .line 20
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
