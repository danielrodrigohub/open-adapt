.class public final synthetic Li9/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Li9/b;->h:I

    iput-object p1, p0, Li9/b;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Li9/b;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "this$0"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v1, v0, Li9/b;->i:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;

    sget v2, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->D:I

    .line 1
    invoke-static {v1, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lo7/x;->a:Lo7/x;

    iget-object v3, v1, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lh9/l0;

    sget-object v3, Ln9/c;->h:Ln9/c;

    invoke-direct {v2, v3}, Lh9/l0;-><init>(Ln9/b;)V

    invoke-virtual {v2, v1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 4
    :pswitch_1
    iget-object v1, v0, Li9/b;->i:Ljava/lang/Object;

    check-cast v1, Lm9/r;

    sget-object v2, Lm9/r;->f0:Lm9/r$a;

    .line 5
    invoke-static {v1, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v7, v1, Lm9/r;->e0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    new-instance v10, Lm9/s;

    invoke-direct {v10, v5}, Lm9/s;-><init>(Ljd/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 7
    :pswitch_2
    iget-object v1, v0, Li9/b;->i:Ljava/lang/Object;

    check-cast v1, Li9/b0;

    sget-object v2, Li9/b0;->q0:Li9/b0$a;

    .line 8
    invoke-static {v1, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v6, "Put On Shoes - Pressed: Skip"

    invoke-virtual {v2, v6}, Lo7/x;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Li9/b0;->u0()Lh8/d;

    move-result-object v2

    sget-object v6, Lv7/g;->s:Lv7/g;

    invoke-interface {v2, v6}, Lh8/d;->h(Lv7/g;)V

    .line 11
    invoke-virtual {v1}, Li9/b0;->u0()Lh8/d;

    move-result-object v2

    sget-object v6, Lv7/h;->i:Lv7/h;

    invoke-interface {v2, v6}, Lh8/d;->i(Lv7/h;)V

    .line 12
    new-instance v2, Lh9/v0;

    invoke-direct {v2, v4, v3, v5}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {v1}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v1

    invoke-virtual {v2, v1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 13
    :pswitch_3
    iget-object v1, v0, Li9/b;->i:Ljava/lang/Object;

    check-cast v1, Li9/g;

    sget-object v2, Li9/g;->K0:Li9/g$a;

    .line 14
    invoke-static {v1, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v6, "Find Your Fit - Pressed: Done"

    invoke-virtual {v2, v6}, Lo7/x;->a(Ljava/lang/String;)V

    .line 16
    iget v2, v1, Li9/g;->A0:I

    iget v6, v1, Li9/g;->z0:I

    .line 17
    sget-object v7, Ls9/p;->a:Ls9/p;

    invoke-virtual {v1}, Li9/g;->x0()Lh8/d;

    move-result-object v8

    invoke-interface {v8}, Lh8/d;->d()Ls9/r;

    move-result-object v8

    .line 18
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v8, :cond_0

    const/4 v10, -0x1

    goto :goto_0

    .line 19
    :cond_0
    sget-object v10, Ls9/p$b;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    :goto_0
    const v11, 0x7f11015d

    const v12, 0x3e4ccccd

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_4
    const v10, 0x7f1100e2

    .line 20
    invoke-virtual {v7, v10}, Ls9/p;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2, v6, v4}, Ls9/p;->a(Ljava/lang/String;III)Lea/e;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v7, v11}, Ls9/p;->d(I)Ljava/lang/String;

    move-result-object v7

    int-to-float v10, v2

    mul-float/2addr v10, v12

    invoke-static {v10}, Lf1/b;->l(F)I

    move-result v10

    int-to-float v11, v6

    mul-float/2addr v11, v12

    .line 22
    invoke-static {v11}, Lf1/b;->l(F)I

    move-result v11

    .line 23
    invoke-static {v7, v10, v11, v3}, Ls9/p;->a(Ljava/lang/String;III)Lea/e;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {v2, v6, v8}, Ls9/p;->p(IILs9/r;)V

    goto :goto_1

    :pswitch_5
    const v10, 0x7f11015e

    .line 25
    invoke-virtual {v7, v10}, Ls9/p;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2, v6, v4}, Ls9/p;->a(Ljava/lang/String;III)Lea/e;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v7, v11}, Ls9/p;->d(I)Ljava/lang/String;

    move-result-object v7

    int-to-float v10, v2

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    invoke-static {v10}, Lf1/b;->l(F)I

    move-result v10

    int-to-float v12, v6

    mul-float/2addr v12, v11

    .line 27
    invoke-static {v12}, Lf1/b;->l(F)I

    move-result v11

    .line 28
    invoke-static {v7, v10, v11, v3}, Ls9/p;->a(Ljava/lang/String;III)Lea/e;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v2, v6, v8}, Ls9/p;->p(IILs9/r;)V

    goto :goto_1

    :pswitch_6
    const v10, 0x7f110069

    .line 30
    invoke-virtual {v7, v10}, Ls9/p;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2, v6, v4}, Ls9/p;->a(Ljava/lang/String;III)Lea/e;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v10, 0x7f11006a

    .line 31
    invoke-virtual {v7, v10}, Ls9/p;->d(I)Ljava/lang/String;

    move-result-object v7

    int-to-float v10, v2

    mul-float/2addr v10, v12

    invoke-static {v10}, Lf1/b;->l(F)I

    move-result v10

    int-to-float v11, v6

    mul-float/2addr v11, v12

    .line 32
    invoke-static {v11}, Lf1/b;->l(F)I

    move-result v11

    .line 33
    invoke-static {v7, v10, v11, v3}, Ls9/p;->a(Ljava/lang/String;III)Lea/e;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v2, v6, v8}, Ls9/p;->p(IILs9/r;)V

    .line 35
    :goto_1
    invoke-static {v9}, Lrd/b0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 36
    iget-object v6, v1, Li9/g;->o0:Lj9/b;

    if-eqz v6, :cond_a

    iget-object v7, v1, Li9/g;->t0:Lea/m;

    if-eqz v7, :cond_9

    .line 37
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 38
    :cond_1
    sget-object v8, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v9

    iget v10, v6, Lj9/b;->d:I

    invoke-interface {v9, v10}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 39
    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v8

    iget v9, v6, Lj9/b;->c:I

    invoke-interface {v8, v9}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 40
    invoke-static {v7}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v14

    .line 41
    sget-object v8, Lj9/a;->a:Lj9/a;

    move-object v9, v14

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 42
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v15, v6, Lj9/b;->a:Lcom/nike/adapt/adk/IDeviceController;

    .line 44
    iget-object v8, v7, Lea/m;->k:Lea/b;

    const/4 v10, 0x0

    .line 45
    iget v11, v6, Lj9/b;->d:I

    const/4 v12, 0x0

    const/16 v13, 0x5f

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v10

    .line 46
    iget-object v8, v7, Lea/m;->l:Lea/b;

    const/16 v18, 0x0

    .line 47
    iget v6, v6, Lj9/b;->c:I

    const/16 v22, 0x0

    const/16 v21, 0x5f

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v8

    move/from16 v19, v6

    invoke-static/range {v16 .. v21}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1f67

    move-object v6, v15

    move-wide/from16 v15, v16

    move/from16 v17, v22

    .line 48
    invoke-static/range {v7 .. v18}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v7

    .line 49
    invoke-interface {v6, v7}, Lcom/nike/adapt/adk/IDeviceController;->updatePair(Lea/m;)V

    .line 50
    :goto_2
    iput-boolean v3, v1, Li9/g;->H0:Z

    .line 51
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v3, v6

    if-eqz v3, :cond_7

    .line 52
    iget-object v3, v1, Li9/g;->i0:Lq7/o0;

    const-string v6, "binding"

    if-eqz v3, :cond_6

    iget-object v3, v3, Lq7/o0;->h:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v3, v1, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lq7/o0;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v3, v1, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lq7/o0;->c:Lq7/k1;

    iget-object v3, v3, Lq7/k1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v3, v1, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lq7/o0;->c:Lq7/k1;

    iget-object v3, v3, Lq7/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 56
    iget-object v3, v1, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lq7/o0;->c:Lq7/k1;

    iget-object v3, v3, Lq7/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v5, Li9/l;

    invoke-direct {v5, v1}, Li9/l;-><init>(Li9/g;)V

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    invoke-virtual {v1, v2, v4}, Li9/g;->v0(Ljava/util/List;I)V

    goto :goto_3

    .line 58
    :cond_2
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_3
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_4
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 61
    :cond_5
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 62
    :cond_6
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_7
    iget-object v1, v1, Li9/g;->u0:Lo8/d;

    if-eqz v1, :cond_8

    sget-object v2, Lo8/a;->l:Lo8/a;

    invoke-interface {v1, v2}, Lo8/d;->O(Lo8/a;)V

    :goto_3
    return-void

    :cond_8
    const-string v1, "stateListener"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_9
    const-string v1, "currentPair"

    .line 64
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_a
    const-string v1, "adaptShoeUtils"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 65
    :goto_4
    iget-object v2, v0, Li9/b;->i:Ljava/lang/Object;

    check-cast v2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v3, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 66
    invoke-static {v2, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->isQuickUnlaceSelected()V

    .line 68
    sget-object v3, Lo7/x;->a:Lo7/x;

    const-string v4, "Pressed: Lace/Unlace"

    invoke-virtual {v3, v4}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v3, "view"

    .line 69
    invoke-static {v1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v3, v2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->n0:Lt9/c;

    invoke-virtual {v3}, Lt9/c;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    .line 71
    :cond_b
    new-instance v3, Lo9/m;

    invoke-direct {v3, v2}, Lo9/m;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-static {v1, v3}, Lf1/b;->c(Landroid/view/View;Lqd/a;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
