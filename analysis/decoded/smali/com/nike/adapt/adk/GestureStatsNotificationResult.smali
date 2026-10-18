.class public final Lcom/nike/adapt/adk/GestureStatsNotificationResult;
.super Lcom/nike/adapt/adk/DeviceControllerResult;
.source "DeviceController.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/GestureStatsNotificationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventUUID:Li8/d;

.field private final gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

.field private final shoe:Lcom/nike/adapt/adk/Shoe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/GestureStatsNotificationResult$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/GestureStatsNotificationResult$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureNotification;)V
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoe"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureNotification"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceControllerResult;-><init>(Lrd/h;)V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->eventUUID:Li8/d;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/GestureStatsNotificationResult;Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureNotification;ILjava/lang/Object;)Lcom/nike/adapt/adk/GestureStatsNotificationResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getEventUUID()Li8/d;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->copy(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureNotification;)Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Li8/d;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getEventUUID()Li8/d;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/nike/adapt/adk/Shoe;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    return-object v0
.end method

.method public final component3()Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    return-object v0
.end method

.method public final copy(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureNotification;)Lcom/nike/adapt/adk/GestureStatsNotificationResult;
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoe"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureNotification"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/AdaptGestureNotification;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getEventUUID()Li8/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getEventUUID()Li8/d;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    iget-object v3, p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    iget-object p1, p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getEventUUID()Li8/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->eventUUID:Li8/d;

    return-object v0
.end method

.method public final getGestureNotification()Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    return-object v0
.end method

.method public final getShoe()Lcom/nike/adapt/adk/Shoe;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getEventUUID()Li8/d;

    move-result-object v0

    invoke-virtual {v0}, Li8/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->b(Lcom/nike/adapt/adk/Shoe;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getEventUUID()Li8/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    iget-object v2, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    const-string v3, "GestureStatsNotificationResult(eventUUID="

    const-string v4, ", shoe="

    const-string v5, ", gestureNotification="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/fragment/app/r0;->g(Ljava/lang/String;Li8/d;Ljava/lang/String;Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->eventUUID:Li8/d;

    invoke-virtual {v0, p1, p2}, Li8/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->shoe:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->gestureNotification:Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
