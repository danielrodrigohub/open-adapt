.class public final Lo7/l;
.super Ljava/lang/Object;
.source "BigfootNotification.kt"


# static fields
.field public static final a:Lo7/l;

.field public static final b:Lfd/h;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/l;

    invoke-direct {v0}, Lo7/l;-><init>()V

    sput-object v0, Lo7/l;->a:Lo7/l;

    .line 1
    sget-object v0, Lo7/l$a;->h:Lo7/l$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lo7/l;->b:Lfd/h;

    const v0, 0x7f11004f

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo7/l;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lo7/l;->b:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "app_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "channelId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_4

    .line 2
    sget-object v3, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v3

    .line 3
    new-instance v4, Lx/s;

    invoke-direct {v4, v3}, Lx/s;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v3, v4, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getImportance()I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, v4, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v5

    :goto_2
    xor-int/2addr p1, v2

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    :cond_4
    :goto_3
    return v2
.end method
