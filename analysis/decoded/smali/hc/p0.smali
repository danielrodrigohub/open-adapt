.class public final Lhc/p0;
.super Ljava/lang/Object;
.source "TransportQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc/p0$a;
    }
.end annotation


# instance fields
.field public a:Lhc/o0;

.field public b:Lhc/p0$a;

.field public c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lhc/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lhc/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lhc/p0;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lhc/p0;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lhc/p0$a;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lhc/p0$a;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lb2/h;->b(B)Z

    move-result v0

    const-string v2, "TransportQueue"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lhc/p0;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v4, "[%s] unable to add flow-control item to QOS queue because of an interruption"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :catch_1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v4, "[%s] unable to add flow-control to transmit queue because of a null"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_0

    .line 5
    :catch_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v4, "[%s] unable to add flow-control to transmit queue because of an invalid index"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 7
    :catch_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v4, "[%s] unable to add item to transmit queue"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0, v1}, Lhc/p0;->c(Z)V

    return-void
.end method

.method public final b()Lhc/p0$a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lhc/p0;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc/p0$a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v3

    .line 2
    :catch_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v5, v4, v0

    const-string v5, "[%s] unable to access flow-control to transmit queue"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TransportQueue"

    invoke-interface {v3, v4, v2, v0, v5}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v3, p0, Lhc/p0;->b:Lhc/p0$a;

    if-nez v3, :cond_1

    .line 4
    iget-object v0, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/p0$a;

    return-object v0

    .line 5
    :cond_1
    iget-object v4, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    return-object v2

    .line 6
    :cond_2
    iget-object v3, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhc/p0$a;

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, v4, Lhc/p0$a;->b:[B

    iget-object v1, p0, Lhc/p0;->b:Lhc/p0$a;

    iget-object v1, v1, Lhc/p0$a;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    :cond_4
    return-object v4

    .line 8
    :cond_5
    iget-object v5, p0, Lhc/p0;->b:Lhc/p0$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method public final declared-synchronized c(Z)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Lhc/p0;->f:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lhc/p0;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lhc/p0;->b()Lhc/p0$a;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v1, p0, Lhc/p0;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    .line 8
    :cond_3
    :try_start_2
    iget-object v2, p0, Lhc/p0;->a:Lhc/o0;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-nez p1, :cond_4

    .line 9
    iget-boolean v4, p0, Lhc/p0;->f:Z

    if-eqz v4, :cond_8

    .line 10
    :cond_4
    iget-object v4, v0, Lhc/p0$a;->a:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v5, v0, Lhc/p0$a;->b:[B

    check-cast v2, Lhc/e;

    invoke-virtual {v2, v4, v5}, Lhc/e;->p(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    iput-boolean v3, p0, Lhc/p0;->f:Z

    .line 12
    iget-object p1, v0, Lhc/p0$a;->b:[B

    aget-byte p1, p1, v3

    const/16 v1, 0xc0

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5

    .line 13
    iget-object p1, p0, Lhc/p0;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_5
    iput-object v0, p0, Lhc/p0;->b:Lhc/p0$a;

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_8

    .line 15
    iput-boolean v1, p0, Lhc/p0;->f:Z

    goto :goto_0

    .line 16
    :cond_7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "[%s] writeReady is NULL!"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TransportQueue"

    invoke-interface {p1, v0, v1, v3, v2}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lhc/p0$a;

    invoke-direct {v0, p1, p2}, Lhc/p0$a;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-virtual {p0, v0}, Lhc/p0;->a(Lhc/p0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(I)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/p0$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "[%s] Transmit queue empty, can\'t roll back to retransmit!"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransportQueue"

    invoke-interface {p1, v0, v2, v3, v1}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/p0$a;

    .line 5
    iget-object v6, v5, Lhc/p0$a;->b:[B

    aget-byte v6, v6, v3

    and-int/lit8 v6, v6, 0x3f

    if-ne v6, p1, :cond_1

    .line 6
    iput-object v4, p0, Lhc/p0;->b:Lhc/p0$a;

    move v0, v1

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    const/4 v4, 0x2

    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v5, "[%s] couldn\'t find index: %02X in transmit queue!"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TransportQueue"

    invoke-interface {v0, p1, v2, v3, v1}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v5, "[%s] REWIND OCCURRED FOR: %02X in transmit queue!"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lhc/p0;->d:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TransportQueue"

    invoke-interface {v0, p1, v2, v3, v1}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 9
    :goto_2
    invoke-virtual {p0, v3}, Lhc/p0;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
