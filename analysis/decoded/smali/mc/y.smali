.class public final Lmc/y;
.super Ljava/lang/Object;
.source "SessionData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/y$a;

    invoke-direct {v0}, Lmc/y$a;-><init>()V

    sput-object v0, Lmc/y;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIIIIIIII)V
    .locals 1

    const-string v0, "footStrikeType"

    invoke-static {p3, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const-string v0, "stepClassification"

    invoke-static {p10, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lmc/y;->h:J

    .line 3
    iput p3, p0, Lmc/y;->i:I

    .line 4
    iput p4, p0, Lmc/y;->j:I

    .line 5
    iput p5, p0, Lmc/y;->k:I

    .line 6
    iput p6, p0, Lmc/y;->l:I

    .line 7
    iput p7, p0, Lmc/y;->m:I

    .line 8
    iput p8, p0, Lmc/y;->n:I

    .line 9
    iput p9, p0, Lmc/y;->o:I

    .line 10
    iput p10, p0, Lmc/y;->p:I

    .line 11
    iput p11, p0, Lmc/y;->q:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc/y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmc/y;

    iget-wide v3, p0, Lmc/y;->h:J

    iget-wide v5, p1, Lmc/y;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lmc/y;->i:I

    iget v3, p1, Lmc/y;->i:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lmc/y;->j:I

    iget v3, p1, Lmc/y;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lmc/y;->k:I

    iget v3, p1, Lmc/y;->k:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lmc/y;->l:I

    iget v3, p1, Lmc/y;->l:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lmc/y;->m:I

    iget v3, p1, Lmc/y;->m:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lmc/y;->n:I

    iget v3, p1, Lmc/y;->n:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lmc/y;->o:I

    iget v3, p1, Lmc/y;->o:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lmc/y;->p:I

    iget v3, p1, Lmc/y;->p:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lmc/y;->q:I

    iget p1, p1, Lmc/y;->q:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lmc/y;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lmc/y;->i:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lmc/y;->j:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lmc/y;->k:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lmc/y;->l:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget v1, p0, Lmc/y;->m:I

    .line 7
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget v1, p0, Lmc/y;->n:I

    .line 9
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 10
    iget v1, p0, Lmc/y;->o:I

    .line 11
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 12
    iget v1, p0, Lmc/y;->p:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lmc/y;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SessionData(timestamp="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lmc/y;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", footStrikeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->i:I

    invoke-static {v1}, Ld1/c;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impulse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contactTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepClassification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->p:I

    invoke-static {v1}, Landroidx/appcompat/widget/e0;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmc/y;->q:I

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/b;->b(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lmc/y;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lmc/y;->i:I

    invoke-static {p2}, Ld1/c;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lmc/y;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmc/y;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmc/y;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmc/y;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmc/y;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmc/y;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmc/y;->p:I

    invoke-static {p2}, Landroidx/appcompat/widget/e0;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lmc/y;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
