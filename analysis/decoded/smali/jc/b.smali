.class public final Ljc/b;
.super Ljava/lang/Object;
.source "DiscoverUtilties.kt"

# interfaces
.implements Ljc/f;


# instance fields
.field public final b:Landroid/app/Application;

.field public c:Ljc/d;

.field public d:Ljc/c;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc/b;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a(Ljc/c;)V
    .locals 7

    const-string v0, "deviceResults"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object p1, p0, Ljc/b;->d:Ljc/c;

    .line 2
    iget-object v1, p0, Ljc/b;->b:Landroid/app/Application;

    const-class v2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v1, Ljc/g;

    invoke-direct {v1}, Ljc/g;-><init>()V

    invoke-interface {p1, v0, v1}, Ljc/c;->c(ZLjava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    .line 6
    iget-object v2, p0, Ljc/b;->b:Landroid/app/Application;

    const-class v3, Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 7
    :cond_2
    :try_start_1
    iget-object v2, p0, Ljc/b;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    .line 8
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    .line 9
    :try_start_2
    new-instance v1, Ljc/h;

    invoke-direct {v1}, Ljc/h;-><init>()V

    invoke-interface {p1, v0, v1}, Ljc/c;->c(ZLjava/lang/Throwable;)V

    return-void

    .line 10
    :cond_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 11
    new-instance v2, Ljc/d;

    iget-object v3, p0, Ljc/b;->d:Ljc/c;

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-direct {v2, v3}, Ljc/d;-><init>(Ljc/c;)V

    .line 12
    iput-object v2, p0, Ljc/b;->c:Ljc/d;

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v3, v6, :cond_5

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_5
    new-array v3, v4, [Landroid/bluetooth/le/ScanFilter;

    .line 15
    sget-object v6, Ljc/e;->c:Landroid/bluetooth/le/ScanFilter;

    aput-object v6, v3, v0

    .line 16
    invoke-static {v3}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 17
    :goto_2
    sget-object v6, Ljc/e;->b:Landroid/bluetooth/le/ScanSettings;

    .line 18
    invoke-virtual {v1, v3, v6, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 19
    iput-boolean v4, p0, Ljc/b;->e:Z

    .line 20
    invoke-interface {p1, v4, v5}, Ljc/c;->c(ZLjava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    const-string v1, "bigfootDiscoveryListener"

    .line 21
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-interface {p1, v0, v1}, Ljc/c;->c(ZLjava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final b()V
    .locals 5

    const-string v0, "bigfootDiscoveryListener"

    .line 1
    iget-boolean v1, p0, Ljc/b;->e:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Ljc/b;->b:Landroid/app/Application;

    const-class v4, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    .line 3
    iget-object v4, p0, Ljc/b;->c:Ljc/d;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 4
    iget-object v3, p0, Ljc/b;->d:Ljc/c;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3, v2}, Ljc/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v3, "scanCallback"

    .line 7
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    .line 8
    iget-object v4, p0, Ljc/b;->d:Ljc/c;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Ljc/c;->b(Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Ljc/b;->e:Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method
