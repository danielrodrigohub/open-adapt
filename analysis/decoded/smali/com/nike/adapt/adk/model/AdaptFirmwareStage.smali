.class public abstract Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.super Ljava/lang/Object;
.source "AdaptFirmwareStage.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$ConnectionLost;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NoUpdateAvailable;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NotStarted;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$FetchingData;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Flashing;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Reconnecting;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Completed;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage;-><init>()V

    return-void
.end method
