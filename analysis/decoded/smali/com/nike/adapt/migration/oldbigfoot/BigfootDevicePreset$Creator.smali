.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset$Creator;
.super Ljava/lang/Object;
.source "BigfootDevicePreset.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset$Creator;->newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    move-result-object p1

    return-object p1
.end method
