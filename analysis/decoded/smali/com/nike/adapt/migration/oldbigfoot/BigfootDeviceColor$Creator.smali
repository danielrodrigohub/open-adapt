.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor$Creator;
.super Ljava/lang/Object;
.source "BigfootDeviceColor.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;-><init>(Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor$Creator;->newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    move-result-object p1

    return-object p1
.end method
