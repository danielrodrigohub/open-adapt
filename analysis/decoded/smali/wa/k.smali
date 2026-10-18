.class public final Lwa/k;
.super Ljava/lang/Object;
.source "AdaptKitRequirementsReceiver.kt"

# interfaces
.implements Lwa/j;


# static fields
.field public static final b:Lwa/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa/k;

    invoke-direct {v0}, Lwa/k;-><init>()V

    sput-object v0, Lwa/k;->b:Lwa/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lja/b;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lja/c;->a:Lja/c;

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lja/d;

    const-string v1, "User has not accepted the location permission.  Prompt user to accept (or link to permission screen)"

    invoke-direct {v0, v1}, Lja/d;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 5
    :cond_3
    new-instance v0, Lja/f;

    invoke-direct {v0}, Lja/f;-><init>()V

    :goto_1
    move-object v2, v0

    .line 6
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lja/f;

    invoke-direct {v0}, Lja/f;-><init>()V

    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 7
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v3, "User has turned off the location services.  Prompt them to turn it back on."

    if-lt v0, v1, :cond_6

    .line 8
    :try_start_0
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    sget-object v0, Lja/c;->a:Lja/c;

    goto :goto_2

    .line 10
    :cond_5
    new-instance v0, Lja/d;

    invoke-direct {v0, v3}, Lja/d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 11
    :catchall_0
    new-instance v0, Lja/d;

    invoke-direct {v0, v3}, Lja/d;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    .line 13
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    sget-object v0, Lja/c;->a:Lja/c;

    goto :goto_2

    .line 15
    :cond_7
    new-instance v0, Lja/d;

    invoke-direct {v0, v3}, Lja/d;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 16
    :catchall_1
    new-instance v0, Lja/d;

    invoke-direct {v0, v3}, Lja/d;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :goto_3
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    sget-object v0, Lja/c;->a:Lja/c;

    goto :goto_4

    .line 19
    :cond_8
    new-instance v0, Lja/d;

    const-string v1, "User has turned off the bluetooth service.  Prompt them to turn it back on."

    invoke-direct {v0, v1}, Lja/d;-><init>(Ljava/lang/String;)V

    :goto_4
    move-object v4, v0

    .line 20
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Laa/a;->a:Ljava/util/List;

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 21
    sget-object v0, Lja/c;->a:Lja/c;

    goto :goto_5

    .line 22
    :cond_9
    new-instance v0, Lja/d;

    const-string v1, "User has not accepted the scan bluetooth devices permission.  Prompt user to accept (or link to permission screen)"

    invoke-direct {v0, v1}, Lja/d;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 23
    :cond_a
    new-instance v0, Lja/e;

    invoke-direct {v0}, Lja/e;-><init>()V

    :goto_5
    move-object v5, v0

    .line 24
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Laa/a;->a:Ljava/util/List;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b

    .line 25
    sget-object p1, Lja/c;->a:Lja/c;

    goto :goto_6

    .line 26
    :cond_b
    new-instance p1, Lja/d;

    const-string v0, "User has not accepted the bluetooth connect to device permission.  Prompt user to accept (or link to permission screen)"

    invoke-direct {p1, v0}, Lja/d;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 27
    :cond_c
    new-instance p1, Lja/e;

    invoke-direct {p1}, Lja/e;-><init>()V

    :goto_6
    move-object v6, p1

    .line 28
    new-instance p1, Lja/a;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lja/a;-><init>(Landroid/support/v4/media/a;Landroid/support/v4/media/a;Landroid/support/v4/media/a;Landroid/support/v4/media/a;Landroid/support/v4/media/a;)V

    return-object p1
.end method
