.class public final Laa/a;
.super Ljava/lang/Object;
.source "BluetoothPermissionKtx.kt"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laa/a;->a:Ljava/util/List;

    return-void
.end method

.method public static final a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
