.class public final synthetic Ls9/p$b;
.super Ljava/lang/Object;
.source "ShoeSelectionUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls9/p;
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

    invoke-static {}, Ls9/r;->values()[Ls9/r;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Ls9/p$b;->a:[I

    return-void
.end method
