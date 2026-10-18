.class public final Lcom/nike/adapt/adk/StopAnimationResult$Creator;
.super Ljava/lang/Object;
.source "DeviceController.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/StopAnimationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/StopAnimationResult;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/StopAnimationResult;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/StopAnimationResult;

    sget-object v1, Li8/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li8/d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/Shoe;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/nike/adapt/adk/StopAnimationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/StopAnimationResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/StopAnimationResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/StopAnimationResult;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/StopAnimationResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/StopAnimationResult$Creator;->newArray(I)[Lcom/nike/adapt/adk/StopAnimationResult;

    move-result-object p1

    return-object p1
.end method
