.class public final synthetic Lv7/f$b;
.super Ljava/lang/Object;
.source "OnBoarding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lv7/g;->values()[Lv7/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lv7/f$b;->a:[I

    return-void
.end method
