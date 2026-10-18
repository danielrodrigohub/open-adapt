.class public final synthetic Landroidx/lifecycle/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/lifecycle/c;->h:I

    iput-object p1, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/lifecycle/c;->h:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    check-cast v0, Ln5/s$a;

    iget-object v1, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    check-cast v1, Lq3/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    monitor-enter v1

    .line 2
    monitor-exit v1

    .line 3
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Ln5/s;->c(Lq3/e;)V

    return-void

    .line 4
    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    check-cast v0, Lm5/u;

    iget-object v1, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    check-cast v1, Lm5/u$b;

    .line 5
    invoke-virtual {v0}, Lm5/u;->c()I

    move-result v0

    invoke-interface {v1, v0}, Lm5/u$b;->a(I)V

    return-void

    .line 6
    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    check-cast v0, Lp4/i0;

    iget-object v1, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    check-cast v1, Ls3/u;

    .line 7
    iget-object v2, v0, Lp4/i0;->y:Lj4/b;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ls3/u$b;

    invoke-direct {v2, v3, v4}, Ls3/u$b;-><init>(J)V

    :goto_0
    iput-object v2, v0, Lp4/i0;->F:Ls3/u;

    .line 8
    invoke-interface {v1}, Ls3/u;->i()J

    move-result-wide v5

    iput-wide v5, v0, Lp4/i0;->G:J

    .line 9
    iget-boolean v2, v0, Lp4/i0;->M:Z

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-interface {v1}, Ls3/u;->i()J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lp4/i0;->H:Z

    if-eqz v2, :cond_2

    const/4 v5, 0x7

    .line 10
    :cond_2
    iput v5, v0, Lp4/i0;->I:I

    .line 11
    iget-object v2, v0, Lp4/i0;->n:Lp4/i0$b;

    iget-wide v3, v0, Lp4/i0;->G:J

    invoke-interface {v1}, Ls3/u;->f()Z

    move-result v1

    iget-boolean v5, v0, Lp4/i0;->H:Z

    check-cast v2, Lp4/j0;

    invoke-virtual {v2, v3, v4, v1, v5}, Lp4/j0;->z(JZZ)V

    .line 12
    iget-boolean v1, v0, Lp4/i0;->C:Z

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v0}, Lp4/i0;->z()V

    :cond_3
    return-void

    .line 14
    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    check-cast v0, Lp3/p$a;

    iget-object v1, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    check-cast v1, Lq3/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    monitor-exit v1

    .line 17
    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Lp3/p;->x(Lq3/e;)V

    return-void

    .line 18
    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/d;

    iget-object v1, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "this$0"

    .line 19
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$runnable"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/d;->d(Ljava/lang/Runnable;)V

    return-void

    .line 21
    :goto_2
    iget-object v0, p0, Landroidx/lifecycle/c;->i:Ljava/lang/Object;

    check-cast v0, Li9/g;

    iget-object v1, p0, Landroidx/lifecycle/c;->j:Ljava/lang/Object;

    check-cast v1, Lfd/d;

    sget-object v2, Li9/g;->K0:Li9/g$a;

    const-string v2, "this$0"

    .line 22
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$rightIndicators$delegate"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v2, v0, Li9/g;->q0:Lx8/o0;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    sget-object v4, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v4

    invoke-virtual {v2, v4}, Lx8/e1;->d(I)V

    .line 24
    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x800005

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 26
    iget-object v1, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lq7/o0;->g:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->b:Lq7/l1;

    iget-object v1, v1, Lq7/l1;->b:Landroid/widget/LinearLayout;

    new-instance v2, Landroidx/appcompat/widget/g1;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/widget/g1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string v0, "rightShoeScaleControllerUiHelper"

    .line 27
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
