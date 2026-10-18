.class public final synthetic Li8/f;
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

    iput p2, p0, Li8/f;->h:I

    iput-object p1, p0, Li8/f;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Li8/f;->h:I

    const/4 v2, 0x0

    const-string v4, "binding"

    const-string v5, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Li8/f;->i:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;

    sget v2, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->C:I

    .line 1
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lp9/d;

    new-instance v15, Lp9/a;

    const v5, 0x7f1101e7

    .line 3
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f1101e6

    .line 4
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    const v5, 0x7f1100c8

    .line 5
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x12c

    const v20, 0x1fdd8

    const/4 v13, 0x0

    move-object v5, v15

    move-object v3, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v20

    .line 6
    invoke-direct/range {v5 .. v19}, Lp9/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIFDJI)V

    invoke-direct {v2, v3, v1}, Lp9/d;-><init>(Lp9/a;Landroid/content/Context;)V

    .line 7
    iget-object v3, v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lq7/c0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v5, "binding.voicePreferenceParent"

    invoke-static {v3, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;->A:Lq7/c0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/c0;->c:Landroid/widget/TextView;

    const-string v4, "binding.voicePreferenceTitle"

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lp9/d;->d(Lp9/d;Landroid/view/View;Landroid/view/View;)V

    .line 8
    new-instance v1, Lm9/f0;

    invoke-direct {v1, v2}, Lm9/f0;-><init>(Lp9/d;)V

    invoke-virtual {v2, v1}, Lp9/d;->setCtaAction(Lqd/a;)V

    return-void

    .line 9
    :cond_0
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 10
    :pswitch_1
    iget-object v1, v0, Li8/f;->i:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    sget-object v2, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    .line 11
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v2

    iget-object v2, v2, Lq7/j;->q:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-object v2, v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->b0:Landroid/view/ViewPropertyAnimator;

    .line 13
    new-instance v2, Lp9/d;

    .line 14
    new-instance v15, Lp9/a;

    const v3, 0x7f11037d

    .line 15
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f11037c

    .line 16
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f110295

    .line 17
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f110380

    .line 18
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, -0x96

    const/4 v12, 0x0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    const-wide/16 v16, 0x0

    const v18, 0x3bea0

    const/4 v11, 0x0

    const-string v7, "1/2"

    move-object v3, v15

    move-object/from16 v21, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    .line 19
    invoke-direct/range {v3 .. v17}, Lp9/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIFDJI)V

    move-object/from16 v3, v21

    .line 20
    invoke-direct {v2, v3, v1}, Lp9/d;-><init>(Lp9/a;Landroid/content/Context;)V

    .line 21
    new-instance v3, Lz8/j;

    invoke-direct {v3, v1}, Lz8/j;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    .line 22
    new-instance v4, Lz8/h;

    invoke-direct {v4, v2, v3, v1}, Lz8/h;-><init>(Lp9/d;Lqd/a;Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    invoke-virtual {v2, v4}, Lp9/d;->setCtaAction(Lqd/a;)V

    .line 23
    new-instance v4, Lz8/i;

    invoke-direct {v4, v3, v1}, Lz8/i;-><init>(Lqd/a;Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    invoke-virtual {v2, v4}, Lp9/d;->setOverlayDismiss(Lqd/a;)V

    .line 24
    invoke-virtual {v1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v3

    iget-object v3, v3, Lq7/j;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v4, "binding.lightPacksParent"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v1

    iget-object v1, v1, Lq7/j;->p:Lq7/b2;

    iget-object v1, v1, Lq7/b2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "binding.tooltip1HighlightView.mainContainer"

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lp9/d;->d(Lp9/d;Landroid/view/View;Landroid/view/View;)V

    .line 25
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksTooltipOnePresented()V

    return-void

    .line 26
    :pswitch_2
    iget-object v1, v0, Li8/f;->i:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    sget v2, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->d0:I

    .line 27
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, v1, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq7/h;->d:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 29
    :pswitch_3
    iget-object v1, v0, Li8/f;->i:Ljava/lang/Object;

    check-cast v1, Lu8/q;

    .line 30
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v2}, Lu8/q;->f(Z)V

    return-void

    .line 32
    :pswitch_4
    iget-object v1, v0, Li8/f;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    const/16 v2, 0xa

    .line 33
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 34
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 35
    :goto_0
    iget-object v1, v0, Li8/f;->i:Ljava/lang/Object;

    check-cast v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v3, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 36
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v3, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    const-string v4, "rightShoeControllerUiHelper"

    if-eqz v3, :cond_4

    .line 38
    invoke-virtual {v3, v2}, Lx8/q0;->p(Z)V

    .line 39
    iget-object v1, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lx8/q0;->e()V

    return-void

    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_4
    const/4 v1, 0x0

    .line 40
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
