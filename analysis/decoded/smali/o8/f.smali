.class public final synthetic Lo8/f;
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

    iput p2, p0, Lo8/f;->h:I

    iput-object p1, p0, Lo8/f;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget v0, p0, Lo8/f;->h:I

    const/4 v1, 0x0

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lo8/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->E:I

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->settingsDeleteAccountSelected()V

    .line 3
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/v;->d:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/v;->a:Landroid/widget/Button;

    const-string v4, " "

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/v;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v4, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->D:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lm9/o0;

    invoke-direct {v7, p1, v1}, Lm9/o0;-><init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;Ljd/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 7
    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 10
    :pswitch_1
    iget-object p1, p0, Lo8/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    sget v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->C:I

    .line 11
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: Bluetooth Required"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 13
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_3
    return-void

    .line 14
    :pswitch_2
    iget-object p1, p0, Lo8/f;->i:Ljava/lang/Object;

    check-cast p1, Le9/i;

    .line 15
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p1, p1, Le9/i;->d:Le9/i$d;

    invoke-interface {p1}, Le9/i$d;->x()V

    return-void

    .line 17
    :pswitch_3
    iget-object p1, p0, Lo8/f;->i:Ljava/lang/Object;

    check-cast p1, La9/a;

    sget-object v0, La9/a;->h0:La9/a$a;

    .line 18
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Primary Button"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p1, La9/a;->g0:Lv8/a;

    if-eqz v0, :cond_5

    iget-object p1, p1, La9/a;->f0:Lb9/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lb9/c;->c()Lb9/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lv8/a;->b(Lb9/e;)V

    return-void

    :cond_4
    const-string p1, "messageType"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "messagingCenterCtaSelected"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 21
    :pswitch_4
    iget-object p1, p0, Lo8/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    sget v0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->F:I

    .line 22
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceViewAll()V

    .line 24
    sget-object v0, Lh9/o0;->c:Lh9/o0;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 25
    :goto_0
    iget-object v0, p0, Lo8/f;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 26
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    .line 27
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo9/j;

    invoke-direct {v1, v0}, Lo9/j;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

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
