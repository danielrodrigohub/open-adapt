.class public final synthetic Lv7/a$b;
.super Ljava/lang/Object;
.source "OnBoarding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lv7/g;->values()[Lv7/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    const/4 v3, 0x5

    aput v1, v0, v3

    const/4 v1, 0x3

    const/4 v4, 0x6

    aput v1, v0, v4

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v2, 0x8

    aput v3, v0, v2

    const/16 v2, 0x9

    aput v4, v0, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lv7/a$b;->a:[I

    return-void
.end method
