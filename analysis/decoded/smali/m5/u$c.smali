.class public final Lm5/u$c;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lm5/u;


# direct methods
.method public constructor <init>(Lm5/u;)V
    .locals 0

    iput-object p1, p0, Lm5/u$c;->a:Lm5/u;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p2, "connectivity"

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x5

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x9

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v0, :cond_3

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v1, v5

    goto :goto_1

    .line 6
    :pswitch_1
    sget p2, Lm5/g0;->a:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_6

    move v1, v4

    goto :goto_1

    :cond_4
    :pswitch_2
    move v1, v3

    goto :goto_1

    :cond_5
    :pswitch_3
    move v1, v0

    goto :goto_1

    :pswitch_4
    move v1, v6

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_1

    :catch_0
    :cond_6
    :goto_0
    const/4 v1, 0x0

    .line 7
    :cond_7
    :goto_1
    sget p2, Lm5/g0;->a:I

    const/16 v2, 0x1f

    if-lt p2, v2, :cond_8

    if-ne v1, v0, :cond_8

    .line 8
    iget-object p2, p0, Lm5/u$c;->a:Lm5/u;

    invoke-static {p1, p2}, Lm5/u$a;->a(Landroid/content/Context;Lm5/u;)V

    goto :goto_2

    .line 9
    :cond_8
    iget-object p1, p0, Lm5/u$c;->a:Lm5/u;

    invoke-static {p1, v1}, Lm5/u;->a(Lm5/u;I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
