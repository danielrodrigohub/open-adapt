.class public final La8/l;
.super Ljava/lang/Object;
.source "ShoeStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La8/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:La8/k;
    .annotation runtime Lf7/b;
        value = "stateStats"
    .end annotation
.end field

.field public final i:La8/b;
    .annotation runtime Lf7/b;
        value = "bleStats"
    .end annotation
.end field

.field public final j:La8/m;
    .annotation runtime Lf7/b;
        value = "wakeupStats"
    .end annotation
.end field

.field public final k:La8/c;
    .annotation runtime Lf7/b;
        value = "currentStats"
    .end annotation
.end field

.field public final l:La8/e;
    .annotation runtime Lf7/b;
        value = "gestureStats"
    .end annotation
.end field

.field public final m:La8/g;
    .annotation runtime Lf7/b;
        value = "servoStats"
    .end annotation
.end field

.field public final n:La8/a;
    .annotation runtime Lf7/b;
        value = "batteryStats"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/l$a;

    invoke-direct {v0}, La8/l$a;-><init>()V

    sput-object v0, La8/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(La8/k;La8/b;La8/m;La8/c;La8/e;La8/g;La8/a;)V
    .locals 1

    const-string v0, "stateStats"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bleStats"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakeupStats"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentStats"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureStats"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servoStats"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batteryStats"

    invoke-static {p7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La8/l;->h:La8/k;

    .line 3
    iput-object p2, p0, La8/l;->i:La8/b;

    .line 4
    iput-object p3, p0, La8/l;->j:La8/m;

    .line 5
    iput-object p4, p0, La8/l;->k:La8/c;

    .line 6
    iput-object p5, p0, La8/l;->l:La8/e;

    .line 7
    iput-object p6, p0, La8/l;->m:La8/g;

    .line 8
    iput-object p7, p0, La8/l;->n:La8/a;

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
    instance-of v1, p1, La8/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La8/l;

    iget-object v1, p0, La8/l;->h:La8/k;

    iget-object v3, p1, La8/l;->h:La8/k;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, La8/l;->i:La8/b;

    iget-object v3, p1, La8/l;->i:La8/b;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, La8/l;->j:La8/m;

    iget-object v3, p1, La8/l;->j:La8/m;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, La8/l;->k:La8/c;

    iget-object v3, p1, La8/l;->k:La8/c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, La8/l;->l:La8/e;

    iget-object v3, p1, La8/l;->l:La8/e;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, La8/l;->m:La8/g;

    iget-object v3, p1, La8/l;->m:La8/g;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, La8/l;->n:La8/a;

    iget-object p1, p1, La8/l;->n:La8/a;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, La8/l;->h:La8/k;

    invoke-virtual {v0}, La8/k;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La8/l;->i:La8/b;

    invoke-virtual {v1}, La8/b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, La8/l;->j:La8/m;

    invoke-virtual {v0}, La8/m;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La8/l;->k:La8/c;

    invoke-virtual {v1}, La8/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, La8/l;->l:La8/e;

    invoke-virtual {v0}, La8/e;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La8/l;->m:La8/g;

    invoke-virtual {v1}, La8/g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, La8/l;->n:La8/a;

    invoke-virtual {v0}, La8/a;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, La8/l;->h:La8/k;

    iget-object v1, p0, La8/l;->i:La8/b;

    iget-object v2, p0, La8/l;->j:La8/m;

    iget-object v3, p0, La8/l;->k:La8/c;

    iget-object v4, p0, La8/l;->l:La8/e;

    iget-object v5, p0, La8/l;->m:La8/g;

    iget-object v6, p0, La8/l;->n:La8/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stats(stateStats="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bleStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wakeupStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gestureStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", servoStats="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", batteryStats="

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

    iget-object v0, p0, La8/l;->h:La8/k;

    invoke-virtual {v0, p1, p2}, La8/k;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, La8/l;->i:La8/b;

    invoke-virtual {v0, p1, p2}, La8/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, La8/l;->j:La8/m;

    invoke-virtual {v0, p1, p2}, La8/m;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, La8/l;->k:La8/c;

    invoke-virtual {v0, p1, p2}, La8/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, La8/l;->l:La8/e;

    invoke-virtual {v0, p1, p2}, La8/e;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, La8/l;->m:La8/g;

    invoke-virtual {v0, p1, p2}, La8/g;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, La8/l;->n:La8/a;

    invoke-virtual {v0, p1, p2}, La8/a;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
