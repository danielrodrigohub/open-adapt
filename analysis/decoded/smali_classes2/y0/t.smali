.class public final synthetic Ly0/t;
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

    iput p2, p0, Ly0/t;->h:I

    iput-object p1, p0, Ly0/t;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, Ly0/t;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v4, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 1
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v4, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    const-string v5, "leftShoeControllerUiHelper"

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v4, v2}, Lx8/q0;->p(Z)V

    .line 4
    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx8/q0;->e()V

    return-void

    :cond_0
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 5
    :cond_1
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 6
    :pswitch_1
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    sget v6, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->d0:I

    .line 7
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v5, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-boolean v6, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->U:Z

    if-nez v6, :cond_3

    iget-boolean v6, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->V:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x2

    :goto_1
    invoke-static {v5, v3, v6, v4, v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureTimeoutFailure$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;IILjava/lang/Object;)V

    .line 9
    iget v3, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->S:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->S:I

    .line 10
    invoke-virtual {v0, v2, v2}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->v0(ZZ)V

    return-void

    .line 11
    :pswitch_2
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    check-cast v0, Lu8/q;

    .line 12
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v4}, Lu8/q;->f(Z)V

    return-void

    .line 14
    :pswitch_3
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    sget v2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z()V

    return-void

    :pswitch_4
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    check-cast v0, Lr3/a;

    .line 15
    invoke-virtual {v0, v3}, Lr3/a;->d(Lr3/k$a;)V

    return-void

    .line 16
    :pswitch_5
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    check-cast v0, Ly0/w;

    .line 17
    iget-object v0, v0, Ly0/w;->h:Ly0/d0$d;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 20
    :goto_2
    iget-object v0, v1, Ly0/t;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lya/d;

    .line 21
    invoke-static {v2, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-wide/16 v4, 0x14

    .line 22
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 23
    iget-object v0, v2, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lya/h0;

    if-eqz v4, :cond_4

    .line 24
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v5

    const-string v6, "QUEUE_BIGFOOT"

    .line 25
    invoke-virtual {v4}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 26
    invoke-static/range {v5 .. v10}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lz9/a;->i:Lz9/a;

    new-instance v5, Lya/a0;

    invoke-direct {v5, v2, v4}, Lya/a0;-><init>(Lya/d;Lya/h0;)V

    invoke-virtual {v0, v5}, Lz9/a;->b(Lqd/a;)V

    .line 28
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v6

    const-string v7, "QUEUE_BIGFOOT"

    .line 29
    invoke-virtual {v4}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Waiting: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 30
    invoke-static/range {v6 .. v11}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    iget-object v0, v4, Lya/h0;->h:Ljava/util/concurrent/CompletableFuture;

    .line 32
    invoke-virtual {v4}, Lya/h0;->q()J

    move-result-wide v5

    .line 33
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 35
    :try_start_2
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v5

    const-string v6, "QUEUE_BIGFOOT"

    .line 36
    invoke-virtual {v4}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lya/h0;->q()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".exception "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "} "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " timeout in seconds: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 37
    invoke-static/range {v5 .. v10}, Lv9/d$a;->b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 38
    invoke-virtual {v4, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 39
    :goto_4
    iput-object v3, v2, Lya/d;->w:Lya/h0;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 41
    iget-wide v7, v4, Lya/h0;->j:J

    sub-long/2addr v5, v7

    .line 42
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v7

    const/16 v0, 0x3e8

    int-to-long v8, v0

    .line 43
    div-long v8, v5, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "THREAD_WATCH_CMD_"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-virtual {v4}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Millis from init->complete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " command: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 45
    invoke-static/range {v7 .. v12}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 46
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v13

    const-string v14, "QUEUE_BIGFOOT"

    .line 47
    invoke-virtual {v4}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    .line 48
    invoke-static/range {v13 .. v18}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 49
    :catch_0
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "QUEUE_BIGFOOT"

    const-string v6, "Closed Queue"

    invoke-static/range {v4 .. v9}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
