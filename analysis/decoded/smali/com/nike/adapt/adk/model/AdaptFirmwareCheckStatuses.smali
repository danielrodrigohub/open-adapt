.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;
.super Ljava/lang/Object;
.source "AdaptFirmwareModels.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

.field private final rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;)V
    .locals 1

    const-string v0, "leftStatus"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightStatus"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    iput-object p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->copy(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;)Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    return-object v0
.end method

.method public final component2()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    return-object v0
.end method

.method public final copy(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;)Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;
    .locals 1

    const-string v0, "leftStatus"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightStatus"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    iget-object v3, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLeftStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    return-object v0
.end method

.method public final getRightStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptFirmwareCheckStatuses(leftStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightStatus="

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

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->leftStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->rightStatus:Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
