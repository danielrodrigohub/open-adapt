.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
.super Ljava/lang/Object;
.source "AdaptFirmwareModels.kt"

# interfaces
.implements Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAvailable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

.field private final forceUpdateRequired:Z

.field private final inBetaProgram:Z

.field private final readyForUpdate:Z

.field private final updatedVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZ)V
    .locals 1

    const-string v0, "currentVersion"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedVersion"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    .line 3
    iput-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    .line 6
    iput-boolean p5, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->copy(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZ)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    return v0
.end method

.method public final copy(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZ)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
    .locals 7

    const-string v0, "currentVersion"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedVersion"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZ)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    iget-boolean v3, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    iget-boolean v3, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    iget-boolean p1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    return-object v0
.end method

.method public final getForceUpdateRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    return v0
.end method

.method public final getInBetaProgram()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    return v0
.end method

.method public final getReadyForUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    return v0
.end method

.method public final getUpdatedVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    iget-object v2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    iget-boolean v4, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateAvailable(currentVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", readyForUpdate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", updatedVersion="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", inBetaProgram="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", forceUpdateRequired="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->readyForUpdate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->updatedVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->inBetaProgram:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->forceUpdateRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
