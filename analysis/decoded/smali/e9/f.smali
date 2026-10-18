.class public final synthetic Le9/f;
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

    iput p2, p0, Le9/f;->h:I

    iput-object p1, p0, Le9/f;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Le9/f;->h:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Le9/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->E:I

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->onBackPressed()V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Le9/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->B:I

    .line 4
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lh9/k0;->c:Lh9/k0;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 6
    :pswitch_2
    iget-object p1, p0, Le9/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    sget v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->C:I

    .line 7
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: Permission Required"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 11
    :pswitch_3
    iget-object p1, p0, Le9/f;->i:Ljava/lang/Object;

    check-cast p1, Le9/i;

    .line 12
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Le9/i;->d:Le9/i$d;

    invoke-interface {p1}, Le9/i$d;->U()V

    return-void

    .line 14
    :goto_0
    iget-object v0, p0, Le9/f;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 15
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Battery"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v1, "view"

    .line 17
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo9/h;

    invoke-direct {v1, v0}, Lo9/h;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-static {p1, v1}, Lf1/b;->c(Landroid/view/View;Lqd/a;)V

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
