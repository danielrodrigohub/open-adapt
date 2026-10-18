.class public final Lmc/f;
.super Ljava/lang/Object;
.source "BigfootStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lmc/d;

.field public final i:Lmc/g;

.field public final j:Lmc/i;

.field public final k:Lmc/u;

.field public final l:Lmc/f0;

.field public final m:Lmc/i0;

.field public final n:Lmc/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/f$a;

    invoke-direct {v0}, Lmc/f$a;-><init>()V

    sput-object v0, Lmc/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lmc/d;Lmc/g;Lmc/i;Lmc/u;Lmc/f0;Lmc/i0;Lmc/q;)V
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
    iput-object p1, p0, Lmc/f;->h:Lmc/d;

    .line 3
    iput-object p2, p0, Lmc/f;->i:Lmc/g;

    .line 4
    iput-object p3, p0, Lmc/f;->j:Lmc/i;

    .line 5
    iput-object p4, p0, Lmc/f;->k:Lmc/u;

    .line 6
    iput-object p5, p0, Lmc/f;->l:Lmc/f0;

    .line 7
    iput-object p6, p0, Lmc/f;->m:Lmc/i0;

    .line 8
    iput-object p7, p0, Lmc/f;->n:Lmc/q;

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
    instance-of v1, p1, Lmc/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmc/f;

    iget-object v1, p0, Lmc/f;->h:Lmc/d;

    iget-object v3, p1, Lmc/f;->h:Lmc/d;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lmc/f;->i:Lmc/g;

    iget-object v3, p1, Lmc/f;->i:Lmc/g;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lmc/f;->j:Lmc/i;

    iget-object v3, p1, Lmc/f;->j:Lmc/i;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lmc/f;->k:Lmc/u;

    iget-object v3, p1, Lmc/f;->k:Lmc/u;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lmc/f;->l:Lmc/f0;

    iget-object v3, p1, Lmc/f;->l:Lmc/f0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lmc/f;->m:Lmc/i0;

    iget-object v3, p1, Lmc/f;->m:Lmc/i0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lmc/f;->n:Lmc/q;

    iget-object p1, p1, Lmc/f;->n:Lmc/q;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lmc/f;->h:Lmc/d;

    invoke-virtual {v0}, Lmc/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmc/f;->i:Lmc/g;

    invoke-virtual {v1}, Lmc/g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lmc/f;->j:Lmc/i;

    invoke-virtual {v0}, Lmc/i;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmc/f;->k:Lmc/u;

    invoke-virtual {v1}, Lmc/u;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lmc/f;->l:Lmc/f0;

    invoke-virtual {v0}, Lmc/f0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmc/f;->m:Lmc/i0;

    invoke-virtual {v1}, Lmc/i0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lmc/f;->n:Lmc/q;

    invoke-virtual {v0}, Lmc/q;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "BigfootStats(batteryStats="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmc/f;->h:Lmc/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bleStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/f;->i:Lmc/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/f;->j:Lmc/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", servoStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/f;->k:Lmc/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/f;->l:Lmc/f0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/f;->m:Lmc/i0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gestureStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/f;->n:Lmc/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lmc/f;->h:Lmc/d;

    invoke-virtual {v0, p1, p2}, Lmc/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/f;->i:Lmc/g;

    invoke-virtual {v0, p1, p2}, Lmc/g;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/f;->j:Lmc/i;

    invoke-virtual {v0, p1, p2}, Lmc/i;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/f;->k:Lmc/u;

    invoke-virtual {v0, p1, p2}, Lmc/u;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/f;->l:Lmc/f0;

    invoke-virtual {v0, p1, p2}, Lmc/f0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/f;->m:Lmc/i0;

    invoke-virtual {v0, p1, p2}, Lmc/i0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/f;->n:Lmc/q;

    invoke-virtual {v0, p1, p2}, Lmc/q;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
