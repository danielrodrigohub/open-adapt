.class public final Lcom/nike/adapt/adk/model/AdaptGestureStatistics;
.super Ljava/lang/Object;
.source "AdaptGestureStatistics.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptGestureStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final doubleTapEventsDetected:I

.field private final invalidGestures:I

.field private final validGestures:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureStatistics$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    .line 3
    iput p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    .line 4
    iput p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptGestureStatistics;IIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptGestureStatistics;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->copy(III)Lcom/nike/adapt/adk/model/AdaptGestureStatistics;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    return v0
.end method

.method public final copy(III)Lcom/nike/adapt/adk/model/AdaptGestureStatistics;
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;

    invoke-direct {v0, p1, p2, p3}, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;-><init>(III)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    iget p1, p1, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDoubleTapEventsDetected()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    return v0
.end method

.method public final getInvalidGestures()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    return v0
.end method

.method public final getValidGestures()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    iget v2, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    const-string v3, "AdaptGestureStatistics(doubleTapEventsDetected="

    const-string v4, ", invalidGestures="

    const-string v5, ", validGestures="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->doubleTapEventsDetected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->invalidGestures:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureStatistics;->validGestures:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
