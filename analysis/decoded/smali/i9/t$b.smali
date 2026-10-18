.class public final synthetic Li9/t$b;
.super Ljava/lang/Object;
.source "CalibrateOrthoticsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lq/g;->b(I)[I

    move-result-object v0

    .line 2
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x2

    aput v2, v0, v2

    const/4 v3, 0x3

    aput v3, v0, v3

    invoke-static {}, Lcom/nike/adapt/adk/Shoe;->values()[Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sput-object v0, Li9/t$b;->a:[I

    return-void
.end method
