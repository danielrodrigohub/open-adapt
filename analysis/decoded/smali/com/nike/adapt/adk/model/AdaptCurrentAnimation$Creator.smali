.class public final Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$Creator;
.super Ljava/lang/Object;
.source "AdaptCurrentAnimation.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;-><init>(IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$Creator;->newArray(I)[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    return-object p1
.end method
