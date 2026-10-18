.class public final synthetic Lo8/k;
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

    iput p2, p0, Lo8/k;->h:I

    iput-object p1, p0, Lo8/k;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget v0, p0, Lo8/k;->h:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lo8/k;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->D:I

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->m0(Z)V

    .line 3
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v2, p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInToggleSelected(Z)V

    .line 4
    invoke-virtual {p1, v3, v0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->l0(ZZ)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 5
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lo8/k;->i:Ljava/lang/Object;

    check-cast p1, Lm9/o;

    sget-object v0, Lm9/o;->p0:Lm9/o$a;

    .line 7
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lo7/l;->a:Lo7/l;

    invoke-virtual {v0}, Lo7/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v1, Ls9/y;->a:Ls9/y;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    new-instance v10, Lm9/p;

    invoke-direct {v10, p1}, Lm9/p;-><init>(Lm9/o;)V

    new-instance v11, Lm9/q;

    invoke-direct {v11, p1}, Lm9/q;-><init>(Lm9/o;)V

    .line 10
    new-instance v12, Ls9/y$a;

    const/16 p1, 0x8

    const-string v0, "ALLOW_ADAPT_NOTIFICATIONS"

    const-string v3, "SETTINGS"

    const-string v4, "TRY_LATER"

    invoke-direct {v12, v0, v3, v4, p1}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f110271

    const/4 v4, 0x0

    const v5, 0x7f110270

    const/4 v6, 0x0

    const v7, 0x7f11026f

    const v8, 0x7f110153

    const/4 v9, 0x1

    const/16 v13, 0x14

    .line 11
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lm9/o;->u0()V

    :goto_0
    return-void

    .line 13
    :pswitch_2
    iget-object p1, p0, Lo8/k;->i:Ljava/lang/Object;

    check-cast p1, Le9/i;

    .line 14
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Le9/i;->d:Le9/i$d;

    invoke-interface {p1}, Le9/i$d;->l()V

    return-void

    .line 16
    :pswitch_3
    iget-object v0, p0, Lo8/k;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/LoginActivity;

    sget v2, Lcom/nike/adapt/ui/LoginActivity;->C:I

    .line 17
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->isShopNowSelected()V

    .line 19
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Shop Now"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "https://www.nike.com/adapt"

    .line 20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parse(UrlUtil.LEARN_MORE_URL)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "it.context"

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 22
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 23
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    .line 24
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.BROWSABLE"

    .line 25
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    :catch_0
    new-instance p1, Lh9/p0;

    sget-object v1, Lv7/m;->m:Lv7/m;

    invoke-direct {p1, v1}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    :goto_1
    return-void

    .line 29
    :goto_2
    iget-object p1, p0, Lo8/k;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/util/AdjustLacingActivity;

    sget v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->Q:I

    .line 30
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
