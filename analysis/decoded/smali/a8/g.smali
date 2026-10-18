.class public final La8/g;
.super Ljava/lang/Object;
.source "ShoeStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La8/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I
    .annotation runtime Lf7/b;
        value = "buttonManualLoosenCt"
    .end annotation
.end field

.field public final i:I
    .annotation runtime Lf7/b;
        value = "autolaceTightenCt"
    .end annotation
.end field

.field public final j:I
    .annotation runtime Lf7/b;
        value = "idleTimeSec"
    .end annotation
.end field

.field public final k:I
    .annotation runtime Lf7/b;
        value = "tightenSpoolDeg"
    .end annotation
.end field

.field public final l:I
    .annotation runtime Lf7/b;
        value = "lacedTimeSec"
    .end annotation
.end field

.field public final m:I
    .annotation runtime Lf7/b;
        value = "loosenSpoolDeg"
    .end annotation
.end field

.field public final n:I
    .annotation runtime Lf7/b;
        value = "buttonManualTightenCt"
    .end annotation
.end field

.field public final o:I
    .annotation runtime Lf7/b;
        value = "maxTightenCt"
    .end annotation
.end field

.field public final p:I
    .annotation runtime Lf7/b;
        value = "presetChangeCt"
    .end annotation
.end field

.field public final q:I
    .annotation runtime Lf7/b;
        value = "homingRoutineCt"
    .end annotation
.end field

.field public final r:I
    .annotation runtime Lf7/b;
        value = "overCurrentEventCt"
    .end annotation
.end field

.field public final s:I
    .annotation runtime Lf7/b;
        value = "buttonServoFaultCt"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/g$a;

    invoke-direct {v0}, La8/g$a;-><init>()V

    sput-object v0, La8/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, La8/g;->h:I

    .line 3
    iput p2, p0, La8/g;->i:I

    .line 4
    iput p3, p0, La8/g;->j:I

    .line 5
    iput p4, p0, La8/g;->k:I

    .line 6
    iput p5, p0, La8/g;->l:I

    .line 7
    iput p6, p0, La8/g;->m:I

    .line 8
    iput p7, p0, La8/g;->n:I

    .line 9
    iput p8, p0, La8/g;->o:I

    .line 10
    iput p9, p0, La8/g;->p:I

    .line 11
    iput p10, p0, La8/g;->q:I

    .line 12
    iput p11, p0, La8/g;->r:I

    .line 13
    iput p12, p0, La8/g;->s:I

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
    instance-of v1, p1, La8/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La8/g;

    iget v1, p0, La8/g;->h:I

    iget v3, p1, La8/g;->h:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, La8/g;->i:I

    iget v3, p1, La8/g;->i:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, La8/g;->j:I

    iget v3, p1, La8/g;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, La8/g;->k:I

    iget v3, p1, La8/g;->k:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, La8/g;->l:I

    iget v3, p1, La8/g;->l:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, La8/g;->m:I

    iget v3, p1, La8/g;->m:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, La8/g;->n:I

    iget v3, p1, La8/g;->n:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, La8/g;->o:I

    iget v3, p1, La8/g;->o:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, La8/g;->p:I

    iget v3, p1, La8/g;->p:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, La8/g;->q:I

    iget v3, p1, La8/g;->q:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, La8/g;->r:I

    iget v3, p1, La8/g;->r:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, La8/g;->s:I

    iget p1, p1, La8/g;->s:I

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, La8/g;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La8/g;->i:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, La8/g;->j:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, La8/g;->k:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget v1, p0, La8/g;->l:I

    .line 7
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget v1, p0, La8/g;->m:I

    .line 9
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 10
    iget v1, p0, La8/g;->n:I

    .line 11
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 12
    iget v1, p0, La8/g;->o:I

    .line 13
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 14
    iget v1, p0, La8/g;->p:I

    .line 15
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 16
    iget v1, p0, La8/g;->q:I

    .line 17
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 18
    iget v1, p0, La8/g;->r:I

    .line 19
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 20
    iget v1, p0, La8/g;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    iget v0, p0, La8/g;->h:I

    iget v1, p0, La8/g;->i:I

    iget v2, p0, La8/g;->j:I

    iget v3, p0, La8/g;->k:I

    iget v4, p0, La8/g;->l:I

    iget v5, p0, La8/g;->m:I

    iget v6, p0, La8/g;->n:I

    iget v7, p0, La8/g;->o:I

    iget v8, p0, La8/g;->p:I

    iget v9, p0, La8/g;->q:I

    iget v10, p0, La8/g;->r:I

    iget v11, p0, La8/g;->s:I

    const-string v12, "ServoStats(buttonManualLoosenCt="

    const-string v13, ", autolaceTightenCt="

    const-string v14, ", idleTimeSec="

    .line 1
    invoke-static {v12, v0, v13, v1, v14}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tightenSpoolDeg="

    const-string v12, ", lacedTimeSec="

    .line 2
    invoke-static {v0, v2, v1, v3, v12}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", loosenSpoolDeg="

    const-string v2, ", buttonManualTightenCt="

    invoke-static {v0, v4, v1, v5, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", maxTightenCt="

    const-string v2, ", presetChangeCt="

    invoke-static {v0, v6, v1, v7, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", homingRoutineCt="

    const-string v2, ", overCurrentEventCt="

    invoke-static {v0, v8, v1, v9, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonServoFaultCt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget p2, p0, La8/g;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/g;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
