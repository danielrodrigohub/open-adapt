.class public final synthetic Lm9/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/z;->h:Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13

    iget-object v1, p0, Lm9/z;->h:Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;

    sget p1, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->C:I

    const-string p1, "this$0"

    .line 1
    invoke-static {v1, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lo7/l;->a:Lo7/l;

    .line 3
    sget-object v0, Lo7/l;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lo7/l;->c(Ljava/lang/String;)Z

    move-result p1

    .line 5
    iget-object v0, v1, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->B:Lh8/c;

    invoke-virtual {v0, p2}, Lh8/c;->o0(Z)V

    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p2}, Lcom/nike/adapt/analytics/TrackManager;->batteryReminderNotificationToggleUpdated(Z)V

    :cond_0
    if-nez p2, :cond_1

    .line 7
    sget-object p1, Ls9/c;->a:Ls9/c;

    invoke-virtual {p1, v1}, Ls9/c;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Ls9/c;->a:Ls9/c;

    invoke-static {p1, v1}, Ls9/c;->d(Ls9/c;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->l0()Lq7/w;

    move-result-object p1

    iget-object p1, p1, Lq7/w;->b:Landroidx/appcompat/widget/SwitchCompat;

    const-string p2, "binding.notificationsBatteryRemindersToggle"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2}, Lcom/nike/adapt/analytics/TrackManager;->allowNotificationsDialogPresented()V

    .line 11
    sget-object v0, Ls9/y;->a:Ls9/y;

    new-instance v9, Lm9/a0;

    invoke-direct {v9, p1}, Lm9/a0;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    new-instance v10, Lm9/b0;

    invoke-direct {v10, p1, v1}, Lm9/b0;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;)V

    .line 12
    new-instance v11, Ls9/y$a;

    const/16 p1, 0x8

    const-string p2, "ALLOW_ADAPT_NOTIFICATIONS"

    const-string v2, "SETTINGS"

    const-string v3, "TRY_LATER"

    invoke-direct {v11, p2, v2, v3, p1}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f110154

    const/4 v3, 0x0

    const v4, 0x7f110151

    const/4 v5, 0x0

    const v6, 0x7f110152

    const v7, 0x7f110153

    const/4 v8, 0x0

    const/16 v12, 0x94

    .line 13
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    :cond_3
    :goto_0
    return-void
.end method
