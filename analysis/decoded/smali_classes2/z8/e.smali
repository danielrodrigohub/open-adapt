.class public final synthetic Lz8/e;
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

    iput p2, p0, Lz8/e;->h:I

    iput-object p1, p0, Lz8/e;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lz8/e;->h:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lz8/e;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;

    sget v1, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->B:I

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lh9/x0;->c:Lh9/x0;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lz8/e;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;

    sget v1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->B:I

    .line 4
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lh9/p0;

    sget-object v1, Lv7/m;->k:Lv7/m;

    invoke-direct {v0, v1}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 6
    :pswitch_2
    iget-object p1, p0, Lz8/e;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    sget-object v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    .line 7
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->X:Z

    if-nez v0, :cond_0

    sget-object v0, Lh9/u;->c:Lh9/u;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 9
    :goto_0
    iget-object p1, p0, Lz8/e;->i:Ljava/lang/Object;

    check-cast p1, Lp9/d;

    sget v1, Lp9/d;->C:I

    .line 10
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p1, Lp9/d;->B:Z

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p1, Lp9/d;->j:Lqd/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lp9/d;->c()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
