.class public final synthetic Lhc/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lhc/l;

.field public final synthetic i:Lnc/a;

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Lhc/l;Lnc/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/g;->h:Lhc/l;

    iput-object p2, p0, Lhc/g;->i:Lnc/a;

    iput-boolean p3, p0, Lhc/g;->j:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v4, p0, Lhc/g;->h:Lhc/l;

    iget-object v3, p0, Lhc/g;->i:Lnc/a;

    iget-boolean v0, p0, Lhc/g;->j:Z

    const-string v1, "this$0"

    .line 1
    invoke-static {v4, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$request"

    invoke-static {v3, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 3
    :goto_0
    iget-object v5, v4, Lhc/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    .line 5
    sget-object v0, Lmc/j0;->l:Lmc/j0;

    invoke-interface {v3, v0}, Llc/b;->j(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-wide/16 v5, 0xa

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v4, Lhc/l;->l:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_7

    .line 8
    new-instance v5, Lhc/b0;

    invoke-direct {v5, v4, v3}, Lhc/b0;-><init>(Lhc/l;Lnc/a;)V

    .line 9
    sget-object v1, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    sget-object v6, Lhc/f0;->d:Ljava/util/UUID;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/4 v6, 0x1

    .line 11
    invoke-virtual {v2, v1, v6}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 12
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "setCharacteristicNotification was not ready"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 13
    :cond_3
    sget-object v7, Lhc/f0;->a:Ljava/util/UUID;

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 14
    sget-object v7, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 15
    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    if-nez v0, :cond_5

    .line 16
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v7, 0xc

    if-eq v0, v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v6, v0

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v1

    .line 19
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "writeDescriptor was not ready"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object v7, v4, Lhc/l;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lhc/h;

    move-object v0, v8

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lhc/h;-><init>(ZLandroid/bluetooth/BluetoothGatt;Lnc/a;Lhc/l;Lhc/b0;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 23
    :cond_7
    sget-object v0, Lmc/j0;->k:Lmc/j0;

    invoke-interface {v3, v0}, Llc/b;->j(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
