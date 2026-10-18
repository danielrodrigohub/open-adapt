.class public final La8/a;
.super Ljava/lang/Object;
.source "ShoeStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La8/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I
    .annotation runtime Lf7/b;
        value = "timeOnChargerSec"
    .end annotation
.end field

.field public final i:I
    .annotation runtime Lf7/b;
        value = "batteryLacingPercent"
    .end annotation
.end field

.field public final j:I
    .annotation runtime Lf7/b;
        value = "batterySleepPercent"
    .end annotation
.end field

.field public final k:I
    .annotation runtime Lf7/b;
        value = "batteryIdlePercent"
    .end annotation
.end field

.field public final l:I
    .annotation runtime Lf7/b;
        value = "chargeCt"
    .end annotation
.end field

.field public final m:I
    .annotation runtime Lf7/b;
        value = "onChargerCt"
    .end annotation
.end field

.field public final n:I
    .annotation runtime Lf7/b;
        value = "lifetimeSec"
    .end annotation
.end field

.field public final o:I
    .annotation runtime Lf7/b;
        value = "timeChargingSec"
    .end annotation
.end field

.field public final p:I
    .annotation runtime Lf7/b;
        value = "timeSleepingSec"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/a$a;

    invoke-direct {v0}, La8/a$a;-><init>()V

    sput-object v0, La8/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, La8/a;->h:I

    .line 3
    iput p2, p0, La8/a;->i:I

    .line 4
    iput p3, p0, La8/a;->j:I

    .line 5
    iput p4, p0, La8/a;->k:I

    .line 6
    iput p5, p0, La8/a;->l:I

    .line 7
    iput p6, p0, La8/a;->m:I

    .line 8
    iput p7, p0, La8/a;->n:I

    .line 9
    iput p8, p0, La8/a;->o:I

    .line 10
    iput p9, p0, La8/a;->p:I

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
    instance-of v1, p1, La8/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La8/a;

    iget v1, p0, La8/a;->h:I

    iget v3, p1, La8/a;->h:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, La8/a;->i:I

    iget v3, p1, La8/a;->i:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, La8/a;->j:I

    iget v3, p1, La8/a;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, La8/a;->k:I

    iget v3, p1, La8/a;->k:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, La8/a;->l:I

    iget v3, p1, La8/a;->l:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, La8/a;->m:I

    iget v3, p1, La8/a;->m:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, La8/a;->n:I

    iget v3, p1, La8/a;->n:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, La8/a;->o:I

    iget v3, p1, La8/a;->o:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, La8/a;->p:I

    iget p1, p1, La8/a;->p:I

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, La8/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La8/a;->i:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, La8/a;->j:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, La8/a;->k:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget v1, p0, La8/a;->l:I

    .line 7
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget v1, p0, La8/a;->m:I

    .line 9
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 10
    iget v1, p0, La8/a;->n:I

    .line 11
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 12
    iget v1, p0, La8/a;->o:I

    .line 13
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 14
    iget v1, p0, La8/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, La8/a;->h:I

    iget v1, p0, La8/a;->i:I

    iget v2, p0, La8/a;->j:I

    iget v3, p0, La8/a;->k:I

    iget v4, p0, La8/a;->l:I

    iget v5, p0, La8/a;->m:I

    iget v6, p0, La8/a;->n:I

    iget v7, p0, La8/a;->o:I

    iget v8, p0, La8/a;->p:I

    const-string v9, "BatteryStats(timeOnChargerSec="

    const-string v10, ", batteryLacingPercent="

    const-string v11, ", batterySleepPercent="

    .line 1
    invoke-static {v9, v0, v10, v1, v11}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryIdlePercent="

    const-string v9, ", chargeCt="

    .line 2
    invoke-static {v0, v2, v1, v3, v9}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", onChargerCt="

    const-string v2, ", lifetimeSec="

    invoke-static {v0, v4, v1, v5, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", timeChargingSec="

    const-string v2, ", timeSleepingSec="

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

    iget p2, p0, La8/a;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, La8/a;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
