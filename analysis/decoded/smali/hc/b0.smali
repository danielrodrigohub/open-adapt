.class public final Lhc/b0;
.super Landroid/content/BroadcastReceiver;
.source "CoreRFBigfoot.kt"


# instance fields
.field public final synthetic a:Lhc/l;

.field public final synthetic b:Lnc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/a<",
            "Lmc/j0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhc/l;Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/l;",
            "Lnc/a<",
            "Lmc/j0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/b0;->a:Lhc/l;

    iput-object p2, p0, Lhc/b0;->b:Lnc/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v1, 0xa

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v7, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 2
    invoke-virtual {p2, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    move p2, v6

    goto :goto_1

    :cond_2
    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v5

    .line 3
    :goto_1
    iget-object v1, p0, Lhc/b0;->a:Lhc/l;

    .line 4
    iget-object v1, v1, Lhc/l;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_4
    if-ne v0, v6, :cond_5

    if-ne p2, v5, :cond_5

    .line 7
    iget-object p1, p0, Lhc/b0;->b:Lnc/a;

    sget-object p2, Lmc/j0;->n:Lmc/j0;

    invoke-interface {p1, p2}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    .line 8
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_6
    :goto_2
    return-void
.end method
