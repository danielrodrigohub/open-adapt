.class public final synthetic Lx8/j0;
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

    iput p2, p0, Lx8/j0;->h:I

    iput-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lx8/j0;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->D:I

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->l0(Ljava/lang/String;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    sget v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->C:I

    .line 4
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Nearby Devices Permission Required"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 7
    sget-object v0, Laa/a;->a:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x22

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void

    .line 10
    :pswitch_2
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Li9/y;

    sget-object v3, Li9/y;->h0:Li9/y$b;

    .line 11
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-boolean v2, p1, Li9/y;->e0:Z

    if-nez v2, :cond_1

    .line 13
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v3, "Choose Your Shoes - Pressed: Not Your Shoes?"

    invoke-virtual {v2, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Li9/y;->s0()Lh8/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lh8/d;->e(Ls9/r;)V

    .line 15
    invoke-virtual {p1, v1}, Li9/y;->r0(Z)V

    :cond_1
    return-void

    .line 16
    :pswitch_3
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Lg9/h;

    .line 17
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Lg9/h;->d:Lg9/h$a;

    invoke-interface {p1}, Lg9/h$a;->S()V

    return-void

    .line 19
    :pswitch_4
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Le9/i;

    .line 20
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p1, Le9/i;->d:Le9/i$d;

    invoke-interface {p1}, Le9/i$d;->l()V

    return-void

    .line 22
    :pswitch_5
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, La9/a;

    sget-object v1, La9/a;->h0:La9/a$a;

    .line 23
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Secondary Button"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 25
    iget-object v1, p1, La9/a;->f0:Lb9/c;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lb9/c;->e()Lb9/e;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    iget-object p1, p1, La9/a;->g0:Lv8/a;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lv8/a;->T(Lb9/e;)V

    goto :goto_0

    :cond_2
    const-string p1, "messagingCenterCtaSelected"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p1, "messageType"

    .line 27
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 28
    :pswitch_6
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/helper/NotificationToast;

    sget v0, Lcom/nike/adapt/ui/helper/NotificationToast;->k:I

    .line 29
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/nike/adapt/ui/helper/NotificationToast;->b(Z)V

    return-void

    .line 31
    :goto_1
    iget-object p1, p0, Lx8/j0;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v3, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 32
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const-string v3, "Main"

    invoke-virtual {v2, v3}, Lcom/nike/adapt/analytics/TrackManager;->isSettingsAccessed(Ljava/lang/String;)V

    .line 34
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v3, "Pressed: Settings"

    invoke-virtual {v2, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 35
    new-instance v2, Lh9/g0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3, v0}, Lh9/g0;-><init>(Ljava/lang/String;ZILrd/h;)V

    invoke-virtual {v2, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    nop

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
