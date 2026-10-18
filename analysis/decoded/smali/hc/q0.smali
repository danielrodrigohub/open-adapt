.class public final Lhc/q0;
.super Ljava/lang/Object;
.source "TransportScatter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final h:Ljava/lang/Object;

.field public i:I

.field public j:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public k:Landroid/bluetooth/BluetoothGatt;

.field public l:B

.field public m:I

.field public n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Lhc/e;

.field public r:Lhc/q0$a;


# direct methods
.method public constructor <init>(Lhc/e;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhc/q0;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lhc/q0;->i:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lhc/q0;->j:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 5
    iput-object v1, p0, Lhc/q0;->k:Landroid/bluetooth/BluetoothGatt;

    .line 6
    iput v0, p0, Lhc/q0;->m:I

    .line 7
    iput v0, p0, Lhc/q0;->n:I

    .line 8
    iput-object v1, p0, Lhc/q0;->o:Ljava/util/List;

    .line 9
    iput v0, p0, Lhc/q0;->p:I

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-object p4, p0, Lhc/q0;->j:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 11
    iput-object p3, p0, Lhc/q0;->k:Landroid/bluetooth/BluetoothGatt;

    .line 12
    iput-object p1, p0, Lhc/q0;->q:Lhc/e;

    .line 13
    iget p1, p1, Lhc/e;->i:I

    iput p1, p0, Lhc/q0;->i:I

    .line 14
    new-instance p1, Lhc/q0$a;

    invoke-direct {p1, p0, p2}, Lhc/q0$a;-><init>(Lhc/q0;Ljava/lang/String;)V

    iput-object p1, p0, Lhc/q0;->r:Lhc/q0$a;

    .line 15
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p2

    iget-object p3, p0, Lhc/q0;->r:Lhc/q0$a;

    invoke-virtual {p2, p3, p1}, Lw0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v0

    iget-object v1, p0, Lhc/q0;->r:Lhc/q0$a;

    invoke-virtual {v0, v1}, Lw0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final b(Lhc/m0;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/m0;",
            "I)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    iput p2, p0, Lhc/q0;->m:I

    .line 2
    iput p2, p0, Lhc/q0;->n:I

    .line 3
    iget-byte p2, p1, Lhc/m0;->a:B

    iput-byte p2, p0, Lhc/q0;->l:B

    .line 4
    invoke-static {p1}, Lhc/m0;->b(Lhc/m0;)[B

    move-result-object p1

    .line 5
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x13

    move v4, v2

    :goto_0
    if-ge v4, p2, :cond_2

    add-int v5, v4, v3

    if-le v5, p2, :cond_1

    .line 7
    rem-int/lit8 v3, p2, 0x13

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 8
    new-array v5, v5, [B

    .line 9
    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v6, p0, Lhc/q0;->n:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget v5, p0, Lhc/q0;->n:I

    add-int/2addr v5, v0

    rem-int/lit8 v5, v5, 0x40

    iput v5, p0, Lhc/q0;->n:I

    add-int/lit8 v4, v4, 0x13

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    aget-byte p2, p1, v2

    or-int/lit8 p2, p2, -0x80

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    return-object v1
.end method

.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lhc/q0;->k:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lhc/q0;->o:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget v0, p0, Lhc/q0;->m:I

    iput v0, p0, Lhc/q0;->n:I

    .line 4
    :cond_2
    iget-object v0, p0, Lhc/q0;->o:Ljava/util/List;

    iget v2, p0, Lhc/q0;->p:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    iget-object v2, p0, Lhc/q0;->q:Lhc/e;

    iget-object v2, v2, Lhc/e;->e:Lhc/p0;

    iget-object v3, p0, Lhc/q0;->j:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3, v0}, Lhc/p0;->d(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 7
    aget-byte v2, v0, v1

    if-lez v2, :cond_5

    iget v2, p0, Lhc/q0;->i:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    invoke-static {v2, v0}, Lhc/e;->m(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_5

    .line 8
    iget-object v0, p0, Lhc/q0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lhc/q0;->h:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 11
    :catch_0
    monitor-exit v0

    goto :goto_2

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 13
    :cond_5
    :goto_1
    iget v0, p0, Lhc/q0;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhc/q0;->p:I

    .line 14
    iget-object v2, p0, Lhc/q0;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 15
    iget-object v0, p0, Lhc/q0;->q:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_SEND_COMPLETE"

    iget-byte v2, p0, Lhc/q0;->l:B

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v1, v2}, Lhc/e;->b(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p0}, Lhc/q0;->a()V

    :cond_6
    :goto_2
    return-void
.end method
