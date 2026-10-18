.class public final Lcom/nike/adapt/adk/StopAnimationNotificationResult$Creator;
.super Ljava/lang/Object;
.source "DeviceController.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/StopAnimationNotificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/StopAnimationNotificationResult;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/StopAnimationNotificationResult;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    sget-object v1, Li8/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li8/d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nike/adapt/adk/Shoe;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    const-class v3, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lba/g;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/nike/adapt/adk/StopAnimationNotificationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lba/g;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/StopAnimationNotificationResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/StopAnimationNotificationResult;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/StopAnimationNotificationResult$Creator;->newArray(I)[Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    move-result-object p1

    return-object p1
.end method
