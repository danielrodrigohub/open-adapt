.class public final Lba/b;
.super Ljava/lang/Object;
.source "AdaptKitAnimationColor.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lba/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lba/g0;

.field public final i:Lba/x;

.field public final j:Lba/o;

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lba/b$a;

    invoke-direct {v0}, Lba/b$a;-><init>()V

    sput-object v0, Lba/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lba/g0;Lba/x;Lba/o;)V
    .locals 3

    const-string v0, "red"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "green"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blue"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba/b;->h:Lba/g0;

    .line 3
    iput-object p2, p0, Lba/b;->i:Lba/x;

    .line 4
    iput-object p3, p0, Lba/b;->j:Lba/o;

    .line 5
    iget p1, p1, Lba/g0;->h:I

    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const v2, 0xffff

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 6
    iput v0, p0, Lba/b;->k:I

    .line 7
    iget p2, p2, Lba/x;->h:I

    int-to-float v0, p2

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 8
    iput v0, p0, Lba/b;->l:I

    .line 9
    iget p3, p3, Lba/o;->h:I

    int-to-float v0, p3

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 10
    iput v0, p0, Lba/b;->m:I

    .line 11
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

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
    instance-of v1, p1, Lba/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lba/b;

    iget-object v1, p0, Lba/b;->h:Lba/g0;

    iget-object v3, p1, Lba/b;->h:Lba/g0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lba/b;->i:Lba/x;

    iget-object v3, p1, Lba/b;->i:Lba/x;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lba/b;->j:Lba/o;

    iget-object p1, p1, Lba/b;->j:Lba/o;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lba/b;->h:Lba/g0;

    invoke-virtual {v0}, Lba/g0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/b;->i:Lba/x;

    invoke-virtual {v1}, Lba/x;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/b;->j:Lba/o;

    invoke-virtual {v0}, Lba/o;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lba/b;->h:Lba/g0;

    iget-object v1, p0, Lba/b;->i:Lba/x;

    iget-object v2, p0, Lba/b;->j:Lba/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdaptKitAnimationColor(red="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", green="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", blue="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lba/b;->h:Lba/g0;

    invoke-virtual {v0, p1, p2}, Lba/g0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/b;->i:Lba/x;

    invoke-virtual {v0, p1, p2}, Lba/x;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/b;->j:Lba/o;

    invoke-virtual {v0, p1, p2}, Lba/o;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
