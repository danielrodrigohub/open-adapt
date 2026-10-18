.class public final Lba/i;
.super Ljava/lang/Object;
.source "AdaptKitLaceEngineStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lba/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lba/m;

.field public final i:Lba/n;

.field public final j:Lba/r;

.field public final k:Lba/i0;

.field public final l:Lba/k0;

.field public final m:Lba/o0;

.field public final n:Lba/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lba/i$a;

    invoke-direct {v0}, Lba/i$a;-><init>()V

    sput-object v0, Lba/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lba/m;Lba/n;Lba/r;Lba/i0;Lba/k0;Lba/o0;Lba/w;)V
    .locals 1

    const-string v0, "batteryStats"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bleStats"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentStats"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servoStats"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateStats"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakeupStats"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureStats"

    invoke-static {p7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba/i;->h:Lba/m;

    .line 3
    iput-object p2, p0, Lba/i;->i:Lba/n;

    .line 4
    iput-object p3, p0, Lba/i;->j:Lba/r;

    .line 5
    iput-object p4, p0, Lba/i;->k:Lba/i0;

    .line 6
    iput-object p5, p0, Lba/i;->l:Lba/k0;

    .line 7
    iput-object p6, p0, Lba/i;->m:Lba/o0;

    .line 8
    iput-object p7, p0, Lba/i;->n:Lba/w;

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
    instance-of v1, p1, Lba/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lba/i;

    iget-object v1, p0, Lba/i;->h:Lba/m;

    iget-object v3, p1, Lba/i;->h:Lba/m;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lba/i;->i:Lba/n;

    iget-object v3, p1, Lba/i;->i:Lba/n;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lba/i;->j:Lba/r;

    iget-object v3, p1, Lba/i;->j:Lba/r;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lba/i;->k:Lba/i0;

    iget-object v3, p1, Lba/i;->k:Lba/i0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lba/i;->l:Lba/k0;

    iget-object v3, p1, Lba/i;->l:Lba/k0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lba/i;->m:Lba/o0;

    iget-object v3, p1, Lba/i;->m:Lba/o0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lba/i;->n:Lba/w;

    iget-object p1, p1, Lba/i;->n:Lba/w;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lba/i;->h:Lba/m;

    invoke-virtual {v0}, Lba/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/i;->i:Lba/n;

    invoke-virtual {v1}, Lba/n;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/i;->j:Lba/r;

    invoke-virtual {v0}, Lba/r;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/i;->k:Lba/i0;

    invoke-virtual {v1}, Lba/i0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/i;->l:Lba/k0;

    invoke-virtual {v0}, Lba/k0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/i;->m:Lba/o0;

    invoke-virtual {v1}, Lba/o0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/i;->n:Lba/w;

    invoke-virtual {v0}, Lba/w;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lba/i;->h:Lba/m;

    iget-object v1, p0, Lba/i;->i:Lba/n;

    iget-object v2, p0, Lba/i;->j:Lba/r;

    iget-object v3, p0, Lba/i;->k:Lba/i0;

    iget-object v4, p0, Lba/i;->l:Lba/k0;

    iget-object v5, p0, Lba/i;->m:Lba/o0;

    iget-object v6, p0, Lba/i;->n:Lba/w;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdaptKitLaceEngineStats(batteryStats="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bleStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", servoStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stateStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wakeupStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gestureStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lba/i;->h:Lba/m;

    invoke-virtual {v0, p1, p2}, Lba/m;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/i;->i:Lba/n;

    invoke-virtual {v0, p1, p2}, Lba/n;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/i;->j:Lba/r;

    invoke-virtual {v0, p1, p2}, Lba/r;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/i;->k:Lba/i0;

    invoke-virtual {v0, p1, p2}, Lba/i0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/i;->l:Lba/k0;

    invoke-virtual {v0, p1, p2}, Lba/k0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/i;->m:Lba/o0;

    invoke-virtual {v0, p1, p2}, Lba/o0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/i;->n:Lba/w;

    invoke-virtual {v0, p1, p2}, Lba/w;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
