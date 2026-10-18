.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;
.super Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.source "AdaptFirmwareStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatteryTooLow"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final battery:Lcom/nike/adapt/adk/model/Battery;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/model/Battery;)V
    .locals 1

    const-string v0, "battery"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage;-><init>(Lrd/h;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;Lcom/nike/adapt/adk/model/Battery;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->copy(Lcom/nike/adapt/adk/model/Battery;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/adk/model/Battery;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    return-object v0
.end method

.method public final copy(Lcom/nike/adapt/adk/model/Battery;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;
    .locals 1

    const-string v0, "battery"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;-><init>(Lcom/nike/adapt/adk/model/Battery;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBattery()Lcom/nike/adapt/adk/model/Battery;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatteryTooLow(battery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;->battery:Lcom/nike/adapt/adk/model/Battery;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/Battery;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
