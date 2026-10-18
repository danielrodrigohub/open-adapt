.class public final synthetic Landroidx/activity/g;
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

    iput p2, p0, Landroidx/activity/g;->h:I

    iput-object p1, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/activity/g;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ln3/m1;

    const v2, 0x3ecccccd

    invoke-direct {v1, v2}, Ln3/m1;-><init>(F)V

    invoke-virtual {v0, v1}, Ln3/x1;->i0(Ln3/m1;)V

    :cond_1
    :goto_0
    return-void

    .line 4
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Lm9/v;

    sget-object v4, Lm9/v;->o0:Lm9/v$a;

    const-string v4, "this$0"

    .line 5
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/m;->B()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-boolean v4, v0, Landroidx/fragment/app/m;->G:Z

    if-nez v4, :cond_2

    .line 8
    iget-object v4, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 10
    iget-object v0, v0, Lm9/v;->k0:Lm9/o$b;

    if-eqz v0, :cond_3

    sget-object v1, Ls9/z;->k:Ls9/z;

    invoke-interface {v0, v1}, Lm9/o$b;->G(Ls9/z;)V

    goto :goto_2

    :cond_3
    const-string v0, "listener"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    return-void

    .line 11
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Li9/g;

    sget-object v4, Li9/g;->K0:Li9/g$a;

    const-string v4, "this$0"

    .line 12
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v4, v0, Li9/g;->s0:Lx8/f0;

    const-string v5, "leftShoeControllerUiHelper"

    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Lx8/q0;->p(Z)V

    .line 14
    iget-object v2, v0, Li9/g;->s0:Lx8/f0;

    if-eqz v2, :cond_6

    sget-object v4, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    .line 15
    iget-object v0, v0, Li9/g;->s0:Lx8/f0;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0, v3}, Lx8/q0;->f(Z)V

    return-void

    .line 17
    :cond_5
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_6
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_7
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 20
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    sget v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->W:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G()V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Ly1/k0;

    .line 21
    iget-object v1, v0, Ly1/k0;->d:Ly1/j0;

    if-nez v1, :cond_8

    goto :goto_5

    .line 22
    :cond_8
    iget-object v2, v1, Ly1/j0;->a:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Ly1/k0;->a:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/g0;

    .line 26
    invoke-interface {v3, v2}, Ly1/g0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 27
    :cond_9
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 28
    :cond_a
    iget-object v1, v1, Ly1/j0;->b:Ljava/lang/Throwable;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Ly1/k0;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v2, "Lottie encountered an error but no failure listener was added:"

    .line 32
    invoke-static {v2, v1}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    monitor-exit v0

    goto :goto_5

    .line 34
    :cond_b
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/g0;

    .line 35
    invoke-interface {v3, v1}, Ly1/g0;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 36
    :cond_c
    monitor-exit v0

    :goto_5
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 37
    :pswitch_5
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/l1;

    .line 38
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/l1;->c(Z)V

    return-void

    .line 39
    :pswitch_6
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/h;

    invoke-static {v0}, Landroidx/activity/h;->b(Landroidx/activity/h;)V

    return-void

    :goto_6
    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/lang/Object;

    check-cast v0, Lp9/d;

    invoke-static {v0}, Lp9/d;->a(Lp9/d;)V

    return-void

    nop

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
