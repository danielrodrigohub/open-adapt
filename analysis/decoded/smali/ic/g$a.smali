.class public final Lic/g$a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ConnectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lhc/l0;

.field public volatile e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lhc/l0;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "deviceId"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "address"

    invoke-static {p3, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "coreRFBigfoot"

    invoke-static {p4, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 3
    iput-object p1, p0, Lic/g$a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lic/g$a;->b:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lic/g$a;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lic/g$a;->d:Lhc/l0;

    .line 7
    iput-boolean v0, p0, Lic/g$a;->e:Z

    .line 8
    iput-boolean v1, p0, Lic/g$a;->f:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lic/g$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.nike.corerf.bigfoot.connection.ConnectionManager.DeviceCallback"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lic/g$a;

    .line 3
    iget-object v1, p0, Lic/g$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lic/g$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lic/g$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lic/g$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-boolean v1, p0, Lic/g$a;->e:Z

    iget-boolean p1, p1, Lic/g$a;->e:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lic/g$a;->c:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 3
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lic/g$a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    const-string v0, "gatt"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "characteristic"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lic/g$a;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lic/g$a;->d:Lhc/l0;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const-string v0, "characteristic.value"

    invoke-static {p2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lhc/l0;->c([B)V

    :cond_0
    return-void
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    const-string p3, "gatt"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "characteristic"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lic/g$a;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lic/g$a;->d:Lhc/l0;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    const-string p3, "characteristic.value"

    invoke-static {p2, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lhc/l0;->R([B)V

    :cond_0
    return-void
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    const-string v0, "gatt"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "characteristic"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lic/g$a;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lic/g$a;->d:Lhc/l0;

    invoke-interface {p1, p3}, Lhc/l0;->H(I)V

    :cond_0
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 10

    const-string v0, "gatt"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackInstance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", gatt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", status:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \ud83e\uddd0\ud83e\uddd0newState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tcallbackAddr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ncallback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ncallbackAddr:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-object v0, Lic/g;->b:Lic/g;

    const-string v5, "g"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 9
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "ConnectionChange: deviceId: "

    .line 10
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gatt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhc/g0;->d(Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lic/g$a;->e:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 13
    iget-object p1, p0, Lic/g$a;->d:Lhc/l0;

    invoke-interface {p1}, Lhc/l0;->n()V

    goto/16 :goto_2

    .line 14
    :cond_0
    iget-boolean v0, p0, Lic/g$a;->e:Z

    if-eqz v0, :cond_e

    .line 15
    iget-boolean v0, p0, Lic/g$a;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 16
    iput-boolean v1, p0, Lic/g$a;->f:Z

    :cond_1
    const-string v0, "OnConnectionStateChanged"

    const-string v2, ". Killing connection"

    if-eqz p3, :cond_9

    if-eq p3, v1, :cond_8

    const/4 v3, 0x2

    if-eq p3, v3, :cond_3

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    .line 17
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "Unexpected newState: "

    .line 18
    invoke-static {p2, p3, v2}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    new-instance p3, Ljava/lang/Exception;

    const-string v2, "Connection Callback indeterminate"

    invoke-direct {p3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, p2, p3, v1, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 21
    new-instance p1, Lic/v;

    .line 22
    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    .line 23
    invoke-direct {p1, p2}, Lic/v;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 24
    :cond_2
    new-instance p1, Lic/r;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/r;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    if-nez p2, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p2, p0, Lic/g$a;->d:Lhc/l0;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lhc/l0;->G(Landroid/bluetooth/BluetoothGatt;)V

    .line 27
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 28
    new-instance p1, Lic/f;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :cond_5
    sget-object p2, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    iget-object p3, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lic/p;

    if-eqz p2, :cond_6

    .line 31
    iget-object p3, p2, Lic/p;->a:Lhc/l0;

    .line 32
    invoke-interface {p3, p1}, Lhc/l0;->G(Landroid/bluetooth/BluetoothGatt;)V

    .line 33
    iget-object p1, p2, Lic/p;->a:Lhc/l0;

    .line 34
    invoke-interface {p1}, Lhc/l0;->o()V

    .line 35
    sget-object p1, Lic/g;->b:Lic/g;

    invoke-static {p2}, Lic/g;->f(Lic/p;)V

    .line 36
    :cond_6
    new-instance p1, Lic/f;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 37
    :cond_7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothProfile "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", this was not expected."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 38
    new-instance p1, Lic/r;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/r;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 39
    :cond_8
    new-instance p1, Lic/f;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40
    :cond_9
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    const-string p1, "Bluetooth State "

    const-string p3, " on devicedId: "

    .line 41
    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 42
    iget-object p3, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    const/16 p1, 0x101

    if-ne p2, p1, :cond_a

    .line 43
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p3, "Unexpected status of : "

    .line 44
    invoke-static {p3, p2, v2}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    new-instance p3, Ljava/lang/Exception;

    const-string v2, "GATT_FAILURE 257"

    invoke-direct {p3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {p1, p2, p3, v1, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 47
    new-instance p1, Lic/r;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/r;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const/16 p1, 0x16

    if-ne p2, p1, :cond_b

    .line 48
    new-instance p1, Lic/v;

    .line 49
    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    .line 50
    invoke-direct {p1, p2}, Lic/v;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const/16 p1, 0x13

    if-ne p2, p1, :cond_d

    .line 51
    sget-object p1, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lic/p;

    if-eqz p1, :cond_c

    .line 53
    iget-object p1, p1, Lic/p;->f:Lf8/b;

    goto :goto_0

    :cond_c
    const/4 p1, 0x0

    .line 54
    :goto_0
    instance-of p1, p1, Lic/d;

    if-eqz p1, :cond_d

    .line 55
    new-instance p1, Lic/c;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_d
    new-instance p1, Lic/r;

    iget-object p2, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lic/r;-><init>(Ljava/lang/String;)V

    .line 57
    :goto_1
    sget-object p2, Lic/g;->b:Lic/g;

    .line 58
    invoke-virtual {p2, p1}, Lic/g;->l(Lf8/b;)V

    :cond_e
    :goto_2
    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lic/g$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 3
    iget-object p1, p0, Lic/g$a;->d:Lhc/l0;

    invoke-interface {p1}, Lhc/l0;->O()V

    :cond_0
    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "gatt"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v3, v0, Lic/g$a;->e:Z

    if-eqz v3, :cond_2

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v4

    const-string v3, "onServicesDiscovered(), deviceId: "

    .line 3
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    iget-object v5, v0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\ncallback="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\ncallbackAddr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    .line 7
    invoke-static/range {v4 .. v10}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    const-string v12, "Discovered "

    const-string v15, "New State"

    invoke-static/range {v11 .. v17}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 9
    sget-object v2, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    sget-object v1, Lic/g;->b:Lic/g;

    .line 11
    new-instance v2, Lic/v;

    .line 12
    iget-object v3, v0, Lic/g$a;->a:Ljava/lang/String;

    .line 13
    invoke-direct {v2, v3}, Lic/v;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v2}, Lic/g;->l(Lf8/b;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    iget-object v2, v0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/p;

    if-eqz v1, :cond_2

    .line 17
    iget-object v2, v1, Lic/p;->a:Lhc/l0;

    .line 18
    invoke-interface {v2}, Lhc/l0;->o()V

    .line 19
    sget-object v2, Lic/g;->b:Lic/g;

    invoke-static {v1}, Lic/g;->f(Lic/p;)V

    goto :goto_0

    .line 20
    :cond_1
    sget-object v1, Lic/g;->b:Lic/g;

    .line 21
    new-instance v2, Lic/v;

    .line 22
    iget-object v3, v0, Lic/g$a;->a:Ljava/lang/String;

    .line 23
    invoke-direct {v2, v3}, Lic/v;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v2}, Lic/g;->l(Lf8/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DeviceCallback(deviceId="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lic/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lic/g$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lic/g$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coreRFBigfoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lic/g$a;->d:Lhc/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lic/g$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lic/g$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
