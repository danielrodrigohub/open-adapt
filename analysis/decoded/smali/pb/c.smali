.class public final synthetic Lpb/c;
.super Ljava/lang/Object;
.source "OIDCAuthManagerImpl.kt"


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lq/g;->b(I)[I

    move-result-object v1

    .line 2
    array-length v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    aput v0, v1, v3

    sput-object v1, Lpb/c;->a:[I

    return-void
.end method
