.class public final Lea/d;
.super Ljava/lang/Object;
.source "AdaptKitDeviceColor.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea/d$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lea/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lea/d$a;

.field public static final n:Lea/d;


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Lba/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lea/d$a;

    invoke-direct {v0}, Lea/d$a;-><init>()V

    sput-object v0, Lea/d;->m:Lea/d$a;

    new-instance v0, Lea/d$b;

    invoke-direct {v0}, Lea/d$b;-><init>()V

    sput-object v0, Lea/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    new-instance v0, Lea/d;

    const/4 v1, 0x5

    const/16 v2, 0xc8

    const/16 v3, 0xff

    const/4 v4, 0x0

    .line 2
    invoke-direct {v0, v2, v3, v4, v1}, Lea/d;-><init>(IIII)V

    .line 3
    sput-object v0, Lea/d;->n:Lea/d;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5

    const-string v0, "intensity"

    invoke-static {p4, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lea/d;->h:I

    .line 8
    iput p2, p0, Lea/d;->i:I

    .line 9
    iput p3, p0, Lea/d;->j:I

    .line 10
    iput p4, p0, Lea/d;->k:I

    .line 11
    invoke-static {}, Lba/f;->values()[Lba/f;

    move-result-object p4

    .line 12
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p4, v2

    .line 13
    iget v4, v3, Lba/f;->h:I

    .line 14
    invoke-static {v4, p1}, Lba/f$a;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    iget v4, v3, Lba/f;->i:I

    .line 16
    invoke-static {v4, p2}, Lba/f$a;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    iget v4, v3, Lba/f;->j:I

    .line 18
    invoke-static {v4, p3}, Lba/f$a;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 19
    :goto_2
    iput-object v3, p0, Lea/d;->l:Lba/f;

    return-void
.end method

.method public constructor <init>(Lba/f;)V
    .locals 3

    const/4 v0, 0x5

    const-string v1, "colorPreset"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intensity"

    invoke-static {v0, v1}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 2
    iget v1, p1, Lba/f;->h:I

    .line 3
    iget v2, p1, Lba/f;->i:I

    .line 4
    iget p1, p1, Lba/f;->j:I

    .line 5
    invoke-direct {p0, v1, v2, p1, v0}, Lea/d;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lea/d;->l:Lba/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lba/f;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lea/d;->k:I

    .line 4
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    .line 5
    iget v2, p0, Lea/d;->h:I

    iget v3, p0, Lea/d;->i:I

    iget v4, p0, Lea/d;->j:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceColor[preset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", intensity: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rgb: [red: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", green: "

    const-string v1, ", blue: "

    .line 6
    invoke-static {v5, v2, v0, v3, v1}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, "]]"

    .line 7
    invoke-static {v5, v4, v0}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    instance-of v1, p1, Lea/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lea/d;

    iget v1, p0, Lea/d;->h:I

    iget v3, p1, Lea/d;->h:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lea/d;->i:I

    iget v3, p1, Lea/d;->i:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lea/d;->j:I

    iget v3, p1, Lea/d;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lea/d;->k:I

    iget p1, p1, Lea/d;->k:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lea/d;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lea/d;->i:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lea/d;->j:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lea/d;->k:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lea/d;->h:I

    iget v1, p0, Lea/d;->i:I

    iget v2, p0, Lea/d;->j:I

    iget v3, p0, Lea/d;->k:I

    const-string v4, "AdaptKitDeviceColor(red="

    const-string v5, ", green="

    const-string v6, ", blue="

    .line 1
    invoke-static {v4, v0, v5, v1, v6}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/appcompat/widget/o;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget p2, p0, Lea/d;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lea/d;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lea/d;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lea/d;->k:I

    invoke-static {p2}, Landroidx/appcompat/widget/o;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
