.class public final synthetic Lx8/p;
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

    iput p2, p0, Lx8/p;->h:I

    iput-object p1, p0, Lx8/p;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Lx8/p;->h:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object p1, p0, Lx8/p;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->B:I

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lh9/p0;

    sget-object v1, Lv7/m;->j:Lv7/m;

    invoke-direct {v0, v1}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lx8/p;->i:Ljava/lang/Object;

    check-cast p1, Li9/e0;

    sget v0, Li9/e0;->p0:I

    .line 4
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Welcome - Pressed: Next"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Li9/e0;->h0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    .line 7
    invoke-interface {v0}, Lh8/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairPairingFlowStarted()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isPairingStarted()V

    .line 10
    :goto_0
    iget-object v0, p1, Li9/e0;->k0:Li9/a0;

    const-string v2, "onBoardingStateManager"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Li9/a0;->Y()Lv7/h;

    move-result-object v0

    .line 11
    iget-object v3, p1, Li9/e0;->k0:Li9/a0;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {p1}, Li9/e0;->u0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->k()Lv7/g;

    move-result-object p1

    sget-object v1, Lv7/g;->k:Lv7/g;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lv7/g;->j:Lv7/g;

    .line 14
    :goto_1
    invoke-interface {v3, v0, v1}, Li9/a0;->v(Lv7/h;Lv7/g;)V

    return-void

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 16
    :pswitch_2
    iget-object p1, p0, Lx8/p;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    sget-object v3, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    .line 17
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-boolean v2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->X:Z

    if-eqz v2, :cond_4

    goto/16 :goto_6

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "subtitleManager"

    if-eqz v2, :cond_8

    .line 20
    iget-object v2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lz8/n;->a()V

    .line 21
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v2

    goto :goto_2

    .line 22
    :cond_5
    new-instance v2, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object v6, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->LIGHT_OFF:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v6

    invoke-direct/range {v4 .. v9}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 23
    :goto_2
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v4

    invoke-interface {v4, v2}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 24
    sget-object v4, Lz8/a;->m:Lz8/a;

    .line 25
    invoke-virtual {p1, v4, v3}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->w0(Lz8/a;Z)V

    .line 26
    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    if-eqz p1, :cond_13

    const-string v3, "color"

    .line 27
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v3, Lz8/m$b;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x3

    :goto_3
    const/16 v4, 0x3c

    invoke-direct {v3, v0, v2, v1, v4}, Lz8/m$b;-><init>(ILcom/nike/adapt/adk/model/AdaptShoeColor;Lz8/a;I)V

    invoke-virtual {p1, v3}, Lz8/m;->c(Lz8/m$b;)V

    goto/16 :goto_6

    .line 29
    :cond_7
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_8
    iget-boolean v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    if-eqz v0, :cond_13

    .line 31
    iget-boolean v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    const-string v5, "selectedLightPack"

    if-eqz v0, :cond_9

    .line 32
    sget-object v0, Lz8/a;->m:Lz8/a;

    goto :goto_4

    :cond_9
    iget-object v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_12

    .line 33
    :goto_4
    sget-object v6, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v7

    invoke-interface {v7}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_a

    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v6

    invoke-interface {v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v6

    if-le v6, v8, :cond_a

    move v3, v2

    :cond_a
    xor-int/2addr v2, v3

    .line 34
    iget-object v3, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v3, :cond_11

    .line 35
    sget-object v4, Lz8/a;->m:Lz8/a;

    if-ne v0, v4, :cond_b

    invoke-virtual {v3}, Lz8/n;->a()V

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    .line 36
    invoke-virtual {v3, v0}, Lz8/n;->g(Lz8/a;)V

    goto :goto_5

    .line 37
    :cond_c
    invoke-virtual {v3, v0}, Lz8/n;->i(Lz8/a;)V

    .line 38
    :goto_5
    iget-boolean v3, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v3

    new-instance v4, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object v8, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->LIGHT_OFF:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v4

    move-object v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-interface {v3, v4}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 39
    :cond_d
    iget-boolean v3, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    invoke-virtual {p1, v0, v3}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->w0(Lz8/a;Z)V

    .line 40
    iget-boolean v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    if-eqz v0, :cond_e

    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    if-eqz p1, :cond_13

    .line 41
    new-instance v0, Lz8/m$b;

    const/4 v2, 0x6

    const/16 v3, 0x3e

    invoke-direct {v0, v2, v1, v1, v3}, Lz8/m$b;-><init>(ILcom/nike/adapt/adk/model/AdaptShoeColor;Lz8/a;I)V

    invoke-virtual {p1, v0}, Lz8/m;->c(Lz8/m$b;)V

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_f

    .line 42
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->u0()V

    goto :goto_6

    .line 43
    :cond_f
    iget-object v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz p1, :cond_10

    .line 44
    new-instance v2, Lz8/m$b;

    const/4 v3, 0x5

    const/16 v4, 0x3a

    invoke-direct {v2, v3, v1, p1, v4}, Lz8/m$b;-><init>(ILcom/nike/adapt/adk/model/AdaptShoeColor;Lz8/a;I)V

    invoke-virtual {v0, v2}, Lz8/m;->c(Lz8/m$b;)V

    goto :goto_6

    .line 45
    :cond_10
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_11
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_12
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_6
    return-void

    .line 48
    :pswitch_3
    iget-object p1, p0, Lx8/p;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/helper/BottomSheet;

    sget v3, Lcom/nike/adapt/ui/helper/BottomSheet;->F:I

    .line 49
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-boolean v2, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    if-eqz v2, :cond_16

    .line 51
    iget-object v2, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lcom/nike/adapt/ui/helper/BottomSheet$a;->b()V

    .line 52
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    goto :goto_7

    :cond_15
    const-string p1, "bottomSheetStateManager"

    .line 53
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_7
    return-void

    .line 54
    :goto_8
    iget-object p1, p0, Lx8/p;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->B:I

    .line 55
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lh9/p0;

    sget-object v1, Lv7/m;->i:Lv7/m;

    invoke-direct {v0, v1}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
