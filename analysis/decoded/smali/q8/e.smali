.class public final Lq8/e;
.super Ljava/lang/Object;
.source "BatteryEventAnimator.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lq8/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Z

.field public final i:Lcom/nike/adapt/adk/model/Battery;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq8/e$a;

    invoke-direct {v0}, Lq8/e$a;-><init>()V

    sput-object v0, Lq8/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLcom/nike/adapt/adk/model/Battery;)V
    .locals 1

    const-string v0, "battery"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lq8/e;->h:Z

    iput-object p2, p0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget-object v0, p0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq8/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lq8/e;

    iget-boolean v1, p0, Lq8/e;->h:Z

    iget-boolean v3, p1, Lq8/e;->h:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    iget-object p1, p1, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lq8/e;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lq8/e;->h:Z

    iget-object v1, p0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatteryInfoState(isRightShoe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", battery="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lq8/e;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/Battery;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
