.class public final synthetic Lz8/f;
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

    iput p2, p0, Lz8/f;->h:I

    iput-object p1, p0, Lz8/f;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lz8/f;->h:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lz8/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;

    sget v1, Lcom/nike/adapt/ui/settings/SettingsSupportActivity;->B:I

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "countryCode"

    .line 4
    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ls9/f;->values()[Ls9/f;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 6
    iget-object v5, v4, Ls9/f;->h:Ljava/lang/String;

    .line 7
    invoke-static {v5, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v4, Ls9/f;->k:Ls9/f;

    .line 9
    :goto_1
    iget v0, v4, Ls9/f;->i:I

    .line 10
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    .line 15
    :pswitch_1
    iget-object p1, p0, Lz8/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;

    sget v1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->B:I

    .line 16
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lh9/n0;

    sget-object v1, Lv7/n;->i:Lv7/n;

    invoke-direct {v0, v1}, Lh9/n0;-><init>(Lv7/n;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 18
    :pswitch_2
    iget-object p1, p0, Lz8/f;->i:Ljava/lang/Object;

    check-cast p1, Li9/e0;

    sget v1, Li9/e0;->p0:I

    .line 19
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Ls9/y;->a:Ls9/y;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object p1

    sget-object v1, Li9/f0;->h:Li9/f0;

    sget-object v2, Li9/g0;->h:Li9/g0;

    invoke-virtual {v0, p1, v1, v2}, Ls9/y;->h(Landroid/app/Activity;Lqd/l;Lqd/l;)Landroidx/appcompat/app/d;

    return-void

    .line 21
    :pswitch_3
    iget-object p1, p0, Lz8/f;->i:Ljava/lang/Object;

    check-cast p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    sget-object v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    .line 22
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-boolean v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->X:Z

    if-nez v0, :cond_3

    sget-object v0, Lh9/t;->c:Lh9/t;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    :cond_3
    return-void

    .line 24
    :goto_2
    iget-object p1, p0, Lz8/f;->i:Ljava/lang/Object;

    check-cast p1, Lp9/d;

    sget v1, Lp9/d;->C:I

    .line 25
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p1, Lp9/d;->i:Lqd/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    :cond_4
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
