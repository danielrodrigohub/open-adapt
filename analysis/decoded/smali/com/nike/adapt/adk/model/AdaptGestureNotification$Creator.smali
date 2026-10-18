.class public final Lcom/nike/adapt/adk/model/AdaptGestureNotification$Creator;
.super Ljava/lang/Object;
.source "AdaptGestureNotification.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/model/AdaptGestureNotification;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-class v3, Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    invoke-direct {v0, v1, v2, p1}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;-><init>(JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptGestureNotification$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptGestureNotification$Creator;->newArray(I)[Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    move-result-object p1

    return-object p1
.end method
