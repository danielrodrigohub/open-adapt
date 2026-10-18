.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow$Creator;
.super Ljava/lang/Object;
.source "AdaptFirmwareStage.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    sget-object v1, Lcom/nike/adapt/adk/model/Battery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/adk/model/Battery;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;-><init>(Lcom/nike/adapt/adk/model/Battery;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow$Creator;->newArray(I)[Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    move-result-object p1

    return-object p1
.end method
