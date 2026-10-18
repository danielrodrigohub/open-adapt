.class public final Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
.super Ljava/lang/Object;
.source "AdaptCustomAnimation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptCustomAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final interruptable:Z

.field private final repeatCount:I

.field private final resumable:Z

.field private final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/util/List;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;ZII)V"
        }
    .end annotation

    const-string v0, "frames"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    .line 3
    iput-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    .line 5
    iput-boolean p4, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    .line 6
    iput p5, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    .line 7
    iput p6, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/util/List;ZIIILrd/h;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v7, v0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    move v8, v0

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move v3, p1

    move-object v5, p3

    .line 8
    invoke-direct/range {v2 .. v8}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;-><init>(IZLjava/util/List;ZII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;IZLjava/util/List;ZIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->copy(IZLjava/util/List;ZII)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    return v0
.end method

.method public final copy(IZLjava/util/List;ZII)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;ZII)",
            "Lcom/nike/adapt/adk/model/AdaptCustomAnimation;"
        }
    .end annotation

    const-string v0, "frames"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;-><init>(IZLjava/util/List;ZII)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    iget-boolean v3, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    iget-object v3, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    iget-boolean v3, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    iget p1, p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    return v0
.end method

.method public final getInterruptable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    return v0
.end method

.method public final getResumable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v0, v3}, La4/g;->d(Ljava/util/List;II)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    const/16 v2, 0x1f

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    iget-boolean v1, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    iget-object v2, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

    iget-boolean v3, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    iget v4, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    iget v5, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AdaptCustomAnimation(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resumable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", frames="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", interruptable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", repeatCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->resumable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->frames:Ljava/util/List;

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

    check-cast v1, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;

    invoke-virtual {v1, p1, p2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->interruptable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->repeatCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
