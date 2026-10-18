.class public final synthetic Ly0/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ly0/s;->h:I

    iput-object p1, p0, Ly0/s;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Ly0/s;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 1
    sget v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->E:I

    .line 2
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->settingsDeleteAccountServiceErrorPresented()V

    .line 4
    sget-object v4, Ls9/y;->a:Ls9/y;

    const v0, 0x7f110219

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    .line 6
    sget-object v9, Lm9/p0;->h:Lm9/p0;

    const v6, 0x7f110219

    const v7, 0x7f110218

    invoke-virtual/range {v4 .. v9}, Ls9/y;->j(Landroid/app/Activity;IILjava/lang/String;Lqd/l;)Landroidx/appcompat/app/d;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void

    .line 8
    :pswitch_1
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Li9/g;

    sget-object v1, Li9/g;->K0:Li9/g$a;

    const-string v1, "this$0"

    .line 9
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Li9/g;->p0:Lx8/g0;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-interface {v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v3

    invoke-virtual {v1, v3}, Lx8/e1;->d(I)V

    .line 11
    iget-object v1, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/o0;->g:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->a:Lq7/l1;

    iget-object v1, v1, Lq7/l1;->b:Landroid/widget/LinearLayout;

    new-instance v2, Landroidx/activity/g;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "leftShoeScaleControllerUiHelper"

    .line 12
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 13
    :pswitch_2
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->k0:I

    const-string v1, "$this_apply"

    .line 14
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0602a9

    .line 15
    invoke-static {v1}, Landroidx/lifecycle/o;->o(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 16
    :pswitch_3
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Lu4/n;

    sget-object v1, Lu4/n;->f0:Ljava/util/Set;

    invoke-virtual {v0}, Lu4/n;->D()V

    return-void

    :pswitch_4
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Lp4/i0;

    .line 17
    iput-boolean v3, v0, Lp4/i0;->M:Z

    return-void

    .line 18
    :pswitch_5
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Lo3/r0;

    .line 19
    invoke-virtual {v0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v1

    .line 20
    new-instance v2, Ln3/w;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Ln3/w;-><init>(Ljava/lang/Object;I)V

    const/16 v3, 0x404

    invoke-virtual {v0, v1, v3, v2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    .line 21
    iget-object v0, v0, Lo3/r0;->m:Lm5/o;

    invoke-virtual {v0}, Lm5/o;->c()V

    return-void

    .line 22
    :pswitch_6
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/room/c;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean v1, v0, Landroidx/room/c;->f:Z

    .line 25
    iget-object v2, v0, Landroidx/room/c;->h:Landroidx/room/c$b;

    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, v2, Landroidx/room/c$b;->b:[Z

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 28
    iput-boolean v3, v2, Landroidx/room/c$b;->d:Z

    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 31
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 33
    :goto_0
    iget-object v0, p0, Ly0/s;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;

    sget v3, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->Q:I

    const-string v3, "this$0"

    .line 34
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v3, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    const-string v4, "rightShoeControllerUiHelper"

    if-eqz v3, :cond_3

    .line 36
    invoke-virtual {v3, v1}, Lx8/q0;->p(Z)V

    .line 37
    iget-object v0, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->L:Lx8/n0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lx8/q0;->e()V

    return-void

    :cond_2
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
