.class public final synthetic Lo8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lf/e;


# direct methods
.method public synthetic constructor <init>(Lf/e;I)V
    .locals 0

    iput p2, p0, Lo8/j;->h:I

    iput-object p1, p0, Lo8/j;->i:Lf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lo8/j;->h:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lo8/j;->i:Lf/e;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;

    sget v1, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->D:I

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/settings/SettingsPartnersActivity;->l0(Ljava/lang/String;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lo8/j;->i:Lf/e;

    check-cast p1, Lcom/nike/adapt/ui/LoginActivity;

    sget v1, Lcom/nike/adapt/ui/LoginActivity;->C:I

    .line 4
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isLoginStarted()V

    .line 6
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: Login"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lh9/d;->c:Lh9/d;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 8
    :goto_0
    iget-object p1, p0, Lo8/j;->i:Lf/e;

    check-cast p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 9
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lh9/b0;->c:Lh9/b0;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
