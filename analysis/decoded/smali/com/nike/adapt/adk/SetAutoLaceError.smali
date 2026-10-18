.class public final Lcom/nike/adapt/adk/SetAutoLaceError;
.super Lcom/nike/adapt/adk/DeviceControllerErrorResult;
.source "DeviceController.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/SetAutoLaceError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventUUID:Li8/d;

.field private final isLeft:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/SetAutoLaceError$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/SetAutoLaceError$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/SetAutoLaceError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Li8/d;Z)V
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/DeviceControllerErrorResult;-><init>(Lrd/h;)V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->eventUUID:Li8/d;

    iput-boolean p2, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/SetAutoLaceError;Li8/d;ZILjava/lang/Object;)Lcom/nike/adapt/adk/SetAutoLaceError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/adk/SetAutoLaceError;->getEventUUID()Li8/d;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/SetAutoLaceError;->copy(Li8/d;Z)Lcom/nike/adapt/adk/SetAutoLaceError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Li8/d;
    .locals 1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/SetAutoLaceError;->getEventUUID()Li8/d;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    return v0
.end method

.method public final copy(Li8/d;Z)Lcom/nike/adapt/adk/SetAutoLaceError;
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/SetAutoLaceError;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/SetAutoLaceError;-><init>(Li8/d;Z)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/SetAutoLaceError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/SetAutoLaceError;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/SetAutoLaceError;->getEventUUID()Li8/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetAutoLaceError;->getEventUUID()Li8/d;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    iget-boolean p1, p1, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEventUUID()Li8/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->eventUUID:Li8/d;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/SetAutoLaceError;->getEventUUID()Li8/d;

    move-result-object v0

    invoke-virtual {v0}, Li8/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/nike/adapt/adk/SetAutoLaceError;->getEventUUID()Li8/d;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetAutoLaceError(eventUUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isLeft="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->eventUUID:Li8/d;

    invoke-virtual {v0, p1, p2}, Li8/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/nike/adapt/adk/SetAutoLaceError;->isLeft:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
