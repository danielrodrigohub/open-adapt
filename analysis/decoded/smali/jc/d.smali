.class public final Ljc/d;
.super Landroid/bluetooth/le/ScanCallback;
.source "DiscoverUtilties.kt"


# instance fields
.field public final a:Ljc/c;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljc/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 2
    iput-object p1, p0, Ljc/d;->a:Ljc/c;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljc/d;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/le/ScanResult;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ljc/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/16 v4, 0x78

    invoke-virtual {v1, v4}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    sget-object v4, Ljc/e;->a:[B

    sget-object v4, Ljc/e;->a:[B

    .line 5
    array-length v5, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v5, v2

    move v8, v5

    move v7, v3

    :goto_0
    if-ge v5, v6, :cond_2

    .line 6
    aget-byte v9, v4, v5

    add-int/lit8 v10, v8, 0x1

    .line 7
    aget-byte v8, v1, v8

    if-eq v9, v8, :cond_1

    move v7, v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v8, v10

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v7, v3, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_8

    .line 8
    :cond_4
    iget-object v1, p0, Ljc/d;->b:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljc/a;

    .line 10
    iget-object v3, v3, Ljc/a;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    check-cast v2, Ljc/a;

    if-nez v2, :cond_7

    .line 12
    invoke-static {p1}, Ljc/e;->a(Landroid/bluetooth/le/ScanResult;)Ljc/a;

    move-result-object p1

    .line 13
    iget-object v1, p0, Ljc/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Ljc/d;->a:Ljc/c;

    invoke-interface {v1, p1}, Ljc/c;->e(Ljc/a;)V

    goto :goto_3

    .line 15
    :cond_7
    iget-object v1, p0, Ljc/d;->a:Ljc/c;

    invoke-static {p1}, Ljc/e;->a(Landroid/bluetooth/le/ScanResult;)Ljc/a;

    move-result-object p1

    invoke-interface {v1, p1}, Ljc/c;->a(Ljc/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_8
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 3
    invoke-virtual {p0, v0}, Ljc/d;->a(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onScanFailed(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 2
    iget-object v0, p0, Ljc/d;->a:Ljc/c;

    invoke-interface {v0, p1}, Ljc/c;->d(I)V

    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 2
    invoke-virtual {p0, p2}, Ljc/d;->a(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
