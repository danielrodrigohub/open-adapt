.class public final Lcom/nike/adapt/adk/model/AdaptDeviceColor$Creator;
.super Ljava/lang/Object;
.source "AdaptDeviceColor.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptDeviceColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/model/AdaptDeviceColor;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptDeviceColor;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/model/AdaptDeviceColor;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor$Creator;->newArray(I)[Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    return-object p1
.end method
