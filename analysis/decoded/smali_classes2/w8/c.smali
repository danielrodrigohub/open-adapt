.class public final synthetic Lw8/c;
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

    iput p2, p0, Lw8/c;->h:I

    iput-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lw8/c;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    check-cast p1, Li9/b0;

    sget-object v1, Li9/b0;->q0:Li9/b0$a;

    .line 1
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-boolean v2, p1, Li9/b0;->n0:Z

    .line 3
    iget-object v1, p1, Li9/b0;->m0:Lt9/b;

    .line 4
    iput-object v0, v1, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    .line 5
    iput-object v0, v1, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    .line 6
    iget-object p1, p1, Li9/b0;->l0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/g;->a:Lp8/g;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_0
    const-string p1, "deviceController"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_1
    iget-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;

    sget v4, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->K:I

    .line 8
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->multipairAddNewShoe()V

    .line 10
    sget-object v4, Lh8/c;->b:Lh8/c;

    .line 11
    invoke-virtual {v4}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 12
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "editor"

    .line 13
    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "PREF_IS_MULTI_PAIR"

    .line 14
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->multipairPairingFlowStarted()V

    .line 17
    new-instance v1, Lh9/c0;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v0}, Lh9/c0;-><init>(ZZILrd/h;)V

    invoke-virtual {v1, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 18
    :pswitch_2
    iget-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    sget-object v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    .line 19
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->g:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->t()V

    .line 21
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksUpdateFirmwareActionSheetDismissButtonSelected()V

    .line 22
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p1

    iget-object p1, p1, Lq7/j;->k:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 23
    :pswitch_3
    iget-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/helper/BottomSheet;

    sget v1, Lcom/nike/adapt/ui/helper/BottomSheet;->F:I

    .line 24
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/nike/adapt/ui/helper/BottomSheet$a;->d(Lcom/nike/adapt/ui/helper/BottomSheet;)V

    .line 26
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "bottomSheetStateManager"

    .line 27
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 28
    :pswitch_4
    iget-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;

    sget v2, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->T:I

    .line 29
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->p0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->X()V

    .line 31
    sget-object v2, Ls9/b;->a:Ls9/b;

    invoke-static {}, Ls9/b;->a()V

    .line 32
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v2, v0, v1, v0}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModalSelectsLearnMore$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    new-instance v0, Lh9/q;

    iget-boolean v1, p1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->Q:Z

    invoke-direct {v0, v1}, Lh9/q;-><init>(Z)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 34
    :goto_1
    iget-object p1, p0, Lw8/c;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->B:I

    .line 35
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lh9/y0;->c:Lh9/y0;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
