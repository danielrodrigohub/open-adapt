.class public final Lba/r;
.super Ljava/lang/Object;
.source "AdaptKitLaceEngineStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lba/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lba/r$a;

    invoke-direct {v0}, Lba/r$a;-><init>()V

    sput-object v0, Lba/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lba/r;->h:I

    .line 3
    iput p2, p0, Lba/r;->i:I

    .line 4
    iput p3, p0, Lba/r;->j:I

    .line 5
    iput p4, p0, Lba/r;->k:I

    .line 6
    iput p5, p0, Lba/r;->l:I

    .line 7
    iput p6, p0, Lba/r;->m:I

    .line 8
    iput p7, p0, Lba/r;->n:I

    .line 9
    iput p8, p0, Lba/r;->o:I

    .line 10
    iput p9, p0, Lba/r;->p:I

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
    instance-of v1, p1, Lba/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lba/r;

    iget v1, p0, Lba/r;->h:I

    iget v3, p1, Lba/r;->h:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lba/r;->i:I

    iget v3, p1, Lba/r;->i:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lba/r;->j:I

    iget v3, p1, Lba/r;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lba/r;->k:I

    iget v3, p1, Lba/r;->k:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lba/r;->l:I

    iget v3, p1, Lba/r;->l:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lba/r;->m:I

    iget v3, p1, Lba/r;->m:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lba/r;->n:I

    iget v3, p1, Lba/r;->n:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lba/r;->o:I

    iget v3, p1, Lba/r;->o:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lba/r;->p:I

    iget p1, p1, Lba/r;->p:I

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lba/r;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lba/r;->i:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lba/r;->j:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lba/r;->k:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget v1, p0, Lba/r;->l:I

    .line 7
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget v1, p0, Lba/r;->m:I

    .line 9
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 10
    iget v1, p0, Lba/r;->n:I

    .line 11
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 12
    iget v1, p0, Lba/r;->o:I

    .line 13
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 14
    iget v1, p0, Lba/r;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lba/r;->h:I

    iget v1, p0, Lba/r;->i:I

    iget v2, p0, Lba/r;->j:I

    iget v3, p0, Lba/r;->k:I

    iget v4, p0, Lba/r;->l:I

    iget v5, p0, Lba/r;->m:I

    iget v6, p0, Lba/r;->n:I

    iget v7, p0, Lba/r;->o:I

    iget v8, p0, Lba/r;->p:I

    const-string v9, "CurrentStats(histo0="

    const-string v10, ", histo1="

    const-string v11, ", histo2="

    .line 1
    invoke-static {v9, v0, v10, v1, v11}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", histo3="

    const-string v9, ", histo4="

    .line 2
    invoke-static {v0, v2, v1, v3, v9}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", histo5="

    const-string v2, ", histo6="

    invoke-static {v0, v4, v1, v5, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", histo7="

    const-string v2, ", histo8="

    invoke-static {v0, v6, v1, v7, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    .line 3
    invoke-static {v0, v8, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lba/r;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lba/r;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
