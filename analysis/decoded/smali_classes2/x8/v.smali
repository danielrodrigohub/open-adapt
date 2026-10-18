.class public final synthetic Lx8/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lx8/v;->h:I

    iput-object p1, p0, Lx8/v;->i:Ljava/lang/Object;

    iput-object p2, p0, Lx8/v;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    iget p1, p0, Lx8/v;->h:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object p1, p0, Lx8/v;->i:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroid/view/View;

    iget-object p1, p0, Lx8/v;->j:Ljava/lang/Object;

    check-cast p1, Lx8/w;

    const-string v5, "$view"

    .line 1
    invoke-static {v6, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3
    sget-object v5, Lx8/h0;->h:Lx8/h0;

    if-eq v4, v5, :cond_17

    invoke-virtual {p1}, Lx8/w;->i()Z

    move-result v4

    if-nez v4, :cond_17

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    if-eqz v4, :cond_15

    if-eq v4, v1, :cond_10

    if-eq v4, v2, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    iget-object v4, p1, Lx8/w;->z:Landroid/content/Context;

    instance-of v9, v4, Lx8/c0;

    if-eqz v9, :cond_1

    check-cast v4, Lx8/c0;

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_3

    iget v9, p1, Lx8/w;->h:I

    if-ne v9, v2, :cond_2

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    invoke-interface {v4, v9}, Lx8/c0;->g(Z)V

    .line 6
    :cond_3
    iget-boolean v4, p1, Lx8/w;->x:Z

    if-nez v4, :cond_f

    iget-boolean v4, p1, Lx8/w;->y:Z

    if-eqz v4, :cond_4

    goto/16 :goto_4

    .line 7
    :cond_4
    iget-boolean v4, p1, Lx8/w;->g:Z

    if-eqz v4, :cond_5

    goto/16 :goto_4

    .line 8
    :cond_5
    iget v4, p1, Lx8/w;->c:F

    iget v9, p1, Lx8/w;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_6

    cmpg-float v4, v10, v9

    if-gtz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    if-eqz v4, :cond_e

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v4, p1, Lx8/w;->a:F

    add-float/2addr p2, v4

    .line 10
    invoke-virtual {p1}, Lx8/w;->d()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_7

    iget-boolean v4, p1, Lx8/w;->j:Z

    if-nez v4, :cond_7

    .line 11
    invoke-virtual {p1}, Lx8/w;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/view/View;->setY(F)V

    goto/16 :goto_3

    .line 12
    :cond_7
    invoke-virtual {p1}, Lx8/w;->b()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_8

    iget v4, p1, Lx8/w;->r:I

    if-nez v4, :cond_8

    .line 13
    invoke-virtual {p1}, Lx8/w;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/view/View;->setY(F)V

    goto/16 :goto_3

    .line 14
    :cond_8
    invoke-virtual {p1}, Lx8/w;->d()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_9

    .line 15
    iput-boolean v3, p1, Lx8/w;->j:Z

    .line 16
    :cond_9
    iget-object v4, p1, Lx8/w;->A:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    const-wide/16 v9, 0x190

    if-gez v4, :cond_a

    .line 17
    iput v2, p1, Lx8/w;->t:I

    .line 18
    iget-object v4, p1, Lx8/w;->A:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 19
    invoke-virtual {v6, v4}, Landroid/view/View;->setY(F)V

    .line 20
    iput-boolean v1, p1, Lx8/w;->g:Z

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p1}, Lx8/w;->d()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 22
    :cond_a
    iget-object v4, p1, Lx8/w;->B:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_b

    .line 23
    iput v0, p1, Lx8/w;->t:I

    .line 24
    iget-object v4, p1, Lx8/w;->B:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 25
    invoke-virtual {v6, v4}, Landroid/view/View;->setY(F)V

    .line 26
    iput-boolean v1, p1, Lx8/w;->g:Z

    .line 27
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p1}, Lx8/w;->b()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 28
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 29
    :goto_3
    iget-boolean v4, p1, Lx8/w;->g:Z

    if-nez v4, :cond_c

    .line 30
    invoke-virtual {p1, p2, v3}, Lx8/w;->a(FZ)I

    move-result p2

    .line 31
    iget v0, p1, Lx8/w;->q:I

    if-eq v0, p2, :cond_1b

    .line 32
    iget-object v2, p1, Lx8/w;->i:Lqd/l;

    .line 33
    new-instance v3, Lx8/d1;

    iget v4, p1, Lx8/w;->r:I

    new-instance v10, Lx8/g1;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/g1;-><init>(JILrd/h;)V

    move-object v5, v3

    move v7, v4

    move v8, v0

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 34
    iput p2, p1, Lx8/w;->q:I

    .line 35
    invoke-interface {v2, v3}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 36
    :cond_c
    iget v3, p1, Lx8/w;->t:I

    if-ne v3, v2, :cond_d

    .line 37
    iget-object v0, p1, Lx8/w;->i:Lqd/l;

    .line 38
    new-instance v2, Lx8/d1;

    iget v3, p1, Lx8/w;->r:I

    iget v4, p1, Lx8/w;->q:I

    invoke-virtual {p1, p2, v1}, Lx8/w;->a(FZ)I

    move-result p2

    new-instance v10, Lx8/l0;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/l0;-><init>(JILrd/h;)V

    move-object v5, v2

    move v7, v3

    move v8, v4

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 39
    iput p2, p1, Lx8/w;->q:I

    .line 40
    invoke-interface {v0, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_d
    if-ne v3, v0, :cond_1b

    .line 41
    iget-object v0, p1, Lx8/w;->i:Lqd/l;

    .line 42
    new-instance v2, Lx8/d1;

    iget v3, p1, Lx8/w;->r:I

    iget v4, p1, Lx8/w;->q:I

    invoke-virtual {p1, p2, v1}, Lx8/w;->a(FZ)I

    move-result p2

    new-instance v10, Lx8/h1;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/h1;-><init>(JILrd/h;)V

    move-object v5, v2

    move v7, v3

    move v8, v4

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 43
    iput p2, p1, Lx8/w;->q:I

    .line 44
    invoke-interface {v0, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 45
    :cond_e
    iput-boolean v1, p1, Lx8/w;->g:Z

    .line 46
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p1, Lx8/w;->b:F

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p1, Lx8/w;->q:I

    iget v2, p1, Lx8/w;->r:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    int-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 47
    iget-object p2, p1, Lx8/w;->i:Lqd/l;

    .line 48
    new-instance v0, Lx8/d1;

    iget v2, p1, Lx8/w;->r:I

    iget v9, p1, Lx8/w;->q:I

    new-instance v10, Lx8/a;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/a;-><init>(JILrd/h;)V

    move-object v5, v0

    move v7, v2

    move v8, v9

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 49
    iput v2, p1, Lx8/w;->q:I

    .line 50
    invoke-interface {p2, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_f
    :goto_4
    move v1, v3

    goto/16 :goto_8

    .line 51
    :cond_10
    iget-boolean p2, p1, Lx8/w;->g:Z

    if-nez p2, :cond_11

    iget-boolean v0, p1, Lx8/w;->j:Z

    if-eqz v0, :cond_11

    .line 52
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2}, Lcom/nike/adapt/analytics/TrackManager;->isLockdownInitiated()V

    .line 53
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p1}, Lx8/w;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v9, 0xc8

    invoke-virtual {p2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 54
    iget-object p2, p1, Lx8/w;->i:Lqd/l;

    new-instance v0, Lx8/d1;

    iget v2, p1, Lx8/w;->r:I

    iget v4, p1, Lx8/w;->q:I

    new-instance v10, Lx8/h1;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/h1;-><init>(JILrd/h;)V

    move-object v5, v0

    move v7, v2

    move v8, v4

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 55
    iput v4, p1, Lx8/w;->q:I

    .line 56
    invoke-interface {p2, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    if-nez p2, :cond_13

    .line 57
    invoke-virtual {p1}, Lx8/w;->c()[F

    move-result-object p2

    iget v0, p1, Lx8/w;->q:I

    aget p2, p2, v0

    float-to-int p2, p2

    .line 58
    iget v0, p1, Lx8/w;->h:I

    if-eq v0, v2, :cond_12

    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p2}, Lcom/nike/adapt/analytics/TrackManager;->isLacingValueLeftChanged(I)V

    goto :goto_5

    :cond_12
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p2}, Lcom/nike/adapt/analytics/TrackManager;->isLacingValueRightChanged(I)V

    .line 59
    :goto_5
    invoke-virtual {p1}, Lx8/w;->g()F

    move-result p2

    .line 60
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v9, 0x32

    invoke-virtual {p2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 61
    iget-object p2, p1, Lx8/w;->i:Lqd/l;

    new-instance v0, Lx8/d1;

    iget v2, p1, Lx8/w;->r:I

    iget v4, p1, Lx8/w;->q:I

    new-instance v10, Lx8/h1;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/h1;-><init>(JILrd/h;)V

    move-object v5, v0

    move v7, v2

    move v8, v4

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 62
    iput v4, p1, Lx8/w;->q:I

    .line 63
    invoke-interface {p2, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_13
    :goto_6
    iput v1, p1, Lx8/w;->t:I

    .line 65
    iget-object p2, p1, Lx8/w;->w:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 66
    :cond_14
    iget-boolean p2, p1, Lx8/w;->x:Z

    if-nez p2, :cond_1b

    iput-boolean v3, p1, Lx8/w;->y:Z

    goto/16 :goto_8

    .line 67
    :cond_15
    iput-boolean v3, p1, Lx8/w;->y:Z

    .line 68
    iput v1, p1, Lx8/w;->t:I

    .line 69
    iput-boolean v3, p1, Lx8/w;->g:Z

    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p1, Lx8/w;->b:F

    .line 71
    invoke-virtual {p1}, Lx8/w;->d()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_7

    :cond_16
    move v0, v3

    :goto_7
    iput-boolean v0, p1, Lx8/w;->j:Z

    .line 72
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    iput v0, p1, Lx8/w;->a:F

    .line 73
    iget p2, p1, Lx8/w;->b:F

    invoke-virtual {p1, p2, v3}, Lx8/w;->a(FZ)I

    move-result v9

    iput v9, p1, Lx8/w;->r:I

    .line 74
    iput v9, p1, Lx8/w;->q:I

    .line 75
    iget-object p1, p1, Lx8/w;->i:Lqd/l;

    new-instance p2, Lx8/d1;

    new-instance v10, Lx8/f1;

    invoke-direct {v10, v7, v8, v1, v5}, Lx8/f1;-><init>(JILrd/h;)V

    move-object v5, p2

    move v7, v9

    move v8, v9

    invoke-direct/range {v5 .. v10}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    invoke-interface {p1, p2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 76
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1a

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_18

    goto :goto_8

    .line 77
    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 78
    invoke-virtual {v6, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 80
    iget-object p1, p1, Lx8/w;->w:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1b

    .line 81
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 82
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_8

    .line 83
    :cond_19
    iput-boolean v3, p1, Lx8/w;->x:Z

    .line 84
    iget-object p1, p1, Lx8/w;->w:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto :goto_8

    .line 85
    :cond_1a
    iput-boolean v1, p1, Lx8/w;->y:Z

    .line 86
    iput-boolean v1, p1, Lx8/w;->x:Z

    :cond_1b
    :goto_8
    return v1

    .line 87
    :goto_9
    iget-object p1, p0, Lx8/v;->i:Ljava/lang/Object;

    check-cast p1, Le9/d$a;

    iget-object v5, p0, Lx8/v;->j:Ljava/lang/Object;

    check-cast v5, Le9/d;

    const-string v6, "$holder"

    .line 88
    invoke-static {p1, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_1c

    move p2, v1

    goto :goto_a

    :cond_1c
    move p2, v3

    :goto_a
    if-eqz p2, :cond_21

    .line 90
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 91
    iget-object p2, v5, Le9/d;->e:Landroidx/recyclerview/widget/t;

    .line 92
    iget-object v0, p2, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    iget-object v4, p2, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    invoke-virtual {v0, v4, p1}, Landroidx/recyclerview/widget/t$d;->d(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    move-result v0

    const/high16 v4, 0xff0000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1d

    move v3, v1

    :cond_1d
    const-string v0, "ItemTouchHelper"

    if-nez v3, :cond_1e

    const-string p1, "Start drag has been called but dragging is not enabled"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 95
    :cond_1e
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p2, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v3, v4, :cond_1f

    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 97
    :cond_1f
    iget-object v0, p2, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_20

    .line 98
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 99
    :cond_20
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p2, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 100
    iput v0, p2, Landroidx/recyclerview/widget/t;->i:F

    iput v0, p2, Landroidx/recyclerview/widget/t;->h:F

    .line 101
    invoke-virtual {p2, p1, v2}, Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :cond_21
    :goto_b
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
