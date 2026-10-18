.class public final Lcom/nike/adapt/adk/GetFirmwareVersionResult;
.super Lcom/nike/adapt/adk/DeviceControllerResult;
.source "DeviceController.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/GetFirmwareVersionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventUUID:Li8/d;

.field private final firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/GetFirmwareVersionResult$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/GetFirmwareVersionResult$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;)V
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmwareStatus"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceControllerResult;-><init>(Lrd/h;)V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->eventUUID:Li8/d;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/GetFirmwareVersionResult;Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;ILjava/lang/Object;)Lcom/nike/adapt/adk/GetFirmwareVersionResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getEventUUID()Li8/d;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->copy(Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;)Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Li8/d;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getEventUUID()Li8/d;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    return-object v0
.end method

.method public final copy(Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;)Lcom/nike/adapt/adk/GetFirmwareVersionResult;
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmwareStatus"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;-><init>(Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getEventUUID()Li8/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getEventUUID()Li8/d;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    iget-object p1, p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEventUUID()Li8/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->eventUUID:Li8/d;

    return-object v0
.end method

.method public final getFirmwareStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getEventUUID()Li8/d;

    move-result-object v0

    invoke-virtual {v0}, Li8/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getEventUUID()Li8/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetFirmwareVersionResult(eventUUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", firmwareStatus="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->eventUUID:Li8/d;

    invoke-virtual {v0, p1, p2}, Li8/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->firmwareStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
