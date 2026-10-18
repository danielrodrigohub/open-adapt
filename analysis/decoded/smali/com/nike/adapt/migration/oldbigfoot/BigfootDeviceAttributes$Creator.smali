.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes$Creator;
.super Ljava/lang/Object;
.source "BigfootDeviceAttributes.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    invoke-direct {v0, v1, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;-><init>(ILcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes$Creator;->newArray(I)[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    move-result-object p1

    return-object p1
.end method
