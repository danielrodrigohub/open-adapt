.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable$Creator;
.super Ljava/lang/Object;
.source "AdaptFirmwareModels.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
    .locals 8

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v4

    :goto_2
    move-object v1, v0

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable$Creator;->newArray(I)[Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    move-result-object p1

    return-object p1
.end method
