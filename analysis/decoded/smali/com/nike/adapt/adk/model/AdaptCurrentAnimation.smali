.class public final Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
.super Ljava/lang/Object;
.source "AdaptCurrentAnimation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;,
        Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field private final id:I

.field private final runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

.field private final secondsRemaining:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)V
    .locals 1

    const-string v0, "runningState"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endingState"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    .line 3
    iput p2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    .line 5
    iput-object p4, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->copy(IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    return v0
.end method

.method public final component3()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    return-object v0
.end method

.method public final component4()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    return-object v0
.end method

.method public final copy(IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
    .locals 1

    const-string v0, "runningState"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endingState"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;-><init>(IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    iget-object v3, p1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEndingState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    return v0
.end method

.method public final getRunningState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    return-object v0
.end method

.method public final getSecondsRemaining()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->RUNNING:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->QUEUED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->INTERRUPTED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    iget-object v2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    iget-object v3, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v4, "AdaptCurrentAnimation(id="

    const-string v5, ", secondsRemaining="

    const-string v6, ", runningState="

    .line 1
    invoke-static {v4, v0, v5, v1, v6}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->secondsRemaining:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->runningState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->endingState:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
