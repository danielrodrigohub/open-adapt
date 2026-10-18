.class public final synthetic Lw8/b;
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

    iput p2, p0, Lw8/b;->h:I

    iput-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lw8/b;->h:I

    const/4 v0, 0x0

    const-string v1, "deviceController"

    const/4 v2, 0x1

    const-string v3, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    check-cast p1, Lm9/u;

    sget-object v1, Lm9/u;->l0:Lm9/u$a;

    .line 1
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v3, "Pressed: Firmware Update Cancel : FW_STATS"

    invoke-virtual {v1, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateUserCancels()V

    .line 4
    sget-object v3, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/nike/adapt/BigfootApplication;->k:Lcom/nike/adapt/service/FirmwareUpdateService;

    if-eqz v3, :cond_0

    const-string v4, "STOP_FW_UPDATE : FW_STATS"

    .line 6
    invoke-virtual {v1, v4}, Lo7/x;->a(Ljava/lang/String;)V

    .line 7
    iput-boolean v2, v3, Lcom/nike/adapt/service/FirmwareUpdateService;->q:Z

    .line 8
    iget-object v1, v3, Lcom/nike/adapt/service/FirmwareUpdateService;->k:Lv9/l;

    if-eqz v1, :cond_0

    new-instance v3, Lv9/r2;

    invoke-direct {v3, v0, v2, v0}, Lv9/r2;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v1, v3}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    .line 10
    :pswitch_1
    iget-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    check-cast p1, Li9/b0;

    sget-object v4, Li9/b0;->q0:Li9/b0$a;

    .line 11
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-boolean v2, p1, Li9/b0;->n0:Z

    .line 13
    iget-object v2, p1, Li9/b0;->m0:Lt9/b;

    .line 14
    iput-object v0, v2, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    .line 15
    iput-object v0, v2, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    .line 16
    iget-object p1, p1, Li9/b0;->l0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/g;->a:Lp8/g;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_2
    iget-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/modes/ModeEditActivity;

    sget v0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->P:I

    .line 18
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/nike/adapt/ui/modes/ModeEditActivity;->p0()V

    return-void

    .line 20
    :pswitch_3
    iget-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-static {p1}, Lcom/nike/adapt/ui/helper/BottomSheet;->s(Lcom/nike/adapt/ui/helper/BottomSheet;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;

    sget v4, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->T:I

    .line 21
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-boolean v2, p1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->R:Z

    .line 23
    invoke-virtual {p1}, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->p0()Lh8/a;

    move-result-object v3

    invoke-interface {v3}, Lh8/a;->X()V

    .line 24
    sget-object v3, Ls9/b;->a:Ls9/b;

    invoke-static {}, Ls9/b;->a()V

    .line 25
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-static {v3, v0, v2, v0}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModalSelectsTurnOn$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    iget-object p1, p1, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->M:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/g0;

    invoke-direct {v3, v0, v2, v0}, Lp8/g0;-><init>(Ljava/util/List;ILrd/h;)V

    invoke-interface {p1, v1, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 27
    :goto_0
    iget-object p1, p0, Lw8/b;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->D:I

    .line 28
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p1, Lcom/nike/adapt/ui/settings/SettingsRegulatoryActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lh9/l0;

    sget-object v1, Ln9/a;->h:Ln9/a;

    invoke-direct {v0, v1}, Lh9/l0;-><init>(Ln9/b;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

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
