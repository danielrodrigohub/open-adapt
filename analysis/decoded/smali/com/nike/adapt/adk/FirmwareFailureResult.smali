.class public final Lcom/nike/adapt/adk/FirmwareFailureResult;
.super Lcom/nike/adapt/adk/FirmwareUpdateResult;
.source "FirmwareUpdateResults.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/FirmwareFailureResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/FirmwareFailureResult$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/FirmwareFailureResult$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/FirmwareFailureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;)V
    .locals 1

    const-string v0, "errorState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/FirmwareUpdateResult;-><init>(Lrd/h;)V

    iput-object p1, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/FirmwareFailureResult;Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;ILjava/lang/Object;)Lcom/nike/adapt/adk/FirmwareFailureResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/FirmwareFailureResult;->copy(Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;)Lcom/nike/adapt/adk/FirmwareFailureResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    return-object v0
.end method

.method public final copy(Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;)Lcom/nike/adapt/adk/FirmwareFailureResult;
    .locals 1

    const-string v0, "errorState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/FirmwareFailureResult;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/FirmwareFailureResult;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/FirmwareFailureResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/FirmwareFailureResult;

    iget-object v1, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    iget-object p1, p1, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getErrorState()Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirmwareFailureResult(errorState="

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

    iget-object v0, p0, Lcom/nike/adapt/adk/FirmwareFailureResult;->errorState:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
