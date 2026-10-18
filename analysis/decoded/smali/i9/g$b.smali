.class public final synthetic Li9/g$b;
.super Ljava/lang/Object;
.source "AdaptShoesOnboardingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/g;
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

    invoke-static {}, Lcom/nike/adapt/adk/CalibrateResult;->values()[Lcom/nike/adapt/adk/CalibrateResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_ZERO_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->COMPLETED_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_MAXIMUM_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->MAXIMUM_FOUND_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->CALIBRATE_TIMEOUT:Lcom/nike/adapt/adk/CalibrateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Li9/g$b;->a:[I

    return-void
.end method
