.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;
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
    name = "UpToDate"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V
    .locals 1

    const-string v0, "currentVersion"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->copy(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;
    .locals 1

    const-string v0, "currentVersion"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p1

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpToDate(currentVersion="

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

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;->currentVersion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
