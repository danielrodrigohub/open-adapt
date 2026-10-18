.class public final Lhc/p0$a;
.super Ljava/lang/Object;
.source "TransportQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final b:[B


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhc/p0$a;->a:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 3
    iput-object p2, p0, Lhc/p0$a;->b:[B

    return-void
.end method
