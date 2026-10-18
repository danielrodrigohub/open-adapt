.class public final synthetic Lhc/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Z

.field public final synthetic i:Landroid/bluetooth/BluetoothGatt;

.field public final synthetic j:Lnc/a;

.field public final synthetic k:Lhc/l;

.field public final synthetic l:Lhc/b0;


# direct methods
.method public synthetic constructor <init>(ZLandroid/bluetooth/BluetoothGatt;Lnc/a;Lhc/l;Lhc/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhc/h;->h:Z

    iput-object p2, p0, Lhc/h;->i:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lhc/h;->j:Lnc/a;

    iput-object p4, p0, Lhc/h;->k:Lhc/l;

    iput-object p5, p0, Lhc/h;->l:Lhc/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-boolean v0, p0, Lhc/h;->h:Z

    iget-object v1, p0, Lhc/h;->i:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lhc/h;->j:Lnc/a;

    iget-object v3, p0, Lhc/h;->k:Lhc/l;

    iget-object v4, p0, Lhc/h;->l:Lhc/b0;

    const-string v5, "$currentGatt"

    .line 1
    invoke-static {v1, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$request"

    invoke-static {v2, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "this$0"

    invoke-static {v3, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$receiver"

    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x3e8

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    if-eq v0, v6, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 4
    sget-object v6, Lmc/j0;->h:Lmc/j0;

    invoke-interface {v2, v6}, Llc/b;->j(Ljava/lang/Object;)V

    .line 5
    :cond_4
    iget-object v6, v3, Lhc/l;->k:Lhc/e;

    const-string v7, "com.nike.corerf.ACTION_GATT_NOTIFICATIONS_SUBSCRIBED"

    invoke-virtual {v6, v7}, Lhc/e;->a(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v0, :cond_5

    const/16 v0, 0x7530

    goto :goto_2

    :cond_5
    const/16 v0, 0x1388

    :goto_2
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 7
    :goto_3
    iget-object v0, v3, Lhc/l;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 8
    iget-object v0, v3, Lhc/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_6

    move v1, v5

    :cond_6
    const-wide/16 v8, 0xa

    .line 10
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 11
    :cond_7
    iget-object v0, v3, Lhc/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    sget-object v0, Lmc/j0;->j:Lmc/j0;

    invoke-interface {v2, v0}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_4

    .line 13
    :cond_8
    iget-object v0, v3, Lhc/l;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14
    sget-object v0, Lmc/j0;->i:Lmc/j0;

    invoke-interface {v2, v0}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_4

    .line 15
    :cond_9
    sget-object v0, Lmc/j0;->m:Lmc/j0;

    invoke-interface {v2, v0}, Llc/b;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-interface {v2, v0}, Llc/b;->k(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    :goto_4
    :try_start_2
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 18
    :catchall_3
    throw v0
.end method
