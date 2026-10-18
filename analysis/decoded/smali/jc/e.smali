.class public final Ljc/e;
.super Ljava/lang/Object;
.source "DiscoverUtilties.kt"


# static fields
.field public static final a:[B

.field public static final b:Landroid/bluetooth/le/ScanSettings;

.field public static final c:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ljc/e;->a:[B

    .line 2
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Ljc/e;->b:Landroid/bluetooth/le/ScanSettings;

    .line 3
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    const/16 v2, 0x78

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    sput-object v0, Ljc/e;->c:Landroid/bluetooth/le/ScanFilter;

    return-void

    nop

    :array_0
    .array-data 1
        -0x51t
        0x28t
    .end array-data
.end method

.method public static final a(Landroid/bluetooth/le/ScanResult;)Ljc/a;
    .locals 8

    .line 1
    new-instance v7, Ljc/a;

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Nike Adapt BB"

    :cond_0
    move-object v1, v0

    .line 3
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v0, "device.address"

    invoke-static {v2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lhc/d0;->h:Lhc/d0;

    invoke-static {v0, v3}, Lhc/e0;->a(Landroid/util/SparseArray;Lqd/l;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v0, "this as java.lang.String).toLowerCase()"

    invoke-static {v3, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lhc/e0;->b(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {p0}, Lhc/e0;->b(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x52

    .line 8
    invoke-static {v0, v6, v5}, Lyd/s;->j0(Ljava/lang/CharSequence;CZ)Z

    move-result v5

    .line 9
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    move-object v0, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Ljc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v7
.end method
