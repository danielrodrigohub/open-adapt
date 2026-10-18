.class public final Lxa/b;
.super Ljava/lang/Object;
.source "AdaptKitBroadcastReceiverUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxa/b$a;,
        Lxa/b$b;
    }
.end annotation


# static fields
.field public static final a:Lxa/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxa/b;

    invoke-direct {v0}, Lxa/b;-><init>()V

    sput-object v0, Lxa/b;->a:Lxa/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "EXTRA_ADK_VERSION_CODE"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXTRA_APPLICATION_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object p1, Lv9/t;->a:Lv9/t;

    invoke-virtual {p1}, Lv9/t;->c()Lma/a;

    move-result-object p1

    invoke-virtual {p1}, Lma/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXTRA_UPM_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_ADAPT_KIT_DEVICE_ID"

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p2
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lqd/l<",
            "-",
            "Landroid/content/Intent;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nike.android.adaptkit.ACTION_ADAPT_KIT_DEVICE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2}, Lxa/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p3, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "com.openadapt.experimental.permission.ACCESS_ADAPT_KIT"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lqd/l<",
            "-",
            "Landroid/content/Intent;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Landroid/os/Bundle;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendingIntent"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, p2}, Lxa/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p4, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v4, Lxa/b$a;

    .line 3
    new-instance p2, Lxa/b$c;

    invoke-direct {p2, p5}, Lxa/b$c;-><init>(Lqd/l;)V

    .line 4
    invoke-direct {v4, p2}, Lxa/b$a;-><init>(Lqd/l;)V

    .line 5
    sget-object p2, Lxa/b$b;->h:Lxa/b$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v5, Lxa/b$b;->i:Landroid/os/Handler;

    const-string v3, "com.openadapt.experimental.permission.ACCESS_ADAPT_KIT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 7
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
