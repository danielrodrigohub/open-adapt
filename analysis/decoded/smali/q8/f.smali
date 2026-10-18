.class public final Lq8/f;
.super Ljava/lang/Object;
.source "BatteryEventAnimator.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lq8/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lq8/e;

.field public final i:Lq8/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq8/f$a;

    invoke-direct {v0}, Lq8/f$a;-><init>()V

    sput-object v0, Lq8/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lq8/e;Lq8/e;)V
    .locals 1

    const-string v0, "leftShoeBatteryInfoState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightShoeBatteryInfoState"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq8/f;->h:Lq8/e;

    iput-object p2, p0, Lq8/f;->i:Lq8/e;

    .line 3
    iget-boolean p1, p1, Lq8/e;->h:Z

    const-string v0, "Left shoe cannot be right shoe"

    if-nez p1, :cond_1

    .line 4
    iget-boolean p1, p2, Lq8/e;->h:Z

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    instance-of v1, p1, Lq8/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lq8/f;

    iget-object v1, p0, Lq8/f;->h:Lq8/e;

    iget-object v3, p1, Lq8/f;->h:Lq8/e;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lq8/f;->i:Lq8/e;

    iget-object p1, p1, Lq8/f;->i:Lq8/e;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lq8/f;->h:Lq8/e;

    invoke-virtual {v0}, Lq8/e;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lq8/f;->i:Lq8/e;

    invoke-virtual {v1}, Lq8/e;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lq8/f;->h:Lq8/e;

    iget-object v1, p0, Lq8/f;->i:Lq8/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatteryInfoStates(leftShoeBatteryInfoState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightShoeBatteryInfoState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq8/f;->h:Lq8/e;

    invoke-virtual {v0, p1, p2}, Lq8/e;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lq8/f;->i:Lq8/e;

    invoke-virtual {v0, p1, p2}, Lq8/e;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
