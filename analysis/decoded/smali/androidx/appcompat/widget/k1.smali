.class public final synthetic Landroidx/appcompat/widget/k1;
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

    iput p2, p0, Landroidx/appcompat/widget/k1;->h:I

    iput-object p1, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Landroidx/appcompat/widget/k1;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    sget v2, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->d0:I

    const-string v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    const-string v3, "binding"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lq7/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 3
    iget-object v2, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lq7/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v1, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->b0:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$c;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 5
    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 6
    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 7
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lo7/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    .line 8
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 10
    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    sget v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->W:I

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    return-void

    .line 12
    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Le4/g;

    .line 13
    iget-object v1, v0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-boolean v2, v0, Le4/g;->l:Z

    if-eqz v2, :cond_3

    .line 15
    monitor-exit v1

    goto :goto_0

    .line 16
    :cond_3
    iget-wide v2, v0, Le4/g;->k:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Le4/g;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 17
    monitor-exit v1

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    .line 18
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    iget-object v3, v0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iput-object v2, v0, Le4/g;->m:Ljava/lang/IllegalStateException;

    .line 21
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 24
    :cond_5
    invoke-virtual {v0}, Le4/g;->a()V

    .line 25
    monitor-exit v1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 26
    :pswitch_4
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Lr3/b$e;

    .line 27
    iget-boolean v1, v0, Lr3/b$e;->d:Z

    if-eqz v1, :cond_6

    goto :goto_1

    .line 28
    :cond_6
    iget-object v1, v0, Lr3/b$e;->c:Lr3/e;

    if-eqz v1, :cond_7

    .line 29
    iget-object v2, v0, Lr3/b$e;->b:Lr3/k$a;

    invoke-interface {v1, v2}, Lr3/e;->d(Lr3/k$a;)V

    .line 30
    :cond_7
    iget-object v1, v0, Lr3/b$e;->e:Lr3/b;

    .line 31
    iget-object v1, v1, Lr3/b;->n:Ljava/util/Set;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    iput-boolean v3, v0, Lr3/b$e;->d:Z

    :goto_1
    return-void

    .line 34
    :pswitch_5
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Ly0/w;

    .line 35
    iget-object v0, v0, Ly0/w;->h:Ly0/d0$d;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 38
    :pswitch_6
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/l1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l1;->a()V

    return-void

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/k1;->i:Ljava/lang/Object;

    check-cast v0, Lp9/d;

    sget v4, Lp9/d;->C:I

    const-string v4, "this$0"

    .line 39
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v4, v0, Lp9/d;->k:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v4, v0, Lp9/d;->l:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 42
    iget-object v4, v0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 43
    iget-object v4, v0, Lp9/d;->o:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 44
    iget-object v4, v0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    .line 45
    iget-object v6, v0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    .line 46
    iget-object v7, v0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3da3d70a

    mul-float/2addr v7, v8

    .line 47
    iget v8, v0, Lp9/d;->s:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    const/4 v3, -0x1

    :cond_8
    int-to-float v3, v3

    mul-float/2addr v7, v3

    .line 48
    iget-object v3, v0, Lp9/d;->l:Landroid/view/View;

    add-float v8, v4, v7

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    iget-object v3, v0, Lp9/d;->m:Landroid/view/View;

    add-float/2addr v7, v6

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 50
    iget-object v3, v0, Lp9/d;->n:Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;

    iget-object v7, v0, Lp9/d;->h:Lp9/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "tooltipData"

    .line 51
    invoke-static {v7, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 53
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 55
    iget v3, v7, Lp9/a;->j:F

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 57
    iget-wide v7, v7, Lp9/a;->i:J

    .line 58
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 59
    iget-object v2, v0, Lp9/d;->p:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 61
    iget-object v3, v0, Lp9/d;->h:Lp9/a;

    .line 62
    iget-wide v7, v3, Lp9/a;->k:J

    .line 63
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 64
    iget-object v3, v0, Lp9/d;->h:Lp9/a;

    .line 65
    iget-wide v7, v3, Lp9/a;->l:J

    .line 66
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 67
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 68
    iput-object v2, v0, Lp9/d;->w:Landroid/view/ViewPropertyAnimator;

    .line 69
    new-instance v2, Lp9/b;

    invoke-direct {v2, v0}, Lp9/b;-><init>(Lp9/d;)V

    .line 70
    iget-object v3, v0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 72
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 73
    iget-object v5, v0, Lp9/d;->h:Lp9/a;

    .line 74
    iget-wide v5, v5, Lp9/a;->m:J

    .line 75
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 76
    iget-object v5, v0, Lp9/d;->h:Lp9/a;

    .line 77
    iget-wide v5, v5, Lp9/a;->n:J

    .line 78
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 79
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 80
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 81
    iput-object v3, v0, Lp9/d;->x:Landroid/view/ViewPropertyAnimator;

    .line 82
    iget-object v3, v0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 85
    iget-object v4, v0, Lp9/d;->h:Lp9/a;

    .line 86
    iget-wide v4, v4, Lp9/a;->m:J

    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 88
    iget-object v4, v0, Lp9/d;->h:Lp9/a;

    .line 89
    iget-wide v4, v4, Lp9/a;->n:J

    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 91
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 92
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 93
    iput-object v3, v0, Lp9/d;->y:Landroid/view/ViewPropertyAnimator;

    .line 94
    iget-object v2, v0, Lp9/d;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 96
    iget-object v1, v0, Lp9/d;->h:Lp9/a;

    .line 97
    iget-wide v3, v1, Lp9/a;->p:J

    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 99
    iget-object v1, v0, Lp9/d;->h:Lp9/a;

    .line 100
    iget-wide v3, v1, Lp9/a;->q:J

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 102
    new-instance v1, Lp9/c;

    invoke-direct {v1, v0}, Lp9/c;-><init>(Lp9/d;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 103
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 104
    iput-object v2, v0, Lp9/d;->z:Landroid/view/ViewPropertyAnimator;

    return-void

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
