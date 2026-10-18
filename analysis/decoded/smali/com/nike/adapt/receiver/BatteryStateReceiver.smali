.class public final Lcom/nike/adapt/receiver/BatteryStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStateListener.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p2, Lo7/x;->a:Lo7/x;

    const-string v0, "Battery Alarm: Phone was rebooted. Checking if we need to start battery alarm"

    invoke-virtual {p2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    sget-object p2, Lo7/x;->a:Lo7/x;

    const-string v0, "Battery Alarm: App was upgraded to the next version. Checking if we need to start battery alarm"

    invoke-virtual {p2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_0
    sget-object p2, Ls9/c;->a:Ls9/c;

    invoke-virtual {p2, p1}, Ls9/c;->g(Landroid/content/Context;)V

    :cond_3
    return-void
.end method
