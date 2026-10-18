.class public final Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;
.super Ljava/lang/Object;
.source "AdaptCustomAnimation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final duration:F

.field private final ledColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ledColors"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    iput-object p2, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;FLjava/util/List;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->copy(FLjava/util/List;)Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    return-object v0
.end method

.method public final copy(FLjava/util/List;)Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;",
            ">;)",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;"
        }
    .end annotation

    const-string v0, "ledColors"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;-><init>(FLjava/util/List;)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDuration()F
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    return v0
.end method

.method public final getLedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptAppAnimationFrame(duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ledColors="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->duration:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->ledColors:Ljava/util/List;

    .line 1
    invoke-static {v0, p1}, Lca/a;->d(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;

    invoke-virtual {v1, p1, p2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
