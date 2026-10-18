.class public final Lcom/nike/adapt/adk/model/AdaptGestureNotification;
.super Ljava/lang/Object;
.source "AdaptGestureNotification.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptGestureNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

.field private final timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureNotification$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureNotification$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;)V
    .locals 1

    const-string v0, "gestureConfiguration"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    .line 3
    iput-object p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptGestureNotification;JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->copy(JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    return-wide v0
.end method

.method public final component2()Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    return-object v0
.end method

.method public final copy(JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 1

    const-string v0, "gestureConfiguration"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    invoke-direct {v0, p1, p2, p3}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;-><init>(JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    iget-wide v3, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    iget-wide v5, p1, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGestureConfiguration()Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    iget-object v2, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdaptGestureNotification(timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", gestureConfiguration="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->gestureConfiguration:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
