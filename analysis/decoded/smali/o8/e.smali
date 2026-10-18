.class public final synthetic Lo8/e;
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

    iput p2, p0, Lo8/e;->h:I

    iput-object p1, p0, Lo8/e;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lo8/e;->h:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lo8/e;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->B:I

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lh9/f0;->c:Lh9/f0;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lo8/e;->i:Ljava/lang/Object;

    check-cast p1, Le9/i;

    .line 4
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le9/i;->d:Le9/i$d;

    invoke-interface {p1}, Le9/i$d;->H()V

    return-void

    .line 6
    :pswitch_2
    iget-object p1, p0, Lo8/e;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/lighting/LightingActivity;

    sget v0, Lcom/nike/adapt/ui/lighting/LightingActivity;->T:I

    .line 7
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->myLightsDoneButtonSelected()V

    .line 9
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/LightingActivity;->onBackPressed()V

    return-void

    .line 10
    :pswitch_3
    iget-object p1, p0, Lo8/e;->i:Ljava/lang/Object;

    check-cast p1, Lqd/a;

    sget v0, Lcom/nike/adapt/ui/helper/NotificationToast;->k:I

    const-string v0, "$onClick"

    .line 11
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void

    .line 13
    :pswitch_4
    iget-object p1, p0, Lo8/e;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    sget v0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->F:I

    .line 14
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceTryNow()V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lo8/e;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 18
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    .line 19
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo9/i;

    invoke-direct {v1, v0}, Lo9/i;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-static {p1, v1}, Lf1/b;->c(Landroid/view/View;Lqd/a;)V

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
