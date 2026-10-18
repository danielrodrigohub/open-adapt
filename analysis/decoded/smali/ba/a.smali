.class public final Lba/a;
.super Ljava/lang/Object;
.source "AdaptKitAnimation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lba/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lea/d;

.field public final i:Lba/d;

.field public final j:Lba/s;

.field public final k:I

.field public final l:Lba/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lba/a$a;

    invoke-direct {v0}, Lba/a$a;-><init>()V

    sput-object v0, Lba/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    new-instance v0, Lba/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lba/s;-><init>(I)V

    .line 2
    new-instance v2, Lba/a;

    .line 3
    sget-object v3, Lea/d;->m:Lea/d$a;

    .line 4
    sget-object v3, Lea/d;->n:Lea/d;

    .line 5
    new-instance v10, Lba/d;

    .line 6
    new-instance v5, Lba/f0;

    invoke-direct {v5, v1}, Lba/f0;-><init>(I)V

    new-instance v6, Lba/t;

    invoke-direct {v6, v1}, Lba/t;-><init>(I)V

    new-instance v7, Lba/e0;

    const/16 v4, 0x50

    invoke-direct {v7, v4}, Lba/e0;-><init>(I)V

    new-instance v8, Lba/u;

    invoke-direct {v8, v1}, Lba/u;-><init>(I)V

    new-instance v9, Lba/d0;

    const/16 v1, 0xaa

    invoke-direct {v9, v1}, Lba/d0;-><init>(I)V

    move-object v4, v10

    .line 7
    invoke-direct/range {v4 .. v9}, Lba/d;-><init>(Lba/f0;Lba/t;Lba/e0;Lba/u;Lba/d0;)V

    const/16 v1, 0xc

    .line 8
    invoke-direct {v2, v3, v10, v0, v1}, Lba/a;-><init>(Lea/d;Lba/d;Lba/s;I)V

    return-void
.end method

.method public constructor <init>(Lea/d;Lba/d;Lba/s;I)V
    .locals 1

    const-string v0, "adaptKitDeviceColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationDetails"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba/a;->h:Lea/d;

    .line 3
    iput-object p2, p0, Lba/a;->i:Lba/d;

    .line 4
    iput-object p3, p0, Lba/a;->j:Lba/s;

    .line 5
    iput p4, p0, Lba/a;->k:I

    .line 6
    new-instance p2, Lba/b;

    .line 7
    new-instance p3, Lba/g0;

    .line 8
    iget p4, p1, Lea/d;->h:I

    .line 9
    invoke-direct {p3, p4}, Lba/g0;-><init>(I)V

    .line 10
    new-instance p4, Lba/x;

    .line 11
    iget v0, p1, Lea/d;->i:I

    .line 12
    invoke-direct {p4, v0}, Lba/x;-><init>(I)V

    .line 13
    new-instance v0, Lba/o;

    .line 14
    iget p1, p1, Lea/d;->j:I

    .line 15
    invoke-direct {v0, p1}, Lba/o;-><init>(I)V

    .line 16
    invoke-direct {p2, p3, p4, v0}, Lba/b;-><init>(Lba/g0;Lba/x;Lba/o;)V

    iput-object p2, p0, Lba/a;->l:Lba/b;

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
    instance-of v1, p1, Lba/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lba/a;

    iget-object v1, p0, Lba/a;->h:Lea/d;

    iget-object v3, p1, Lba/a;->h:Lea/d;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lba/a;->i:Lba/d;

    iget-object v3, p1, Lba/a;->i:Lba/d;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lba/a;->j:Lba/s;

    iget-object v3, p1, Lba/a;->j:Lba/s;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lba/a;->k:I

    iget p1, p1, Lba/a;->k:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lba/a;->h:Lea/d;

    invoke-virtual {v0}, Lea/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/a;->i:Lba/d;

    invoke-virtual {v1}, Lba/d;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/a;->j:Lba/s;

    invoke-virtual {v0}, Lba/s;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lba/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lba/a;->h:Lea/d;

    iget-object v1, p0, Lba/a;->i:Lba/d;

    iget-object v2, p0, Lba/a;->j:Lba/s;

    iget v3, p0, Lba/a;->k:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdaptKitAnimation(adaptKitDeviceColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", animationDetails="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lba/a;->h:Lea/d;

    invoke-virtual {v0, p1, p2}, Lea/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/a;->i:Lba/d;

    invoke-virtual {v0, p1, p2}, Lba/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/a;->j:Lba/s;

    invoke-virtual {v0, p1, p2}, Lba/s;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lba/a;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
