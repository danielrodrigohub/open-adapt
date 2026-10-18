.class public final enum Lcom/nike/adapt/adk/CalibrateResult;
.super Ljava/lang/Enum;
.source "DeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/CalibrateResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/CalibrateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/CalibrateResult;

.field public static final enum CALIBRATE_TIMEOUT:Lcom/nike/adapt/adk/CalibrateResult;

.field public static final enum COMPLETED_FIT:Lcom/nike/adapt/adk/CalibrateResult;

.field public static final Companion:Lcom/nike/adapt/adk/CalibrateResult$Companion;

.field public static final enum MAXIMUM_FOUND_FIT:Lcom/nike/adapt/adk/CalibrateResult;

.field public static final enum MOVING_TO_MAXIMUM_FIT:Lcom/nike/adapt/adk/CalibrateResult;

.field public static final enum MOVING_TO_ZERO_FIT:Lcom/nike/adapt/adk/CalibrateResult;

.field public static final enum NOT_REQUIRED:Lcom/nike/adapt/adk/CalibrateResult;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/CalibrateResult;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nike/adapt/adk/CalibrateResult;

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_ZERO_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->COMPLETED_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_MAXIMUM_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->MAXIMUM_FOUND_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->CALIBRATE_TIMEOUT:Lcom/nike/adapt/adk/CalibrateResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/CalibrateResult;->NOT_REQUIRED:Lcom/nike/adapt/adk/CalibrateResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult;

    const-string v1, "MOVING_TO_ZERO_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/CalibrateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_ZERO_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult;

    const-string v1, "COMPLETED_FIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/CalibrateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->COMPLETED_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult;

    const-string v1, "MOVING_TO_MAXIMUM_FIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/CalibrateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_MAXIMUM_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult;

    const-string v1, "MAXIMUM_FOUND_FIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/CalibrateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->MAXIMUM_FOUND_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    .line 5
    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult;

    const-string v1, "CALIBRATE_TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/CalibrateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->CALIBRATE_TIMEOUT:Lcom/nike/adapt/adk/CalibrateResult;

    .line 6
    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/CalibrateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->NOT_REQUIRED:Lcom/nike/adapt/adk/CalibrateResult;

    invoke-static {}, Lcom/nike/adapt/adk/CalibrateResult;->$values()[Lcom/nike/adapt/adk/CalibrateResult;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->$VALUES:[Lcom/nike/adapt/adk/CalibrateResult;

    new-instance v0, Lcom/nike/adapt/adk/CalibrateResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/CalibrateResult$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/CalibrateResult;->Companion:Lcom/nike/adapt/adk/CalibrateResult$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/CalibrateResult;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/CalibrateResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/CalibrateResult;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/CalibrateResult;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/CalibrateResult;->$VALUES:[Lcom/nike/adapt/adk/CalibrateResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/CalibrateResult;

    return-object v0
.end method
