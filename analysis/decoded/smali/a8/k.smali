.class public final La8/k;
.super Ljava/lang/Object;
.source "ShoeStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La8/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I
    .annotation runtime Lf7/b;
        value = "lacingCt"
    .end annotation
.end field

.field public final i:I
    .annotation runtime Lf7/b;
        value = "latchedCt"
    .end annotation
.end field

.field public final j:I
    .annotation runtime Lf7/b;
        value = "sleepCt"
    .end annotation
.end field

.field public final k:I
    .annotation runtime Lf7/b;
        value = "idleCt"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/k$a;

    invoke-direct {v0}, La8/k$a;-><init>()V

    sput-object v0, La8/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, La8/k;->h:I

    .line 3
    iput p2, p0, La8/k;->i:I

    .line 4
    iput p3, p0, La8/k;->j:I

    .line 5
    iput p4, p0, La8/k;->k:I

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, La8/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La8/k;

    iget v1, p0, La8/k;->h:I

    iget v3, p1, La8/k;->h:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, La8/k;->i:I

    iget v3, p1, La8/k;->i:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, La8/k;->j:I

    iget v3, p1, La8/k;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, La8/k;->k:I

    iget p1, p1, La8/k;->k:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, La8/k;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La8/k;->i:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, La8/k;->j:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, La8/k;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, La8/k;->h:I

    iget v1, p0, La8/k;->i:I

    iget v2, p0, La8/k;->j:I

    iget v3, p0, La8/k;->k:I

    const-string v4, "StateStats(lacingCt="

    const-string v5, ", latchedCt="

    const-string v6, ", sleepCt="

    .line 1
    invoke-static {v4, v0, v5, v1, v6}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idleCt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, La8/k;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/k;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/k;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/k;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
