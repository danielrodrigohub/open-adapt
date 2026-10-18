.class public final synthetic Lo9/m$a;
.super Ljava/lang/Object;
.source "ShoeControllerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lq/g;->b(I)[I

    move-result-object v0

    .line 2
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v1

    sput-object v0, Lo9/m$a;->a:[I

    return-void
.end method
