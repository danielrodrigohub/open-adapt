.class public final Lcom/nike/adapt/adk/CalibrateResult$Companion;
.super Ljava/lang/Object;
.source "DeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/CalibrateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/CalibrateResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(Lba/v;)Lcom/nike/adapt/adk/CalibrateResult;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lba/b0;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_ZERO_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lba/q;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/nike/adapt/adk/CalibrateResult;->COMPLETED_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lba/a0;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/nike/adapt/adk/CalibrateResult;->MOVING_TO_MAXIMUM_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Lba/z;

    if-eqz v0, :cond_3

    sget-object p1, Lcom/nike/adapt/adk/CalibrateResult;->MAXIMUM_FOUND_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Lba/l0;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/nike/adapt/adk/CalibrateResult;->CALIBRATE_TIMEOUT:Lcom/nike/adapt/adk/CalibrateResult;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p1, Lcom/nike/adapt/adk/CalibrateResult;->NOT_REQUIRED:Lcom/nike/adapt/adk/CalibrateResult;

    :goto_0
    return-object p1
.end method
