.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;
.super Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.source "AdaptFirmwareStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final percent:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage;-><init>(Lrd/h;)V

    iput p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;FILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->copy(F)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    return v0
.end method

.method public final copy(F)Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;-><init>(F)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getPercent()F
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;->percent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
